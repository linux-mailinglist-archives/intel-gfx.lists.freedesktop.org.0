Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C562B6D77CB
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 11:09:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22E4E10E89E;
	Wed,  5 Apr 2023 09:09:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E49310E89E
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 09:09:06 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id
 a640c23a62f3a-947a47eb908so50756266b.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 02:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1680685744;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=bqryiy8dDR3/5pqTqEwd31G7JBRiEXG4tEGMmuSfgzk=;
 b=bTz8BrcBnPB2Dwm/QGckYiLgaO2YXAslIoQ8pkVIFfYhTSSB6NJ52Hp3TgqXk9oBGy
 c9b9bLyzT7yWSo7Zy58O/Uo7cpw+o5xeLXkPN6jlxEqnEhrHbkAPRb7rYbdMpv2L0Hiw
 FbQMCtXUDXlqxoMmtFAH15DnhjhGzyceSC5mw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680685744;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=bqryiy8dDR3/5pqTqEwd31G7JBRiEXG4tEGMmuSfgzk=;
 b=TFp3Nmf7AjT4GgE9pVxIFFWHvGv6Uwnam7QW/p5/NhY+ZAzWean7v1sZ3uPU4FFzz2
 w6akf28vyWeqPkC3/GK0+rLuS08/ZAtO6pilpTHdxDtyaru3UaSfc75DCDUN4XgeXgnW
 z+Mb5rcYP9WhBKIB01iuvyOHTBee2iWPGjO+azQxY12hH6MH7+N2KCP+12AXg5lQgWzc
 T/H1mDYz/OE3i6i8vfw1Rl2joIYgslDuH1wCEf4crRVYfTpQs07/VPeP2ydtd+MOl/gs
 WXPN2KpF48AOBZ/HhAHD1c0XpskMFAscjHEZZuBnsUibu20axJTi35ghj0cJFa56Gwef
 l/Qw==
X-Gm-Message-State: AAQBX9eAeBrL5JoT1es3TFRvb7cCvaoApAtHuckf1/XDRhM016D3YlGS
 SQqaROozp4h8fdtjyHe0N3O9rQ==
X-Google-Smtp-Source: AKy350aX6xJ+rq9m3yV/5avRE++H4KKi3fgpHZx9cq/h7eVOdy/aTIIVls0cO+y+AhOWWNJCxLiGDA==
X-Received: by 2002:a17:906:13:b0:8f0:ba09:4abe with SMTP id
 19-20020a170906001300b008f0ba094abemr2233946eja.2.1680685744352; 
 Wed, 05 Apr 2023 02:09:04 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 g20-20020a170906595400b00932ebffdf4esm7056908ejr.214.2023.04.05.02.09.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Apr 2023 02:09:04 -0700 (PDT)
Date: Wed, 5 Apr 2023 11:09:02 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <ZC06rmOFgBTd872G@phenom.ffwll.local>
References: <20230404201842.567344-1-daniel.vetter@ffwll.ch>
 <846e2048-cb7f-660c-6ec8-6f9c7b368187@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <846e2048-cb7f-660c-6ec8-6f9c7b368187@suse.de>
X-Operating-System: Linux phenom 6.1.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/gma500: Use
 drm_aperture_remove_conflicting_pci_framebuffers
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
 Javier Martinez Canillas <javierm@redhat.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 05, 2023 at 10:19:55AM +0200, Thomas Zimmermann wrote:
> Hi
> 
> Am 04.04.23 um 22:18 schrieb Daniel Vetter:
> > This one nukes all framebuffers, which is a bit much. In reality
> > gma500 is igpu and never shipped with anything discrete, so there should
> > not be any difference.
> 
> I do own an Intel DN2800MT board with gma500 hardware. [1] It has a PCIe x1
> slot. I never tried, but in principle, there could be another graphics card
> in the system. The linked spec say 'Discrete: None'. I don't know what that
> means exactly.

Well even if that's the case, I'm not making the situation worse. Because
the old code also nuked everything. The new one at least only nukes the
vga if gma500 is decoding that, and not the the discrete card. In practice
it won't help, because I don't think you'll boot this in legacy vga mode
with vga16fb :-)
-Daniel

> 
> Best regards
> Thomas
> 
> [1] https://ark.intel.com/content/www/us/en/ark/products/56455/intel-desktop-board-dn2800mt.html
> 
> > 
> > v2: Unfortunately the framebuffer sits outside of the pci bars for
> > gma500, and so only using the pci helpers won't be enough. Otoh if we
> > only use non-pci helper, then we don't get the vga handling, and
> > subsequent refactoring to untangle these special cases won't work.
> > 
> > It's not pretty, but the simplest fix (since gma500 really is the only
> > quirky pci driver like this we have) is to just have both calls.
> > 
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Patrik Jakobsson <patrik.r.jakobsson@gmail.com>
> > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > Cc: Javier Martinez Canillas <javierm@redhat.com>
> > ---
> >   drivers/gpu/drm/gma500/psb_drv.c | 9 +++++++--
> >   1 file changed, 7 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/gma500/psb_drv.c b/drivers/gpu/drm/gma500/psb_drv.c
> > index 2ce96b1b9c74..f1e0eed8fea4 100644
> > --- a/drivers/gpu/drm/gma500/psb_drv.c
> > +++ b/drivers/gpu/drm/gma500/psb_drv.c
> > @@ -422,12 +422,17 @@ static int psb_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> >   	/*
> >   	 * We cannot yet easily find the framebuffer's location in memory. So
> > -	 * remove all framebuffers here.
> > +	 * remove all framebuffers here. Note that we still want the pci special
> > +	 * handling to kick out vgacon.
> >   	 *
> >   	 * TODO: Refactor psb_driver_load() to map vdc_reg earlier. Then we
> >   	 *       might be able to read the framebuffer range from the device.
> >   	 */
> > -	ret = drm_aperture_remove_framebuffers(true, &driver);
> > +	ret = drm_aperture_remove_framebuffers(false, &driver);
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret = drm_aperture_remove_conflicting_pci_framebuffers(pdev, &driver);
> >   	if (ret)
> >   		return ret;
> 
> -- 
> Thomas Zimmermann
> Graphics Driver Developer
> SUSE Software Solutions Germany GmbH
> Maxfeldstr. 5, 90409 Nürnberg, Germany
> (HRB 36809, AG Nürnberg)
> Geschäftsführer: Ivo Totev




-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
