Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D99221A2182
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 14:16:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AC556EA50;
	Wed,  8 Apr 2020 12:15:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CFA16EA55
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 12:15:58 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id c195so10373wme.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Apr 2020 05:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ZGE9Gm7kKJAzoMqYSEZGw7bs4qlg1yVbTDVhmaW9yJQ=;
 b=GWi5OKltfxNgA/JMoGDLbjGuWShYouFP+q5ffkwrmslkjwBLPJgQSfUQHa/fCN9ZPX
 RRLQp/8WjdDo/3DpbU7pL4XeHbQNFAb8FO1FnqTCsxOwKJlqk+dG7qPy6F9lTfU11GyN
 dh2h2iP4vzUVkO7IFQ8flQ+Kz86eTOAmXJGk8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZGE9Gm7kKJAzoMqYSEZGw7bs4qlg1yVbTDVhmaW9yJQ=;
 b=uOXeXcW+bo19bQ2vQdjn2wRStgEqZqL90olAOKXRkO3rXj8gZ40DtroxpAJCMloqom
 LDdzcZ7u271Pf15Rrf4l7392j9U8zlUj4wSefUBdxZH4m8Z7XHW+pn+40cSIpbPjJPF+
 YWGZt/IZjD0v8sQq4TG2Miy3jfOqFsRUJlT1l6q6fDgKiYFGomjYrqbLxpHuMefPRF0N
 0/YIzbZ8HQv+RZ3W9Ld8YPjZOig2kxbZFRdmCZwCiQVyMSDrjjiCGwOCupcAQG68lc4q
 EjsoxkmVRnhAyZ36Ri3vhePCdpEJMkOPHK+rQseeCnB7hHdhZ8SOGTEFu8f+i0lOLQW0
 NdDQ==
X-Gm-Message-State: AGi0PuaPTJR2qCi90F+iPU8DAtWZ8gQH5nXwuuUAuBsLW5CE6uEqaOqk
 Mj6pv3xkz2j6oXh26nbzsfSv0g==
X-Google-Smtp-Source: APiQypLAU+dVhgnw6c+BiXTrTMl28Ozzne52PP37Tlk/DBFFKxp3jgegaO9lzihMJMgK7brG51DLVA==
X-Received: by 2002:a7b:cc01:: with SMTP id f1mr4593812wmh.39.1586348156886;
 Wed, 08 Apr 2020 05:15:56 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f141sm6757427wmf.3.2020.04.08.05.15.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 05:15:56 -0700 (PDT)
Date: Wed, 8 Apr 2020 14:15:54 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20200408121554.GN3456981@phenom.ffwll.local>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
 <20200408080817.GU14965@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408080817.GU14965@ravnborg.org>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 00/44] devm_drm_dev_alloc,
 no more drmm_add_final_kfree
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 08, 2020 at 10:08:17AM +0200, Sam Ravnborg wrote:
> Hi Daniel.
> 
> Made specific reply to several patches.
> 
> This bunch:
> >   drm/st7735r: Use devm_drm_dev_alloc
> >   drm/st7586: Use devm_drm_dev_alloc
> >   drm/repaper: Use devm_drm_dev_alloc
> >   drm/mi0283qt: Use devm_drm_dev_alloc
> >   drm/ili9486: Use devm_drm_dev_alloc
> >   drm/ili9341: Use devm_drm_dev_alloc
> >   drm/ili9225: Use devm_drm_dev_alloc
> >   drm/hx8357d: Use devm_drm_dev_alloc
> >   drm/gm12u320: Use devm_drm_dev_alloc
> >   drm/gm12u320: Don't use drm_device->dev_private
> 
> are all:
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> 
> I will take a look at patch 44 later today.
> I steered away from the vgem, i915 stuff on purpose.
> I leave that to more competent persons.

Yeah I think next round I'll leave out the vkms, vgem and i915-selftest,
since that's a bigger discussion. But hopefully I can land the
devm_drm_dev_alloc and many of the more basic conversions in here soonish.

Thanks a lot for looking through this all.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
