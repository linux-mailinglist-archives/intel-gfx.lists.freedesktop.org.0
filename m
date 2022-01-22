Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0181F496926
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Jan 2022 02:20:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A443D10E7A9;
	Sat, 22 Jan 2022 01:20:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C17B310E7A9
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Jan 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642814453; x=1674350453;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=7LKg1dScLGj5C7XYdFke2Uq8Zo4n2AjwngOmYSegCCQ=;
 b=KPgPEgVfQv2a8jkaxkkbw1yPjWx1THtoyviXapNkHs/35sakW5ut/I0K
 EDDJr83HxIVLUJrKw0wBsI+uZdIy8bndeLavGG2nqs6XOWnB4p8qc8BD2
 tPD9LwxNG1l04ddyQwo+6mWNhe9IZubp+PkKKXGrPMYGrUupuVxg7t0CY
 d6TYxntgldZfJRt00qyuK41sBOnSs5iL9kU0K2+Qoz1PnC0/5mezXOsHQ
 BXxE3eQYLqWYSBniHYs7F6km4SN7McmwjACajM6A+X9sk8RkTaHOzMYSJ
 KUXYjrqq05Fn/4HxkNkKzQzjIhQVS4cTzwwGrloueu74oU/8u3heUC6GF A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10234"; a="226452089"
X-IronPort-AV: E=Sophos;i="5.88,307,1635231600"; d="scan'208";a="226452089"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 17:20:52 -0800
X-IronPort-AV: E=Sophos;i="5.88,307,1635231600"; d="scan'208";a="478434877"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 17:20:52 -0800
Date: Fri, 21 Jan 2022 17:20:51 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <Yetb8924cXCS1Bgj@mdroper-desk1.amr.corp.intel.com>
References: <20220121193023.3546246-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220121193023.3546246-1-anusha.srivatsa@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rpl-s: Add stepping info
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

On Fri, Jan 21, 2022 at 11:30:23AM -0800, Anusha Srivatsa wrote:
> Add stepping-substepping info in
> accordance to BSpec changes.
> 
> Bspec: 53655
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_step.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
> index a4b16b9e2e55..74cb9dadcab9 100644
> --- a/drivers/gpu/drm/i915/intel_step.c
> +++ b/drivers/gpu/drm/i915/intel_step.c
> @@ -122,6 +122,11 @@ static const struct intel_step_info dg2_g11_revid_step_tbl[] = {
>  	[0x5] = { COMMON_GT_MEDIA_STEP(B1), .display_step = STEP_C0 },
>  };
>  
> +static const struct intel_step_info adls_rpls_revids[] = {
> +	[0x4] = { COMMON_GT_MEDIA_STEP(D0), .display_step = STEP_D0 },
> +	[0xC] = { COMMON_GT_MEDIA_STEP(D0), .display_step = STEP_C0 },
> +};
> +
>  void intel_step_init(struct drm_i915_private *i915)
>  {
>  	const struct intel_step_info *revids = NULL;
> @@ -129,7 +134,11 @@ void intel_step_init(struct drm_i915_private *i915)
>  	int revid = INTEL_REVID(i915);
>  	struct intel_step_info step = {};
>  
> -	if (IS_DG2_G10(i915)) {
> +
> +	if (IS_ADLS_RPLS(i915)) {
> +		revids = adls_rpls_revids;
> +		size = ARRAY_SIZE(adls_rpls_revids);
> +	} else if (IS_DG2_G10(i915)) {

We try to keep if/else ladders sorted by platforms' logical progression,
so this should go right above the 'IS_ALDERLAKE_S' case rather than at
the top.

It looks crazy that the revision ID goes backward for the newer
stepping, but that really is how it's supposed to be on this platform.
You might want to mention that in the commit message just so people
don't wonder if it's some kind of mistake/typo.


Matt

>  		revids = dg2_g10_revid_step_tbl;
>  		size = ARRAY_SIZE(dg2_g10_revid_step_tbl);
>  	} else if (IS_DG2_G11(i915)) {
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
