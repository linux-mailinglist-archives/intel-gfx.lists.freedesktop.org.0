Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0392D3167B5
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Feb 2021 14:16:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 310926EC8B;
	Wed, 10 Feb 2021 13:16:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F2336EC8B
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Feb 2021 13:16:34 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id m13so2445843wro.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Feb 2021 05:16:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=1UsD0YQq8BXrBVlSyYQfOlW5dQ+OGtniw4usrBTNPn8=;
 b=J8Q/NoEub8AfQpnESREJRauWcLGbTA0LyaBXZMsKRsx/KdDlDAbv69BUieot5/ygjv
 F/1D/OPKy0hmcM3ys2791n71LUgzZvwQtgF9VuYiNalXtBvOKzHexErGjk4tfONYWS6F
 eY0Tb8u6rXXc30fIQugW+T9SIltN/QfGZ/1GA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1UsD0YQq8BXrBVlSyYQfOlW5dQ+OGtniw4usrBTNPn8=;
 b=SydHf47MUmCCJpXRKQssyHIoh3DCfJ8sXFXfQAi0ACC0iV/w6QycAgeLr3mFoGPZWG
 O+I9Qs/BThdD+RNOdyloaM9fY88y0dnQ00Lm9ckcnKTdMvZCyA2fXIPLeqtpGqhJyPq+
 AlzbMJyhWYSh1MaYjTSvsAa6nL7YN8K2yQ6NkptlS/95+hvclf4eS+8SP0kwQPwudjmZ
 YnoF5jFXXZ2FIgAM0Xudggat8N3os/ByIhEOHzfUcHxpwbc95+lMU3b9nCnoclmBCnJ3
 IiLwg8p5ZgDeyGsXJ5nMTp+v3h8ZujtG1YHQFfPkBnC71j0qgy6EGCFQcgzT2KkaP/ie
 kKPg==
X-Gm-Message-State: AOAM533zZnbnOvbR3P+CTNR/WEp0J2K8RzqTB8iy+pUT3ok3mNeN4W5U
 1HNZUDuCZBAvHayntNlrxAieSg==
X-Google-Smtp-Source: ABdhPJyQ2g8cLyQ9blwIwLYpe7LjuwbjxbBbDhOE9uu7HsGwwA0kISsFLaHgxe/xfDRw9TnBUPWDJA==
X-Received: by 2002:adf:b749:: with SMTP id n9mr3562143wre.267.1612962993015; 
 Wed, 10 Feb 2021 05:16:33 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y11sm2963977wrh.16.2021.02.10.05.16.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 05:16:32 -0800 (PST)
Date: Wed, 10 Feb 2021 14:16:30 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <YCPcrusmPxj0iGxz@phenom.ffwll.local>
References: <20210210001401.463-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210210001401.463-1-manasi.d.navare@intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/atomic: document and enforce
 rules around "spurious" EBUSY"
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
Cc: Daniel Vetter <daniel.vetter@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 09, 2021 at 04:14:01PM -0800, Manasi Navare wrote:
> This reverts commit fb6473a48b635c55d04eb94e579eede52ef39550.
> 
> These additional checks added to avoid EBUSY give unnecessary WARN_ON
> in case of big joiner used in i915 in which case even if the modeset
> is requested on a single pipe, internally another consecutive
> pipe is stolen and used to drive half of the transcoder timings.
> So in this case it is expected that requested crtc and affected crtcs
> do not match. Hence the added WARN ON becomes irrelevant.
> But there is no easy solution to get the bigjoiner information
> here at drm level. So for now revert this until we work out
> a better solution.
> 
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Daniel Vetter <daniel.vetter@intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>

Nope. We can maybe rework this so that i915 can do stuff under the hood,
but wrt uapi this was the thing we discussed with compositors. Without
such a guarantee atomic is defacto broken from a compositor pov.

This WARN_ON is not unecessary, compositor people really do not want the
kernel to throw around spurious EBUSY they have no visibility into.

Please also cc all the compositor people from my original patch if you
change anything in this area.
-Daniel


> ---
>  drivers/gpu/drm/drm_atomic.c | 29 -----------------------------
>  1 file changed, 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
> index b1efa9322be2..48b2262d69f6 100644
> --- a/drivers/gpu/drm/drm_atomic.c
> +++ b/drivers/gpu/drm/drm_atomic.c
> @@ -320,10 +320,6 @@ EXPORT_SYMBOL(__drm_atomic_state_free);
>   * needed. It will also grab the relevant CRTC lock to make sure that the state
>   * is consistent.
>   *
> - * WARNING: Drivers may only add new CRTC states to a @state if
> - * drm_atomic_state.allow_modeset is set, or if it's a driver-internal commit
> - * not created by userspace through an IOCTL call.
> - *
>   * Returns:
>   *
>   * Either the allocated state or the error code encoded into the pointer. When
> @@ -1306,15 +1302,10 @@ int drm_atomic_check_only(struct drm_atomic_state *state)
>  	struct drm_crtc_state *new_crtc_state;
>  	struct drm_connector *conn;
>  	struct drm_connector_state *conn_state;
> -	unsigned requested_crtc = 0;
> -	unsigned affected_crtc = 0;
>  	int i, ret = 0;
>  
>  	DRM_DEBUG_ATOMIC("checking %p\n", state);
>  
> -	for_each_new_crtc_in_state(state, crtc, new_crtc_state, i)
> -		requested_crtc |= drm_crtc_mask(crtc);
> -
>  	for_each_oldnew_plane_in_state(state, plane, old_plane_state, new_plane_state, i) {
>  		ret = drm_atomic_plane_check(old_plane_state, new_plane_state);
>  		if (ret) {
> @@ -1362,26 +1353,6 @@ int drm_atomic_check_only(struct drm_atomic_state *state)
>  		}
>  	}
>  
> -	for_each_new_crtc_in_state(state, crtc, new_crtc_state, i)
> -		affected_crtc |= drm_crtc_mask(crtc);
> -
> -	/*
> -	 * For commits that allow modesets drivers can add other CRTCs to the
> -	 * atomic commit, e.g. when they need to reallocate global resources.
> -	 * This can cause spurious EBUSY, which robs compositors of a very
> -	 * effective sanity check for their drawing loop. Therefor only allow
> -	 * drivers to add unrelated CRTC states for modeset commits.
> -	 *
> -	 * FIXME: Should add affected_crtc mask to the ATOMIC IOCTL as an output
> -	 * so compositors know what's going on.
> -	 */
> -	if (affected_crtc != requested_crtc) {
> -		DRM_DEBUG_ATOMIC("driver added CRTC to commit: requested 0x%x, affected 0x%0x\n",
> -				 requested_crtc, affected_crtc);
> -		WARN(!state->allow_modeset, "adding CRTC not allowed without modesets: requested 0x%x, affected 0x%0x\n",
> -		     requested_crtc, affected_crtc);
> -	}
> -
>  	return 0;
>  }
>  EXPORT_SYMBOL(drm_atomic_check_only);
> -- 
> 2.19.1
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
