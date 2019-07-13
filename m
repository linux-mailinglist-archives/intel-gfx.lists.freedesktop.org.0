Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C01BD679AF
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 12:33:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B6F86E3CB;
	Sat, 13 Jul 2019 10:33:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9A336E3CB
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 10:33:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17266082-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 11:33:29 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: intel-gfx@lists.freedesktop.org
References: <20190713100016.8026-1-chris@chris-wilson.co.uk>
 <20190713100016.8026-8-chris@chris-wilson.co.uk>
In-Reply-To: <20190713100016.8026-8-chris@chris-wilson.co.uk>
Message-ID: <156301400647.9436.8778283407209352031@skylake-alporthouse-com>
Date: Sat, 13 Jul 2019 11:33:26 +0100
Subject: Re: [Intel-gfx] [PATCH 08/11] drm/i915/uc: Move intel functions to
 intel_uc
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMTMgMTE6MDA6MTMpCj4gRnJvbTogRGFuaWVs
ZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiAKPiBB
bGwgdGhlIGludGVsX3VjXyogY2FuIG5vdyBiZSBtb3ZlZCB0byB3b3JrIG9uIHRoZSBpbnRlbF91
YyBzdHJ1Y3R1cmUKPiBmb3IgYmV0dGVyIGVuY2Fwc3VsYXRpb24gb2YgdWMtcmVsYXRlZCBhY3Rp
b25zLgo+IAo+IE5vdGU6IEkndmUgaW50cm9kdWNlZCB1Y190b19ndCBpbnN0ZWFkIG9mIHVjX3Rv
X2k5MTUgYmVjYXVzZSB0aGUgYWltIGlzCj4gdG8gbW92ZSBldmVyeXRoaW5nIHRvIGJlIGd0LWZv
Y3VzZWQgaW4gdGhlIG1lZGl1bSB0ZXJtLCBzbyB3ZSB3b3VsZCd2ZQo+IGhhZCB0byByZXBsYWNl
IGl0IHNvb24gYW55d2F5Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVy
aW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gQ2M6IE1pY2hhbCBXYWpkZWN6
a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+IEFja2VkLWJ5OiBNaWNoYWwgV2FqZGVj
emtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
