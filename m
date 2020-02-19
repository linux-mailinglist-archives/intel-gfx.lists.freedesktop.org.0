Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D96B164481
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 13:41:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 000806EBC5;
	Wed, 19 Feb 2020 12:40:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FA106E7D5
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 12:40:57 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id y11so346517wrt.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 04:40:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=LjRLU1S8ubvmSNDUw0qavhTBctk1LWngefBqopvudHg=;
 b=CYKxIYAw/qJ8aQWgaKub255KGYLrhVtUoKJYKd4LFs9xi0DIul5gBRhW67dgYdpka6
 Sw3MdL7PnGA2UTvg3r/E1FK483pMhgQwk5svaK4wbf7mBERi13FeQK41cUjKd6hXw3TQ
 rpc5mlnsw/6k+xCecmyMUVqS3feSSJVME4ET8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=LjRLU1S8ubvmSNDUw0qavhTBctk1LWngefBqopvudHg=;
 b=C3S3nD+mKba2z8HJ2nfqfsBMTobwI6q/JAcn1KhBOU70BR2/pOuQaFVHNGZH0/ckqm
 qpx8X2R+yTD3RNyLnJ/AidZnTopANTH/BAsMcS6QygwRvQFuV4BqpIdWCe4d4pxCz/Ri
 DenYgTDz3/CbvnW5PqpN6fdMG2DlaZSDA7dImGKLsFpKEefogiC8LdpkqGGqwnLb583z
 UvUrMqAx4WpDNm3YtN/kCprgZ5fZZLdxNUrAFE4t2UfQ1bUTWlNFtcPz+VqLQuhWTWjW
 Zrt3LrpD5VVH/uiXBgtUqcP7868ymN9feJ1JT/YvVmFFR6S7N6BpuxT2MK0AhXCegB5q
 VLVA==
X-Gm-Message-State: APjAAAURqUXHXZcSqR6aPQhSY8g2YUq0NGIzSN2YvkD8cTzy1IyseQ1w
 0IVJNGQOGnTkP7lcoWmqxTXQhA==
X-Google-Smtp-Source: APXvYqwyfla5/5OoJuQjb0Zy7o9RZQQVJKEaRvPBDgnIYUH8Xp/48v1ZgGjUCJTRzNhh1G0d1Zpi2A==
X-Received: by 2002:adf:ec02:: with SMTP id x2mr3012853wrn.8.1582116056215;
 Wed, 19 Feb 2020 04:40:56 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u8sm2895524wmm.15.2020.02.19.04.40.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 04:40:55 -0800 (PST)
Date: Wed, 19 Feb 2020 13:40:53 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20200219124053.GQ2363188@phenom.ffwll.local>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
 <20200219102122.1607365-38-daniel.vetter@ffwll.ch>
 <CAMuHMdXit+F2nK8JSXyzP26epeDA3pxOYyzVMFtKWqaGCNqBxA@mail.gmail.com>
 <CAKMK7uFrzjAOxBK0GBPtHt=VGRjvC3GJcOTvP087gyO1nAEVPQ@mail.gmail.com>
 <CAMuHMdUBKJTcPg8GB_c52p8jXWqdn8JX3tiPxsQkRRW2EA3+yA@mail.gmail.com>
 <20200219121727.GC5070@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219121727.GC5070@pendragon.ideasonboard.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 37/52] drm/rcar-du: Drop explicit
 drm_mode_config_cleanup call
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
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 19, 2020 at 02:17:27PM +0200, Laurent Pinchart wrote:
> Hi Daniel,
> 
> On Wed, Feb 19, 2020 at 12:10:18PM +0100, Geert Uytterhoeven wrote:
> > On Wed, Feb 19, 2020 at 11:57 AM Daniel Vetter wrote:
> > > On Wed, Feb 19, 2020 at 11:30 AM Geert Uytterhoeven wrote:
> > > > On Wed, Feb 19, 2020 at 11:22 AM Daniel Vetter wrote:
> > > > > It's right above the drm_dev_put().
> > > > >
> > > > > Aside: Another driver with a bit much devm_kzalloc, which should
> > > > > probably use drmm_kzalloc instead ...
> > > >
> > > > What's drmm_kzalloc()?
> > > > The only references I can find are in this patch series.
> > >
> > > Yup, it's all new. Read cover letter for reading instructions for the
> > > entire patch series. I'm afraid the driver patches wont make much
> > > sense without the context. None actually :-/
> > 
> > IC, as the cover letter was sent only to dri-devel and intel-gfx, many
> > recipients of the patches won't have received it...
> > https://lore.kernel.org/dri-devel/20200219102122.1607365-1-daniel.vetter@ffwll.ch/
> 
> I was also going to mention that it would be nice to send the cover
> letter to all recipients from the series, otherwise it's a bit painful.
> Daniel, is this something that could be integrated in your workflow ?

No, the usual result of that if you do it is that mail servers scream at
you for too many recipients.

dri-devel is on lore.kernel.org now, with full historical backlog, so all
there.

https://lore.kernel.org/dri-devel/20200219102122.1607365-1-daniel.vetter@ffwll.ch/T/#t

Cheers, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
