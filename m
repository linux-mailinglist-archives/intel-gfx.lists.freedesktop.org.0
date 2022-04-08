Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2284F8FE2
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 09:51:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF7F910E119;
	Fri,  8 Apr 2022 07:51:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B498E10E119
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Apr 2022 07:51:34 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id
 123-20020a1c1981000000b0038b3616a71aso4987231wmz.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 08 Apr 2022 00:51:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=vUjpsY5q/c5tzrM0OoGXpOilbdNFFXWAaFiDTXvKJ6Y=;
 b=KNevCjOa/+H+/Q0VQdORo07OQ0lcDOh37v20u+eQU6w/Qk2PnTuKjvLrVnmcVjZvcm
 vSHidPMwG4wYcSPKxrSIFUg3jS2UGhG5RYka2INcdq9mQLiDw/8rcMCAq2W4G6frHnFC
 iaGZhlz3F6OT5rjeSpHXaDiV+FeyEU7vUz+cw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vUjpsY5q/c5tzrM0OoGXpOilbdNFFXWAaFiDTXvKJ6Y=;
 b=Ukd2BlqFtueJn3/9Cead0cC1DAt7zX0eZU3KyDjID5KcFKkXGKU6X2id9ZAfA1POx5
 ytuKUCPgDZ8bdQJXh3S+3xUkQj3YAcHE3nQOVe8fvhKJoGVkbjChd5ijHaYY1P1br864
 T4g9fVtSLxPRDM22zdAV6iCM6aEfj/3CYz69VmlNFiReQ2q0k5pw+gSES3U22m7V8Ii8
 zO+GEa5m0blcgj4xJzVMB2qhbV0uSJzHhu+0sZm4Rcx2wWATfvp7nV/HjaBvuerO98rt
 Y2cgS+uWZr97I68NvYmGMqbE1JMTdGYDI+5q8+/U2TSUO0smRpWLa/Yjv6ninEbk42yW
 hDmQ==
X-Gm-Message-State: AOAM531KaMsxs3QN/Si4Uz9DTj1eyFOc8EomEyJPmQkU5jE+uCZBpj7K
 HQCgamkmrRswTxPKEI68zMZZxA==
X-Google-Smtp-Source: ABdhPJyROd+V67rJKMsBRxU/MD5VdHtmr2l3ZHUPZEJYV/8JHmYhm6Fkj0xYiZJShMLK9qVCRG5gpg==
X-Received: by 2002:a7b:c159:0:b0:38e:8e5f:4390 with SMTP id
 z25-20020a7bc159000000b0038e8e5f4390mr6750016wmi.145.1649404293210; 
 Fri, 08 Apr 2022 00:51:33 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 n1-20020a1ca401000000b0038e748c2f64sm9566245wme.31.2022.04.08.00.51.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Apr 2022 00:51:32 -0700 (PDT)
Date: Fri, 8 Apr 2022 09:51:30 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Message-ID: <Yk/pgo9nI6bm0v8r@phenom.ffwll.local>
References: <20220405210335.3434130-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220405210335.3434130-1-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH v3 00/17] fbcon cleanups
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 05, 2022 at 11:03:18PM +0200, Daniel Vetter wrote:
> Hi all,
> 
> Finally got around to respin this. Changes:
> - Bunch more acks and r-b, still not yet all patches.
> - one tiny fix for a bisect issue, end result was all fine
> - I dropped the last to patches to make registered_fb private, that needs
>   more work around how we handle the unregister vs driver load races
>   around fw fbdev drivers.
> 
> Review and acks on the remaining patches very much welcome, I'd like to
> push this pile.

I realized I got reviews/acks on all of them already, so pushed the lot.

Thanks everyone who helped.
-Daniel

> 
> Thanks, Daniel
> 
> Daniel Vetter (17):
>   fbcon: delete a few unneeded forward decl
>   fbcon: Move fbcon_bmove(_rec) functions
>   fbcon: Introduce wrapper for console->fb_info lookup
>   fbcon: delete delayed loading code
>   fbdev/sysfs: Fix locking
>   fbcon: Use delayed work for cursor
>   fbcon: Replace FBCON_FLAGS_INIT with a boolean
>   fb: Delete fb_info->queue
>   fbcon: Extract fbcon_open/release helpers
>   fbcon: Ditch error handling for con2fb_release_oldinfo
>   fbcon: move more common code into fb_open()
>   fbcon: use lock_fb_info in fbcon_open/release
>   fbcon: Consistently protect deferred_takeover with console_lock()
>   fbcon: Move console_lock for register/unlink/unregister
>   fbcon: Move more code into fbcon_release
>   fbcon: untangle fbcon_exit
>   fbcon: Maintain a private array of fb_info
> 
>  drivers/video/fbdev/core/fbcon.c   | 692 ++++++++++++++---------------
>  drivers/video/fbdev/core/fbcon.h   |   8 +-
>  drivers/video/fbdev/core/fbmem.c   |  27 +-
>  drivers/video/fbdev/core/fbsysfs.c |   2 +
>  include/linux/fb.h                 |   1 -
>  5 files changed, 333 insertions(+), 397 deletions(-)
> 
> -- 
> 2.34.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
