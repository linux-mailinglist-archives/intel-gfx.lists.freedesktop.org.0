Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9833C66A8
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 01:04:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF60C89819;
	Mon, 12 Jul 2021 23:04:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD98689819
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 23:04:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10043"; a="189751397"
X-IronPort-AV: E=Sophos;i="5.84,235,1620716400"; d="scan'208";a="189751397"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2021 16:04:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,235,1620716400"; d="scan'208";a="569679980"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 12 Jul 2021 16:04:34 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 12 Jul 2021 16:04:34 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 12 Jul 2021 16:04:33 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2242.010;
 Mon, 12 Jul 2021 16:04:33 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 05/12] drm/i915/bxt: Use revid->stepping tables
Thread-Index: AQHXdTzx33KdiRuAxEyE14I0nW2B+qs/+fCg
Date: Mon, 12 Jul 2021 23:04:33 +0000
Message-ID: <cce1d474f771486989d80b68a7f499c7@intel.com>
References: <20210710033724.2459367-1-matthew.d.roper@intel.com>
 <20210710033724.2459367-6-matthew.d.roper@intel.com>
In-Reply-To: <20210710033724.2459367-6-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 05/12] drm/i915/bxt: Use revid->stepping
 tables
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



> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Friday, July 9, 2021 8:37 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Srivatsa, Anusha <anusha.srivatsa@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>
> Subject: [PATCH v2 05/12] drm/i915/bxt: Use revid->stepping tables
> 
> Switch BXT to use a revid->stepping table as we're trying to do on all
> platforms going forward.  Note that the REVID macros we had before
> weren't being used anywhere in the code and weren't even correct; the
> table values come from the bspec (and omits all the placeholder and
> preproduction revisions).
> 
> Although nothing in the code is using the data from this table at the moment,
> we expect some upcoming DMC patches to start utilizing it.
> 
> Bspec: 13620
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Thanks for the patch,

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.h   |  9 ---------
>  drivers/gpu/drm/i915/intel_step.c | 10 ++++++++++
>  2 files changed, 10 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h
> b/drivers/gpu/drm/i915/i915_drv.h index f30499ed6787..afb159f2a658
> 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1517,15 +1517,6 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,
> 
>  #define IS_SKL_GT_STEP(p, since, until) (IS_SKYLAKE(p) && IS_GT_STEP(p,
> since, until))
> 
> -#define BXT_REVID_A0		0x0
> -#define BXT_REVID_A1		0x1
> -#define BXT_REVID_B0		0x3
> -#define BXT_REVID_B_LAST	0x8
> -#define BXT_REVID_C0		0x9
> -
> -#define IS_BXT_REVID(dev_priv, since, until) \
> -	(IS_BROXTON(dev_priv) && IS_REVID(dev_priv, since, until))
> -
>  #define IS_KBL_GT_STEP(dev_priv, since, until) \
>  	(IS_KABYLAKE(dev_priv) && IS_GT_STEP(dev_priv, since, until))
> #define IS_KBL_DISPLAY_STEP(dev_priv, since, until) \ diff --git
> a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
> index 8987453aa172..41e3904ae6e8 100644
> --- a/drivers/gpu/drm/i915/intel_step.c
> +++ b/drivers/gpu/drm/i915/intel_step.c
> @@ -42,6 +42,13 @@ static const struct intel_step_info kbl_revids[] = {
>  	[7] = { .gt_step = STEP_G0, .display_step = STEP_C0 },  };
> 
> +static const struct intel_step_info bxt_revids[] = {
> +	[0xA] = { COMMON_STEPPING(C0) },
> +	[0xB] = { COMMON_STEPPING(C0) },
> +	[0xC] = { COMMON_STEPPING(D0) },
> +	[0xD] = { COMMON_STEPPING(E0) },
> +};
> +
>  static const struct intel_step_info tgl_uy_revids[] = {
>  	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
>  	[1] = { .gt_step = STEP_B0, .display_step = STEP_C0 }, @@ -89,6 +96,9
> @@ void intel_step_init(struct drm_i915_private *i915)
>  	} else if (IS_TIGERLAKE(i915)) {
>  		revids = tgl_revids;
>  		size = ARRAY_SIZE(tgl_revids);
> +	} else if (IS_BROXTON(i915)) {
> +		revids = bxt_revids;
> +		size = ARRAY_SIZE(bxt_revids);
>  	} else if (IS_KABYLAKE(i915)) {
>  		revids = kbl_revids;
>  		size = ARRAY_SIZE(kbl_revids);
> --
> 2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
