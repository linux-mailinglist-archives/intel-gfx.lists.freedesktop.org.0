Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1006A7579AA
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 12:53:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A39B610E1C3;
	Tue, 18 Jul 2023 10:53:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E52A510E1C3
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 10:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689677601; x=1721213601;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=ZgcWqh58cXZSl89fvm+FMmbNJyYzz7LRKcgLLO/x00c=;
 b=JYbR4uDe0B3WlSBxLEIGNLvpbwbWxdCmlab6UyvqV+fbhKtWfxfSWCM/
 pu8aqJNeQi4OyocL87YwJGh6T6sCkSOMQr8JfS0q49V1AbLbioNK9N5Xf
 df5UkqfE5mk4EoYq1fMJWGNYhwC6fPQ+IevBbYJ9nyO3ti4BvCLA5rVfO
 r/zCiIeIGZigjn1wuNgoYCJKCi9jVZH7p/jQQA5s5OIMtphkaeUqIpQ5f
 OdLHWg5dfJNXqpcVSvlmfOnCaXAin995YrkjhRVwa0qOx6zNMW7tgigrA
 0Xr0GVjwJrOeGWWn/LtO1zFRoFkDwmf/Z5y60KuNLYw1rftM9w8cHPT0w w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="366214744"
X-IronPort-AV: E=Sophos;i="6.01,214,1684825200"; d="scan'208";a="366214744"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 03:53:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="793588592"
X-IronPort-AV: E=Sophos;i="6.01,214,1684825200"; d="scan'208";a="793588592"
Received: from maloneyj-mobl.ger.corp.intel.com (HELO [10.213.207.99])
 ([10.213.207.99])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 03:53:19 -0700
Message-ID: <977e6210-3402-700c-35e6-8fce0c87b050@linux.intel.com>
Date: Tue, 18 Jul 2023 11:53:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230718081115.166212-1-dnyaneshwar.bhadane@intel.com>
 <20230718081115.166212-15-dnyaneshwar.bhadane@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230718081115.166212-15-dnyaneshwar.bhadane@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [v2 14/15] drm/i915/adls: s/ADLS/ALDERLAKE_S in
 platform and subplatform defines
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 18/07/2023 09:11, Dnyaneshwar Bhadane wrote:
> From: Anusha Srivatsa <anusha.srivatsa@intel.com>
> 
> Driver refers to the platform Alderlake S as ADLS in places
> and ALDERLAKE_S in some. Making the consistent change
> to avoid confusion of the right naming convention for
> the platform.
> 
> v2:
> - Unrolled wrapper IS_ADLS_GRAPHICS_STEP and Replace
> with IS_ALDERLAKE_S() && IS_GRAPHICS_STEP() (Jani/Tvrtko).
> 
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display_device.c | 2 +-
>   drivers/gpu/drm/i915/gt/uc/intel_uc.c               | 2 +-
>   drivers/gpu/drm/i915/i915_drv.h                     | 6 +++---
>   drivers/gpu/drm/i915/intel_step.c                   | 2 +-
>   4 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 3fd30e7f0062..252dd8446410 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -797,7 +797,7 @@ void intel_display_device_info_runtime_init(struct drm_i915_private *i915)
>   	enum pipe pipe;
>   
>   	/* Wa_14011765242: adl-s A0,A1 */
> -	if (IS_ADLS_DISPLAY_STEP(i915, STEP_A0, STEP_A2))
> +	if (IS_ALDERLAKE_S(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_A2))
>   		for_each_pipe(i915, pipe)
>   			display_runtime->num_scalers[pipe] = 0;
>   	else if (DISPLAY_VER(i915) >= 11) {
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> index 18250fb64bd8..eb28705b88bd 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -43,7 +43,7 @@ static void uc_expand_default_options(struct intel_uc *uc)
>   	}
>   
>   	/* Intermediate platforms are HuC authentication only */
> -	if (IS_ALDERLAKE_S(i915) && !IS_ADLS_RPLS(i915)) {
> +	if (IS_ALDERLAKE_S(i915) && !IS_ALDERLAKE_S_RPLS(i915)) {
>   		i915->params.enable_guc = ENABLE_GUC_LOAD_HUC;
>   		return;
>   	}
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 942004afdd2f..e15471bbad5a 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -585,7 +585,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G11)
>   #define IS_DG2_G12(i915) \
>   	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G12)
> -#define IS_ADLS_RPLS(i915) \
> +#define IS_ALDERLAKE_S_RPLS(i915) \

I don't know what we should/could do with these Alderlake macros.. I 
mean all three of:

  IS_ALDERLAKE_S_RPLS
  IS_ALDERLAKE_P_RPLP
  IS_ALDERLAKE_RPLU

It becomes too long to expand the TLA suffix..

Is there scope to turn this around and simplify in code like:

   IS_RAPTORLAKE_S/P/U ?

Not sure at all, just throwing out wild ideas.. There aren't many call 
sites for those three but despite that I don't see any easy cheats to 
tidy it.

Regards,

Tvrtko

>   	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL)
>   #define IS_ALDERLAKE_P_N(i915) \
>   	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
> @@ -664,11 +664,11 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   	 IS_DISPLAY_STEP(__i915, since, until))
>   
>   
> -#define IS_ADLS_DISPLAY_STEP(__i915, since, until) \
> +#define IS_ALDERLAKE_S_DISPLAY_STEP(__i915, since, until) \
>   	(IS_ALDERLAKE_S(__i915) && \
>   	 IS_DISPLAY_STEP(__i915, since, until))
>   
> -#define IS_ADLS_GRAPHICS_STEP(__i915, since, until) \
> +#define IS_ALDERLAKE_GRAPHICS_STEP(__i915, since, until) \
>   	(IS_ALDERLAKE_S(__i915) && \
>   	 IS_GRAPHICS_STEP(__i915, since, until))
>   
> diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
> index 545102d14ba4..5904aa5640e1 100644
> --- a/drivers/gpu/drm/i915/intel_step.c
> +++ b/drivers/gpu/drm/i915/intel_step.c
> @@ -201,7 +201,7 @@ void intel_step_init(struct drm_i915_private *i915)
>   	} else if (IS_ALDERLAKE_P(i915)) {
>   		revids = adlp_revids;
>   		size = ARRAY_SIZE(adlp_revids);
> -	} else if (IS_ADLS_RPLS(i915)) {
> +	} else if (IS_ALDERLAKE_S_RPLS(i915)) {
>   		revids = adls_rpls_revids;
>   		size = ARRAY_SIZE(adls_rpls_revids);
>   	} else if (IS_ALDERLAKE_S(i915)) {
