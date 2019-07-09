Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE80F63690
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 15:13:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0988989ACC;
	Tue,  9 Jul 2019 13:13:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6AA989ACC
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 13:13:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17185208-1500050 for multiple; Tue, 09 Jul 2019 14:13:04 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190709123351.5645-1-lionel.g.landwerlin@intel.com>
 <20190709123351.5645-10-lionel.g.landwerlin@intel.com>
 <069bb157-9efe-a55a-9ee6-23efd6bea8d6@intel.com>
 <156267785241.9375.1018889237897486495@skylake-alporthouse-com>
In-Reply-To: <156267785241.9375.1018889237897486495@skylake-alporthouse-com>
Message-ID: <156267798222.9375.13824925199614654206@skylake-alporthouse-com>
Date: Tue, 09 Jul 2019 14:13:02 +0100
Subject: Re: [Intel-gfx] [PATCH v8 09/13] drm/i915: add a new perf
 configuration execbuf parameter
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMDkgMTQ6MTA6NTIpCj4gUXVvdGluZyBMaW9u
ZWwgTGFuZHdlcmxpbiAoMjAxOS0wNy0wOSAxMzo1MzozOCkKPiA+IE9uIDA5LzA3LzIwMTkgMTU6
MzMsIExpb25lbCBMYW5kd2VybGluIHdyb3RlOgo+ID4gPiAgIAo+ID4gPiArc3RhdGljIGludCBl
Yl9vYV9jb25maWcoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCj4gPiA+ICt7Cj4gPiA+ICsg
ICAgIGludCByZXQ7Cj4gPiA+ICsKPiA+ID4gKyAgICAgaWYgKCFlYi0+b2FfY29uZmlnKQo+ID4g
PiArICAgICAgICAgICAgIHJldHVybiAwOwo+ID4gPiArCj4gPiA+ICsgICAgIHJldCA9IGk5MTVf
bXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxlKCZlYi0+aTkxNS0+ZHJtKTsKPiA+ID4gKyAgICAgaWYg
KHJldCkKPiA+ID4gKyAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gCj4gPiBUaGlzIGlzIGFz
c3VtaW5nIHRoZSBsb2NrIGlzIGRyb3BwZWQgZnJvbSB0aGUgY2FsbGluZyBmdW5jdGlvbi4KPiA+
IAo+ID4gSXQncyBub3QgYXQgdGhlIG1vbWVudCwgYnV0IEkgZXhwZWN0IHlvdSdsbCBiZSBkb2lu
ZyB0aGF0IHNvb24/Cj4gCj4gSGVuY2Ugd2h5IEknbSBjaGVja2luZyBldmVyeXRoaW5nIHRoYXQg
aGFzIGFuIGltcGxpY2l0IHN0cnVjdF9tdXRleCA6KQoKSWYgc3RydWN0X211dGV4IGlzIHlvdXIg
Y2hvc2VuIGxvY2sgaGVyZSAoZm9yIG9hX2NvbmZpZykgbWFyayBhcwpyZXF1aXJlZCB3aXRoCgps
b2NrZGVwX2Fzc2VydF9oZWxkKCZlYi0+aTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7IC8qIG9hX2Nv
bmZpZyAqLwoKYnV0IEkgZG8gaW1wbG9yZSB5b3UgdG8gaW52ZXN0IGEgcHJpdmF0ZSBtdXRleCA6
KQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
