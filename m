Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 338722C689A
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 16:19:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 730B66EE34;
	Fri, 27 Nov 2020 15:19:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 260556EE33
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Nov 2020 15:19:24 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id e7so5945536wrv.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Nov 2020 07:19:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Oycry3K1WhhTZ7hEJqA9SAwvS/LmKXcuYv7oms1gtCU=;
 b=ljeX4APNPETLCWhmW1cQPjGhB/6JwdsWTw2uG+XXGCIjJ5ryWKwD5S9LT/rAYxku5P
 Vq2mp9ZgbsRtOFeUCO8Gt8tqtYVvAvmy8z7iXYB7WDI2T9JwsyHOYGE1yuBvnI+aedpx
 XqNnIPw5705PiIlx5mpx3K6HQnFQqg7xX/cco=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Oycry3K1WhhTZ7hEJqA9SAwvS/LmKXcuYv7oms1gtCU=;
 b=TxXBKI0sFUK4AfStPumWHENeAcZSwoppSRSE8fBYhHuRPv1saoaqjx2qm1jo5/IRkS
 zUd5JLjCVyFKU9eiQx5KHvDH63fm1hJBPGzoYXiDy7ZBsyuifZzMBbkfZH5S4gu+kGFg
 DHBzcR0uZKItc+MRJkyQASSlv58bwQqRuxaSHbM3VioDBzKLgbaOioTt/HZeDdM3aCtd
 XkvaZVa4AvUgILbF6PEOhgrTNyyiZOFXa9VU27f0HP0k/BoE5RjC2zcIhAJRlIN84h1P
 U6rRmvT1A46gLY+YrMadlAZovbl1ZvgJlfEzoBmm+bKIPSKZV4xLm+uOBI7Mww/prlhA
 3rJg==
X-Gm-Message-State: AOAM531cEaOLENaxXC9tBsss7PCdknLpOVArgiFmT+/ntawjnUDebnse
 uy8CNuIs1vh/691GbEADAsGn2g==
X-Google-Smtp-Source: ABdhPJxS6iZnYG6feLSYwTnrKKH98Taizf34WyRG9MRuJuW5ymtgnuvEvZ9XqWnj/sCM9DBL7rwafg==
X-Received: by 2002:a5d:4141:: with SMTP id c1mr5275228wrq.80.1606490362845;
 Fri, 27 Nov 2020 07:19:22 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l14sm13461420wmi.33.2020.11.27.07.19.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Nov 2020 07:19:22 -0800 (PST)
Date: Fri, 27 Nov 2020 16:19:20 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20201127151920.GI401619@phenom.ffwll.local>
References: <20201123182631.1740781-1-imre.deak@intel.com>
 <20201127143100.GB2144692@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201127143100.GB2144692@ideak-desk.fi.intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/framebuffer: Format modifier for
 Intel Gen 12 render compression with Clear Color
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
Cc: Nanley Chery <nanley.g.chery@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Rafael Antognolli <rafael.antognolli@intel.com>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>,
 Kalyan Kondapally <kalyan.kondapally@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 27, 2020 at 04:31:00PM +0200, Imre Deak wrote:
> Hi Daniel, Jani,
> 
> is it ok to merge this patch along with 2/2 via the i915 tree?

Ack from mesa (userspace in general, but mesa is kinda mandatory) is
missing I think. With that

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> 
> --Imre
> 
> On Mon, Nov 23, 2020 at 08:26:30PM +0200, Imre Deak wrote:
> > From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > 
> > Gen12 display can decompress surfaces compressed by render engine with
> > Clear Color, add a new modifier as the driver needs to know the surface
> > was compressed by render engine.
> > 
> > V2: Description changes as suggested by Rafael.
> > V3: Mention the Clear Color size of 64 bits in the comments(DK)
> > v4: Fix trailing whitespaces
> > v5: Explain Clear Color in the documentation.
> > v6: Documentation Nitpicks(Nanley)
> > 
> > Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> > Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> > Cc: Kalyan Kondapally <kalyan.kondapally@intel.com>
> > Cc: Rafael Antognolli <rafael.antognolli@intel.com>
> > Cc: Nanley Chery <nanley.g.chery@intel.com>
> > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  include/uapi/drm/drm_fourcc.h | 19 +++++++++++++++++++
> >  1 file changed, 19 insertions(+)
> > 
> > diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
> > index ca48ed0e6bc1..0a1b2c4c4bee 100644
> > --- a/include/uapi/drm/drm_fourcc.h
> > +++ b/include/uapi/drm/drm_fourcc.h
> > @@ -527,6 +527,25 @@ extern "C" {
> >   */
> >  #define I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS fourcc_mod_code(INTEL, 7)
> >  
> > +/*
> > + * Intel Color Control Surface with Clear Color (CCS) for Gen-12 render
> > + * compression.
> > + *
> > + * The main surface is Y-tiled and is at plane index 0 whereas CCS is linear
> > + * and at index 1. The clear color is stored at index 2, and the pitch should
> > + * be ignored. The clear color structure is 256 bits. The first 128 bits
> > + * represents Raw Clear Color Red, Green, Blue and Alpha color each represented
> > + * by 32 bits. The raw clear color is consumed by the 3d engine and generates
> > + * the converted clear color of size 64 bits. The first 32 bits store the Lower
> > + * Converted Clear Color value and the next 32 bits store the Higher Converted
> > + * Clear Color value when applicable. The Converted Clear Color values are
> > + * consumed by the DE. The last 64 bits are used to store Color Discard Enable
> > + * and Depth Clear Value Valid which are ignored by the DE. A CCS cache line
> > + * corresponds to an area of 4x1 tiles in the main surface. The main surface
> > + * pitch is required to be a multiple of 4 tile widths.
> > + */
> > +#define I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC fourcc_mod_code(INTEL, 8)
> > +
> >  /*
> >   * Tiled, NV12MT, grouped in 64 (pixels) x 32 (lines) -sized macroblocks
> >   *
> > -- 
> > 2.25.1
> > 
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
