Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8972F4DD702
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 10:22:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F11DE10E78C;
	Fri, 18 Mar 2022 09:22:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88B7710E7E5
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 09:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647595365; x=1679131365;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=R5yYPCe4Wt+yjyzobWQ5YoTn8br0TpVTUMtVynfLpls=;
 b=FBD/tA8q5HGljJcHmW5QZQf7WpdZpXVfs7C3Nchj8XVhVQVr4hCsED0v
 UVjE9yAtPP/XkDRjpwk4FCrMSeprmEeFmJleMQv6ifaQEMLuT22y6gCnU
 JKq8fH8gj0iE/H5G1wsgCD+LAZoOpE1SmGGaDdPZ/QPmJcN1VE0sU+udX
 D5mEbBupmCGGfhvL/5MKSPqGSa4q26uTdpwNm2wwkJjM2FqBv2gljjSrP
 2XRYgwR1kfgePr+BXSMFmnbNmLhzEj1Vj7UEg5F6HlfYr5/e6LlAigcNk
 BUAMHnpwI3AygquHBSTys7GjplWSCx4M2QZ2nw6ypLThSrwDN1tOkKfgw A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="239262424"
X-IronPort-AV: E=Sophos;i="5.90,191,1643702400"; d="scan'208";a="239262424"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 02:22:45 -0700
X-IronPort-AV: E=Sophos;i="5.90,191,1643702400"; d="scan'208";a="558340289"
Received: from dplotkin-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.55.176])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 02:22:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20220317195514.ktzq6m62s7xtxhk3@ldmartin-desk2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1647542120.git.jani.nikula@intel.com>
 <99df4792990e8291db420a1a4279afa1c9011074.1647542120.git.jani.nikula@intel.com>
 <20220317195514.ktzq6m62s7xtxhk3@ldmartin-desk2>
Date: Fri, 18 Mar 2022 11:22:40 +0200
Message-ID: <8735jfmx7j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 17 Mar 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Thu, Mar 17, 2022 at 08:36:17PM +0200, Jani Nikula wrote:
>>Register the DMC debugfs file only on platforms that support
>>DMC. There's no point in having a no-op debugfs file.
>
> It seems this would not change much the behavior (fail on open vs fail
> on read). But the code in igt is suspicious:
>
>
> 	bool igt_pm_dmc_loaded(int debugfs)
> 	{
> 		char buf[15];
> 		int len;
>
> 		len = igt_sysfs_read(debugfs, "i915_dmc_info", buf, sizeof(buf) - 1);
> 		if (len < 0)
> 			return true; /* no CSR support, no DMC requirement */
>
>  From a quick inspection of igt_sysfs_read() it seems it would just
> return 0 if there's nothing to be read. And it would return < 0 on
> failure to open the file.
>
> These would be the affected tests:
>
> tests/i915/i915_pm_rpm.c:
> tests/i915/i915_pm_lpsp.c:
> tests/i915/i915_pm_dc.c:
> 	igt_require(igt_pm_dmc_loaded(data.debugfs_fd));

Ok, I think I'll just drop this patch for now, don't have the time to go
down that rabbit hole...

Thanks,
Jani.

>
>
> Lucas De Marchi
>
>>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>---
>> drivers/gpu/drm/i915/display/intel_dmc.c | 6 +++---
>> 1 file changed, 3 insertions(+), 3 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>>index 5de13f978e57..8dfa2aa9f8bd 100644
>>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>>@@ -818,9 +818,6 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>> 	struct intel_dmc *dmc;
>> 	i915_reg_t dc5_reg, dc6_reg = INVALID_MMIO_REG;
>>
>>-	if (!HAS_DMC(i915))
>>-		return -ENODEV;
>>-
>> 	dmc = &i915->dmc;
>>
>> 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>>@@ -890,6 +887,9 @@ void intel_dmc_debugfs_register(struct drm_i915_private *i915)
>> {
>> 	struct drm_minor *minor = i915->drm.primary;
>>
>>+	if (!HAS_DMC(i915))
>>+		return;
>>+
>> 	debugfs_create_file("i915_dmc_info", 0444, minor->debugfs_root,
>> 			    i915, &intel_dmc_debugfs_status_fops);
>> }
>>-- 
>>2.30.2
>>

-- 
Jani Nikula, Intel Open Source Graphics Center
