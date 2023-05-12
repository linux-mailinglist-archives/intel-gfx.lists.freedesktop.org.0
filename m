Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 543667009F1
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 16:07:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDE7510E6C9;
	Fri, 12 May 2023 14:07:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C0E810E6CB
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 14:07:00 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id DF1D1656FB;
 Fri, 12 May 2023 14:06:59 +0000 (UTC)
Received: from rdvivi-mobl4 (unknown [192.55.55.57])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id 145DFC4339B;
 Fri, 12 May 2023 14:06:57 +0000 (UTC)
Date: Fri, 12 May 2023 10:06:56 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZF5IAJeKB1XeO5t/@rdvivi-mobl4>
References: <20230512110444.1448231-1-jani.nikula@intel.com>
 <20230512110444.1448231-3-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230512110444.1448231-3-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/display: remove
 I915_STATE_WARN_ON()
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

On Fri, May 12, 2023 at 02:04:43PM +0300, Jani Nikula wrote:
> Remove the unused macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.h | 15 ++++++---------
>  1 file changed, 6 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index ac95961f68ba..8f451aaf5760 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -538,12 +538,12 @@ void assert_transcoder(struct drm_i915_private *dev_priv,
>  #define assert_transcoder_enabled(d, t) assert_transcoder(d, t, true)
>  #define assert_transcoder_disabled(d, t) assert_transcoder(d, t, false)
>  
> -/* Use I915_STATE_WARN(x) and I915_STATE_WARN_ON() (rather than WARN() and
> - * WARN_ON()) for hw state sanity checks to check for unexpected conditions
> - * which may not necessarily be a user visible problem.  This will either
> - * WARN() or DRM_ERROR() depending on the verbose_checks moduleparam, to
> - * enable distros and users to tailor their preferred amount of i915 abrt
> - * spam.
> +/*
> + * Use I915_STATE_WARN(x) (rather than WARN() and WARN_ON()) for hw state sanity
> + * checks to check for unexpected conditions which may not necessarily be a user
> + * visible problem. This will either WARN() or DRM_ERROR() depending on the
> + * verbose_state_checks module param, to enable distros and users to tailor
> + * their preferred amount of i915 abrt spam.
>   */
>  #define I915_STATE_WARN(condition, format...) ({			\
>  	int __ret_warn_on = !!(condition);				\
> @@ -553,9 +553,6 @@ void assert_transcoder(struct drm_i915_private *dev_priv,
>  	unlikely(__ret_warn_on);					\
>  })
>  
> -#define I915_STATE_WARN_ON(x)						\
> -	I915_STATE_WARN((x), "%s", "WARN_ON(" __stringify(x) ")")
> -
>  bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915);
>  
>  #endif
> -- 
> 2.39.2
> 
