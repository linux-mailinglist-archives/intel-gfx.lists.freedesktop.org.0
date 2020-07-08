Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3964F218FE9
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 20:48:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 802D56E914;
	Wed,  8 Jul 2020 18:48:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CEA96E914
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 18:48:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21757301-1500050 for multiple; Wed, 08 Jul 2020 19:48:00 +0100
MIME-Version: 1.0
In-Reply-To: <CAM0jSHPRNktsmHHHaXZ3KiTP3LxDjFsftTw1ZkU99_Lt6dgHtw@mail.gmail.com>
References: <20200708134742.727-1-chris@chris-wilson.co.uk>
 <20200708134742.727-6-chris@chris-wilson.co.uk>
 <CAM0jSHPRNktsmHHHaXZ3KiTP3LxDjFsftTw1ZkU99_Lt6dgHtw@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 08 Jul 2020 19:47:58 +0100
Message-ID: <159423407813.30287.7471033840988085327@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915: Switch to object allocations
 for page directories
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2020-07-08 19:32:26)
> On Wed, 8 Jul 2020 at 14:48, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> > index 8291ede6902c..9fb06fcc8f8f 100644
> > --- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> > +++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> > @@ -393,7 +393,7 @@ static int igt_mock_exhaust_device_supported_pages(void *arg)
> >          */
> >
> >         for (i = 1; i < BIT(ARRAY_SIZE(page_sizes)); i++) {
> > -               unsigned int combination = 0;
> > +               unsigned int combination = SZ_4K;
> 
> Just an unrelated change?

As we try to allocate 4K PD objects to bind the huge page, it fails an
assert if we exclude SZ_4K from the list of supported page sizes from
the device.

I leave it to the reader to work out how we should tie everything
together for for variable pd sizes.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
