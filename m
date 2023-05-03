Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95AF66F5A3D
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 16:38:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3077310E13C;
	Wed,  3 May 2023 14:38:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50E5010E13C
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 14:38:32 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id BCD5060F23;
 Wed,  3 May 2023 14:38:31 +0000 (UTC)
Received: from rdvivi-mobl4 (fmdmzpr02-ext.fm.intel.com [192.55.54.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id 8E88AC433D2;
 Wed,  3 May 2023 14:38:29 +0000 (UTC)
Date: Wed, 3 May 2023 10:38:27 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZFJx4xxeUlFM3PTp@rdvivi-mobl4>
References: <cover.1683041799.git.jani.nikula@intel.com>
 <7f201c6cb715e4b3cece78ffa893a75610ecd27d.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7f201c6cb715e4b3cece78ffa893a75610ecd27d.1683041799.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 19/24] drm/i915/active: fix kernel-doc for
 function parameters
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

On Tue, May 02, 2023 at 06:37:36PM +0300, Jani Nikula wrote:
> drivers/gpu/drm/i915/i915_active.h:66: warning: Function parameter or member 'active' not described in '__i915_active_fence_init'
> drivers/gpu/drm/i915/i915_active.h:66: warning: Function parameter or member 'fence' not described in '__i915_active_fence_init'
> drivers/gpu/drm/i915/i915_active.h:66: warning: Function parameter or member 'fn' not described in '__i915_active_fence_init'
> drivers/gpu/drm/i915/i915_active.h:89: warning: Function parameter or member 'active' not described in 'i915_active_fence_set'
> drivers/gpu/drm/i915/i915_active.h:89: warning: Function parameter or member 'rq' not described in 'i915_active_fence_set'
> drivers/gpu/drm/i915/i915_active.h:102: warning: Function parameter or member 'active' not described in 'i915_active_fence_get'
> drivers/gpu/drm/i915/i915_active.h:122: warning: Function parameter or member 'active' not described in 'i915_active_fence_isset'
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_active.h | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
> index 7eb44132183a..77c676ecc263 100644
> --- a/drivers/gpu/drm/i915/i915_active.h
> +++ b/drivers/gpu/drm/i915/i915_active.h
> @@ -49,9 +49,9 @@ void i915_active_noop(struct dma_fence *fence, struct dma_fence_cb *cb);
>  
>  /**
>   * __i915_active_fence_init - prepares the activity tracker for use
> - * @active - the active tracker
> - * @fence - initial fence to track, can be NULL
> - * @func - a callback when then the tracker is retired (becomes idle),
> + * @active: the active tracker
> + * @fence: initial fence to track, can be NULL
> + * @fn: a callback when then the tracker is retired (becomes idle),
>   *         can be NULL
>   *
>   * i915_active_fence_init() prepares the embedded @active struct for use as
> @@ -77,8 +77,8 @@ __i915_active_fence_set(struct i915_active_fence *active,
>  
>  /**
>   * i915_active_fence_set - updates the tracker to watch the current fence
> - * @active - the active tracker
> - * @rq - the request to watch
> + * @active: the active tracker
> + * @rq: the request to watch
>   *
>   * i915_active_fence_set() watches the given @rq for completion. While
>   * that @rq is busy, the @active reports busy. When that @rq is signaled
> @@ -89,7 +89,7 @@ i915_active_fence_set(struct i915_active_fence *active,
>  		      struct i915_request *rq);
>  /**
>   * i915_active_fence_get - return a reference to the active fence
> - * @active - the active tracker
> + * @active: the active tracker
>   *
>   * i915_active_fence_get() returns a reference to the active fence,
>   * or NULL if the active tracker is idle. The reference is obtained under RCU,
> @@ -111,7 +111,7 @@ i915_active_fence_get(struct i915_active_fence *active)
>  
>  /**
>   * i915_active_fence_isset - report whether the active tracker is assigned
> - * @active - the active tracker
> + * @active: the active tracker
>   *
>   * i915_active_fence_isset() returns true if the active tracker is currently
>   * assigned to a fence. Due to the lazy retiring, that fence may be idle
> -- 
> 2.39.2
> 
