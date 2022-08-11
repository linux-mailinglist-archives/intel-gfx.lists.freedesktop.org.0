Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 416DF590369
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 18:24:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7677C14AAC8;
	Thu, 11 Aug 2022 16:24:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0C4312B38A
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 16:23:56 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id s11so23546904edd.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 09:23:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc; bh=CGJLh5fwI8XQrf/HgES3NshCYyQG5xarWVJzeoV1rSA=;
 b=CfnDNDaKyp87KPpjlPIaY/VdjjfMO93y7z/gyXNUM0yyP2OYcvOn2iq06TrcsajXyz
 woIkq1LLzB998oamfVoVI4oxQTzA2UuPNydRbETjpovVKzSvMRwIav+RwIBrNb2hfkA0
 NlQYBj47L7BB/jjgMvUvYqzBlT9zZNwI7JFf8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc;
 bh=CGJLh5fwI8XQrf/HgES3NshCYyQG5xarWVJzeoV1rSA=;
 b=M0Zb5I452M+RS8A2/WeLxHtaLI3XGNIlNKkTQ49Ifu8WD+Fqt3hrA7fS1u7tcTfZg0
 rnIogyODie4TtjLYcPhiyHSQQfcAZmDDZewHflYBy8i9VGdI6kmZgNpLQHdmfm0b6nG3
 aDjinNeB62EDYky9pQPJPuq0kicgz8WejuotAfX4pJ/zcmJFFaCZ0Fju8NYe9MYXsRiw
 z1aYeVxS8CUh6hClUcI7gIEd1t08esuhMcmx3UTMrdTXWKT+ubQ2R1lbxQ1MPeo6cYXH
 udWzaXPyh6a9Ol9bw8OeiVbDirLPUw/TPWp4y4I7SDka+cBEzWKPF9QsTkflYg1fR8dZ
 B45g==
X-Gm-Message-State: ACgBeo0E5lciSq5aBEQALZjz/czzAjm306Dxs8mYUFzcZXKI/b2qJayn
 GP0rv0XOYwwlpIYFDw5t7C7h7pA7Uh2xv3HR
X-Google-Smtp-Source: AA6agR7QfAREBCz6ilh9rq8pFJoYiu/o9wkD4Gho91MFI33EXm2Vz/b6UWPUtmSt4Mc3qXg+55Gy9w==
X-Received: by 2002:aa7:c9c2:0:b0:440:b458:9403 with SMTP id
 i2-20020aa7c9c2000000b00440b4589403mr17865619edt.132.1660235034917; 
 Thu, 11 Aug 2022 09:23:54 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 fx9-20020a170906b74900b0073094d244d6sm3649026ejb.55.2022.08.11.09.23.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Aug 2022 09:23:53 -0700 (PDT)
Date: Thu, 11 Aug 2022 18:23:52 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <YvUtGBkK7B3DZgjc@phenom.ffwll.local>
References: <20220715134958.2605746-1-jouni.hogander@intel.com>
 <20220715134958.2605746-2-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220715134958.2605746-2-jouni.hogander@intel.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 1/3] drm: Use original src rect while
 initializing damage iterator
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 15, 2022 at 04:49:56PM +0300, Jouni Högander wrote:
> drm_plane_state->src might be modified by the driver. This is done
> e.g. in i915 driver when there is bigger framebuffer than the plane
> and there is some offset within framebuffer. I915 driver calculates
> separate offset and adjusts src rect coords to be relative to this
> offset. Damage clips are still relative to original src coords
> provided by user-space.
> 
> This patch ensures original coordinates provided by user-space are
> used when initiliazing damage iterator.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Ah kunit test for this would be awesome. Iirc we have a few already for
rect/damage stuff, defo should extend/fix those.
-Daniel

> ---
>  drivers/gpu/drm/drm_damage_helper.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_damage_helper.c b/drivers/gpu/drm/drm_damage_helper.c
> index 937b699ac2a8..d8b2955e88fd 100644
> --- a/drivers/gpu/drm/drm_damage_helper.c
> +++ b/drivers/gpu/drm/drm_damage_helper.c
> @@ -224,6 +224,7 @@ drm_atomic_helper_damage_iter_init(struct drm_atomic_helper_damage_iter *iter,
>  				   const struct drm_plane_state *old_state,
>  				   const struct drm_plane_state *state)
>  {
> +	struct drm_rect src;
>  	memset(iter, 0, sizeof(*iter));
>  
>  	if (!state || !state->crtc || !state->fb || !state->visible)
> @@ -233,10 +234,12 @@ drm_atomic_helper_damage_iter_init(struct drm_atomic_helper_damage_iter *iter,
>  	iter->num_clips = drm_plane_get_damage_clips_count(state);
>  
>  	/* Round down for x1/y1 and round up for x2/y2 to catch all pixels */
> -	iter->plane_src.x1 = state->src.x1 >> 16;
> -	iter->plane_src.y1 = state->src.y1 >> 16;
> -	iter->plane_src.x2 = (state->src.x2 >> 16) + !!(state->src.x2 & 0xFFFF);
> -	iter->plane_src.y2 = (state->src.y2 >> 16) + !!(state->src.y2 & 0xFFFF);
> +	src = drm_plane_state_src(state);
> +
> +	iter->plane_src.x1 = src.x1 >> 16;
> +	iter->plane_src.y1 = src.y1 >> 16;
> +	iter->plane_src.x2 = (src.x2 >> 16) + !!(src.x2 & 0xFFFF);
> +	iter->plane_src.y2 = (src.y2 >> 16) + !!(src.y2 & 0xFFFF);
>  
>  	if (!iter->clips || !drm_rect_equals(&state->src, &old_state->src)) {
>  		iter->clips = NULL;
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
