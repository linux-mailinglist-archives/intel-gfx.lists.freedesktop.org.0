Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD94192398
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 10:04:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 595D66E5BB;
	Wed, 25 Mar 2020 09:04:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74A836E5BB
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 09:04:00 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id a25so1927740wrd.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 02:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=yuE7zUGZhokVX1W0myowET7g78e1lXRD9HQLwDSkBrM=;
 b=MwExjZC5L/YEnIlOpL5reLWHS09R5Vv6iarNLrHEeFbs5j4mUaUzxm0zshhfhkGp4u
 1ud8Fpbtap20KlFZQ5lh1o8dLWkx/ueO933HaBcN+8wuWmoCx8UvShzfKEwsO8KZPA2C
 VT+4QTxh670j9aFy4jbRvtdy4JfLbp3So0bdU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=yuE7zUGZhokVX1W0myowET7g78e1lXRD9HQLwDSkBrM=;
 b=KMKjS7yjm0N2ibjSNzEW2chaBm7a/BywXPoc1ljmnurXlF+0swkb2cSxLzy4aqlf1u
 JOZXQXKACRjbG5Jt5dS3zhmU0ZHJc38tHeWPfs0P6+zsX58TWZJ4JfLpg9eX6GDLVuUR
 g2BviR1VX9nj6pzy7RAu99hO7FEVirBebtCFpGpsIRGLQBzBKYJHq0xAL0k3xNAWKfIx
 TaY6jIRRKnpSMxQ0qgPq1zIm/IWnoB6nL0IpDUTqGT92/yC/eAlHmf806elJJaxg3T+l
 SZ1vj4cTv9qUEDL5zbk98Tbu34Kx39RQi2TysnNf4aN0ltMCwWl67yB8hymIfnSKiskN
 Dyqg==
X-Gm-Message-State: ANhLgQ2iLDbtbXYE156olNEtH0ZwHW/viM6DAxo1Om+PMuAsbhH8fG1I
 V0r8iGpIMv8WP33VPz9LeshgdFwFzFzGj3Kr
X-Google-Smtp-Source: ADFU+vuojxroO53YSQA27Mkz+tWbAey2iypOO1iHMnhli3/bP2fWePhM2RAlJitcIsVFH8ttEUioqA==
X-Received: by 2002:a5d:4ad1:: with SMTP id y17mr2183670wrs.13.1585127038925; 
 Wed, 25 Mar 2020 02:03:58 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z188sm8341298wme.46.2020.03.25.02.03.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 02:03:58 -0700 (PDT)
Date: Wed, 25 Mar 2020 10:03:56 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200325090356.GX2363188@phenom.ffwll.local>
References: <cover.1584714939.git.jani.nikula@intel.com>
 <cac03aba0a363c8f704035f1f771c73385235a35.1584714939.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cac03aba0a363c8f704035f1f771c73385235a35.1584714939.git.jani.nikula@intel.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 12/13] drm/i915/psr: use struct drm_device
 based logging
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
Cc: intel-gfx@lists.freedesktop.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 20, 2020 at 04:36:37PM +0200, Jani Nikula wrote:
> Convert all the DRM_* logging macros to the struct drm_device based
> macros to provide device specific logging.
> 
> No functional changes.
> 
> Generated using the following semantic patch, originally written by
> Wambui Karuga <wambui.karugax@gmail.com>, with manual fixups on top:
> 
> @@
> identifier fn, T;
> @@
> 
> fn(...,struct drm_i915_private *T,...) {
> <+...
> (
> -DRM_INFO(
> +drm_info(&T->drm,
> ...)
> |
> -DRM_NOTE(
> +drm_notice(&T->drm,
> ...)
> |
> -DRM_ERROR(
> +drm_err(&T->drm,
> ...)
> |
> -DRM_WARN(
> +drm_warn(&T->drm,
> ...)
> |
> -DRM_DEBUG_DRIVER(
> +drm_dbg(&T->drm,
> ...)
> |
> -DRM_DEBUG_KMS(
> +drm_dbg_kms(&T->drm,
> ...)
> |
> -DRM_DEBUG_ATOMIC(
> +drm_dbg_atomic(&T->drm,
> ...)
> )
> ...+>
> }
> 
> @@
> identifier fn, T;
> @@
> 
> fn(...) {
> ...
> struct drm_i915_private *T = ...;
> <+...
> (
> -DRM_INFO(
> +drm_info(&T->drm,
> ...)
> |
> -DRM_NOTE(
> +drm_notice(&T->drm,
> ...)
> |
> -DRM_ERROR(
> +drm_err(&T->drm,
> ...)
> |
> -DRM_WARN(
> +drm_warn(&T->drm,
> ...)
> |
> -DRM_DEBUG_DRIVER(
> +drm_dbg(&T->drm,
> ...)
> |
> -DRM_DEBUG_KMS(
> +drm_dbg_kms(&T->drm,
> ...)
> |
> -DRM_DEBUG_ATOMIC(
> +drm_dbg_atomic(&T->drm,
> ...)
> )
> ...+>
> }
> 
> Cc: Wambui Karuga <wambui.karugax@gmail.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 47 +++++++++++++-----------
>  1 file changed, 26 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index fd9b146e3aba..a0569fdfeb16 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -137,41 +137,42 @@ static void psr_irq_control(struct drm_i915_private *dev_priv)
>  	intel_de_write(dev_priv, imr_reg, val);
>  }
>  
> -static void psr_event_print(u32 val, bool psr2_enabled)
> +static void psr_event_print(struct drm_i915_private *i915,
> +			    u32 val, bool psr2_enabled)
>  {
> -	DRM_DEBUG_KMS("PSR exit events: 0x%x\n", val);
> +	drm_dbg_kms(&i915->drm, "PSR exit events: 0x%x\n", val);
>  	if (val & PSR_EVENT_PSR2_WD_TIMER_EXPIRE)
> -		DRM_DEBUG_KMS("\tPSR2 watchdog timer expired\n");
> +		drm_dbg_kms(&i915->drm, "\tPSR2 watchdog timer expired\n");
>  	if ((val & PSR_EVENT_PSR2_DISABLED) && psr2_enabled)
> -		DRM_DEBUG_KMS("\tPSR2 disabled\n");
> +		drm_dbg_kms(&i915->drm, "\tPSR2 disabled\n");
>  	if (val & PSR_EVENT_SU_DIRTY_FIFO_UNDERRUN)
> -		DRM_DEBUG_KMS("\tSU dirty FIFO underrun\n");
> +		drm_dbg_kms(&i915->drm, "\tSU dirty FIFO underrun\n");
>  	if (val & PSR_EVENT_SU_CRC_FIFO_UNDERRUN)
> -		DRM_DEBUG_KMS("\tSU CRC FIFO underrun\n");
> +		drm_dbg_kms(&i915->drm, "\tSU CRC FIFO underrun\n");
>  	if (val & PSR_EVENT_GRAPHICS_RESET)
> -		DRM_DEBUG_KMS("\tGraphics reset\n");
> +		drm_dbg_kms(&i915->drm, "\tGraphics reset\n");
>  	if (val & PSR_EVENT_PCH_INTERRUPT)
> -		DRM_DEBUG_KMS("\tPCH interrupt\n");
> +		drm_dbg_kms(&i915->drm, "\tPCH interrupt\n");
>  	if (val & PSR_EVENT_MEMORY_UP)
> -		DRM_DEBUG_KMS("\tMemory up\n");
> +		drm_dbg_kms(&i915->drm, "\tMemory up\n");
>  	if (val & PSR_EVENT_FRONT_BUFFER_MODIFY)
> -		DRM_DEBUG_KMS("\tFront buffer modification\n");
> +		drm_dbg_kms(&i915->drm, "\tFront buffer modification\n");
>  	if (val & PSR_EVENT_WD_TIMER_EXPIRE)
> -		DRM_DEBUG_KMS("\tPSR watchdog timer expired\n");
> +		drm_dbg_kms(&i915->drm, "\tPSR watchdog timer expired\n");
>  	if (val & PSR_EVENT_PIPE_REGISTERS_UPDATE)
> -		DRM_DEBUG_KMS("\tPIPE registers updated\n");
> +		drm_dbg_kms(&i915->drm, "\tPIPE registers updated\n");
>  	if (val & PSR_EVENT_REGISTER_UPDATE)
> -		DRM_DEBUG_KMS("\tRegister updated\n");
> +		drm_dbg_kms(&i915->drm, "\tRegister updated\n");
>  	if (val & PSR_EVENT_HDCP_ENABLE)
> -		DRM_DEBUG_KMS("\tHDCP enabled\n");
> +		drm_dbg_kms(&i915->drm, "\tHDCP enabled\n");
>  	if (val & PSR_EVENT_KVMR_SESSION_ENABLE)
> -		DRM_DEBUG_KMS("\tKVMR session enabled\n");
> +		drm_dbg_kms(&i915->drm, "\tKVMR session enabled\n");
>  	if (val & PSR_EVENT_VBI_ENABLE)
> -		DRM_DEBUG_KMS("\tVBI enabled\n");
> +		drm_dbg_kms(&i915->drm, "\tVBI enabled\n");
>  	if (val & PSR_EVENT_LPSP_MODE_EXIT)
> -		DRM_DEBUG_KMS("\tLPSP mode exited\n");
> +		drm_dbg_kms(&i915->drm, "\tLPSP mode exited\n");
>  	if ((val & PSR_EVENT_PSR_DISABLE) && !psr2_enabled)
> -		DRM_DEBUG_KMS("\tPSR disabled\n");
> +		drm_dbg_kms(&i915->drm, "\tPSR disabled\n");
>  }
>  
>  void intel_psr_irq_handler(struct drm_i915_private *dev_priv, u32 psr_iir)
> @@ -209,7 +210,7 @@ void intel_psr_irq_handler(struct drm_i915_private *dev_priv, u32 psr_iir)
>  
>  			intel_de_write(dev_priv, PSR_EVENT(cpu_transcoder),
>  				       val);
> -			psr_event_print(val, psr2_enabled);
> +			psr_event_print(dev_priv, val, psr2_enabled);
>  		}
>  	}
>  
> @@ -249,18 +250,21 @@ static bool intel_dp_get_alpm_status(struct intel_dp *intel_dp)
>  
>  static u8 intel_dp_get_sink_sync_latency(struct intel_dp *intel_dp)
>  {
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	u8 val = 8; /* assume the worst if we can't read the value */
>  
>  	if (drm_dp_dpcd_readb(&intel_dp->aux,
>  			      DP_SYNCHRONIZATION_LATENCY_IN_SINK, &val) == 1)
>  		val &= DP_MAX_RESYNC_FRAME_COUNT_MASK;
>  	else
> -		DRM_DEBUG_KMS("Unable to get sink synchronization latency, assuming 8 frames\n");
> +		drm_dbg_kms(&i915->drm,
> +			    "Unable to get sink synchronization latency, assuming 8 frames\n");
>  	return val;
>  }
>  
>  static u16 intel_dp_get_su_x_granulartiy(struct intel_dp *intel_dp)
>  {
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	u16 val;
>  	ssize_t r;
>  
> @@ -273,7 +277,8 @@ static u16 intel_dp_get_su_x_granulartiy(struct intel_dp *intel_dp)
>  
>  	r = drm_dp_dpcd_read(&intel_dp->aux, DP_PSR2_SU_X_GRANULARITY, &val, 2);
>  	if (r != 2)
> -		DRM_DEBUG_KMS("Unable to read DP_PSR2_SU_X_GRANULARITY\n");
> +		drm_dbg_kms(&i915->drm,
> +			    "Unable to read DP_PSR2_SU_X_GRANULARITY\n");
>  
>  	/*
>  	 * Spec says that if the value read is 0 the default granularity should

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
