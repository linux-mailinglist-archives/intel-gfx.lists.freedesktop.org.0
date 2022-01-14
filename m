Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FEA48ED3B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 16:39:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1121310E272;
	Fri, 14 Jan 2022 15:39:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D83010E272
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jan 2022 15:39:20 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id k18so16219556wrg.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jan 2022 07:39:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=jXNZEwZWopLOube/TnweFY3ylo8I5Y2kE5XMP8T2Ov8=;
 b=GkA9wucmubdrjrj4HneXKrK4hY0rkwpHiu8yjvg7DW8CIA2Kj7calNHWl9P1/5bljC
 jwNsVAVW8u7yujluNC4gFO3H5hSjSdbfB9sgoyBJmXsYHvH0u6RJfENudlVYSDRNfMbv
 epahwH1PX2JjR6kNErO0/y+MODd5P81O6BksU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=jXNZEwZWopLOube/TnweFY3ylo8I5Y2kE5XMP8T2Ov8=;
 b=eMIAKIvBxCaty/LM3B2y7/k94gxpyMUtg+GjmyG6hBTHSbaSTfQ/IIF/bN5bicViBB
 W8ukw2UqXT1134PJAAquZHnIfORBLfHVGOh7dO+atXRXK2HYTHwVNOIG0pJe6yodkqVq
 FTEtj1GkYGqM/VdHNMEAIMNTFXWX3hHI1rFM9FVMK1OFpE1/hd4OyOF8ROJfq4DUH8TE
 ILjRQjcP4b+evjdMBkw7p3RhyH/mU+SPyWExSzKOF977MazAIgL0cmn2HS+U6bIikiA/
 7f9vB4Y9XVHj5MUHbmi1NGdZHcQVdbtM2ZElNs+4X26g3Cxe4T3GYrsJyiVC68AxJgQc
 2C7w==
X-Gm-Message-State: AOAM5309P6PR+pASgeo7fRMWqxlpxdUa86Et4s3hmypE0B6aBQkm0M8i
 lHMNun19z7dfP+uB13jS+AWRgw==
X-Google-Smtp-Source: ABdhPJxNZevE538tP4LShv3GxRNUO05WLuxfh+vCKMDuC4dcVo7/YRyf135J03GVFYQhhkynhoeovQ==
X-Received: by 2002:a5d:5987:: with SMTP id n7mr8652918wri.1.1642174758565;
 Fri, 14 Jan 2022 07:39:18 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id bg19sm11655468wmb.47.2022.01.14.07.39.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Jan 2022 07:39:18 -0800 (PST)
Date: Fri, 14 Jan 2022 16:39:15 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <YeGZI6oG+pMaDAas@phenom.ffwll.local>
References: <YeGHu7qU92pjuQOn@linux-uq9g>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YeGHu7qU92pjuQOn@linux-uq9g>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PULL] drm-misc-next-fixes
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
Cc: dim-tools@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 14, 2022 at 03:24:59PM +0100, Thomas Zimmermann wrote:
> Hi Dave and Daniel,
> 
> here are two more fixes for this week. I cherry-picked both from 
> drm-misc-next.
> 
> Best regards
> Thomas
> 
> drm-misc-next-fixes-2022-01-14:
>  * atomic helpers: Fix error messages
>  * mipi-dbi: Fix buffer mapping
> The following changes since commit 5da8b49de472c1da8658466d4f63ef8d9251a819:
> 
>   dt-bindings: display: bridge: lvds-codec: Fix duplicate key (2021-12-22 14:02:04 -0400)
> 
> are available in the Git repository at:
> 
>   git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-next-fixes-2022-01-14

Thanks, pulled to drm-next.
-Daniel

> 
> for you to fetch changes up to 5d474cc501b90b82c182b5d00439eb6790a82e21:
> 
>   drm/mipi-dbi: Fix source-buffer address in mipi_dbi_buf_copy (2022-01-14 14:43:02 +0100)
> 
> ----------------------------------------------------------------
>  * atomic helpers: Fix error messages
>  * mipi-dbi: Fix buffer mapping
> 
> ----------------------------------------------------------------
> Claudio Suarez (1):
>       drm: fix error found in some cases after the patch d1af5cd86997
> 
> Liu Ying (1):
>       drm/atomic: Check new_crtc_state->active to determine if CRTC needs disable in self refresh mode
> 
> Thomas Zimmermann (1):
>       drm/mipi-dbi: Fix source-buffer address in mipi_dbi_buf_copy
> 
>  drivers/gpu/drm/drm_atomic_helper.c | 14 +++++++-------
>  drivers/gpu/drm/drm_mipi_dbi.c      |  2 +-
>  2 files changed, 8 insertions(+), 8 deletions(-)
> 
> -- 
> Thomas Zimmermann
> Graphics Driver Developer
> SUSE Software Solutions Germany GmbH
> Maxfeldstr. 5, 90409 Nürnberg, Germany
> (HRB 36809, AG Nürnberg)
> Geschäftsführer: Felix Imendörffer

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
