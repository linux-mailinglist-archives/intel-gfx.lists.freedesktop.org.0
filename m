Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B3E8B1D7
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 09:58:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D189089D9B;
	Tue, 13 Aug 2019 07:58:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C07789D9B
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2019 07:58:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 00:58:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,380,1559545200"; d="scan'208";a="170322843"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga008.jf.intel.com with ESMTP; 13 Aug 2019 00:58:31 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 21DA55C1E4B; Tue, 13 Aug 2019 10:57:51 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156562660318.2301.11470842796548311941@skylake-alporthouse-com>
References: <20190812160108.16973-1-mika.kuoppala@linux.intel.com>
 <156562660318.2301.11470842796548311941@skylake-alporthouse-com>
Date: Tue, 13 Aug 2019 10:57:51 +0300
Message-ID: <87h86l7b0g.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/icl: Implement gen11 flush
 including tile cache
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTEyIDE3OjAxOjA3KQo+PiBBZGQgdGlsZSBjYWNoZSBm
bHVzaGluZyBmb3IgZ2VuMTEuIFRvIHJlbGl2ZSB1cyBmcm9tIHRoZQo+PiBidXJkZW4gb2YgcHJl
dmlvdXMgb2Jzb2xldGUgd29ya2Fyb3VuZHMsIG1ha2UgYSBkZWRpY2F0ZWQKPj4gZmx1c2gvaW52
YWxpZGF0ZSBjYWxsYmFjayBmb3IgZ2VuMTEuCj4+IAo+PiBUbyBmb3J0aWZ5IGFuIGluZGVwZW5k
ZW50IHNpbmdsZSBmbHVzaCwgZG8gcG9zdAo+PiBzeW5jIG9wIGFzIHRoZXJlIGFyZSBpbmRpY2F0
aW9ucyB0aGF0IHdpdGhvdXQgaXQKPj4gd2UgZG9uJ3QgZmx1c2ggZXZlcnl0aGluZy4gVGhpcyBz
aG91bGQgYWxzbyBtYWtlIHRoaXMKPj4gY2FsbGJhY2sgbW9yZSByZWFkaWx5IHVzYWJsZSBpbiB0
Z2wgKHNlZSBsMyBmYWJyaWMgZmx1c2gpLgo+PiAKPj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+PiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVs
ZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogTWlrYSBLdW9wcGFs
YSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmggfCAgMSArCj4+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9scmMuYyAgICAgICAgICB8IDYzICsrKysrKysrKysrKysrKysrKyst
Cj4+ICAyIGZpbGVzIGNoYW5nZWQsIDYzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4g
Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFu
ZHMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oCj4+IGlu
ZGV4IDZhMDg3OWMyN2QxNC4uOTI5YTE3ZTU0ZjJjIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaAo+PiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaAo+PiBAQCAtMjA4LDYgKzIwOCw3IEBACj4+
ICAjZGVmaW5lICAgRElTUExBWV9QTEFORV9BICAgICAgICAgICAoMDw8MjApCj4+ICAjZGVmaW5l
ICAgRElTUExBWV9QTEFORV9CICAgICAgICAgICAoMTw8MjApCj4+ICAjZGVmaW5lIEdGWF9PUF9Q
SVBFX0NPTlRST0wobGVuKSAgICAgICAoKDB4Mzw8MjkpfCgweDM8PDI3KXwoMHgyPDwyNCl8KChs
ZW4pLTIpKQo+PiArI2RlZmluZSAgIFBJUEVfQ09OVFJPTF9USUxFX0NBQ0hFX0ZMVVNIICAgICAg
ICAgICAgICAgICAgICAgICAgKDE8PDI4KSAvKiBnZW4xMSsgKi8KPiBBY2suCj4KPj4gICNkZWZp
bmUgICBQSVBFX0NPTlRST0xfRkxVU0hfTDMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICgxPDwyNykKPj4gICNkZWZpbmUgICBQSVBFX0NPTlRST0xfR0xPQkFMX0dUVF9JVkIgICAgICAg
ICAgICAgICAgICAoMTw8MjQpIC8qIGdlbjcrICovCj4+ICAjZGVmaW5lICAgUElQRV9DT05UUk9M
X01NSU9fV1JJVEUgICAgICAgICAgICAgICAgICAgICAgKDE8PDIzKQo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYwo+PiBpbmRleCBiOTcwNDdkNThkM2QuLjg5MWRiM2M5MzNjOSAxMDA2
NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPj4gQEAgLTI2NTUsNiArMjY1NSw2
NCBAQCBzdGF0aWMgaW50IGdlbjhfZW1pdF9mbHVzaF9yZW5kZXIoc3RydWN0IGk5MTVfcmVxdWVz
dCAqcmVxdWVzdCwKPj4gICAgICAgICByZXR1cm4gMDsKPj4gIH0KPj4gIAo+PiArc3RhdGljIGlu
dCBnZW4xMV9lbWl0X2ZsdXNoX3JlbmRlcihzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0LAo+
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHUzMiBtb2RlKQo+PiArewo+PiAr
ICAgICAgIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSA9IHJlcXVlc3QtPmVuZ2luZTsK
Pj4gKyAgICAgICBjb25zdCB1MzIgc2NyYXRjaF9hZGRyID0KPj4gKyAgICAgICAgICAgICAgIGlu
dGVsX2d0X3NjcmF0Y2hfb2Zmc2V0KGVuZ2luZS0+Z3QsCj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBJTlRFTF9HVF9TQ1JBVENIX0ZJRUxEX1JFTkRFUl9GTFVTSCk7
Cj4+ICsKPj4gKyAgICAgICBpZiAobW9kZSAmIEVNSVRfRkxVU0gpIHsKPj4gKyAgICAgICAgICAg
ICAgIHUzMiAqY3M7Cj4+ICsgICAgICAgICAgICAgICB1MzIgZmxhZ3MgPSAwOwo+PiArCj4+ICsg
ICAgICAgICAgICAgICBmbGFncyB8PSBQSVBFX0NPTlRST0xfQ1NfU1RBTEw7Cj4+ICsKPj4gKyAg
ICAgICAgICAgICAgIGZsYWdzIHw9IFBJUEVfQ09OVFJPTF9USUxFX0NBQ0hFX0ZMVVNIOwo+PiAr
ICAgICAgICAgICAgICAgZmxhZ3MgfD0gUElQRV9DT05UUk9MX1JFTkRFUl9UQVJHRVRfQ0FDSEVf
RkxVU0g7Cj4+ICsgICAgICAgICAgICAgICBmbGFncyB8PSBQSVBFX0NPTlRST0xfREVQVEhfQ0FD
SEVfRkxVU0g7Cj4+ICsgICAgICAgICAgICAgICBmbGFncyB8PSBQSVBFX0NPTlRST0xfRENfRkxV
U0hfRU5BQkxFOwo+PiArICAgICAgICAgICAgICAgZmxhZ3MgfD0gUElQRV9DT05UUk9MX0ZMVVNI
X0VOQUJMRTsKPj4gKyAgICAgICAgICAgICAgIGZsYWdzIHw9IFBJUEVfQ09OVFJPTF9RV19XUklU
RTsKPj4gKyAgICAgICAgICAgICAgIGZsYWdzIHw9IFBJUEVfQ09OVFJPTF9HTE9CQUxfR1RUX0lW
QjsKPgo+IE9rLgo+Cj4+ICsKPj4gKyAgICAgICAgICAgICAgIGNzID0gaW50ZWxfcmluZ19iZWdp
bihyZXF1ZXN0LCA2KTsKPj4gKyAgICAgICAgICAgICAgIGlmIChJU19FUlIoY3MpKQo+PiArICAg
ICAgICAgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihjcyk7Cj4+ICsKPj4gKyAgICAgICAg
ICAgICAgIGNzID0gZ2VuOF9lbWl0X3BpcGVfY29udHJvbChjcywgZmxhZ3MsIHNjcmF0Y2hfYWRk
cik7Cj4+ICsKPgo+IFBlcnNvbmFsbHksIEkgd291bGRuJ3QgbGVhdmUgYSBuZXdsaW5lIGhlcmUu
CgpXaWxsIHJlbW92ZS4gUGlwZSBjb250cm9sIGxlbmd0aCBjb3VsZCBiZSBhbHNvIGRlZmluZWQg
YnV0IG1laC4KCj4+ICsgICAgICAgICAgICAgICBpbnRlbF9yaW5nX2FkdmFuY2UocmVxdWVzdCwg
Y3MpOwo+PiArICAgICAgIH0KPj4gKwo+PiArICAgICAgIGlmIChtb2RlICYgRU1JVF9JTlZBTElE
QVRFKSB7Cj4+ICsgICAgICAgICAgICAgICB1MzIgKmNzOwo+PiArICAgICAgICAgICAgICAgdTMy
IGZsYWdzID0gMDsKPj4gKwo+PiArICAgICAgICAgICAgICAgZmxhZ3MgfD0gUElQRV9DT05UUk9M
X0NTX1NUQUxMOwo+PiArCj4+ICsgICAgICAgICAgICAgICBmbGFncyB8PSBQSVBFX0NPTlRST0xf
VExCX0lOVkFMSURBVEU7Cj4+ICsgICAgICAgICAgICAgICBmbGFncyB8PSBQSVBFX0NPTlRST0xf
SU5TVFJVQ1RJT05fQ0FDSEVfSU5WQUxJREFURTsKPj4gKyAgICAgICAgICAgICAgIGZsYWdzIHw9
IFBJUEVfQ09OVFJPTF9URVhUVVJFX0NBQ0hFX0lOVkFMSURBVEU7Cj4+ICsgICAgICAgICAgICAg
ICBmbGFncyB8PSBQSVBFX0NPTlRST0xfVkZfQ0FDSEVfSU5WQUxJREFURTsKPj4gKyAgICAgICAg
ICAgICAgIGZsYWdzIHw9IFBJUEVfQ09OVFJPTF9DT05TVF9DQUNIRV9JTlZBTElEQVRFOwo+PiAr
ICAgICAgICAgICAgICAgZmxhZ3MgfD0gUElQRV9DT05UUk9MX1NUQVRFX0NBQ0hFX0lOVkFMSURB
VEU7Cj4+ICsgICAgICAgICAgICAgICBmbGFncyB8PSBQSVBFX0NPTlRST0xfUVdfV1JJVEU7Cj4+
ICsgICAgICAgICAgICAgICBmbGFncyB8PSBQSVBFX0NPTlRST0xfR0xPQkFMX0dUVF9JVkI7Cj4K
PiBPay4KPgo+PiArCj4+ICsgICAgICAgICAgICAgICBjcyA9IGludGVsX3JpbmdfYmVnaW4ocmVx
dWVzdCwgNik7Cj4+ICsgICAgICAgICAgICAgICBpZiAoSVNfRVJSKGNzKSkKPj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgcmV0dXJuIFBUUl9FUlIoY3MpOwo+PiArCj4+ICsgICAgICAgICAgICAg
ICBjcyA9IGdlbjhfZW1pdF9waXBlX2NvbnRyb2woY3MsIGZsYWdzLCBzY3JhdGNoX2FkZHIpOwo+
PiArCj4+ICsgICAgICAgICAgICAgICBpbnRlbF9yaW5nX2FkdmFuY2UocmVxdWVzdCwgY3MpOwo+
PiArICAgICAgIH0KPj4gKwo+PiArICAgICAgIHJldHVybiAwOwo+PiArfQo+PiArCj4+ICAvKgo+
PiAgICogUmVzZXJ2ZSBzcGFjZSBmb3IgMiBOT09QcyBhdCB0aGUgZW5kIG9mIGVhY2ggcmVxdWVz
dCB0byBiZQo+PiAgICogdXNlZCBhcyBhIHdvcmthcm91bmQgZm9yIG5vdCBiZWluZyBhbGxvd2Vk
IHRvIGRvIGxpdGUKPj4gQEAgLTI4MjksNyArMjg4NywxMCBAQCBpbnQgaW50ZWxfZXhlY2xpc3Rz
X3N1Ym1pc3Npb25fc2V0dXAoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+PiAgICAg
ICAgIGxvZ2ljYWxfcmluZ19kZWZhdWx0X2lycXMoZW5naW5lKTsKPj4gIAo+PiAgICAgICAgIGlm
IChlbmdpbmUtPmNsYXNzID09IFJFTkRFUl9DTEFTUykgewo+PiAtICAgICAgICAgICAgICAgZW5n
aW5lLT5lbWl0X2ZsdXNoID0gZ2VuOF9lbWl0X2ZsdXNoX3JlbmRlcjsKPj4gKyAgICAgICAgICAg
ICAgIGlmIChJTlRFTF9HRU4oZW5naW5lLT5pOTE1KSA+PSAxMSkKPj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgZW5naW5lLT5lbWl0X2ZsdXNoID0gZ2VuMTFfZW1pdF9mbHVzaF9yZW5kZXI7Cj4+
ICsgICAgICAgICAgICAgICBlbHNlCj4+ICsgICAgICAgICAgICAgICAgICAgICAgIGVuZ2luZS0+
ZW1pdF9mbHVzaCA9IGdlbjhfZW1pdF9mbHVzaF9yZW5kZXI7Cj4+ICAgICAgICAgICAgICAgICBl
bmdpbmUtPmVtaXRfZmluaV9icmVhZGNydW1iID0gZ2VuOF9lbWl0X2ZpbmlfYnJlYWRjcnVtYl9y
Y3M7Cj4KPiBObyBmaW5pIGJyZWFkY3J1bWIgZmx1c2g/CgpXZWxsIHRoZXJlIGFyZSByb29tIGZv
ciBjbGVhbmluZyB0aGVyZSBmb3Igc3VyZS4gSSBhZG1pdCB0byBiZWluZwphIGJpdCBjb3dhcmQu
IEkgZG9uJ3QgaGF2ZSBhbiBpY2VsYWtlIGFuZCBjaGFuZ2luZyB0aGF0IHdvdWxkCndhcnJhbnQg
cXVpdGUgYW1vdW50IG9mIGdlbV9jb25jdXJyZW50X2JsdCBjeWNsZXMuCgpJZiB5b3UgY2FuIGNv
bnZpbmNlIG1lIHRoYXQgY2kvYmF0IHdpbGwgY2F0Y2ggbXkgbWlzdGFrZXMsCkkgY291bGQgcmVj
b25zaWRlci4KCi1NaWthCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
