Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E63E3C18E4
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 20:09:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CA8F6E949;
	Thu,  8 Jul 2021 18:08:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5743D6E030
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 18:08:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10039"; a="196840386"
X-IronPort-AV: E=Sophos;i="5.84,224,1620716400"; d="scan'208";a="196840386"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 11:08:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,224,1620716400"; d="scan'208";a="492223637"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 08 Jul 2021 11:08:47 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 8 Jul 2021 11:08:47 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 8 Jul 2021 11:08:46 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2242.010;
 Thu, 8 Jul 2021 11:08:46 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/7] drm/i915: Make pre-production detection
 use direct revid comparison
Thread-Index: AQHXc7uprKdaEfkXSECmcnGMGZR+qKs5YF0g
Date: Thu, 8 Jul 2021 18:08:46 +0000
Message-ID: <bf223bb32e3f4ab49c3e1553b247aad2@intel.com>
References: <20210708053819.2120187-1-matthew.d.roper@intel.com>
 <20210708053819.2120187-2-matthew.d.roper@intel.com>
In-Reply-To: <20210708053819.2120187-2-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915: Make pre-production detection
 use direct revid comparison
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Matt Roper
> Sent: Wednesday, July 7, 2021 10:38 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 1/7] drm/i915: Make pre-production detection
> use direct revid comparison
> 
> Although we're converting our workarounds to use a revid->stepping lookup
> table, the function that detects pre-production hardware should continue to
> compare against PCI revision ID values directly.  These are listed in the bspec
> as integers, so it's easier to confirm their correctness if we just use an integer
> literal rather than a symbolic name anyway.
> 
> Since the BXT, GLK, and CNL revid macros were never used in any
> workaround code, just remove them completely.
> 
> Bspec: 13620, 19131, 13626, 18329
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.c   |  8 ++++----
>  drivers/gpu/drm/i915/i915_drv.h   | 24 ------------------------
>  drivers/gpu/drm/i915/intel_step.h |  1 +
>  3 files changed, 5 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.c
> b/drivers/gpu/drm/i915/i915_drv.c index 30d8cd8c69b1..90136995f5eb
> 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -271,10 +271,10 @@ static void intel_detect_preproduction_hw(struct
> drm_i915_private *dev_priv)
>  	bool pre = false;
> 
>  	pre |= IS_HSW_EARLY_SDV(dev_priv);
> -	pre |= IS_SKL_REVID(dev_priv, 0, SKL_REVID_F0);
> -	pre |= IS_BXT_REVID(dev_priv, 0, BXT_REVID_B_LAST);
> -	pre |= IS_KBL_GT_STEP(dev_priv, 0, STEP_A0);
> -	pre |= IS_GLK_REVID(dev_priv, 0, GLK_REVID_A2);
> +	pre |= IS_SKYLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x6;
> +	pre |= IS_BROXTON(dev_priv) && INTEL_REVID(dev_priv) < 0xA;
> +	pre |= IS_KABYLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
> +	pre |= IS_GEMINILAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x3;
> 
>  	if (pre) {
>  		drm_err(&dev_priv->drm, "This is a pre-production stepping.
> "
> diff --git a/drivers/gpu/drm/i915/i915_drv.h
> b/drivers/gpu/drm/i915/i915_drv.h index 6dff4ca01241..796e6838bc79
> 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1473,35 +1473,11 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,
> 
>  #define IS_SKL_REVID(p, since, until) (IS_SKYLAKE(p) && IS_REVID(p, since,
> until))
> 
> -#define BXT_REVID_A0		0x0
> -#define BXT_REVID_A1		0x1
> -#define BXT_REVID_B0		0x3
> -#define BXT_REVID_B_LAST	0x8
> -#define BXT_REVID_C0		0x9
> -
> -#define IS_BXT_REVID(dev_priv, since, until) \
> -	(IS_BROXTON(dev_priv) && IS_REVID(dev_priv, since, until))

Here, we can have IS_BXT_GT_STEP, similar to other platform and use in intel_detect_preproduction_hw() above.
Same for other platforms - SKL and GLK. KBL already uses IS_KBL_GT_STEP.

Anusha 
>  #define IS_KBL_GT_STEP(dev_priv, since, until) \
>  	(IS_KABYLAKE(dev_priv) && IS_GT_STEP(dev_priv, since, until))
> #define IS_KBL_DISPLAY_STEP(dev_priv, since, until) \
>  	(IS_KABYLAKE(dev_priv) && IS_DISPLAY_STEP(dev_priv, since,
> until))
> 
> -#define GLK_REVID_A0		0x0
> -#define GLK_REVID_A1		0x1
> -#define GLK_REVID_A2		0x2
> -#define GLK_REVID_B0		0x3
> -
> -#define IS_GLK_REVID(dev_priv, since, until) \
> -	(IS_GEMINILAKE(dev_priv) && IS_REVID(dev_priv, since, until))
> -
> -#define CNL_REVID_A0		0x0
> -#define CNL_REVID_B0		0x1
> -#define CNL_REVID_C0		0x2
> -
> -#define IS_CNL_REVID(p, since, until) \
> -	(IS_CANNONLAKE(p) && IS_REVID(p, since, until))
> -
>  #define ICL_REVID_A0		0x0
>  #define ICL_REVID_A2		0x1
>  #define ICL_REVID_B0		0x3
> diff --git a/drivers/gpu/drm/i915/intel_step.h
> b/drivers/gpu/drm/i915/intel_step.h
> index 958a8bb5d677..8efacef6ab31 100644
> --- a/drivers/gpu/drm/i915/intel_step.h
> +++ b/drivers/gpu/drm/i915/intel_step.h
> @@ -22,6 +22,7 @@ struct intel_step_info {  enum intel_step {
>  	STEP_NONE = 0,
>  	STEP_A0,
> +	STEP_A1,
>  	STEP_A2,
>  	STEP_B0,
>  	STEP_B1,
> --
> 2.25.4
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
