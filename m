Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8016D7DAD
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 15:25:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0333810E95D;
	Wed,  5 Apr 2023 13:25:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF37F10E95D
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 13:25:22 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id
 a640c23a62f3a-930bc91df7bso115558166b.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 06:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1680701121;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=CUtULfA5bLZhhAnqEVdsPO4f4/cotKXMpX/rBKrBwCU=;
 b=I+E9eZK0O0wCuaG3RpVayfgX04qh8RTiRNjffiQYHn0uWhBbKHKxNdeIPxonIxU8ED
 Qkikb7s817DwN6tIqPLt7G5Lm0Ro1PkGnzdJGnWgPYTrUO/6zV3wAzqCdzS0JWzDCuKR
 iqXxo30r5oXOhJOTgaZNSkjJWFgk2k4uj5DOk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680701121;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=CUtULfA5bLZhhAnqEVdsPO4f4/cotKXMpX/rBKrBwCU=;
 b=n4H6TYcVJulGjV+JnJPllloFjX4oKVbXez8VNo9hturcBWybuG16BIMUoL0dEEe8jJ
 c+tph7Kjj7lvMTx8TWRFB01KriaBZwNL+AVS2/L92DlwU5GT/cHRrmqNlBWGWVmlupzG
 hxCuRN1VtUVCaByiVl+w5QIn6AAkTMOE7NRne+aru56Xo4j51MMyZxPvspgP8J+N8s+F
 jocuVjDbX22/sWiscy4iFlj8tlDpYDnxwH2LNjRA2M2xfclg6RwbZPFdOYXld/34SYia
 31cMmmLnPbuZgxjrIE5I8D4TJaG4mWRpZIG1ef1AoCW6cneNI0t6q0BbSj0PgLKpuHdK
 womQ==
X-Gm-Message-State: AAQBX9d5aYB6o4VXgugpNYTlZSUvjSht7VVmnGlbOXNawQ16EqsWC3x3
 PYMH25Tolm2fX+VyUhPjDcrAFg==
X-Google-Smtp-Source: AKy350ZsNc/rtqu1NEGe53/lPebNr5LRx0G5RnZDO64RCYwlrsQnnIhn7bHPhGrr/AyAN7Sjecj++g==
X-Received: by 2002:a17:906:2216:b0:947:bff2:1c2d with SMTP id
 s22-20020a170906221600b00947bff21c2dmr3058456ejs.3.1680701120972; 
 Wed, 05 Apr 2023 06:25:20 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 bv20-20020a170906b1d400b009447277c2aasm7371257ejb.39.2023.04.05.06.25.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Apr 2023 06:25:20 -0700 (PDT)
Date: Wed, 5 Apr 2023 15:25:18 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Javier Martinez Canillas <javierm@redhat.com>
Message-ID: <ZC12vod/gn6vpHOR@phenom.ffwll.local>
References: <20230404194038.472803-1-daniel.vetter@ffwll.ch>
 <87h6tud3zc.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87h6tud3zc.fsf@minerva.mail-host-address-is-not-set>
X-Operating-System: Linux phenom 6.1.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/fb-helper: set x/yres_virtual in
 drm_fb_helper_check_var
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 syzbot+20dcf81733d43ddff661@syzkaller.appspotmail.com, stable@vger.kernel.org,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, Daniel Vetter <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 05, 2023 at 12:21:11PM +0200, Javier Martinez Canillas wrote:
> Daniel Vetter <daniel.vetter@ffwll.ch> writes:
> 
> > Drivers are supposed to fix this up if needed if they don't outright
> > reject it. Uncovered by 6c11df58fd1a ("fbmem: Check virtual screen
> > sizes in fb_set_var()").
> >
> 
> Should have a Fixes: tag ? I understand what was uncovered by that commit
> but it help distros to figure out if something has to be cherry-picked by
> them. So I believe that would be useful to have it.
> 
> The patch looks good to me.

The cc: stable should go far enough back for that. Or that was at least my
idea ... I can add the Fixes: back since I had it but dropped it
intentionally because it's not really a bug in the fbmem patch.
-Daniel

> Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
> 
> -- 
> Best regards,
> 
> Javier Martinez Canillas
> Core Platforms
> Red Hat
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
