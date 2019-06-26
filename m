Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A84B56B09
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 15:47:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 759846E441;
	Wed, 26 Jun 2019 13:47:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 598B06E441
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 13:47:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17031798-1500050 for multiple; Wed, 26 Jun 2019 14:47:03 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87woh84g2t.fsf@gaia.fi.intel.com>
References: <20190626065303.31624-1-chris@chris-wilson.co.uk>
 <20190626065303.31624-4-chris@chris-wilson.co.uk>
 <87woh84g2t.fsf@gaia.fi.intel.com>
Message-ID: <156155681954.26855.3347683305533611391@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 26 Jun 2019 14:46:59 +0100
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: Add a wakeref getter for iff
 the wakeref is already active
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTI2IDE0OjQzOjU0KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBGb3IgdXNlIGluIHRo
ZSBuZXh0IHBhdGNoLCB3ZSB3YW50IHRvIGFjcXVpcmUgYSB3YWtlcmVmIHdpdGhvdXQgaGF2aW5n
Cj4gPiB0byB3YWtlIHRoZSBkZXZpY2UgdXAgLS0gaS5lLiBvbmx5IGFjcXVpcmUgdGhlIGVuZ2lu
ZSB3YWtlcmVmIGlmIHRoZQo+ID4gZW5naW5lIGlzIGFscmVhZHkgYWN0aXZlLgo+ID4KPiAKPiBz
L2lmZi9pZiBvbiB0aGUgc3ViamVjdC4KCmlmZiA9PT0gaWYsIGFuZCBvbmx5IGlmLAotQ2hyaXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
