Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D70953BF63F
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 09:27:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C88A56E157;
	Thu,  8 Jul 2021 07:27:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6895F6E157
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 07:27:39 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id
 h1-20020a17090a3d01b0290172d33bb8bcso5335376pjc.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Jul 2021 00:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iKHAAWXPmVdb0h3JWc9L9IhP6jMLkxY2FhJoR8Qdjzc=;
 b=i/xdMULppB6lyZwufO05zz8iw+haobshMbcY9Mq8d63XEsVAF24HYs8Wp2tgjKQV8O
 Ef4GqyQthBoQsWLn7EbtTKjx+fblasSJfqZDYFHAejcRo+8trzraB2NOSYs05/s1JgK/
 G37YkAXrYFXMcFxfMP2IzmG0e3qEcdLa7S15Hrwdx+fu+8LGmAw3SYaiTx91r07FW7/t
 U139GpkXqOIvRpHWi16+PUFGYLQWUlUyJ+r/4pXobMv8q9thZBrJ42zWOTRQPXKGmndy
 WYDfRkrksyzeTBlAxx1Nyqe3rCmfERg2QaN0k1zyBlqIOjrDyYAjapweQfZCszGFZEYm
 6GsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=iKHAAWXPmVdb0h3JWc9L9IhP6jMLkxY2FhJoR8Qdjzc=;
 b=I+LgCAqX5pQUEHkcsPlwFPTYX6I6zcJ3T+Nm2jbLf3f/wnISMX/URSkr1k6TYQ4pXQ
 sKL9Cvm65WWxkg2vBb2ewgHFhiBKl7AH9pA3AdlCJfLWtAlWsV2XNrmXNLwAeiUAMnMW
 sJNZrGrdIpn/RQkPPSE9E42Yc2y6ZDXQWoWlla3orcvCd+Ed91Zs69UndmuRlCuvgX/N
 1Dh/tNYTZeXSkxREfmUbuf981TmyGCqQ77XiX3RU6t707i/TCo+xoWuGCovs+ed3mYHu
 i5RBvWDNsO7C5tcq5q89pCjutDJMASy+/9xtUWaWxB1Om3yPRo/CrfOZQgeADjIKyfVg
 +yXg==
X-Gm-Message-State: AOAM532IpmFig7rRJTrg6QZNap2h0e01NPKN7LntfmGe4isSmy6XZ+/G
 qo69Wk5Y/1vWIv3srvVAPwZWh8+u7ccE1g==
X-Google-Smtp-Source: ABdhPJwhSA7HW4FDbLDWaVkjz81CzQff077o/O2c6nccFNv4RGjHBvik0bnbfhGaGLTEviw+nQpauw==
X-Received: by 2002:a17:90a:d301:: with SMTP id
 p1mr3369059pju.45.1625729258895; 
 Thu, 08 Jul 2021 00:27:38 -0700 (PDT)
Received: from localhost (61-220-137-34.HINET-IP.hinet.net. [61.220.137.34])
 by smtp.gmail.com with ESMTPSA id 9sm1659826pfv.42.2021.07.08.00.27.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Jul 2021 00:27:38 -0700 (PDT)
From: AceLan Kao <acelan.kao@canonical.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org,
 david.e.box@intel.com
Date: Thu,  8 Jul 2021 15:27:36 +0800
Message-Id: <20210708072736.1733735-1-acelan.kao@canonical.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210325093213.20794-1-anshuman.gupta@intel.com>
References: <20210325093213.20794-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v2] drm/i915: Tweaked Wa_14010685332 for all PCHs
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

On Thu, Mar 25, 2021 at 05:39:47PM +0530, Anshuman Gupta wrote:
> dispcnlunit1_cp_xosc_clkreq clock observed to be active on TGL-H platform
> despite Wa_14010685332 original sequence, thus blocks entry to deeper s0ix state.
> 
> The Tweaked Wa_14010685332 sequence fixes this issue, therefore use tweaked
> Wa_14010685332 sequence for every PCH since PCH_CNP.
> 
> v2:
> - removed RKL from comment and simplified condition. [Rodrigo]

Hi,

I didn't see this patch shown on any trees yet.
May I know the current state of this patch?
Thanks.

> 
> Fixes: b896898c7369 ("drm/i915: Tweaked Wa_14010685332 for PCHs used on gen11 platforms")
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    | 16 +++++++-------
>  drivers/gpu/drm/i915/i915_irq.c               | 21 -------------------
>  2 files changed, 8 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index cef177208e68..b76cc4379d5c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -5910,13 +5910,13 @@ void intel_display_power_suspend_late(struct drm_i915_private *i915)
>  {
>  	if (DISPLAY_VER(i915) >= 11 || IS_GEN9_LP(i915)) {
>  		bxt_enable_dc9(i915);
> -		/* Tweaked Wa_14010685332:icp,jsp,mcc */
> -		if (INTEL_PCH_TYPE(i915) >= PCH_ICP && INTEL_PCH_TYPE(i915) <= PCH_MCC)
> -			intel_de_rmw(i915, SOUTH_CHICKEN1,
> -				     SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
>  	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
>  		hsw_enable_pc8(i915);
>  	}
> +
> +	/* Tweaked Wa_14010685332:cnp,icp,jsp,mcc,tgp,adp */
> +	if (INTEL_PCH_TYPE(i915) >= PCH_CNP && INTEL_PCH_TYPE(i915) < PCH_DG1)
> +		intel_de_rmw(i915, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
>  }
>  
>  void intel_display_power_resume_early(struct drm_i915_private *i915)
> @@ -5924,13 +5924,13 @@ void intel_display_power_resume_early(struct drm_i915_private *i915)
>  	if (DISPLAY_VER(i915) >= 11 || IS_GEN9_LP(i915)) {
>  		gen9_sanitize_dc_state(i915);
>  		bxt_disable_dc9(i915);
> -		/* Tweaked Wa_14010685332:icp,jsp,mcc */
> -		if (INTEL_PCH_TYPE(i915) >= PCH_ICP && INTEL_PCH_TYPE(i915) <= PCH_MCC)
> -			intel_de_rmw(i915, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, 0);
> -
>  	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
>  		hsw_disable_pc8(i915);
>  	}
> +
> +	/* Tweaked Wa_14010685332:cnp,icp,jsp,mcc,tgp,adp */
> +	if (INTEL_PCH_TYPE(i915) >= PCH_CNP && INTEL_PCH_TYPE(i915) < PCH_DG1)
> +		intel_de_rmw(i915, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, 0);
>  }
>  
>  void intel_display_power_suspend(struct drm_i915_private *i915)
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 7eefbdec25a2..4547ba2f19b2 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -3040,24 +3040,6 @@ static void valleyview_irq_reset(struct drm_i915_private *dev_priv)
>  	spin_unlock_irq(&dev_priv->irq_lock);
>  }
>  
> -static void cnp_display_clock_wa(struct drm_i915_private *dev_priv)
> -{
> -	struct intel_uncore *uncore = &dev_priv->uncore;
> -
> -	/*
> -	 * Wa_14010685332:cnp/cmp,tgp,adp
> -	 * TODO: Clarify which platforms this applies to
> -	 * TODO: Figure out if this workaround can be applied in the s0ix suspend/resume handlers as
> -	 * on earlier platforms and whether the workaround is also needed for runtime suspend/resume
> -	 */
> -	if (INTEL_PCH_TYPE(dev_priv) == PCH_CNP ||
> -	    (INTEL_PCH_TYPE(dev_priv) >= PCH_TGP && INTEL_PCH_TYPE(dev_priv) < PCH_DG1)) {
> -		intel_uncore_rmw(uncore, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS,
> -				 SBCLK_RUN_REFCLK_DIS);
> -		intel_uncore_rmw(uncore, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, 0);
> -	}
> -}
> -
>  static void gen8_irq_reset(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_uncore *uncore = &dev_priv->uncore;
> @@ -3082,7 +3064,6 @@ static void gen8_irq_reset(struct drm_i915_private *dev_priv)
>  	if (HAS_PCH_SPLIT(dev_priv))
>  		ibx_irq_reset(dev_priv);
>  
> -	cnp_display_clock_wa(dev_priv);
>  }
>  
>  static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
> @@ -3123,8 +3104,6 @@ static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
>  
>  	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
>  		GEN3_IRQ_RESET(uncore, SDE);
> -
> -	cnp_display_clock_wa(dev_priv);
>  }
>  
>  static void gen11_irq_reset(struct drm_i915_private *dev_priv)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
