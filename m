Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D39424DE393
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 22:31:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC4C710E146;
	Fri, 18 Mar 2022 21:31:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D796C10E146
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 21:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647639088; x=1679175088;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ZcdPHDRP1JQkey5yX3UavIaUqe3os0aHwktbZfWYCzE=;
 b=euOeVubeKAflmevzFvVBT+Bbc1wvS+A8Bv0kFf3fwiE1l2rAoPx1o45r
 qjf3pfF4KFaZL0p/hM/Rln6vMdHalNEmmqnlhx3Vm+o8f5pbPPkR1vdFu
 6egRwJdVxWwygrtzfXipquZ2KlpIT0uk/FKbgA7NBLkBKcJpfhlv/eyEu
 5fq5ZEgOJugTh2SpIoTyoYZR5os1c42pk8ZExLCSzqBteM11piIx3GB24
 tN6DcTQNtgzdrD5amnFxLoguQuwig4dKg9UTB7wT2dCOwSvCgxEotWT1W
 SXdP22wjPDgOot0+Wty5Sm7d80wA3ASkxbspt2V2HtMSZazZz4x7xzDPl g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10290"; a="320439516"
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="320439516"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 14:31:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="635903396"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by FMSMGA003.fm.intel.com with SMTP; 18 Mar 2022 14:31:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Mar 2022 23:31:25 +0200
Date: Fri, 18 Mar 2022 23:31:25 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YjT6LUxYJ0AmDWco@intel.com>
References: <20220318195522.456180-1-jose.souza@intel.com>
 <20220318195522.456180-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220318195522.456180-2-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/display: Add HAS_MBUS_JOINING
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

On Fri, Mar 18, 2022 at 12:55:21PM -0700, José Roberto de Souza wrote:
> This will make easy to extend MBUS joining support to future platforms
> that also supports this feature.
> 
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.h | 2 ++
>  drivers/gpu/drm/i915/intel_pm.c | 6 +++---
>  2 files changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 97622d3ccfc2a..0f7f7ebe23cb0 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1379,6 +1379,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define HAS_PERCTX_PREEMPT_CTRL(i915) \
>  	((GRAPHICS_VER(i915) >= 9) &&  GRAPHICS_VER_FULL(i915) < IP_VER(12, 55))
>  
> +#define HAS_MBUS_JOINING(i915) (IS_ALDERLAKE_P(i915))
> +
>  static inline bool run_as_guest(void)
>  {
>  	return !hypervisor_is_type(X86_HYPER_NATIVE);
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 8ee31c9590a7f..96bb8ecc11668 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -6144,7 +6144,7 @@ skl_compute_ddb(struct intel_atomic_state *state)
>  			return ret;
>  	}
>  
> -	if (IS_ALDERLAKE_P(dev_priv))
> +	if (HAS_MBUS_JOINING(dev_priv))
>  		new_dbuf_state->joined_mbus =
>  			adlp_check_mbus_joined(new_dbuf_state->active_pipes);
>  
> @@ -6636,7 +6636,7 @@ void skl_wm_get_hw_state(struct drm_i915_private *dev_priv)
>  		to_intel_dbuf_state(dev_priv->dbuf.obj.state);
>  	struct intel_crtc *crtc;
>  
> -	if (IS_ALDERLAKE_P(dev_priv))
> +	if (HAS_MBUS_JOINING(dev_priv))
>  		dbuf_state->joined_mbus = intel_de_read(dev_priv, MBUS_CTL) & MBUS_JOIN;
>  
>  	for_each_intel_crtc(&dev_priv->drm, crtc) {
> @@ -8299,7 +8299,7 @@ static void update_mbus_pre_enable(struct intel_atomic_state *state)
>  	const struct intel_dbuf_state *dbuf_state =
>  		intel_atomic_get_new_dbuf_state(state);
>  
> -	if (!IS_ALDERLAKE_P(dev_priv))
> +	if (!HAS_MBUS_JOINING(dev_priv))
>  		return;
>  
>  	/*
> -- 
> 2.35.1

-- 
Ville Syrjälä
Intel
