Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B17684A6D3
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 18:27:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7E256E183;
	Tue, 18 Jun 2019 16:27:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 447456E183
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 16:26:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16943401-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 17:26:54 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: intel-gfx@lists.freedesktop.org
References: <20190618161951.28820-1-chris@chris-wilson.co.uk>
 <20190618161951.28820-2-chris@chris-wilson.co.uk>
In-Reply-To: <20190618161951.28820-2-chris@chris-wilson.co.uk>
Message-ID: <156087521455.31375.13502866617389430585@skylake-alporthouse-com>
Date: Tue, 18 Jun 2019 17:26:54 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Don't dereference request if
 it may have been retired
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDYtMTggMTc6MTk6NTEpCj4gVGhpcyBoYXMgY291
bnQgbWUgb3V0IG9uIGNvdW50bGVzcyBvY2Nhc2lvbnMsIHdoZW4gd2UgcmV0cmlldmUgYSBwb2lu
dGVyCj4gZnJvbSB0aGUgc3VibWlzc2lvbi9leGVjbGlzdHMgYmFja2VuZCwgaXQgZG9lcyBub3Qg
Y2FycnkgYSByZWZlcmVuY2UgdG8KPiB0aGUgY29udGV4dCBvciByaW5nLiBUaG9zZSBhcmUgb25s
eSBwaW5uZWQgd2hpbGUgdGhlIHJxdWVzdCBpcyBhY3RpdmUsCj4gc28gaWYgd2Ugc2VlIHRoZSBy
ZXF1ZXN0IGlzIGNvbXBsZXRlZCwgaXQgbWF5IGJlIGluIHRoZSBwcm9jZXNzIG9mIGJlaW5nCj4g
cmV0aXJlZCBhbmQgdGhvc2UgcG9pbnRlcnMgZGVmdW5jdC4KPiAKCkkgZ3Vlc3MKRml4ZXM6IDNh
MDY4NzIxYTk3MyAoImRybS9pOTE1OiBTaG93IHJpbmctPnN0YXJ0IGZvciB0aGUgRUxTUCBjb250
ZXh0L3JlcXVlc3QgcXVldWUiKQp2NC4xOCEKCj4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDkzOAo+IFNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
