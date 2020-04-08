Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E451A2177
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 14:13:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6D3B6EA4D;
	Wed,  8 Apr 2020 12:13:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DA9D6EA4D
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 12:13:37 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id h2so4898607wmb.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Apr 2020 05:13:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=mrNCJAovJt3GXMs7ulBH/uKKHC2ZSg50Ujua8nzpokY=;
 b=BpBeMvyFY97FhTbDs+2dpGKoHZrGCudtX2yhEC31Mbny0S4Xa2o2dJtOGnh3zWPYLb
 BYkTIkeA0v7QQGqFeHD1WKBjguG/OEqSpCIMY/9CXLIBt6l+jdYu/UHltcUMJkVrO2z/
 /o+SAdoKc1EjdN8x0IWaZWEWYhMF5DL5y9D1w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=mrNCJAovJt3GXMs7ulBH/uKKHC2ZSg50Ujua8nzpokY=;
 b=iAhrh6gnnmlVkqE+QTdfwG0g2cRHKLDwgia/DccEzSI80t8xsSjPDqWiDw6inY4DIl
 jt6cZRSkyjcHpxJutvkS9Yz87H/qmWklQfsvlbXAaTq2c4ScFnF0xA/Vaf8sTChseuu4
 LNOSWy/ef1bNtX1QA4OvXAR7EQ5NL9MaXaWvlNCOmzVIszljUqGobd13vhDF+hu5E5Sq
 NC1RI346SJJ5btPEk5DPYRNovvsneNS7Ko1s4FqiVlMyp6Gv+1dm07Y3v6irc5HUkFn4
 9tQF89cn3S+1ldg0ZBsXVz2JUvXQtPanLcuBQkh6lEG9gINAlsllMp8ln+cvs6xYy2Bs
 4fFA==
X-Gm-Message-State: AGi0PuZ+FUzdrjHLyWl2Z5/FEZXIcGYeNMYPASufoAHESZ10qqlpR5aI
 c7bHO60qkmih1hFfRkdzSBiUTE7u7xU=
X-Google-Smtp-Source: APiQypLU5E3F/ozuXc2+y1m12HEekvC4YnsV/7ZnG00q5OournbJ34uT4VMiRCq3sKlJv4eAPzH6/Q==
X-Received: by 2002:a1c:4409:: with SMTP id r9mr4542864wma.165.1586348015760; 
 Wed, 08 Apr 2020 05:13:35 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 145sm5826764wma.1.2020.04.08.05.13.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 05:13:35 -0700 (PDT)
Date: Wed, 8 Apr 2020 14:13:33 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20200408121333.GM3456981@phenom.ffwll.local>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
 <20200403135828.2542770-15-daniel.vetter@ffwll.ch>
 <20200408072701.GI14965@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408072701.GI14965@ravnborg.org>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 14/44] drm/v3d: Delete v3d_dev->pdev
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
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 08, 2020 at 09:27:01AM +0200, Sam Ravnborg wrote:
> Hi Daniel.
> 
> On Fri, Apr 03, 2020 at 03:57:58PM +0200, Daniel Vetter wrote:
> > We already have it in v3d_dev->drm.dev with zero additional pointer
> > chasing. Personally I don't like duplicated pointers like this
> > because:
> > - reviewers need to check whether the pointer is for the same or
> > different objects if there's multiple
> > - compilers have an easier time too
> > 
> > To avoid having to pull in some big headers I implemented the casting
> > function as a macro instead of a static inline.
> Hmm...
> 
> > Typechecking thanks to
> > container_of still assured.
> > 
> > But also a bit a bikeshed, so feel free to ignore.
> > 
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Eric Anholt <eric@anholt.net>
> 
> This and patch 13 has same subject - confusing.

dev != pdev

But yeah I agree it's a nice trick I'm pulling here :-)

Cheers, Daniel
> 
> 	Sam
> 
> > ---
> >  drivers/gpu/drm/v3d/v3d_drv.c | 3 +--
> >  drivers/gpu/drm/v3d/v3d_drv.h | 3 ++-
> >  drivers/gpu/drm/v3d/v3d_irq.c | 8 +++++---
> >  3 files changed, 8 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/v3d/v3d_drv.c b/drivers/gpu/drm/v3d/v3d_drv.c
> > index 37cb880f2826..82a7dfdd14c2 100644
> > --- a/drivers/gpu/drm/v3d/v3d_drv.c
> > +++ b/drivers/gpu/drm/v3d/v3d_drv.c
> > @@ -235,7 +235,7 @@ static int
> >  map_regs(struct v3d_dev *v3d, void __iomem **regs, const char *name)
> >  {
> >  	struct resource *res =
> > -		platform_get_resource_byname(v3d->pdev, IORESOURCE_MEM, name);
> > +		platform_get_resource_byname(v3d_to_pdev(v3d), IORESOURCE_MEM, name);
> >  
> >  	*regs = devm_ioremap_resource(v3d->drm.dev, res);
> >  	return PTR_ERR_OR_ZERO(*regs);
> > @@ -255,7 +255,6 @@ static int v3d_platform_drm_probe(struct platform_device *pdev)
> >  	if (IS_ERR(v3d))
> >  		return PTR_ERR(v3d);
> >  
> > -	v3d->pdev = pdev;
> >  	drm = &v3d->drm;
> >  
> >  	platform_set_drvdata(pdev, drm);
> > diff --git a/drivers/gpu/drm/v3d/v3d_drv.h b/drivers/gpu/drm/v3d/v3d_drv.h
> > index 4d2d1f2fe1af..935f23b524b2 100644
> > --- a/drivers/gpu/drm/v3d/v3d_drv.h
> > +++ b/drivers/gpu/drm/v3d/v3d_drv.h
> > @@ -46,7 +46,6 @@ struct v3d_dev {
> >  	int ver;
> >  	bool single_irq_line;
> >  
> > -	struct platform_device *pdev;
> >  	void __iomem *hub_regs;
> >  	void __iomem *core_regs[3];
> >  	void __iomem *bridge_regs;
> > @@ -128,6 +127,8 @@ v3d_has_csd(struct v3d_dev *v3d)
> >  	return v3d->ver >= 41;
> >  }
> >  
> > +#define v3d_to_pdev(v3d) to_platform_device(v3d->drm.dev)
> > +
> >  /* The per-fd struct, which tracks the MMU mappings. */
> >  struct v3d_file_priv {
> >  	struct v3d_dev *v3d;
> > diff --git a/drivers/gpu/drm/v3d/v3d_irq.c b/drivers/gpu/drm/v3d/v3d_irq.c
> > index f4ce6d057c90..51b65263c657 100644
> > --- a/drivers/gpu/drm/v3d/v3d_irq.c
> > +++ b/drivers/gpu/drm/v3d/v3d_irq.c
> > @@ -217,7 +217,7 @@ v3d_irq_init(struct v3d_dev *v3d)
> >  		V3D_CORE_WRITE(core, V3D_CTL_INT_CLR, V3D_CORE_IRQS);
> >  	V3D_WRITE(V3D_HUB_INT_CLR, V3D_HUB_IRQS);
> >  
> > -	irq1 = platform_get_irq(v3d->pdev, 1);
> > +	irq1 = platform_get_irq(v3d_to_pdev(v3d), 1);
> >  	if (irq1 == -EPROBE_DEFER)
> >  		return irq1;
> >  	if (irq1 > 0) {
> > @@ -226,7 +226,8 @@ v3d_irq_init(struct v3d_dev *v3d)
> >  				       "v3d_core0", v3d);
> >  		if (ret)
> >  			goto fail;
> > -		ret = devm_request_irq(v3d->drm.dev, platform_get_irq(v3d->pdev, 0),
> > +		ret = devm_request_irq(v3d->drm.dev,
> > +				       platform_get_irq(v3d_to_pdev(v3d), 0),
> >  				       v3d_hub_irq, IRQF_SHARED,
> >  				       "v3d_hub", v3d);
> >  		if (ret)
> > @@ -234,7 +235,8 @@ v3d_irq_init(struct v3d_dev *v3d)
> >  	} else {
> >  		v3d->single_irq_line = true;
> >  
> > -		ret = devm_request_irq(v3d->drm.dev, platform_get_irq(v3d->pdev, 0),
> > +		ret = devm_request_irq(v3d->drm.dev,
> > +				       platform_get_irq(v3d_to_pdev(v3d), 0),
> >  				       v3d_irq, IRQF_SHARED,
> >  				       "v3d", v3d);
> >  		if (ret)
> > -- 
> > 2.25.1
> > 
> > _______________________________________________
> > dri-devel mailing list
> > dri-devel@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
