Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C7F6D7D86
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 15:18:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3622A10E94D;
	Wed,  5 Apr 2023 13:18:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EB2210E94D
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 13:18:35 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id
 a640c23a62f3a-930bc91df7bso115450966b.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 06:18:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1680700714;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=owIcXkaALEakCsyYCvhuFxjZnRn3/iobnF0iaYiSOmA=;
 b=LUnCVrDHAXqWz7PAde65XvA6dVydLSE5W+URJKD7F9q/SBrCxWxUMvydfNro3bEswG
 sLLsmnu4nTYjB0yEWGgecLSfuX9ueLmNLR9XY6AlP88wSLkSpuN9tvFDxsmpUVARgzpv
 OUT7Ca8Zk47aUW24s1xwt815wzpgMEDYuefjs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680700714;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=owIcXkaALEakCsyYCvhuFxjZnRn3/iobnF0iaYiSOmA=;
 b=ytWvki3sXsrjs+269j2GpPP60M6KrO/pj/XTCJQF4njYT1fvBfOGAtJiEfmYHQ2Tj8
 ngAav9C1PLCLVMXv5SXt9bv9MQgKcDehdEx1RcBj+eUXv2YGJY6DWZ6mv+C4TFSnuvQq
 tu8GT/WXqFKWgQuJevyF+7Kbi06MA1gqbmnJIY25MIX4ftq208m1nPRMKJo0jx7AVkV3
 zkanAmiSGzjL0U4Qhg1PpUePXMdNbEEfNQvakyPwIQMNxAgNwfKcq2obsLmGNpHA77tT
 RyIuXS7D4NMPoii67NIxq6poWDKsdSCyEjljtIDKQRbXkhnctDuXV9VxdoX5Wze8bUk9
 98hg==
X-Gm-Message-State: AAQBX9cst/dSNmJVSH/6YwGN9qfG47uJJgRg1s8StiUEHdSa4q9PjiAX
 Qpr+p/wksHssMLnTjcbExOOLmg==
X-Google-Smtp-Source: AKy350YtWekditYKvim982wRyxu6n6a6gkGscXRmZ+d/XmSbYzIOqG91UqVuUW+6cgA848mLo+sjmQ==
X-Received: by 2002:a17:906:114:b0:947:f415:db23 with SMTP id
 20-20020a170906011400b00947f415db23mr2935923eje.1.1680700713794; 
 Wed, 05 Apr 2023 06:18:33 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 11-20020a170906010b00b0093344ef3764sm7292273eje.57.2023.04.05.06.18.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Apr 2023 06:18:33 -0700 (PDT)
Date: Wed, 5 Apr 2023 15:18:31 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Javier Martinez Canillas <javierm@redhat.com>
Message-ID: <ZC11J3og4Kc9ta6m@phenom.ffwll.local>
References: <20230404201842.567344-1-daniel.vetter@ffwll.ch>
 <5556a755-01a1-3620-8693-0fc69c6f627d@suse.de>
 <3813a2f5-c74a-4760-34ce-1c88f187c91c@suse.de>
 <ZC04hoHywz0ySzAW@phenom.ffwll.local>
 <3fd03c4c-3be6-e56b-faec-bd67a58cda09@suse.de>
 <ZC1BlNCbXPlmAhj0@phenom.ffwll.local>
 <eee11545-2a78-4556-be82-5178ea09d0d8@suse.de>
 <877cuqd1f8.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <877cuqd1f8.fsf@minerva.mail-host-address-is-not-set>
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, Daniel Vetter <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 05, 2023 at 01:16:27PM +0200, Javier Martinez Canillas wrote:
> Thomas Zimmermann <tzimmermann@suse.de> writes:
> 
> [...]
> 
> >
> > Your comment says that it calls a PCI function to clean up to vgacon. 
> > That comment explains what is happening, not why. And how the PCI and 
> > vgacon code work together is non-obvious.

Would a better comment help then:

	/*
	 * gma500 is a strange hybrid device, which both acts as a pci
	 * device (for legacy vga functionality) but also more like an
	 * integrated display on a SoC where the framebuffer simply
	 * resides in main memory and not in a special pci bar (that
	 * internally redirects to a stolen range of main memory) like all
	 * other integrated pci display devices have.
	 *
	 * To catch all cases we need to both remove conflicting fw
	 * drivers for the pci device and main memory.
	 */
> >
> > Again, here's my proposal for gma500:
> >
> > // call this from psb_pci_probe()
> > int gma_remove_conflicting_framebuffers(struct pci_dev *pdev, const
> > 					struct drm_driver *req_driver)
> > {
> > 	resource_size_t base = 0;
> > 	resource_size_t size = (resource_size_t)-1;
> > 	const char *name = req_driver->name;
> > 	int ret;
> >
> > 	/*
> > 	 * We cannot yet easily find the framebuffer's location in
> > 	 * memory. So remove all framebuffers here.
> > 	 *
> > 	 * TODO: Refactor psb_driver_load() to map vdc_reg earlier. Then
> > 	 *       we might be able to read the framebuffer range from the
> > 	 *       device.
> > 	 */
> > 	ret = aperture_remove_conflicting_devices(base, size, name);

Why can't this be a call to drm_aperture_remove_framebuffers? At least as
long as we don't implement the "read out actual fb base and size" code,
which also none of the other soc drivers bother with?

> > 	if (ret)
> > 		return ret;
> >
> > 	/*
> > 	 * WARNING: Apparently we must kick fbdev drivers before vgacon,
> > 	 * otherwise the vga fbdev driver falls over.
> > 	 */
> > 	ret = vga_remove_vgacon(pdev);

This isn't enough, we also nuke stuff that's mapping the vga fb range.
Which is really the reason I don't want to open code random stuff, pci is
self-describing, if it's decoding legacy vga it can figure this out and we
only have to implement the "how do I nuke legacy vga fw drivers from a pci
driver" once.

Not twice like this would result in, with the gma500 version being only
half the thing.

If it absolutely has to be a separate function for the gma500 pci legacy
vga (I still don't get why, it's just a pci vga device, there's absolutely
nothing special about that part at all) then I think it needs to be at
least a common "nuke a legacy vga device for me pls" function, which
shares the implementation with the pci one.

But not open-coding just half of it only.

> > 	if (ret)
> > 		return ret;
> >
> > 	return 0;
> > }
> >
> 
> If this is enough I agree that is much more easier code to understand.

It's still two calls and more code with more bugs? I'm not seeing the
point.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
