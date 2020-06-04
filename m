Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D29C1EE342
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 13:19:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 502756E32E;
	Thu,  4 Jun 2020 11:19:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20D486E32E
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 11:19:42 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id v19so4852205wmj.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Jun 2020 04:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=kT8tu7WQNVIRsCuW1aIXKWAdFUabfJk3Z8f/2nnl5jo=;
 b=BIFgnqmF2FOjscywfrUM4PYv7BqV9uoBYmc1hjVwTzLg5VL/O+DfFLFn1ZJIpLxa2F
 bK7NIyr3e7Sd8j9LFBCm2B9QCgkb/FKt39RqoipMRwe4TB596DxcgYmveTlAtyE3AfHT
 qTSxLUk0ERIv/8gCHZAEBlcA3nrUyT7PwCB+Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=kT8tu7WQNVIRsCuW1aIXKWAdFUabfJk3Z8f/2nnl5jo=;
 b=TUdPTwES/zeRx/f/hxAsEeJ5hFpWFQXTzym62rjSvObfG25a/hjpqKsjYe60CJkeEo
 1a1UkhUdj1R5bOPP5Rg9G5cUy50YTZRXfIRdmy2t3LROr8mZe3FeMGd8L0BL770Ox7Zh
 YYOSeeSud/D6ZOD5Tofad+384CIUK9dSF/f/CSf8fPuiL/IGe3dNpJfSeLg6lvutkB0E
 twptvnADh+PyK7yZT5KNgJdT8ZwmmgHjRHNHKoagAKe2SZjSInxP1m08IPQeFmBQ6+Jl
 F+X6teh/w/FXaWruPO2saOAkK6vZPPi+Gk4l9W9GZ2fLo7pWlmpo7qL5MhrNwBY7JYwT
 rGRA==
X-Gm-Message-State: AOAM531Di9XhnlU4ykac9wlREWmBT4tBHfXGbrFCmtBQgwDVkqQg2Pzj
 gwa/QFFyK25563enpYaRjv98Uw==
X-Google-Smtp-Source: ABdhPJxbpag/4CAWIdzR2ReX1pj2iZHs8kryroq+ZZg+utsXljAnSnoC6Z9v1pf8NTs91Pg+j3kQ1A==
X-Received: by 2002:a1c:c2d6:: with SMTP id s205mr3796429wmf.140.1591269580679; 
 Thu, 04 Jun 2020 04:19:40 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id v28sm8406419wra.77.2020.06.04.04.19.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 04:19:39 -0700 (PDT)
Date: Thu, 4 Jun 2020 13:19:36 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Message-ID: <CAKMK7uFLvV3=uhfnf=MreKBM==-gzXqx3NrV8KDA2D5sTAn2SQ@mail.gmail.com>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
 <20200415074034.175360-54-daniel.vetter@ffwll.ch>
 <20200415094512.GA30444@ravnborg.org>
 <MWHPR12MB14532DA5713E3B579ABFE1F4A1DB0@MWHPR12MB1453.namprd12.prod.outlook.com>
 <CAKMK7uGDGgt8Cm_bFoyzeoP2CWyiUNdUwb7GL6Ohu3k0rP0p1w@mail.gmail.com>
 <20200428140842.GL3456981@phenom.ffwll.local>
 <CH2PR12MB3894B40C6D71435D3E759A34A1A20@CH2PR12MB3894.namprd12.prod.outlook.com>
 <CAKMK7uFRt14m24ajYygdRZz=fUMhA9u6=590R2jjhXGq=VtwNA@mail.gmail.com>
 <20200604080507.GT20149@phenom.ffwll.local>
 <CY4PR1201MB01363EB95985A2C64ADA6841DE890@CY4PR1201MB0136.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CY4PR1201MB01363EB95985A2C64ADA6841DE890@CY4PR1201MB0136.namprd12.prod.outlook.com>
Subject: Re: [Intel-gfx] [PATCH 53/59] drm/arc: Move to drm/tiny
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, Sam Ravnborg <sam@ravnborg.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Eugeniy,

Apologies, somehow I missed your mail. I looked at the code again, and I
think I fumbled something. Does the below diff help to prevent the issues?

Thanks, Daniel


diff --git a/drivers/gpu/drm/tiny/arcpgu.c b/drivers/gpu/drm/tiny/arcpgu.c
index 857812f25bec..33d812a5ad7f 100644
--- a/drivers/gpu/drm/tiny/arcpgu.c
+++ b/drivers/gpu/drm/tiny/arcpgu.c
@@ -228,6 +228,9 @@ static void arc_pgu_update(struct drm_simple_display_pipe *pipe,
 	struct arcpgu_drm_private *arcpgu;
 	struct drm_gem_cma_object *gem;
 
+	if (!pipe->plane.state->fb)
+		return;
+
 	arcpgu = pipe_to_arcpgu_priv(pipe);
 	gem = drm_fb_cma_get_gem_obj(pipe->plane.state->fb, 0);
 	arc_pgu_write(arcpgu, ARCPGU_REG_BUF0_ADDR, gem->paddr);
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
