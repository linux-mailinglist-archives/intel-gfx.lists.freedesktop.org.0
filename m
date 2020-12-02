Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D18DA2CBE0B
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 14:17:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49D886EA2D;
	Wed,  2 Dec 2020 13:17:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D6226EA2D
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Dec 2020 13:17:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23189859-1500050 for multiple; Wed, 02 Dec 2020 13:17:11 +0000
MIME-Version: 1.0
In-Reply-To: <20201127161841.24806-1-chris@chris-wilson.co.uk>
References: <20201126211317.15291-1-chris@chris-wilson.co.uk>
 <20201127161841.24806-1-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 02 Dec 2020 13:17:09 +0000
Message-ID: <160691502993.17466.8724405791523958760@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Record the plane
 update times for debugging
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-11-27 16:18:41)
> Since we try and estimate how long we require to update the registers to
> perform a plane update, it is of vital importance that we measure the
> distribution of plane updates to better guide our estimate. If we
> underestimate how long it takes to perform the plane update, we may
> slip into the next scanout frame causing a tear. If we overestimate, we
> may unnecessarily delay the update to the next frame, causing visible
> jitter.
> 
> Replace the warning that we exceed some arbitrary threshold for the
> vblank update with a histogram for debugfs.
> 
> v2: Add a per-crtc debugfs entry so that the information is easier to
> extract when testing individual CRTC, and so that it can be reset before
> a test.

With the per-crtc reset functionality, we can more easily detect errors
under testing, e.g.

https://patchwork.freedesktop.org/series/84359/

and suppress the warnings when no one is watching (but are flooding the
CI results at present).

Any one in favour?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
