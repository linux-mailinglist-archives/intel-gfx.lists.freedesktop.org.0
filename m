Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF0849D1AF
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 19:25:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2340E10E38C;
	Wed, 26 Jan 2022 18:25:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0937E10E38C
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 18:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643221553; x=1674757553;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=8sWcqwVcTKp7HY5qrmdWNGpjHJBKI89vK3C2T8AI2+Q=;
 b=Cb7qN1XpICMpcslEEvZh4fwAij44Am/TpvZlUuBuleVGx+sFmXd144tu
 z+7Ul+Iamn+jm0PZ4agc5mQlrPMRndii8MdGKbPKver7Y0k8NRQdG8n0C
 QELfrIGZyW3+r6vPw0LzVm/Q/+IPUmqcNd6oRzqH0JO4GG1ssvC1qdh9W
 l/PeIQUeCBexosi/NLxBLhIQR+WHvkZQwmCkkRQscIq3c/K8+DL7jODoL
 USQ84ocFXcGEE84p1gjQiuKUhtVLrCmy3ipMpk9QbQLrqo0GWZuvriuVd
 8nSjRyoP6YgRzOtRjFsiwePghG3CR32DKuOUP6QlDbn1J9Rmx7TA/FBrl w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="246393422"
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="246393422"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 10:25:34 -0800
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="477562248"
Received: from nbasu-mobl.ger.corp.intel.com (HELO localhost) ([10.252.16.197])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 10:25:33 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220125223625.4139326-1-anusha.srivatsa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220125223625.4139326-1-anusha.srivatsa@intel.com>
Date: Wed, 26 Jan 2022 20:25:30 +0200
Message-ID: <87bkzyxskl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [CI] drm/i915/rpl-s: Add stepping info
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 25 Jan 2022, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> Add stepping-substepping info in
> accordance to BSpec changes.
> Though it looks weird, the revision ID
> for the newer stepping is indeed backwards
> and is in accordance to the spec.
>
> v2: Rearrange the platforms in logical order (Matt)
>
> Bspec: 53655
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_step.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
> index a4b16b9e2e55..9012e4b76a49 100644
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

Superfluous newline.

BR,
Jani.

>  	if (IS_DG2_G10(i915)) {
>  		revids = dg2_g10_revid_step_tbl;
>  		size = ARRAY_SIZE(dg2_g10_revid_step_tbl);
> @@ -141,6 +147,9 @@ void intel_step_init(struct drm_i915_private *i915)
>  	} else if (IS_ALDERLAKE_P(i915)) {
>  		revids = adlp_revids;
>  		size = ARRAY_SIZE(adlp_revids);
> +	} else if (IS_ADLS_RPLS(i915)) {
> +		revids = adls_rpls_revids;
> +		size = ARRAY_SIZE(adls_rpls_revids);
>  	} else if (IS_ALDERLAKE_S(i915)) {
>  		revids = adls_revids;
>  		size = ARRAY_SIZE(adls_revids);

-- 
Jani Nikula, Intel Open Source Graphics Center
