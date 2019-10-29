Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3559EE851E
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 11:08:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4FB46EB23;
	Tue, 29 Oct 2019 10:08:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFEE16EB21
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 10:08:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19004267-1500050 for multiple; Tue, 29 Oct 2019 10:08:00 +0000
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191029095856.25431-5-matthew.auld@intel.com>
References: <20191029095856.25431-1-matthew.auld@intel.com>
 <20191029095856.25431-5-matthew.auld@intel.com>
Message-ID: <157234367819.10560.14732494805371853419@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 29 Oct 2019 10:07:58 +0000
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915: Don't try to place HWS in
 non-existing mappable region
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTAtMjkgMDk6NTg6NTQpCj4gRnJvbTogTWljaGFs
IFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gCj4gSFdTIHBsYWNlbWVu
dCByZXN0cmljdGlvbnMgY2FuJ3QganVzdCByZWx5IG9uIEhBU19MTEMgZmxhZy4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4g
Q2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5j
b20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jIHwg
MiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwo+IGluZGV4IDljYzFl
YTY1MTllYy4uMzU1NTIzMTE0YzcxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2VuZ2luZV9jcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX2NzLmMKPiBAQCAtNTI4LDcgKzUyOCw3IEBAIHN0YXRpYyBpbnQgcGluX2dndHRf
c3RhdHVzX3BhZ2Uoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+ICAgICAgICAgdW5z
aWduZWQgaW50IGZsYWdzOwo+ICAKPiAgICAgICAgIGZsYWdzID0gUElOX0dMT0JBTDsKPiAtICAg
ICAgIGlmICghSEFTX0xMQyhlbmdpbmUtPmk5MTUpKQo+ICsgICAgICAgaWYgKCFIQVNfTExDKGVu
Z2luZS0+aTkxNSkgJiYgaTkxNV9nZ3R0X2hhc19hcGVydHVyZShlbmdpbmUtPmd0LT5nZ3R0KSkK
PiAgICAgICAgICAgICAgICAgLyoKPiAgICAgICAgICAgICAgICAgICogT24gZzMzLCB3ZSBjYW5u
b3QgcGxhY2UgSFdTIGFib3ZlIDI1Nk1pQiwgc28KPiAgICAgICAgICAgICAgICAgICogcmVzdHJp
Y3QgaXRzIHBpbm5pbmcgdG8gdGhlIGxvdyBtYXBwYWJsZSBhcmVuYS4KCkhvdyB3ZSB3aWxsIGxh
dWdoIGlmIGl0IHR1cm5zIG91dCBmdXR1cmUgSFcgY2Fubm90IGhhbmRsZSBoYXZpbmcgdGhlCkhX
U1AgcGxhY2VkIGFueXdoZXJlISA6KQoKQWNrZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
