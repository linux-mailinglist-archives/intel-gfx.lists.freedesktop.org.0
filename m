Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2E31D4FF3
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2020 16:06:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 401056ECAB;
	Fri, 15 May 2020 14:05:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6D3E6ECAB
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 May 2020 14:05:53 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id l11so3764701wru.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 May 2020 07:05:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0Ebyu1wduUPyetWsGsf1JtUCENkZ525CtVEC2hiJEe8=;
 b=TdYQpIeowW3PEFGGmvD79NbjMM85UCEx1Kf+yfO3LvW2RvTPhaaUS8aIgfCj606ef8
 XRnZyMEKh2BMD42vzdWw32SesvHWy7bD10QFIX4Our52HyiwI6xxnN2yWYJtqDKZ+Rmt
 7FDPeCJ7PN1DW7C3j3hD6O4sgLceQ7fybO8VM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0Ebyu1wduUPyetWsGsf1JtUCENkZ525CtVEC2hiJEe8=;
 b=HMsXN81r+4Dly8mPVBIPGfiAkPgxd9sNmmy7MiHlDJaO1g79FYvwEV45pMtKkUwsQL
 BtUwUmBez73UhWDaaAVT7hDHuCg857E++ZMXpZ8idu3lIwkUvVtAY5zIR1qInf9FV2bQ
 D3WcODct8HMcA55D7Jdf2DSoy6NZ/n/Xx06jKcg88jgzzxfbvPFTQB7BBEXT5DPz4jK2
 EJhD6TwivcE3mZaooma69z9NdaIsDdHoTwbScqfewGWR5uEVsL+fL5mPyFB/5bhuancP
 keWqTftfj6986VF46Y6mfIn+MkJqWsfQkR/mCSA4jW/xa/BRtXoO14oln+KKAKP5WOGB
 F06g==
X-Gm-Message-State: AOAM530wtuWY/XvTL9LdZOaZbvMTC62W8jeyfIlLGBkffeeC2WTVYtlU
 ZBoHEQiihH8upyBp/lQUzWYrRw==
X-Google-Smtp-Source: ABdhPJwePyoLQGrQ8w/ZUSaYjGJchDcjXQ9DwfVMupBvETYLN1waSjpnshy7AjAOHzqUabRfoswwtg==
X-Received: by 2002:adf:de05:: with SMTP id b5mr4382781wrm.299.1589551552320; 
 Fri, 15 May 2020 07:05:52 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f127sm3919663wmf.17.2020.05.15.07.05.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 07:05:51 -0700 (PDT)
Date: Fri, 15 May 2020 16:05:49 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <20200515140549.GG206103@phenom.ffwll.local>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
 <20200403135828.2542770-2-daniel.vetter@ffwll.ch>
 <CAKMK7uEEi8NMCopSd+7LqmhaqW0U4ZMif7YLgYQZ58fD7jRfzA@mail.gmail.com>
 <20200406133835.GA24355@kroah.com>
 <CAKMK7uG25kTY9iSyz7A-rxD+wMc4Y0NzuQ288Q51KR-sG0KNzQ@mail.gmail.com>
 <20200428131512.GI3456981@phenom.ffwll.local>
 <20200515125538.GA1933255@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515125538.GA1933255@kroah.com>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 01/44] drivers/base: Always release devres
 on device_del
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
 DRI Development <dri-devel@lists.freedesktop.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 15, 2020 at 02:55:38PM +0200, Greg Kroah-Hartman wrote:
> On Tue, Apr 28, 2020 at 03:15:12PM +0200, Daniel Vetter wrote:
> > On Mon, Apr 06, 2020 at 03:55:28PM +0200, Daniel Vetter wrote:
> > > On Mon, Apr 6, 2020 at 3:38 PM Greg Kroah-Hartman
> > > <gregkh@linuxfoundation.org> wrote:
> > > >
> > > > On Mon, Apr 06, 2020 at 02:32:51PM +0200, Daniel Vetter wrote:
> > > > > On Fri, Apr 3, 2020 at 3:58 PM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> > > > > >
> > > > > > In drm we've added nice drm_device (the main gpu driver thing, which
> > > > > > also represents the userspace interfaces and has everything else
> > > > > > dangling off it) init functions using devres, devm_drm_dev_init and
> > > > > > soon devm_drm_dev_alloc (this patch series adds that).
> > > > > >
> > > > > > A slight trouble is that drm_device itself holds a reference on the
> > > > > > struct device it's sitting on top (for sysfs links and dmesg debug and
> > > > > > lots of other things), so there's a reference loop. For real drivers
> > > > > > this is broken at remove/unplug time, where all devres resources are
> > > > > > released device_release_driver(), before the final device reference is
> > > > > > dropped. So far so good.
> > > > > >
> > > > > > There's 2 exceptions:
> > > > > > - drm/vkms|vgem: Virtual drivers for which we create a fake/virtual
> > > > > >   platform device to make them look more like normal devices to
> > > > > >   userspace. These aren't drivers in the driver model sense, we simple
> > > > > >   create a platform_device and register it.
> > > > > >
> > > > > > - drm/i915/selftests, where we create minimal mock devices, and again
> > > > > >   the selftests aren't proper drivers in the driver model sense.
> > > > > >
> > > > > > For these two cases the reference loop isn't broken, because devres is
> > > > > > only cleaned up when the last device reference is dropped. But that's
> > > > > > not happening, because the drm_device holds that last struct device
> > > > > > reference.
> > > > > >
> > > > > > Thus far this wasn't a problem since the above cases simply
> > > > > > hand-rolled their cleanup code. But I want to convert all drivers over
> > > > > > to the devm_ versions, hence it would be really nice if these
> > > > > > virtual/fake/mock uses-cases could also be managed with devres
> > > > > > cleanup.
> > > > > >
> > > > > > I see three possible approaches:
> > > > >
> > > > > Restarting this at the top level, because the discussion thus far just
> > > > > ended in a long "you're doing it wrong", despite that I think we're
> > > > > doing what v4l is doing (plus/minus that we can't do an exact matching
> > > > > handling in drm because our uapi has a lot more warts, which we can't
> > > > > change because no breaking userspace).
> > > > >
> > > > > So which one of the three below is the right approach?
> > > > >
> > > > > Aside, looking at the v4l solution I think there's also a confusion
> > > > > about struct device representing a char device (which v4l directly
> > > > > uses as its userspace interface refcounted thing, and which drm does
> > > > > _not_ directly). And a struct device embedded into something like
> > > > > platform_device or a virtual device, where a driver can bind to. My
> > > > > question here is about the former, I don't care how cdev struct device
> > > > > are cleaned up one bit. Now if other subsystems relies on the devres
> > > > > cleanup behaviour we currently have because of such cdev usage, then
> > > > > yeah first approach doesn't work (and I have a big surprised that use
> > > > > case, but hey would actually learn something).
> > > > >
> > > > > End of aside, since again I want to figure out which of the tree
> > > > > approaches it the right one. Not about how wrong one of them is,
> > > > > ignoring the other three I laid out. And maybe there's even more
> > > > > options for this.
> > > >
> > > > Sorry, been swamped with other things, give me a few days to get back to
> > > > this, I need to dig into how you all are dealing with the virtual
> > > > drivers.
> > > 
> > > Sure, no problem.
> > > 
> > > > Doing this in the middle of the merge window is a bit rough :)
> > > 
> > > Ah I always forget ... we freeze drm at -rc6, so merge window is
> > > actually my most relaxed time since everyone is busy and no one has
> > > time to report drm bugs :-)
> > 
> > Hi Greg,
> > 
> > Since -rc3 is out, had any to ponder this? Otherwise we'll be right back
> > in the next merge window ...
> 
> I owe you a response to this.  I'm going to try to carve out some time
> on Monday to do this, sorry for the delay :(

No worries, I got myself plenty occupied with other fun stuff in graphics
for now. And the part of the series which doesn't need this here is all
landed, so new drivers already look a notch cleaner in their code.

I'd have poked you earlier, but ofc very much appreciated if you can look
into this a bit before the next merge window.

Thanks, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
