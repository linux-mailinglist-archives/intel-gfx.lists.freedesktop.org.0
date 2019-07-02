Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 016AE5CC93
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 11:24:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58628899A7;
	Tue,  2 Jul 2019 09:24:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA092899A7
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 09:24:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jul 2019 01:36:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,442,1557212400"; d="scan'208";a="165588437"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga007.fm.intel.com with ESMTP; 02 Jul 2019 01:36:39 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id BA59A5C1E9D; Tue,  2 Jul 2019 11:36:34 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156198901580.1583.7337880635854674465@skylake-alporthouse-com>
References: <20190701100502.15639-1-chris@chris-wilson.co.uk>
 <20190701100502.15639-4-chris@chris-wilson.co.uk>
 <875zom3rfn.fsf@gaia.fi.intel.com>
 <156198901580.1583.7337880635854674465@skylake-alporthouse-com>
Date: Tue, 02 Jul 2019 11:36:34 +0300
Message-ID: <8736jo4yul.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/12] drm/i915/execlists: Refactor CSB
 state machine
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
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTA3LTAxIDEyOjQ5OjQ4KQo+PiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+PiAKPj4gPiBEYW5pZWxlIHBvaW50ZWQg
b3V0IHRoYXQgdGhlIENTQiBzdGF0dXMgaW5mb3JtYXRpb24gd2lsbCBjaGFuZ2Ugd2l0aAo+PiA+
IFRpZ2VybGFrZSBhbmQgc3VnZ2VzdGVkIHRoYXQgd2UgY291bGQgcmVhcnJhbmdlIG91ciBzdGF0
ZSBtYWNoaW5lIHRvCj4+ID4gaGlkZSB0aGUgZGlmZmVyZW5jZXMgaW4gZ2VuZXJhdGlvbi4gZ2Nj
IGFsc28gcHJlZmVycyB0aGUgZXhwbGljaXQgc3RhdGUKPj4gPiBtYWNoaW5lLCBzbyBtYWtlIGl0
IHNvOgo+PiA+Cj4+ID4gcHJvY2Vzc19jc2IgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAxOTgwICAgIDE5NjcgICAgIC0xMwo+PiA+Cj4+ID4gU3VnZ2VzdGVkLWJ5OiBEYW5pZWxlIENl
cmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+PiA+IFNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+PiA+IENj
OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29t
Pgo+PiA+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29t
Pgo+PiA+IENjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4K
Pj4gPiAtLS0KPj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCA2NCAr
KysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLQo+PiA+ICAxIGZpbGUgY2hhbmdlZCwgNDQgaW5z
ZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pCj4+ID4KPj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYwo+PiA+IGluZGV4IDQ3MWUxMzRkZTE4Ni4uOTUzYjM5MzhhODVmIDEwMDY0NAo+
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPj4gPiBAQCAtMTI3OSw2ICsxMjc5
LDMwIEBAIHJlc2V0X2luX3Byb2dyZXNzKGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfZXhlY2xp
c3RzICpleGVjbGlzdHMpCj4+ID4gICAgICAgcmV0dXJuIHVubGlrZWx5KCFfX3Rhc2tsZXRfaXNf
ZW5hYmxlZCgmZXhlY2xpc3RzLT50YXNrbGV0KSk7Cj4+ID4gIH0KPj4gPiAgCj4+ID4gK2VudW0g
Y3NiX3N0ZXAgewo+PiA+ICsgICAgIENTQl9OT1AsCj4+ID4gKyAgICAgQ1NCX1BST01PVEUsCj4+
ID4gKyAgICAgQ1NCX1BSRUVNUFQsCj4+ID4gKyAgICAgQ1NCX0NPTVBMRVRFLAo+PiA+ICt9Owo+
PiA+ICsKPj4gPiArc3RhdGljIGlubGluZSBlbnVtIGNzYl9zdGVwCj4+ID4gK2NzYl9wYXJzZShj
b25zdCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2V4ZWNsaXN0cyAqZXhlY2xpc3RzLCBjb25zdCB1MzIg
KmNzYikKPj4gPiArewo+PiA+ICsgICAgIHVuc2lnbmVkIGludCBzdGF0dXMgPSAqY3NiOwo+PiAK
Pj4gQ291bGQgYmUgY29uc3QgdTMyIGFzd2VsbCAoc3R5bGlzdGljKS4KPgo+IE5vIG5lZWQgdG8g
c3BlY2lmeSBoZXJlLCBsb2NhbCByZWdpc3RlciBpcyBmaW5lLCBzbyBsZWZ0IGl0IGFzIG5hdHVy
YWwuCj4KCkluIHRoaXMgY2FzZSB0aGUgZnVuY3Rpb24gaXMgc21hbGwgYW5kIG9idmlvdXMgc28g
dGhhdCBpcwp3aHkgc3R5bGlzdGljLgoKQnV0IGZvciBtb3JlIGNvbXBsZXggb25lLCBpdCB0YWtl
cyBhd2F5IHJldmlld2VycwpidXJkZW4gYXMgeW91IGNhbiByZWFkIHNvbWV0aGluZyBhcyBjb25z
dCBhbmQKdGhlbiB0aGUgY29tcGxleGl0eSB0cmVlIHlvdSBuZWVkIHRvIG1hbmFnZSBiZXR3ZWVu
CnlvdXIgZWFycyBzaHJpbmtzIHdoZW4geW91IHJlYWQgZnVydGhlciBkb3duLgoKSSBjYW4gYWxz
byByZW1lbWJlciBhdGxlYXN0IGZldyBjYXNlcyB3aGVyZQppdCBoYXMgcHJldmVudGVkIGFuIHVu
d2FudGVkIGFjY2lkZW50YWwgd3JpdGUKaW50byBwcm9wYWdhdGluZyBwYXN0IGNvbXBpbGVyLgoK
Pj4gSnVzdCBtYWtlcyBtZSBwb25kZXIgd2h5IHlvdSB3YW50IHRvIHJlYWQgY3NiIGluIGhlcmUK
Pj4gYW5kIG5vdCBpbiB0aGUgY2FsbHNpdGUuCj4KPiBXaGF0ZXZlciBnY2MgcHJlZmVycyB3aGVu
IHRoZXJlIGlzIG11bHRpcGxlIGNzYl9wYXJzZXJzLiA6KQoKSXQgY2hhbmdlcyB0byBhIGJldHRl
ciBwcm9kdWNlZCBjb2RlPyBTdXJlbHkgcmVhc29uCmVub3VnaC4KCi1NaWthCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
