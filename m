Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0035E4DCEF8
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 20:43:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 983B610E70E;
	Thu, 17 Mar 2022 19:43:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA34310E70E
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 19:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647546216; x=1679082216;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=PMCg7P7c3Q29L88ZGHhMnK/Bxi21FzIogCXcXpudDSU=;
 b=dgdZBf4VCtpRrKVLOVf52ra5PKp0PqqMpLhN4rZ8371M2cgLbBXBwjoH
 gZR+UajJH1dyVeYvFKygjmmvj2TtkreQ2dIH9KgsAtFxmTGmmosK6/8P5
 r/Nngaf3ulz0bClu1BdmVDOBP6uP8AE0TaEvIi2BpuJJzZ7QJoALC/sev
 GP7hbaroDTsMixjPl1S31nj7FsWt5W+qW8NbP10QWcnywspnLFrRRiRnf
 4XhYn8383zC61T+rlnpYRQlFp0ZVKNhNHsYXn/cpZkH/1yn1Tw4Byn4/Z
 by32tb3YgEvFQMBA9zYJY+BI7bbraqJ6+nwjw8lkvOplRUilzokGETxe1 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="236910637"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="236910637"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 12:43:36 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="541513399"
Received: from cjmartin-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.31.111])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 12:43:35 -0700
Date: Thu, 17 Mar 2022 12:43:34 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220317194334.ejfuyyzuwgpf545v@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <cover.1647542120.git.jani.nikula@intel.com>
 <b35d1cab535265d04cd2161b0f8984d5d93af5c4.1647542120.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <b35d1cab535265d04cd2161b0f8984d5d93af5c4.1647542120.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/8] drm/i915/dmc: fix i915_reg_t usage
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

On Thu, Mar 17, 2022 at 08:36:16PM +0200, Jani Nikula wrote:
>i915_reg_t is supposed to be a somewhat opaque data type, not to be
>looked inside.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

but maybe also already clean up the remaining one?

$ git grep "i915_reg_t.*= *{ *}"
drivers/gpu/drm/i915/display/intel_display_debugfs.c:   i915_reg_t dc5_reg, dc6_reg = {};
drivers/gpu/drm/i915/gt/intel_ring_submission.c:                        i915_reg_t last_reg = {}; /* keep gcc quiet */

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>index 2e11725a0828..5de13f978e57 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>@@ -816,7 +816,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
> 	struct drm_i915_private *i915 = m->private;
> 	intel_wakeref_t wakeref;
> 	struct intel_dmc *dmc;
>-	i915_reg_t dc5_reg, dc6_reg = {};
>+	i915_reg_t dc5_reg, dc6_reg = INVALID_MMIO_REG;
>
> 	if (!HAS_DMC(i915))
> 		return -ENODEV;
>@@ -868,7 +868,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
> 	}
>
> 	seq_printf(m, "DC3 -> DC5 count: %d\n", intel_de_read(i915, dc5_reg));
>-	if (dc6_reg.reg)
>+	if (i915_mmio_reg_valid(dc6_reg))
> 		seq_printf(m, "DC5 -> DC6 count: %d\n",
> 			   intel_de_read(i915, dc6_reg));
>
>-- 
>2.30.2
>
