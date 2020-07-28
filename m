Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58300230F35
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 18:27:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AB636E388;
	Tue, 28 Jul 2020 16:27:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5EF56E21A;
 Tue, 28 Jul 2020 16:27:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21960187-1500050 for multiple; Tue, 28 Jul 2020 17:27:33 +0100
MIME-Version: 1.0
In-Reply-To: <CAKMK7uFt5ViekqBPqdBbJWN4FhfxvF57K58VW8hAZGZwjRDz0w@mail.gmail.com>
References: <20200723172119.17649-1-chris@chris-wilson.co.uk>
 <CAKMK7uFt5ViekqBPqdBbJWN4FhfxvF57K58VW8hAZGZwjRDz0w@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Daniel Vetter <daniel@ffwll.ch>, Dave Airlie <airlied@redhat.com>
Date: Tue, 28 Jul 2020 17:27:33 +0100
Message-ID: <159595365380.28639.1774414370144556112@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/3] drm: Restore driver.preclose() for all
 to use
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 stable <stable@vger.kernel.org>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Daniel Vetter (2020-07-27 20:32:45)
> On Thu, Jul 23, 2020 at 7:21 PM Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > An unfortunate sequence of events, but it turns out there is a valid
> > usecase for being able to free/decouple the driver objects before they
> > are freed by the DRM core. In particular, if we have a pointer into a
> > drm core object from inside a driver object, that pointer needs to be
> > nerfed *before* it is freed so that concurrent access (e.g. debugfs)
> > does not following the dangling pointer.
> >
> > The legacy marker was adding in the code movement from drp_fops.c to
> > drm_file.c
> 
> I might fumble a lot, but not this one:
> 
> commit 45c3d213a400c952ab7119f394c5293bb6877e6b
> Author: Daniel Vetter <daniel.vetter@ffwll.ch>
> Date:   Mon May 8 10:26:33 2017 +0200
> 
>     drm: Nerf the preclose callback for modern drivers

Gah, when I going through the history it looked like it appeared out of
nowhere.

> Also looking at the debugfs hook that has some rather adventurous
> stuff going on I think, feels a bit like a kitchensink with batteries
> included. If that's really all needed I'd say iterate the contexts by
> first going over files, then the ctx (which arent shared anyway) and
> the problem should also be gone.

Or we could cut out the middlelayer and put the release under the driver
control with a call to the drm_release() when the driver is ready.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
