Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D6EBAED8
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 10:02:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BAA36E1CF;
	Mon, 23 Sep 2019 08:01:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0694C6E1CF
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 08:01:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18582044-1500050 for multiple; Mon, 23 Sep 2019 09:01:56 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190921095542.23205-1-chris@chris-wilson.co.uk>
 <87wodzzc6x.fsf@gaia.fi.intel.com>
In-Reply-To: <87wodzzc6x.fsf@gaia.fi.intel.com>
Message-ID: <156922571230.21369.2369473750699739951@skylake-alporthouse-com>
Date: Mon, 23 Sep 2019 09:01:52 +0100
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/execlists: Refactor -EIO
 markup of hung requests
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA5LTIzIDA4OjQ3OjE4KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBQdWxsIHNldHRpbmcg
LUVJTyBvbiB0aGUgaHVuZyByZXF1ZXN0cyBpbnRvIGl0cyBvd24gdXRpbGl0eSBmdW5jdGlvbi4K
PiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwg
MzIgKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTcg
aW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbHJjLmMKPiA+IGluZGV4IDFhMmI3MTE1N2YwOC4uNTNlODIzZDM2YjI4IDEwMDY0NAo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gPiBAQCAtMjM0LDYgKzIzNCwxMyBA
QCBzdGF0aWMgdm9pZCBleGVjbGlzdHNfaW5pdF9yZWdfc3RhdGUodTMyICpyZWdfc3RhdGUsCj4g
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0
IGludGVsX3JpbmcgKnJpbmcpOwo+ID4gIAo+ID4gK3N0YXRpYyB2b2lkIG1hcmtfZWlvKHN0cnVj
dCBpOTE1X3JlcXVlc3QgKnJxKQo+ID4gK3sKPiA+ICsgICAgIGlmICghaTkxNV9yZXF1ZXN0X3Np
Z25hbGVkKHJxKSkKPiA+ICsgICAgICAgICAgICAgZG1hX2ZlbmNlX3NldF9lcnJvcigmcnEtPmZl
bmNlLCAtRUlPKTsKPiA+ICsgICAgIGk5MTVfcmVxdWVzdF9tYXJrX2NvbXBsZXRlKHJxKTsKPiA+
ICt9Cj4gPiArCj4gPiAgc3RhdGljIGlubGluZSB1MzIgaW50ZWxfaHdzX3ByZWVtcHRfYWRkcmVz
cyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gPiAgewo+ID4gICAgICAgcmV0dXJu
IChpOTE1X2dndHRfb2Zmc2V0KGVuZ2luZS0+c3RhdHVzX3BhZ2Uudm1hKSArCj4gPiBAQCAtMjUw
MSwxMiArMjUwOCw4IEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19jYW5jZWxfcmVxdWVzdHMoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ID4gICAgICAgX19leGVjbGlzdHNfcmVzZXQo
ZW5naW5lLCB0cnVlKTsKPiA+ICAKPiA+ICAgICAgIC8qIE1hcmsgYWxsIGV4ZWN1dGluZyByZXF1
ZXN0cyBhcyBza2lwcGVkLiAqLwo+ID4gLSAgICAgbGlzdF9mb3JfZWFjaF9lbnRyeShycSwgJmVu
Z2luZS0+YWN0aXZlLnJlcXVlc3RzLCBzY2hlZC5saW5rKSB7Cj4gPiAtICAgICAgICAgICAgIGlm
ICghaTkxNV9yZXF1ZXN0X3NpZ25hbGVkKHJxKSkKPiA+IC0gICAgICAgICAgICAgICAgICAgICBk
bWFfZmVuY2Vfc2V0X2Vycm9yKCZycS0+ZmVuY2UsIC1FSU8pOwo+ID4gLQo+ID4gLSAgICAgICAg
ICAgICBpOTE1X3JlcXVlc3RfbWFya19jb21wbGV0ZShycSk7Cj4gPiAtICAgICB9Cj4gPiArICAg
ICBsaXN0X2Zvcl9lYWNoX2VudHJ5KHJxLCAmZW5naW5lLT5hY3RpdmUucmVxdWVzdHMsIHNjaGVk
LmxpbmspCj4gPiArICAgICAgICAgICAgIG1hcmtfZWlvKHJxKTsKPiA+ICAKPiA+ICAgICAgIC8q
IEZsdXNoIHRoZSBxdWV1ZWQgcmVxdWVzdHMgdG8gdGhlIHRpbWVsaW5lIGxpc3QgKGZvciByZXRp
cmluZykuICovCj4gPiAgICAgICB3aGlsZSAoKHJiID0gcmJfZmlyc3RfY2FjaGVkKCZleGVjbGlz
dHMtPnF1ZXVlKSkpIHsKPiA+IEBAIC0yNTE0LDEwICsyNTE3LDggQEAgc3RhdGljIHZvaWQgZXhl
Y2xpc3RzX2NhbmNlbF9yZXF1ZXN0cyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4g
PiAgICAgICAgICAgICAgIGludCBpOwo+ID4gIAo+ID4gICAgICAgICAgICAgICBwcmlvbGlzdF9m
b3JfZWFjaF9yZXF1ZXN0X2NvbnN1bWUocnEsIHJuLCBwLCBpKSB7Cj4gPiAtICAgICAgICAgICAg
ICAgICAgICAgbGlzdF9kZWxfaW5pdCgmcnEtPnNjaGVkLmxpbmspOwo+ID4gKyAgICAgICAgICAg
ICAgICAgICAgIG1hcmtfZWlvKHJxKTsKPiA+ICAgICAgICAgICAgICAgICAgICAgICBfX2k5MTVf
cmVxdWVzdF9zdWJtaXQocnEpOwo+ID4gLSAgICAgICAgICAgICAgICAgICAgIGRtYV9mZW5jZV9z
ZXRfZXJyb3IoJnJxLT5mZW5jZSwgLUVJTyk7Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgaTkx
NV9yZXF1ZXN0X21hcmtfY29tcGxldGUocnEpOwo+IAo+IE5vdyB3ZSBtYXJlayBjb21wbGV0ZSBi
ZWZvcmUgc3VibWl0dGluZy4gRG9lcyB0aGF0IGJyaW5nIHByb2JsZW1zPwoKSW4gY29uanVuY3Rp
b24gd2l0aCB0aGUgbmV4dCBwYXRjaGVzIGluIHRoZSBzZXJpZXMsIGl0IHByZXZlbnRzIGEgcHJv
YmxlbSA6KQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
