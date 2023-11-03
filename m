Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B647DFFF9
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 10:22:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C808810E540;
	Fri,  3 Nov 2023 09:22:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DC1110E53C
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Nov 2023 09:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699003334; x=1730539334;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Q9hH0vfbluCU547VU7Qhj3rTZVwScDD4DRkF00tFVTc=;
 b=Czqf06HmWHkytwYz18x6iAOJUE60ysmbHXDqA/QYTRUhhKU6e1djxhb9
 XJLsKDPhyoTzEc5QQrEgjbMGu+A9nWWZw0N6v3aVMbTsQdwqbG9NZJLlZ
 qIcG1fFxM2PYKIZpMj7JfDLhIZQ5ECOLDYoWYKRTh2ru/Z35hkjiiLvMd
 Mz3kMcpChkICpv2VSWwIF4Lh8SSd6opp2RiHBnQJzrmt48Uha6fFVqzGv
 4IJQck/YQU91wln7QEH1PHKOd6OtKvWAb+Fc5XZKsTSs3g67cgCRfzBbC
 pDSBAesLHz2UQO8+YA4P4OVRNqfIXDsuSZwjNPhJ8xGxSBYafb1huksDA Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="475150543"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="475150543"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 02:22:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="796568524"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="796568524"
Received: from bublath-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.34.179])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 02:22:03 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231102222941.144583-2-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231102222941.144583-1-vinod.govindapillai@intel.com>
 <20231102222941.144583-2-vinod.govindapillai@intel.com>
Date: Fri, 03 Nov 2023 11:21:59 +0200
Message-ID: <87msvv19ag.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v1 1/1] drm/i915/xe2lpd: alternate WA for
 underruns with PSR2 and FBC
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 03 Nov 2023, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> Implement the alternate WA for the underruns when both PSR2
> and FBC is enabled.

But we don't enable FBC when PSR2 is enabled, for display 12+.

See intel_fbc.c line 1200 or so.

BR,
Jani.


>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index bde12fe62275..b9cd92a997cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -608,6 +608,7 @@ static u32 ivb_dpfc_ctl(struct intel_fbc *fbc)
>  static void ivb_fbc_activate(struct intel_fbc *fbc)
>  {
>  	struct drm_i915_private *i915 = fbc->i915;
> +	u32 dpfc_ctl;
>  
>  	if (DISPLAY_VER(i915) >= 10)
>  		glk_fbc_program_cfb_stride(fbc);
> @@ -617,8 +618,17 @@ static void ivb_fbc_activate(struct intel_fbc *fbc)
>  	if (intel_gt_support_legacy_fencing(to_gt(i915)))
>  		snb_fbc_program_fence(fbc);
>  
> +	/*
> +	 * Alternate WA for HW bug with PSR2 + FBC.
> +	 * 1.Write FBC_CTL with Plane binding set correctly with FBC enable = 0
> +	 * 2.Write FBC_CTL with Plane binding set correctly with FBC enable = 1
> +	 */
> +	dpfc_ctl = ivb_dpfc_ctl(fbc);
> +	if (DISPLAY_VER(i915) >= 20)
> +		intel_de_write(i915, ILK_DPFC_CONTROL(fbc->id), dpfc_ctl);
> +
>  	intel_de_write(i915, ILK_DPFC_CONTROL(fbc->id),
> -		       DPFC_CTL_EN | ivb_dpfc_ctl(fbc));
> +		       DPFC_CTL_EN | dpfc_ctl);
>  }
>  
>  static bool ivb_fbc_is_compressing(struct intel_fbc *fbc)

-- 
Jani Nikula, Intel
