Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC2F12BA6
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 12:43:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BE1089BF3;
	Fri,  3 May 2019 10:43:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 433A289BF3
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 10:43:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16439720-1500050 for multiple; Fri, 03 May 2019 11:43:18 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190501114541.10077-1-chris@chris-wilson.co.uk>
 <48f515a3-9327-e6cb-59c2-585fd7741124@linux.intel.com>
In-Reply-To: <48f515a3-9327-e6cb-59c2-585fd7741124@linux.intel.com>
Message-ID: <155688019716.3139.12704221621281182035@skylake-alporthouse-com>
Date: Fri, 03 May 2019 11:43:17 +0100
Subject: Re: [Intel-gfx] [PATCH 01/14] drm/i915/hangcheck: Track context
 changes
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0wMyAxMTozNjo1NSkKPiAKPiBPbiAwMS8w
NS8yMDE5IDEyOjQ1LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBHaXZlbiBzdWZmaWNpZW50IHBy
ZWVtcHRpb24sIHdlIG1heSBzZWUgYSBidXN5IHN5c3RlbSB0aGF0IGRvZXNuJ3QKPiA+IGFkdmFu
Y2Ugc2Vxbm8gd2hpbGUgcGVyZm9ybWluZyB3b3JrIGFjcm9zcyBtdWx0aXBsZSBjb250ZXh0cywg
YW5kIGdpdmVuCj4gPiBzdWZmaWNpZW50IHBhdGhvbG9neSBub3QgZXZlbiBub3RpY2UgYSBjaGFu
Z2UgaW4gQUNUSEQuIFdoYXQgZG9lcyBjaGFuZ2UKPiA+IGJldHdlZW4gdGhlIHByZWVtcHRpbmcg
Y29udGV4dHMgaXMgdGhlaXIgUklORywgc28gdGFrZSBub3RlIG9mIHRoYXQgYW5kCj4gPiB0cmVh
dCBhIGNoYW5nZSBpbiB0aGUgcmluZyBhZGRyZXNzIGFzIGJlaW5nIGFuIGluZGljYXRpb24gb2Yg
Zm9yd2FyZAo+ID4gcHJvZ3Jlc3MuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eu
a3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oIHwgIDEgKwo+ID4gICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9oYW5nY2hlY2suYyAgICB8IDEyICsrKysrKysrKy0tLQo+ID4gICAyIGZp
bGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oCj4gPiBpbmRleCA5
ZDY0ZTMzZjg0MjcuLmMwYWIxMWIxMmUxNCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaAo+ID4gQEAgLTUzLDYgKzUzLDcgQEAgc3RydWN0
IGludGVsX2luc3Rkb25lIHsKPiA+ICAgCj4gPiAgIHN0cnVjdCBpbnRlbF9lbmdpbmVfaGFuZ2No
ZWNrIHsKPiA+ICAgICAgIHU2NCBhY3RoZDsKPiA+ICsgICAgIHUzMiBsYXN0X3Jpbmc7Cj4gPiAg
ICAgICB1MzIgbGFzdF9zZXFubzsKPiA+ICAgICAgIHUzMiBuZXh0X3NlcW5vOwo+ID4gICAgICAg
dW5zaWduZWQgbG9uZyBhY3Rpb25fdGltZXN0YW1wOwo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2hhbmdjaGVjay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfaGFuZ2NoZWNrLmMKPiA+IGluZGV4IGU1ZWFhMDZmZTc0ZC4uNzIxYWI3NGEzODJm
IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfaGFuZ2NoZWNr
LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2hhbmdjaGVjay5jCj4g
PiBAQCAtMjcsNiArMjcsNyBAQAo+ID4gICAKPiA+ICAgc3RydWN0IGhhbmdjaGVjayB7Cj4gPiAg
ICAgICB1NjQgYWN0aGQ7Cj4gPiArICAgICB1MzIgcmluZzsKPiA+ICAgICAgIHUzMiBzZXFubzsK
PiA+ICAgICAgIGVudW0gaW50ZWxfZW5naW5lX2hhbmdjaGVja19hY3Rpb24gYWN0aW9uOwo+ID4g
ICAgICAgdW5zaWduZWQgbG9uZyBhY3Rpb25fdGltZXN0YW1wOwo+ID4gQEAgLTEzNCw2ICsxMzUs
NyBAQCBzdGF0aWMgdm9pZCBoYW5nY2hlY2tfbG9hZF9zYW1wbGUoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lLAo+ID4gICB7Cj4gPiAgICAgICBoYy0+YWN0aGQgPSBpbnRlbF9lbmdpbmVf
Z2V0X2FjdGl2ZV9oZWFkKGVuZ2luZSk7Cj4gPiAgICAgICBoYy0+c2Vxbm8gPSBpbnRlbF9lbmdp
bmVfZ2V0X2hhbmdjaGVja19zZXFubyhlbmdpbmUpOwo+ID4gKyAgICAgaGMtPnJpbmcgPSBFTkdJ
TkVfUkVBRChlbmdpbmUsIFJJTkdfU1RBUlQpOwo+ID4gICB9Cj4gPiAgIAo+ID4gICBzdGF0aWMg
dm9pZCBoYW5nY2hlY2tfc3RvcmVfc2FtcGxlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2lu
ZSwKPiA+IEBAIC0xNDEsMTggKzE0MywyMiBAQCBzdGF0aWMgdm9pZCBoYW5nY2hlY2tfc3RvcmVf
c2FtcGxlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPiA+ICAgewo+ID4gICAgICAg
ZW5naW5lLT5oYW5nY2hlY2suYWN0aGQgPSBoYy0+YWN0aGQ7Cj4gPiAgICAgICBlbmdpbmUtPmhh
bmdjaGVjay5sYXN0X3NlcW5vID0gaGMtPnNlcW5vOwo+ID4gKyAgICAgZW5naW5lLT5oYW5nY2hl
Y2subGFzdF9yaW5nID0gaGMtPnJpbmc7Cj4gPiAgIH0KPiA+ICAgCj4gPiAgIHN0YXRpYyBlbnVt
IGludGVsX2VuZ2luZV9oYW5nY2hlY2tfYWN0aW9uCj4gPiAgIGhhbmdjaGVja19nZXRfYWN0aW9u
KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPiA+ICAgICAgICAgICAgICAgICAgICBj
b25zdCBzdHJ1Y3QgaGFuZ2NoZWNrICpoYykKPiA+ICAgewo+ID4gLSAgICAgaWYgKGVuZ2luZS0+
aGFuZ2NoZWNrLmxhc3Rfc2Vxbm8gIT0gaGMtPnNlcW5vKQo+ID4gLSAgICAgICAgICAgICByZXR1
cm4gRU5HSU5FX0FDVElWRV9TRVFOTzsKPiA+IC0KPiA+ICAgICAgIGlmIChpbnRlbF9lbmdpbmVf
aXNfaWRsZShlbmdpbmUpKQo+ID4gICAgICAgICAgICAgICByZXR1cm4gRU5HSU5FX0lETEU7Cj4g
PiAgIAo+ID4gKyAgICAgaWYgKGVuZ2luZS0+aGFuZ2NoZWNrLmxhc3RfcmluZyAhPSBoYy0+cmlu
ZykKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIEVOR0lORV9BQ1RJVkVfU0VRTk87Cj4gPiArCj4g
PiArICAgICBpZiAoZW5naW5lLT5oYW5nY2hlY2subGFzdF9zZXFubyAhPSBoYy0+c2Vxbm8pCj4g
PiArICAgICAgICAgICAgIHJldHVybiBFTkdJTkVfQUNUSVZFX1NFUU5POwo+ID4gKwo+ID4gICAg
ICAgcmV0dXJuIGVuZ2luZV9zdHVjayhlbmdpbmUsIGhjLT5hY3RoZCk7Cj4gPiAgIH0KPiA+ICAg
Cj4gPiAKPiAKPiBSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4KPiAKPiBUaGlzIHNob3VsZCBiZSBhc3NvY2lhdGVkIHdpdGggZW5naW5lIHNlcW5v
IHJlbW92YWwsIHJpZ2h0PyBOb3Qgc3VyZSBpZiAKPiBpdCB0cmlnZ2VycyBpbiByZWFsaXR5IHRv
IGJlIHJlYWxseSBuZWVkZWQuCgpZZWFoLCBJJ20gbm90IGNvbnZpbmNlZCB3ZSBoYXZlIGEgcHJl
c3NpbmcgbmVlZCB1bnRpbCB0aW1lc2xpY2luZyBhcwp1c2Vyc3BhY2UgY2FuIG9ubHkgY3JlYXRl
IDEwMjQgcHJlZW1wdGlvbiBldmVudHMgYnkgaXRzZWxmLCBhbmQgdGhhdApzaG91bGQgYmUgb2su
Li4gSSBjYW4gaW1hZ2luZSB0aGF0IHVzZXJzcGFjZSBzdWJtaXRzIGEgc2VtYXBob3JlIGF0CmFk
ZHJlc3MgMCBpbiBlYWNoIGFuZCB3YWl0cyAxcyBiZWZvcmUgc3VibWl0dGluZyB0aGUgbmV4dCBw
cmVlbXB0aW9uCmV2ZW50Li4uIFRoYXQgd291bGQgZmlyZSB0aGUgY3VycmVudCBoYW5nY2hlY2su
IChQb3NzaWJseSBsZWdpdGltYXRlbHkKYnV0IHRoZSBibGFtZSB3b3VsZCBub3QgYmUgZWZmZWN0
aXZlIGF0IGRlZmVhdGluZyB0aGUgaG9zdGlsZSBjbGllbnQuKQoKSXQgd2Fzbid0IHVudGlsIHRp
bWVzbGljaW5nIHRoYXQgSSBub3RpY2VkIHRoZSBlZmZlY3QgaW4gcHJhY3RpY2UuCi1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
