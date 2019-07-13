Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 871AC679A4
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 12:19:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8BF36E3CB;
	Sat, 13 Jul 2019 10:19:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE3246E3CB
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 10:19:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17265871-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 11:19:41 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: intel-gfx@lists.freedesktop.org
References: <20190713100016.8026-1-chris@chris-wilson.co.uk>
 <20190713100016.8026-3-chris@chris-wilson.co.uk>
In-Reply-To: <20190713100016.8026-3-chris@chris-wilson.co.uk>
Message-ID: <156301317852.9436.7496367591184040413@skylake-alporthouse-com>
Date: Sat, 13 Jul 2019 11:19:38 +0100
Subject: Re: [Intel-gfx] [PATCH 03/11] drm/i915/uc: introduce
 intel_uc_fw_supported
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMTMgMTE6MDA6MDgpCj4gRnJvbTogRGFuaWVs
ZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiAKPiBJ
bnN0ZWFkIG9mIGFsd2F5cyBjaGVja2luZyBpbiB0aGUgZGV2aWNlIGNvbmZpZyBpcyBHdUMgYW5k
IEh1QyBhcmUKPiBzdXBwb3J0ZWQgb3Igbm90LCB3ZSBjYW4gc2F2ZSB0aGUgc3RhdGUgaW4gdGhl
IHVjX2Z3IHN0cnVjdHVyZSBhbmQKPiBhdm9pZCBnb2luZyB0aHJvdWdoIGk5MTUgZXZlcnkgdGlt
ZSBmcm9tIHRoZSBsb3ctbGV2ZWwgdWMgbWFuYWdlbWVudAo+IGNvZGUuIHdoaWxlIGF0IGl0IEZJ
Uk1XQVJFX05PTkUgaGFzIGJlZW4gcmVuYW1lZCB0byBiZXR0ZXIgaW5kaWNhdGUgdGhhdAo+IHdl
IGhhdmVuJ3Qgc3RhcnRlZCB0aGUgZmV0Y2gvbG9hZCB5ZXQsIGJ1dCB3ZSBtaWdodCBoYXZlIGFs
cmVhZHkgc2VsZWN0ZWQKPiBhIGJsb2IuCj4gCj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJh
b2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiBDYzogTWljaGFs
IFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CgpPaywgYnV0IEknbSBub3Qg
cXVpdGUgZ2V0dGluZyB0aGUgZmVlbGluZyBvZiBhIG5pY2UgZmxvdyB0aHJvdWdoIGEgc3RhdGUK
bWFjaGluZS4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
