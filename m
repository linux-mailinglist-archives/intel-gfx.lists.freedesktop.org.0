Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F101819234C
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 09:53:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31C3B89CBE;
	Wed, 25 Mar 2020 08:53:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1854F89CBE
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 08:53:28 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id b2so1779071wrj.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 01:53:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=TRBtrfzLIpoZpMJsAST6XQSOX+CprSIVvqLrEW88Feg=;
 b=D8W398mfGn7Ep+UaSdni8r4jpt5O5hK4wGbr05EvQm2WI+XUWOUXd4c9VHyloyQ1KI
 yYfzfOZ22MzdceGuUrDFlhKFZdTMqGqLq9xAjc8iWk9UOwK8uj8Zt5VdJskPjuNcWD3y
 UyzC/4FFGDVTfWg08dnByPPglkiLX21lX6CZE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=TRBtrfzLIpoZpMJsAST6XQSOX+CprSIVvqLrEW88Feg=;
 b=VLzhzxTSWRwLPJa1MKrHMXRpWJait8MlIUJPMUZsULdqFWRIER5xyRs84QuMji3RKF
 VMxarZWMeEqjLPK8lVu4mnrv6ToJbtjtqWwXGYnwkgUH3FiEPOyiZGh3tPEvYJRdTEdz
 kC3ZImWO7ekBTJS7/xXn00OaBgtciXbtQCkr3uNzq6TGNARbec8rwpIIWcZ54GA7lMeJ
 8XoAr6xSnbreaSd4j5IikydfUghPXv4LSuYrRisud6w996qLzW8Juhxd7P0Y8jpTTLJy
 8sZPy9WyWuPTV3BhgDTjmVN43l1/DnTSRx1lQJWMwgd++P2S50Kv/svcfoaZv+8cyb1Q
 No6w==
X-Gm-Message-State: ANhLgQ1xKxYwtrTYT/RfFXWY71WZu7F90EZpZIJOUpcU4l66LmKHgCjr
 fkIFsh1jfUSkd7hP0v3HpELQPw==
X-Google-Smtp-Source: ADFU+vvTlJMS5Wo5IhZs3NOocu+8AXYM7O/FBtXLjibLpu0M8/t30c6AhAfQEVR7meQlJedX/uBl9Q==
X-Received: by 2002:adf:9dc6:: with SMTP id q6mr2221707wre.70.1585126406648;
 Wed, 25 Mar 2020 01:53:26 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f207sm8561351wme.9.2020.03.25.01.53.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 01:53:25 -0700 (PDT)
Date: Wed, 25 Mar 2020 09:53:23 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200325085323.GU2363188@phenom.ffwll.local>
References: <cover.1584714939.git.jani.nikula@intel.com>
 <e08dbd1933e1dbbd8e9f1954f5b0a9db946c4e7d.1584714939.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e08dbd1933e1dbbd8e9f1954f5b0a9db946c4e7d.1584714939.git.jani.nikula@intel.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 09/13] drm/i915/tv: use struct drm_device
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

On Fri, Mar 20, 2020 at 04:36:34PM +0200, Jani Nikula wrote:
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

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/i915/display/intel_tv.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
> index d2e3a3a323e9..5de39cfce054 100644
> --- a/drivers/gpu/drm/i915/display/intel_tv.c
> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
> @@ -1698,13 +1698,13 @@ intel_tv_detect(struct drm_connector *connector,
>  		struct drm_modeset_acquire_ctx *ctx,
>  		bool force)
>  {
> +	struct drm_i915_private *i915 = to_i915(connector->dev);
>  	struct intel_tv *intel_tv = intel_attached_tv(to_intel_connector(connector));
>  	enum drm_connector_status status;
>  	int type;
>  
> -	DRM_DEBUG_KMS("[CONNECTOR:%d:%s] force=%d\n",
> -		      connector->base.id, connector->name,
> -		      force);
> +	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] force=%d\n",
> +		    connector->base.id, connector->name, force);
>  
>  	if (force) {
>  		struct intel_load_detect_pipe tmp;
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
