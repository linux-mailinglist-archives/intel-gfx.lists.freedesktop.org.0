Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 403FB61570
	for <lists+intel-gfx@lfdr.de>; Sun,  7 Jul 2019 17:43:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93A1989AA7;
	Sun,  7 Jul 2019 15:43:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E57D89AA7
 for <intel-gfx@lists.freedesktop.org>; Sun,  7 Jul 2019 15:43:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17161842-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sun, 07 Jul 2019 16:43:00 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: intel-gfx@lists.freedesktop.org
References: <20190707151135.11700-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190707151135.11700-1-chris@chris-wilson.co.uk>
Message-ID: <156251417792.17322.3624970295280445869@skylake-alporthouse-com>
Date: Sun, 07 Jul 2019 16:42:57 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Pull assert_forcewake_active()
 underneath the lock
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMDcgMTY6MTE6MzUpCj4gTWFrZSBubyBhc3N1
bXB0aW9uIHRoYXQgc29tZXRoaW5nIGluIHRoZSBiYWNrZ3JvdW5kIGlzIG5vdCBhY3F1aXJpbmcg
dGhlCj4gZndfZG9tYWluIC0tIGJ1dCB3ZSBzdGlsbCBkbyBub3QgdHJhY2sgb3duZXIgc28gYXNz
dW1lIHRoYXQgYW55IGFjdGl2ZQo+IGRvbWFpbiBpcyBpbnRlbmRlZCBieSB0aGUgY2FsbGVyLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgoKUHJlZW1wdGl2ZSBpcmMgci1iICh1bmRlciBhIGJsYW5rZXQgci1iIGZvciB0cml2aWFsIGFk
anVzdG1lbnRzIHRvIHRoaXMKbG9vcCB0byBzaHV0IENJIHVwISksClJldmlld2VkLWJ5OiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotQ2hyaXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
