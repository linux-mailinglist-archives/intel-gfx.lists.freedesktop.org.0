Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5BD766C8
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 15:03:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD5A16ED3A;
	Fri, 26 Jul 2019 13:03:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 012DD6ED3A
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 13:03:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17629464-1500050 for multiple; Fri, 26 Jul 2019 14:03:07 +0100
MIME-Version: 1.0
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <92742ddf-f40a-6506-2767-0e8f9896f7d9@intel.com>
References: <20190726125456.31364-1-chris@chris-wilson.co.uk>
 <92742ddf-f40a-6506-2767-0e8f9896f7d9@intel.com>
Message-ID: <156414618594.30723.1814687452729530462@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 26 Jul 2019 14:03:05 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/perf: Initialise err to 0
 before looping over ce->engines
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNy0yNiAxNDowMDowNykKPiBPbiAyNi8w
Ny8yMDE5IDE1OjU0LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBTbWF0Y2ggd2FybmluZyB0aGF0
IHRoZSBsb29wIG1heSBiZSBlbXB0eSBjYXVzaW5nIHVzIHRvIGNoZWNrIGVyciBiZWZvcmUKPiA+
IGl0IGhhZCBiZWVuIHNldC4gRW5zdXJlIHRoYXQgaXQgaXMgaW5pdGlhbGlzZWQgdG8gMCwganVz
dCBpbiBjYXNlLgo+ID4KPiA+IEZpeGVzOiBhOTg3N2RhMmQ2MjkgKCJkcm0vaTkxNS9vYTogUmVj
b25maWd1cmUgY29udGV4dHMgb24gdGhlIGZseSIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBMaW9uZWwgTGFuZHdlcmxp
biA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+Cj4gPiBDYzogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BlcmYuYyB8IDEgKwo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+ID4gaW5kZXggNzliZTlkOGVhNjI4
Li5hMjk0YzBmNTM2MjUgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BlcmYuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPiA+IEBA
IC0xODc1LDYgKzE4NzUsNyBAQCBzdGF0aWMgaW50IGdlbjhfY29uZmlndXJlX2FsbF9jb250ZXh0
cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiA+ICAgICAgICAgICAgICAgaWYgKGN0
eCA9PSBpOTE1LT5rZXJuZWxfY29udGV4dCkKPiA+ICAgICAgICAgICAgICAgICAgICAgICBjb250
aW51ZTsKPiA+ICAgCj4gPiArICAgICAgICAgICAgIGVyciA9IDA7Cj4gPiAgICAgICAgICAgICAg
IGZvcl9lYWNoX2dlbV9lbmdpbmUoY2UsCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgaTkxNV9nZW1fY29udGV4dF9sb2NrX2VuZ2luZXMoY3R4KSwKPiA+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBpdCkgewo+IENvdWxkIGFsbW9zdCByZWR1Y2UgdGhlIHNj
b3BlIG9mIHZhcmlhYmxlLiBSZWdhcmRsZXNzIDoKClllYWgsIEkgd2FzIHRlbXB0ZWQuIFRoZSBz
ZWNvbmQgbG9vcCBpcyBhIGJpdCB1Z2xpZXIgd2l0aCBpbnQgZXJyLCBzbwpsZWZ0IGl0IGZvciBs
YXRlci4gVGhpcyBsb29wIHdvdWxkIGxvb2sgYmV0dGVyIGlmIHdlIHB1bGxlZCB0aGUgaW5uZXIK
b3V0IGludG8gaXRzIGZ1bmN0aW9uLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
