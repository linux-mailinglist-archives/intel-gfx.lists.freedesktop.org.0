Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E1C4F8605
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 19:26:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E888110EAAB;
	Thu,  7 Apr 2022 17:26:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8EF910EAAB;
 Thu,  7 Apr 2022 17:26:26 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2D9CA6175A;
 Thu,  7 Apr 2022 17:26:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1054CC385A0;
 Thu,  7 Apr 2022 17:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1649352385;
 bh=JVHmD/j+982q82Hd9yNr4YBGxFQIXSXjMoQdgw6ykAI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=l9pKfCYRQ+hXKX0R2HxMhUsSKKuI4QZXs86eW0eMMQGCIS9+3rq/mXAWUD6FwusV2
 2bsJdDPgSeFo4pFUHfHoUd1NLNk9Lo2j/d5YIybKX/KtH9m834Y3BF2R5pNkepMMBw
 pWg83S6NQWDDpCQk/5EDwqP19AsVl1W796UgTq8k=
Date: Thu, 7 Apr 2022 19:26:22 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <Yk8evqGtjw1H1Q29@kroah.com>
References: <YkwAhSt9HlbxcuZo@phenom.ffwll.local>
 <408ffe9b-f09f-dc7e-7f5e-a93b311a06fa@redhat.com>
 <CAKMK7uHf6H8mhSm6eDHUruWK5Xc2cSPkJUX6v-jpeQfjS19dKw@mail.gmail.com>
 <e124af06-4f24-277a-543a-82b383f48cea@redhat.com>
 <CAKMK7uH4GgDQJZguT-k0QmgEAHYHuDEbBtjYje51_Rtqzud0yw@mail.gmail.com>
 <CAMuHMdWr0L0r+MVU-=+_yeHKwK8BjF7_EJQxiJT5jMqS9FJUeQ@mail.gmail.com>
 <YkxFHUdm/YeiVY+D@kroah.com> <Ykxqi82sOEd2Zg1K@phenom.ffwll.local>
 <YkxyBt8Zee8qrEbT@kroah.com>
 <CAKMK7uEWMDZoB_OLLu7desVVPXEAgDiCEjVDJ3FrSeSTBoYtGQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKMK7uEWMDZoB_OLLu7desVVPXEAgDiCEjVDJ3FrSeSTBoYtGQ@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH v2 18/19] Revert "fbdev: Prevent probing
 generic drivers if a FB is already registered"
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
Cc: Linux Fbdev development list <linux-fbdev@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Javier Martinez Canillas <javierm@redhat.com>, Peter Jones <pjones@redhat.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Ilya Trukhanov <lahvuun@gmail.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Zack Rusin <zackr@vmware.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 05, 2022 at 07:29:22PM +0200, Daniel Vetter wrote:
> On Tue, 5 Apr 2022 at 18:45, Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Tue, Apr 05, 2022 at 06:12:59PM +0200, Daniel Vetter wrote:
> > > On Tue, Apr 05, 2022 at 03:33:17PM +0200, Greg KH wrote:
> > > > On Tue, Apr 05, 2022 at 03:24:40PM +0200, Geert Uytterhoeven wrote:
> > > > > Hi Daniel,
> > > > >
> > > > > On Tue, Apr 5, 2022 at 1:48 PM Daniel Vetter <daniel@ffwll.ch> wrote:
> > > > > > On Tue, 5 Apr 2022 at 11:52, Javier Martinez Canillas
> > > > > > <javierm@redhat.com> wrote:
> > > > > > > On 4/5/22 11:24, Daniel Vetter wrote:
> > > > > > > > On Tue, 5 Apr 2022 at 11:19, Javier Martinez Canillas
> > > > > > > >> This is how I think that work, please let me know if you see something
> > > > > > > >> wrong in my logic:
> > > > > > > >>
> > > > > > > >> 1) A PCI device of OF device is registered for the GPU, this attempt to
> > > > > > > >>    match a registered driver but no driver was registered that match yet.
> > > > > > > >>
> > > > > > > >> 2) The efifb driver is built-in, will be initialized according to the link
> > > > > > > >>    order of the objects under drivers/video and the fbdev driver is registered.
> > > > > > > >>
> > > > > > > >>    There is no platform device or PCI/OF device registered that matches.
> > > > > > > >>
> > > > > > > >> 3) The DRM driver is built-in, will be initialized according to the link
> > > > > > > >>    order of the objects under drivers/gpu and the DRM driver is registered.
> > > > > > > >>
> > > > > > > >>    This matches the device registered in (1) and the DRM driver probes.
> > > > > > > >>
> > > > > > > >> 4) The DRM driver .probe kicks out any conflicting DRM drivers and pdev
> > > > > > > >>    before registering the DRM device.
> > > > > > > >>
> > > > > > > >>    There are no conflicting drivers or platform device at this point.
> > > > > > > >>
> > > > > > > >> 5) Latter at some point the drivers/firmware/sysfb.c init function is
> > > > > > > >>    executed, and this registers a platform device for the generic fb.
> > > > > > > >>
> > > > > > > >>    This device matches the efifb driver registered in (2) and the fbdev
> > > > > > > >>    driver probes.
> > > > > > > >>
> > > > > > > >>    Since that happens *after* the DRM driver already matched, probed
> > > > > > > >>    and registered the DRM device, that is a bug and what the reverted
> > > > > > > >>    patch worked around.
> > > > > > > >>
> > > > > > > >> So we need to prevent (5) if (1) and (3) already happened. Having a flag
> > > > > > > >> set in the fbdev core somewhere when remove_conflicting_framebuffers()
> > > > > > > >> is called could be a solution indeed.
> > > > > > > >>
> > > > > > > >> That is, the fbdev core needs to know that a DRM driver already probed
> > > > > > > >> and make register_framebuffer() fail if info->flag & FBINFO_MISC_FIRMWARE
> > > > > > > >>
> > > > > > > >> I can attempt to write a patch for that.
> > > > > > > >
> > > > > > > > Ah yeah that could be an issue. I think the right fix is to replace
> > > > > > > > the platform dev unregister with a sysfb_unregister() function in
> > > > > > > > sysfb.c, which is synced with a common lock with the sysfb_init
> > > > > > > > function and a small boolean. I think I can type that up quickly for
> > > > > > > > v3.
> > > > > > >
> > > > > > > It's more complicated than that since sysfb is just *one* of the several
> > > > > > > places where platform devices can be registered for video devices.
> > > > > > >
> > > > > > > For instance, the vga16fb driver registers its own platform device in
> > > > > > > its module_init() function so that can also happen after the conflicting
> > > > > > > framebuffers (and associated devices) were removed by a DRM driver probe.
> > > > > > >
> > > > > > > I tried to minimize the issue for that particular driver with commit:
> > > > > > >
> > > > > > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0499f419b76f
> > > > > > >
> > > > > > > But the point stands, it all boils down to the fact that you have two
> > > > > > > different subsystems registering video drivers and they don't know all
> > > > > > > about each other to take a proper decision.
> > > > > > >
> > > > > > > Right now the drm_aperture_remove_conflicting_framebuffers() call signals
> > > > > > > in one direction from DRM to fbdev but there isn't a communication in the
> > > > > > > other direction, from fbdev to DRM.
> > > > > > >
> > > > > > > I believe the correct fix would be for the fbdev core to keep a list of
> > > > > > > the apertures struct that are passed to remove_conflicting_framebuffers(),
> > > > > > > that way it will know what apertures are not available anymore and prevent
> > > > > > > to register any fbdev framebuffer that conflicts with one already present.
> > > > > >
> > > > > > Hm that still feels like reinventing a driver model, badly.
> > > > > >
> > > > > > I think there's two cleaner solutions:
> > > > > > - move all the firmware driver platform_dev into sysfb.c, and then
> > > > > > just bind the special cases against that (e.g. offb, vga16fb and all
> > > > > > these). Then we'd have one sysfb_try_unregister(struct device *dev)
> > > > > > interface that fbmem.c uses.
> > > > > > - let fbmem.c call into each of these firmware device providers, which
> > > > > > means some loops most likely (like we can't call into vga16fb), so
> > > > > > probably need to move that into fbmem.c and it all gets a bit messy.
> > > > > >
> > > > > > > Let me know if you think that makes sense and I can attempt to write a fix.
> > > > > >
> > > > > > I still think unregistering the platform_dev properly makes the most
> > > > >
> > > > > That doesn't sound very driver-model-aware to me. The device is what
> > > > > the driver binds to; it does not cease to exist.
> > > >
> > > > I agree, that sounds odd.
> > > >
> > > > The device should always stick around (as the bus creates it), it's up
> > > > to the driver to bind to the device as needed.
> > >
> > > The device actually disappears when the real driver takes over.
> > >
> > > The firmware fb is a special thing which only really exists as long as the
> > > firmware is in charge of the display hardware. As soon as a real driver
> > > takes over, it stops being a thing.
> > >
> > > And since a driver without a device is a bit a funny thing, we have been
> > > pushing towards a model where the firmware code sets up a platform_device
> > > for this fw interface, and the fw driver (efifb, simplefb and others like
> > > that) bind against it. And then we started to throw out that
> > > platform_device (which unbinds the fw driver and prevents it from ever
> > > rebinding), except in the wrong layer so there's a few races.
> > >
> > > Should we throw out all that code and replace it with something else? What
> > > would that be like?
> >
> > Ah, no, sorry, I didn't know that at all.
> >
> > That sounds semi-sane, just fix the races by moving the layer elsewhere?
> 
> Yeah essentially move it all into drivers/firmware/sysfb.c, for all
> drivers, both the registering and the nuking, and warp that into a
> local mutex. Currently parts is in there, parts is in fbmem.c, parts
> in some of the drivers like vga16fb, and some drivers (iirc only offb)
> still don't even have any platform_dev underneath their driver. So
> ideally the drivers would all just have their platform_driver probe
> functions, and that's it. It does mean though that some of that stuff
> needs to be moved to sysfb.c or into the relevant fw code that sets
> stuff up.
> 
> It'll take some, so really just a direction check before we move
> further. You should get cc'ed on the patches (like with the sysfb
> stuff) anyway. Sounds roughly right?

That's fine with me, thanks.
