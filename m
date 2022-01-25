Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8472F49A1E2
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 02:05:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DC9310E2D2;
	Tue, 25 Jan 2022 01:05:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5CFF10E2D2
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jan 2022 01:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643072749; x=1674608749;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=IrkUXtrijJwpsd0+VTrDtrFNN7jQV23m+h7QmuO7QJU=;
 b=C9K37A66avbYw5083sEKjJdJQpYS8WCOpFZJ25pdD+kRpgy9hEhSUfIh
 XrAKoF697GVKlXx3/nK//eGQBlrjG2AqAIgPv8z3fsf5zIzDx26by5175
 DC0a4s+kcbi1n4bf1XvcdU8qd/eHVtpfRYlVoRt+Gq2etI88IIk5R8ATy
 kLx5ceWUO8MNX1oRF0gxZwHoizP/eNmUpVMyWv91zaHFzgJCzWgc69c6f
 JZVMQlHN396sOx7PuAb+PleOoICMVojX+IieMeIPuXLfzs7qLoibZ/0LZ
 kRLugwh+gewa3p1OQLUzhdrTCb/3s/sQBbtyxvWDRi1IKp1/GG+FXXyii A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="245970325"
X-IronPort-AV: E=Sophos;i="5.88,313,1635231600"; d="scan'208";a="245970325"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 17:05:49 -0800
X-IronPort-AV: E=Sophos;i="5.88,313,1635231600"; d="scan'208";a="534496973"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 17:05:49 -0800
Date: Mon, 24 Jan 2022 17:05:47 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <Ye9M6yxTQExxXRFn@mdroper-desk1.amr.corp.intel.com>
References: <20220125001635.4004286-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220125001635.4004286-1-anusha.srivatsa@intel.com>
Subject: Re: [Intel-gfx] [v2] drm/i915/rpl-s: Add stepping info
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

On Mon, Jan 24, 2022 at 04:16:35PM -0800, Anusha Srivatsa wrote:
> Add stepping-substepping info in
> accordance to BSpec changes.
> Though it looks weird, the revision ID
> for the newer stepping is indeed backwards
> and is in accordance to the spec.
> 
> v2: Rearrange the platforms in logical order (Matt)
> 
> Bspec: 53655
> Cc: Roper, Matthew D <matthew.d.roper@intel.com>

Git tools like send-email get very confused when they try to parse
"Last, First" name ordering.  It's best to use "First Last" with no
comma to avoid problems.

> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_step.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
> index a4b16b9e2e55..be055eb0b610 100644
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
> @@ -129,6 +134,7 @@ void intel_step_init(struct drm_i915_private *i915)
>  	int revid = INTEL_REVID(i915);
>  	struct intel_step_info step = {};
>  
> +

Unwanted extra line here, but we can just fix that up (and the cc line
above) while applying the patch.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

>  	if (IS_DG2_G10(i915)) {
>  		revids = dg2_g10_revid_step_tbl;
>  		size = ARRAY_SIZE(dg2_g10_revid_step_tbl);
> @@ -141,6 +147,9 @@ void intel_step_init(struct drm_i915_private *i915)
>  	} else if (IS_ALDERLAKE_P(i915)) {
>  		revids = adlp_revids;
>  		size = ARRAY_SIZE(adlp_revids);
> +	} else if (IS_ADLS_RPLS(i915)) {
> +                revids = adls_rpls_revids;
> +                size = ARRAY_SIZE(adls_rpls_revids);
>  	} else if (IS_ALDERLAKE_S(i915)) {
>  		revids = adls_revids;
>  		size = ARRAY_SIZE(adls_revids);
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
