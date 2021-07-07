Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0463BE44E
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 10:24:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99A006E05D;
	Wed,  7 Jul 2021 08:24:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DCE86E05D
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jul 2021 08:24:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="209219879"
X-IronPort-AV: E=Sophos;i="5.83,331,1616482800"; d="scan'208";a="209219879"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 01:24:31 -0700
X-IronPort-AV: E=Sophos;i="5.83,331,1616482800"; d="scan'208";a="486727925"
Received: from rvanakke-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.40.173])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 01:24:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210707050645.31043-2-anusha.srivatsa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210707050645.31043-1-anusha.srivatsa@intel.com>
 <20210707050645.31043-2-anusha.srivatsa@intel.com>
Date: Wed, 07 Jul 2021 11:24:24 +0300
Message-ID: <878s2i8rbb.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915/step:
 s/<platform>_revid_tbl/<platform>_revids
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 06 Jul 2021, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> Simplify the stepping info array name.
>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_step.c | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
> index ba9479a67521..93ccd42f2514 100644
> --- a/drivers/gpu/drm/i915/intel_step.c
> +++ b/drivers/gpu/drm/i915/intel_step.c
> @@ -26,7 +26,7 @@ static const struct intel_step_info kbl_revids[] = {
>  	[7] = { .gt_step = STEP_G0, .display_step = STEP_C0 },
>  };
>  
> -static const struct intel_step_info tgl_uy_revid_step_tbl[] = {
> +static const struct intel_step_info tgl_uy_revids[] = {
>  	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
>  	[1] = { .gt_step = STEP_B0, .display_step = STEP_C0 },
>  	[2] = { .gt_step = STEP_B1, .display_step = STEP_C0 },
> @@ -34,12 +34,12 @@ static const struct intel_step_info tgl_uy_revid_step_tbl[] = {
>  };
>  
>  /* Same GT stepping between tgl_uy_revids and tgl_revids don't mean the same HW */
> -static const struct intel_step_info tgl_revid_step_tbl[] = {
> +static const struct intel_step_info tgl_revids[] = {
>  	[0] = { .gt_step = STEP_A0, .display_step = STEP_B0 },
>  	[1] = { .gt_step = STEP_B0, .display_step = STEP_D0 },
>  };
>  
> -static const struct intel_step_info adls_revid_step_tbl[] = {
> +static const struct intel_step_info adls_revids[] = {
>  	[0x0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
>  	[0x1] = { .gt_step = STEP_A0, .display_step = STEP_A2 },
>  	[0x4] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
> @@ -47,7 +47,7 @@ static const struct intel_step_info adls_revid_step_tbl[] = {
>  	[0xC] = { .gt_step = STEP_D0, .display_step = STEP_C0 },
>  };
>  
> -static const struct intel_step_info adlp_revid_step_tbl[] = {
> +static const struct intel_step_info adlp_revids[] = {
>  	[0x0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
>  	[0x4] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
>  	[0x8] = { .gt_step = STEP_C0, .display_step = STEP_C0 },
> @@ -62,17 +62,17 @@ void intel_step_init(struct drm_i915_private *i915)
>  	struct intel_step_info step = {};
>  
>  	if (IS_ALDERLAKE_P(i915)) {
> -		revids = adlp_revid_step_tbl;
> -		size = ARRAY_SIZE(adlp_revid_step_tbl);
> +		revids = adlp_revids;
> +		size = ARRAY_SIZE(adlp_revids);
>  	} else if (IS_ALDERLAKE_S(i915)) {
> -		revids = adls_revid_step_tbl;
> -		size = ARRAY_SIZE(adls_revid_step_tbl);
> +		revids = adls_revids;
> +		size = ARRAY_SIZE(adls_revids);
>  	} else if (IS_TGL_U(i915) || IS_TGL_Y(i915)) {
> -		revids = tgl_uy_revid_step_tbl;
> -		size = ARRAY_SIZE(tgl_uy_revid_step_tbl);
> +		revids = tgl_uy_revids;
> +		size = ARRAY_SIZE(tgl_uy_revids);
>  	} else if (IS_TIGERLAKE(i915)) {
> -		revids = tgl_revid_step_tbl;
> -		size = ARRAY_SIZE(tgl_revid_step_tbl);
> +		revids = tgl_revids;
> +		size = ARRAY_SIZE(tgl_revids);
>  	} else if (IS_KABYLAKE(i915)) {
>  		revids = kbl_revids;
>  		size = ARRAY_SIZE(kbl_revids);

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
