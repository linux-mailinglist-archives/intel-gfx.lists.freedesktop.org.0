Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E37F1BC0B4
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 16:08:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E0306E4A1;
	Tue, 28 Apr 2020 14:08:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56FD16E4B5
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 14:08:46 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id h4so2931736wmb.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 07:08:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=9eUg5kMO2GiBXiJCstZe2u5TOp+y1CPnz3YfIOGVMiM=;
 b=TGTa7lhFkYgXDC7ndxX8Jx7uso0L7YdJyRcyoJcp5C3FmD4HJ5+5XLLdeDb6etvF/M
 K5+Bm8cKEhAHY5+I2MJOZLHH33GyGu98M5grjtoTVN8ZAnlYNDkUupgn+rSOceILTpB2
 3XyaIDAMkHTJTD8gkM8TryZ5Jxe2Ek0ECshuU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9eUg5kMO2GiBXiJCstZe2u5TOp+y1CPnz3YfIOGVMiM=;
 b=WSFaIK6ADu4+/PLv5dFqD9Nls/XZxrOiy1CvkAD3CjcEJnfz7pJy47chqi7LOC2/P/
 a2XOODjDvSBleHF8PJYHG0jUt3SnXEBl/Ft415fgQ127pLGrmVwI8S3ZmpgOwoZLEilr
 qVUKZJXe5rGh0AYYqnKuiP/cOqKbGx+k1/3cEfukoYhATEN1N9HJkeHCQP2HEbwox9JS
 nWmaCJixYdF0Y10ysezzO0zLEN/OLSf9V5esCihTL6DRxXstQou5LCh5UIdqkEdrzVZB
 /C/v0I4Hoe3RroEvmzHfSeQUzt2As0NhCbhMJ8DrUcSaiBZnamBNwr16qrxg1B1Xzadi
 O6YQ==
X-Gm-Message-State: AGi0PuadjOqTl0ssO4sfIMqrmNU0Zqyw6D44XB9pMstmD1NeDNrU3HN6
 HyPz4dBVvbAG/8EpafFJTli2TQ==
X-Google-Smtp-Source: APiQypKZrzEfJxhk/510ehCb0PzphzdTIxMZzGjYf2YVlmhaoY1QUF2Zo4YmULsSGycSNBwYXnmKXw==
X-Received: by 2002:a1c:6a0b:: with SMTP id f11mr4808693wmc.123.1588082925022; 
 Tue, 28 Apr 2020 07:08:45 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id h2sm27095894wro.9.2020.04.28.07.08.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 07:08:43 -0700 (PDT)
Date: Tue, 28 Apr 2020 16:08:42 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Message-ID: <20200428140842.GL3456981@phenom.ffwll.local>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
 <20200415074034.175360-54-daniel.vetter@ffwll.ch>
 <20200415094512.GA30444@ravnborg.org>
 <MWHPR12MB14532DA5713E3B579ABFE1F4A1DB0@MWHPR12MB1453.namprd12.prod.outlook.com>
 <CAKMK7uGDGgt8Cm_bFoyzeoP2CWyiUNdUwb7GL6Ohu3k0rP0p1w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uGDGgt8Cm_bFoyzeoP2CWyiUNdUwb7GL6Ohu3k0rP0p1w@mail.gmail.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
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
Cc: Sam Ravnborg <sam@ravnborg.org>, Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 15, 2020 at 02:20:35PM +0200, Daniel Vetter wrote:
> On Wed, Apr 15, 2020 at 2:03 PM Alexey Brodkin
> <Alexey.Brodkin@synopsys.com> wrote:
> >
> > Hi Daniel,
> >
> > > -----Original Message-----
> > > From: Sam Ravnborg <sam@ravnborg.org>
> > > Sent: Wednesday, April 15, 2020 12:45 PM
> > > To: Daniel Vetter <daniel.vetter@ffwll.ch>
> > > Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>; Alexey Brodkin
> > > <abrodkin@synopsys.com>; DRI Development <dri-devel@lists.freedesktop.org>; Daniel Vetter
> > > <daniel.vetter@intel.com>
> > > Subject: Re: [PATCH 53/59] drm/arc: Move to drm/tiny
> > >
> > > Hi Daniel.
> > > On Wed, Apr 15, 2020 at 09:40:28AM +0200, Daniel Vetter wrote:
> > > > Because it is.
> > > >
> > > > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > > > Cc: Alexey Brodkin <abrodkin@synopsys.com>
> > > > ---
> > > >  MAINTAINERS                                         |  2 +-
> > > >  drivers/gpu/drm/Kconfig                             |  2 --
> > > >  drivers/gpu/drm/Makefile                            |  1 -
> > > >  drivers/gpu/drm/arc/Kconfig                         | 10 ----------
> > > >  drivers/gpu/drm/arc/Makefile                        |  3 ---
> > > >  drivers/gpu/drm/tiny/Kconfig                        | 10 ++++++++++
> > > >  drivers/gpu/drm/tiny/Makefile                       |  1 +
> > > >  drivers/gpu/drm/{arc/arcpgu_drv.c => tiny/arcpgu.c} |  0
> > > >  8 files changed, 12 insertions(+), 17 deletions(-)
> > > >  delete mode 100644 drivers/gpu/drm/arc/Kconfig
> > > >  delete mode 100644 drivers/gpu/drm/arc/Makefile
> > > >  rename drivers/gpu/drm/{arc/arcpgu_drv.c => tiny/arcpgu.c} (100%)
> > >
> > > We have "DRM: ARC: add HDMI 2.0 TX encoder support" which
> > > adds another platform driver to drm/arc/
> > > This speaks against the move to tiny IMO
> >
> > Indeed that's an interesting question, see v3 series here:
> > https://lists.freedesktop.org/archives/dri-devel/2020-April/262352.html
> 
> Looking at this patch series, feels a bit like hand-rolling of bridge
> code, badly. We should get away from that.
> 
> Once you have that I think the end result is tiny enough that it can
> stay, bridges intergrate quite well into simple display pipe drivers.
> 
> > BTW should I pull that series in my tree and send you a pull-request
> > or that kind of change needs to go through another tree?
> >
> > Also I'd like to test the change we discuss here to make sure stuff
> > still works. Once we do that I'll send an update. Any hint on
> > when that change needs to be acked/nacked?
> 
> Simplest is if this can all land through drm-misc, is arc not
> maintained in there? And there's plenty of time for testing, I'm just
> slowly crawling through the tree to get everything polished and
> cleaned up in this area.

Any updates on testing this pile here? First patch landed now, and I've
started to push driver patches. So would be good to get this sorted out
too.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
