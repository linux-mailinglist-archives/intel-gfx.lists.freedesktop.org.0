Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E25413C654C
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 23:11:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63E6E89870;
	Mon, 12 Jul 2021 21:11:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06BC889870
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 21:11:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10043"; a="209871034"
X-IronPort-AV: E=Sophos;i="5.84,234,1620716400"; d="scan'208";a="209871034"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2021 14:11:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,234,1620716400"; d="scan'208";a="502458808"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 12 Jul 2021 14:11:05 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 12 Jul 2021 14:11:04 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 12 Jul 2021 14:11:04 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2242.010;
 Mon, 12 Jul 2021 14:11:04 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 06/12] drm/i915/glk: Use revid->stepping tables
Thread-Index: AQHXdTzyT68aTpTY1E2cmhdCPLXe46s/2jvg
Date: Mon, 12 Jul 2021 21:11:04 +0000
Message-ID: <91543465d48f4faa916bf1991de977f8@intel.com>
References: <20210710033724.2459367-1-matthew.d.roper@intel.com>
 <20210710033724.2459367-7-matthew.d.roper@intel.com>
In-Reply-To: <20210710033724.2459367-7-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 06/12] drm/i915/glk: Use revid->stepping
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
> Subject: [PATCH v2 06/12] drm/i915/glk: Use revid->stepping tables
> 
> Switch GLK to use a revid->stepping table as we're trying to do on all
> platforms going forward.  Pre-production and placeholder revisions are
> omitted.
> 
> Although nothing in the code is using the data from this table at the moment,
> we expect some upcoming DMC patches to start utilizing it.
> 
> Bspec: 19131
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

>  drivers/gpu/drm/i915/i915_drv.h   | 8 --------
>  drivers/gpu/drm/i915/intel_step.c | 7 +++++++
>  2 files changed, 7 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h
> b/drivers/gpu/drm/i915/i915_drv.h index afb159f2a658..dac9ed2dfca5
> 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1522,14 +1522,6 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,  #define IS_KBL_DISPLAY_STEP(dev_priv, since, until) \
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
>  #define CNL_REVID_A0		0x0
>  #define CNL_REVID_B0		0x1
>  #define CNL_REVID_C0		0x2
> diff --git a/drivers/gpu/drm/i915/intel_step.c
> b/drivers/gpu/drm/i915/intel_step.c
> index 41e3904ae6e8..7f8fe5e4c039 100644
> --- a/drivers/gpu/drm/i915/intel_step.c
> +++ b/drivers/gpu/drm/i915/intel_step.c
> @@ -49,6 +49,10 @@ static const struct intel_step_info bxt_revids[] = {
>  	[0xD] = { COMMON_STEPPING(E0) },
>  };
> 
> +static const struct intel_step_info glk_revids[] = {
> +	[3] = { COMMON_STEPPING(B0) },
> +};
> +
>  static const struct intel_step_info tgl_uy_revids[] = {
>  	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
>  	[1] = { .gt_step = STEP_B0, .display_step = STEP_C0 }, @@ -96,6
> +100,9 @@ void intel_step_init(struct drm_i915_private *i915)
>  	} else if (IS_TIGERLAKE(i915)) {
>  		revids = tgl_revids;
>  		size = ARRAY_SIZE(tgl_revids);
> +	} else if (IS_GEMINILAKE(i915)) {
> +		revids = glk_revids;
> +		size = ARRAY_SIZE(glk_revids);
>  	} else if (IS_BROXTON(i915)) {
>  		revids = bxt_revids;
>  		size = ARRAY_SIZE(bxt_revids);
> --
> 2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
