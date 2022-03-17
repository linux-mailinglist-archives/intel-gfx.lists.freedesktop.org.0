Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD964DCF11
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 20:55:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48DB810E754;
	Thu, 17 Mar 2022 19:55:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70FBC10E7D6
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 19:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647546917; x=1679082917;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=p/hWshMuOK+q01xkTrNUSYpcjaSZUEIk7tyDOB7tLqE=;
 b=XIkUxbUaklnqx+UsRVW9MnvR08jM8u7pb2NOHinFD7tkuDWzZsqFu/Rd
 V7rNdYK9NNLcd4QhV/OKzIsd0wp2tNOgg7p2YXGRobYzFFH/eIOgs9nl5
 AOKvP+nSgfs4HBAN9Y1HBRcFXw7trpSrqiHiohFGPmpqbS3fvGegWyy3Q
 QY5aqzTWHy/+bAHX1EsgnJIaHHk+2vIa2T3cqSTIkCPCoHOrPvJFec7AT
 ggcm8T1HmkTFkoMViL2hq+YIdGpsz5B/0e9CiWHLjwMFrG3YYXjBxTh/L
 5VyVpJ5p90SFavlqUzAn7p/Ku5gJgS0hUYrrRnU3v5x27vfPft9e32C8a w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="281764813"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="281764813"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 12:55:16 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="541515848"
Received: from cjmartin-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.31.111])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 12:55:16 -0700
Date: Thu, 17 Mar 2022 12:55:14 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220317195514.ktzq6m62s7xtxhk3@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <cover.1647542120.git.jani.nikula@intel.com>
 <99df4792990e8291db420a1a4279afa1c9011074.1647542120.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <99df4792990e8291db420a1a4279afa1c9011074.1647542120.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915/dmc: don't register DMC
 debugfs file if there's no DMC
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 17, 2022 at 08:36:17PM +0200, Jani Nikula wrote:
>Register the DMC debugfs file only on platforms that support
>DMC. There's no point in having a no-op debugfs file.

It seems this would not change much the behavior (fail on open vs fail
on read). But the code in igt is suspicious:


	bool igt_pm_dmc_loaded(int debugfs)
	{
		char buf[15];
		int len;

		len = igt_sysfs_read(debugfs, "i915_dmc_info", buf, sizeof(buf) - 1);
		if (len < 0)
			return true; /* no CSR support, no DMC requirement */

 From a quick inspection of igt_sysfs_read() it seems it would just
return 0 if there's nothing to be read. And it would return < 0 on
failure to open the file.

These would be the affected tests:

tests/i915/i915_pm_rpm.c:
tests/i915/i915_pm_lpsp.c:
tests/i915/i915_pm_dc.c:
	igt_require(igt_pm_dmc_loaded(data.debugfs_fd));


Lucas De Marchi

>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_dmc.c | 6 +++---
> 1 file changed, 3 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>index 5de13f978e57..8dfa2aa9f8bd 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>@@ -818,9 +818,6 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
> 	struct intel_dmc *dmc;
> 	i915_reg_t dc5_reg, dc6_reg = INVALID_MMIO_REG;
>
>-	if (!HAS_DMC(i915))
>-		return -ENODEV;
>-
> 	dmc = &i915->dmc;
>
> 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>@@ -890,6 +887,9 @@ void intel_dmc_debugfs_register(struct drm_i915_private *i915)
> {
> 	struct drm_minor *minor = i915->drm.primary;
>
>+	if (!HAS_DMC(i915))
>+		return;
>+
> 	debugfs_create_file("i915_dmc_info", 0444, minor->debugfs_root,
> 			    i915, &intel_dmc_debugfs_status_fops);
> }
>-- 
>2.30.2
>
