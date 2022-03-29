Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D644EAA8C
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 11:28:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE30310E7FF;
	Tue, 29 Mar 2022 09:28:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4D0A10E7FF
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648546096; x=1680082096;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kud9CWCk2ZuMBljqkrRmRyE5F15ajYvWvPH+upecN6g=;
 b=K6xPQ9lDGh5TcmhzzG5tWsdhkDixuI/NK2RSm0bo6evKh1uvFhL7/MjH
 ZWeimvkhxwyz1tLg3KR3F6VUifvwS2YeexYfAoToeZ0QPRl2s5SztmMNr
 fo1QvB+kNWPd6aZdrPSPaWDPE+zN5FXbcFwtxQvlBijvjUFXjvS4CmIlY
 iuLaU2IP+nSYJwR8OqrKL6kUa+4D2lJp8zOCuAZ5snYeHIP4qh6B6P1td
 dp0rdrWSKvQTzSPGVz2jdDNKwtdvxr/+jqXISKrGjgh/wdK+uzSgQFVPK
 SY/dzrMwMKVVvHRGKt431AieCLJZLpfFBRELuBVeobLxr0laYaEz/K4j+ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="319904608"
X-IronPort-AV: E=Sophos;i="5.90,219,1643702400"; d="scan'208";a="319904608"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 02:28:16 -0700
X-IronPort-AV: E=Sophos;i="5.90,219,1643702400"; d="scan'208";a="652813474"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 02:28:15 -0700
Date: Tue, 29 Mar 2022 12:28:56 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220329092856.GB1336@intel.com>
References: <20220224165103.15682-1-ville.syrjala@linux.intel.com>
 <20220224165103.15682-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220224165103.15682-3-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Make ilk+ pfit regiser
 unlocked
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

On Thu, Feb 24, 2022 at 06:51:01PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> The ilk+ panel fitter register are sitting nicely on their own
> cacheline, so no need for global serialization via uncore.lock.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 7bf24df20b14..705f23be409c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1114,13 +1114,13 @@ static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state)
>  	 * e.g. x201.
>  	 */
>  	if (IS_IVYBRIDGE(dev_priv) || IS_HASWELL(dev_priv))
> -		intel_de_write(dev_priv, PF_CTL(pipe), PF_ENABLE |
> -			       PF_FILTER_MED_3x3 | PF_PIPE_SEL_IVB(pipe));
> +		intel_de_write_fw(dev_priv, PF_CTL(pipe), PF_ENABLE |
> +				  PF_FILTER_MED_3x3 | PF_PIPE_SEL_IVB(pipe));
>  	else
> -		intel_de_write(dev_priv, PF_CTL(pipe), PF_ENABLE |
> -			       PF_FILTER_MED_3x3);
> -	intel_de_write(dev_priv, PF_WIN_POS(pipe), x << 16 | y);
> -	intel_de_write(dev_priv, PF_WIN_SZ(pipe), width << 16 | height);
> +		intel_de_write_fw(dev_priv, PF_CTL(pipe), PF_ENABLE |
> +				  PF_FILTER_MED_3x3);
> +	intel_de_write_fw(dev_priv, PF_WIN_POS(pipe), x << 16 | y);
> +	intel_de_write_fw(dev_priv, PF_WIN_SZ(pipe), width << 16 | height);
>  }
>  
>  static void intel_crtc_dpms_overlay_disable(struct intel_crtc *crtc)
> @@ -2022,9 +2022,9 @@ void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state)
>  	if (!old_crtc_state->pch_pfit.enabled)
>  		return;
>  
> -	intel_de_write(dev_priv, PF_CTL(pipe), 0);
> -	intel_de_write(dev_priv, PF_WIN_POS(pipe), 0);
> -	intel_de_write(dev_priv, PF_WIN_SZ(pipe), 0);
> +	intel_de_write_fw(dev_priv, PF_CTL(pipe), 0);
> +	intel_de_write_fw(dev_priv, PF_WIN_POS(pipe), 0);
> +	intel_de_write_fw(dev_priv, PF_WIN_SZ(pipe), 0);
>  }
>  
>  static void ilk_crtc_disable(struct intel_atomic_state *state,
> -- 
> 2.34.1
> 
