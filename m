Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD512B5017
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Nov 2020 19:46:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D8D66E096;
	Mon, 16 Nov 2020 18:46:02 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46C986E096;
 Mon, 16 Nov 2020 18:46:01 +0000 (UTC)
IronPort-SDR: gL/0kfYMrJAsANZKzb2d1ZmmJsKaMoW3xAqS39WIHeIOPUmaJoeL6RMgf11zxrftLBu2K26X3k
 EQ/tiPOsBbCQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="150645790"
X-IronPort-AV: E=Sophos;i="5.77,483,1596524400"; d="scan'208";a="150645790"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 10:45:57 -0800
IronPort-SDR: O2mgYo5jQxHTbqv3Tu8Qg6ZHmBjQAADQF86Od/HaYKoDZBd0hIvqx6WiSbdw9N4OhDYkmfuR4z
 6MaJMkKwS4Tw==
X-IronPort-AV: E=Sophos;i="5.77,483,1596524400"; d="scan'208";a="543706058"
Received: from pgierasi-mobl.ger.corp.intel.com (HELO zkempczy-mobl2)
 ([10.213.2.76])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 10:45:54 -0800
Date: Mon, 16 Nov 2020 19:45:50 +0100
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20201116184550.GB9090@zkempczy-mobl2>
References: <20201116172653.4030093-1-tvrtko.ursulin@linux.intel.com>
 <20201116172653.4030093-4-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201116172653.4030093-4-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 4/5] lsgpu: Add filter type print-out
 selection
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBOb3YgMTYsIDIwMjAgYXQgMDU6MjY6NTJQTSArMDAwMCwgVHZydGtvIFVyc3VsaW4g
d3JvdGU6Cj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
PiAKPiBJbiB0aGUgcHJldmlvdXMgcGF0Y2ggd2Ugc3dpdGNoZWQgdGhlIGxzZ3B1IG91dHB1dCB0
byBhIHNob3J0IGFuZCB1c2VyCj4gZnJpZW5kbHkgZm9ybWF0IGJ1dCBzb21lIHVzZXJzIHdpbGwg
bmVlZCBhIHNob3J0aGFuZCBmb3IgZ2V0dGluZyBvdGhlcgo+IHR5cGVzIG9mIGRldmljZSBzZWxl
Y3Rpb24gZmlsdGVycyB0aGFuIHRoZSBkZWZhdXQgZHJtLgo+IAo+IEFkZCBzb21lIGNvbW1hbmQg
bGluZSBzd2l0Y2hlcyB0byBlbmFibGUgdGhpczoKPiAKPiAkIGxzZ3B1Cj4gY2FyZDAgICAgICAg
ICAgICAgICAgICAgODA4NjoxOTNCICAgIGRybTovZGV2L2RyaS9jYXJkMAo+IOKUlOKUgHJlbmRl
ckQxMjggICAgICAgICAgICAgICAgICAgICAgICAgZHJtOi9kZXYvZHJpL3JlbmRlckQxMjgKPiAK
PiAkIGxzZ3B1IC0tc3lzZnMKPiBjYXJkMCAgICAgICAgICAgICAgICAgICA4MDg2OjE5M0IgICAg
c3lzOi9zeXMvZGV2aWNlcy9wY2kwMDAwOjAwLzAwMDA6MDA6MDIuMC9kcm0vY2FyZDAKPiDilJTi
lIByZW5kZXJEMTI4ICAgICAgICAgICAgICAgICAgICAgICAgIHN5czovc3lzL2RldmljZXMvcGNp
MDAwMDowMC8wMDAwOjAwOjAyLjAvZHJtL3JlbmRlckQxMjgKPiAKPiAkIGxzZ3B1IC0tcGNpCj4g
Y2FyZDAgICAgICAgICAgICAgICAgICAgODA4NjoxOTNCICAgIHBjaTp2ZW5kb3I9ODA4NixkZXZp
Y2U9MTkzQixjYXJkPTAKPiDilJTilIByZW5kZXJEMTI4Cj4gCj4gdjI6Cj4gICogRml4IHBjaSBm
aWx0ZXIgZm9ybWF0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28u
dXJzdWxpbkBpbnRlbC5jb20+Cj4gU3VnZ2VzdGVkLWJ5OiBaYmlnbmlldyBLZW1wY3p5xYRza2kg
PHpiaWduaWV3LmtlbXBjenluc2tpQGludGVsLmNvbT4KPiBDYzogUGV0cmkgTGF0dmFsYSA8cGV0
cmkubGF0dmFsYUBpbnRlbC5jb20+Cj4gLS0tCj4gIGxpYi9pZ3RfZGV2aWNlX3NjYW4uYyB8IDgz
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0KPiAgbGliL2lndF9k
ZXZpY2Vfc2Nhbi5oIHwgMTUgKysrKysrLS0KPiAgdG9vbHMvaW50ZWxfZ3B1X3RvcC5jIHwgIDYg
KysrLQo+ICB0b29scy9sc2dwdS5jICAgICAgICAgfCAzMiArKysrKysrKysrKysrLS0tLQo+ICA0
IGZpbGVzIGNoYW5nZWQsIDEwNiBpbnNlcnRpb25zKCspLCAzMCBkZWxldGlvbnMoLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvbGliL2lndF9kZXZpY2Vfc2Nhbi5jIGIvbGliL2lndF9kZXZpY2Vfc2Nhbi5j
Cj4gaW5kZXggZWNiOGRiMjk3Zjg2Li5lOTdmNzE2M2JhNzAgMTAwNjQ0Cj4gLS0tIGEvbGliL2ln
dF9kZXZpY2Vfc2Nhbi5jCj4gKysrIGIvbGliL2lndF9kZXZpY2Vfc2Nhbi5jCj4gQEAgLTc3Nyw3
ICs3NzcsOSBAQCBzdGF0aWMgYm9vbCBfX2NoZWNrX2VtcHR5KHN0cnVjdCBpZ3RfbGlzdF9oZWFk
ICp2aWV3KQo+ICAJcmV0dXJuIGZhbHNlOwo+ICB9Cj4gIAo+IC1zdGF0aWMgdm9pZCBpZ3RfZGV2
c19wcmludF9zaW1wbGUoc3RydWN0IGlndF9saXN0X2hlYWQgKnZpZXcpCj4gK3N0YXRpYyB2b2lk
Cj4gK2lndF9kZXZzX3ByaW50X3NpbXBsZShzdHJ1Y3QgaWd0X2xpc3RfaGVhZCAqdmlldywKPiAr
CQkgICAgICBjb25zdCBzdHJ1Y3QgaWd0X2RldmljZXNfcHJpbnRfZm9ybWF0ICpmbXQpCj4gIHsK
PiAgCXN0cnVjdCBpZ3RfZGV2aWNlICpkZXY7Cj4gIAo+IEBAIC04MjEsNyArODIzLDM4IEBAIF9f
ZmluZF9wY2koc3RydWN0IGlndF9saXN0X2hlYWQgKnZpZXcsIGNvbnN0IGNoYXIgKmRybSkKPiAg
CXJldHVybiBOVUxMOwo+ICB9Cj4gIAo+IC1zdGF0aWMgdm9pZCBpZ3RfZGV2c19wcmludF91c2Vy
KHN0cnVjdCBpZ3RfbGlzdF9oZWFkICp2aWV3KQo+ICtzdGF0aWMgdm9pZCBfX3ByaW50X2ZpbHRl
cihjaGFyICpidWYsIGludCBsZW4sCj4gKwkJCSAgIGNvbnN0IHN0cnVjdCBpZ3RfZGV2aWNlc19w
cmludF9mb3JtYXQgKmZtdCwKPiArCQkJICAgc3RydWN0IGlndF9kZXZpY2UgKmRldiwKPiArCQkJ
ICAgYm9vbCByZW5kZXIpCj4gK3sKPiArCWludCByZXQ7Cj4gKwo+ICsJc3dpdGNoIChmbXQtPm9w
dGlvbikgewo+ICsJY2FzZSBJR1RfUFJJTlRfRFJNOgo+ICsJCXJldCA9IHNucHJpbnRmKGJ1Ziwg
bGVuLCAiZHJtOiVzIiwKPiArCQkJICAgICAgIHJlbmRlciA/IGRldi0+ZHJtX3JlbmRlciA6IGRl
di0+ZHJtX2NhcmQpOwo+ICsJCWlndF9hc3NlcnQocmV0IDwgbGVuKTsKPiArCQlicmVhazsKPiAr
CWNhc2UgSUdUX1BSSU5UX1NZU0ZTOgo+ICsJCXJldCA9IHNucHJpbnRmKGJ1ZiwgbGVuLCAic3lz
OiVzIiwgZGV2LT5zeXNwYXRoKTsKPiArCQlpZ3RfYXNzZXJ0KHJldCA8IGxlbik7Cj4gKwkJYnJl
YWs7Cj4gKwljYXNlIElHVF9QUklOVF9QQ0k6Cj4gKwkJaWYgKCFyZW5kZXIpIHsKPiArCQkJcmV0
ID0gc25wcmludGYoYnVmLCBsZW4sCj4gKwkJCQkgICAgICAgInBjaTp2ZW5kb3I9JXMsZGV2aWNl
PSVzLGNhcmQ9JWQiLAo+ICsJCQkJICAgICAgIGRldi0+dmVuZG9yLCBkZXYtPmRldmljZSwKPiAr
CQkJCSAgICAgICBkZXYtPmdwdV9pbmRleCk7Cj4gKwkJCWlndF9hc3NlcnQocmV0IDwgbGVuKTsK
PiArCQl9Cj4gKwkJYnJlYWs7Cj4gKwl9OwoKWW91IGNvdWxkIGxlYXZlIHNpbmdsZSBhc3NlcnQg
YWZ0ZXIgdGhlIHN3aXRjaCBidXQgdGhpcyBpcyBtaW5vciBuaXQuCgo+ICt9Cj4gKwo+ICtzdGF0
aWMgdm9pZAo+ICtpZ3RfZGV2c19wcmludF91c2VyKHN0cnVjdCBpZ3RfbGlzdF9oZWFkICp2aWV3
LAo+ICsJCSAgICBjb25zdCBzdHJ1Y3QgaWd0X2RldmljZXNfcHJpbnRfZm9ybWF0ICpmbXQpCj4g
IHsKPiAgCXN0cnVjdCBpZ3RfZGV2aWNlICpkZXY7Cj4gIAo+IEBAIC04MzQsNyArODY3LDYgQEAg
c3RhdGljIHZvaWQgaWd0X2RldnNfcHJpbnRfdXNlcihzdHJ1Y3QgaWd0X2xpc3RfaGVhZCAqdmll
dykKPiAgCQlzdHJ1Y3QgaWd0X2RldmljZSAqZGV2MjsKPiAgCQljaGFyIGZpbHRlclsyNTZdOwo+
ICAJCWNoYXIgKmRybV9uYW1lOwo+IC0JCWludCByZXQ7Cj4gIAo+ICAJCWlmICghaXNfZHJtX3N1
YnN5c3RlbShkZXYpKQo+ICAJCQljb250aW51ZTsKPiBAQCAtODQ1LDE2ICs4NzcsMjEgQEAgc3Rh
dGljIHZvaWQgaWd0X2RldnNfcHJpbnRfdXNlcihzdHJ1Y3QgaWd0X2xpc3RfaGVhZCAqdmlldykK
PiAgCQlpZiAoIWRybV9uYW1lIHx8ICEqKytkcm1fbmFtZSkKPiAgCQkJY29udGludWU7Cj4gIAo+
IC0JCXJldCA9IHNucHJpbnRmKGZpbHRlciwgc2l6ZW9mKGZpbHRlciksICJkcm06JXMiLCBkZXYt
PmRybV9jYXJkKTsKPiAtCQlpZ3RfYXNzZXJ0KHJldCA8IHNpemVvZihmaWx0ZXIpKTsKPiAtCj4g
IAkJcGNpX2RldiA9IF9fZmluZF9wY2kodmlldywgZGV2LT5kcm1fY2FyZCk7Cj4gLQkJaWYgKHBj
aV9kZXYpCj4gKwo+ICsJCWlmIChmbXQtPm9wdGlvbiA9PSBJR1RfUFJJTlRfUENJICYmICFwY2lf
ZGV2KQo+ICsJCQljb250aW51ZTsKPiArCj4gKwkJaWYgKHBjaV9kZXYpIHsKPiArCQkJX19wcmlu
dF9maWx0ZXIoZmlsdGVyLCBzaXplb2YoZmlsdGVyKSwgZm10LCBwY2lfZGV2LAo+ICsJCQkJICAg
ICAgIGZhbHNlKTsKPiAgCQkJcHJpbnRmKCIlLTI0cyU0czolNHMgICAgJXNcbiIsCj4gIAkJCSAg
ICAgICBkcm1fbmFtZSwgcGNpX2Rldi0+dmVuZG9yLCBwY2lfZGV2LT5kZXZpY2UsCj4gIAkJCSAg
ICAgICBmaWx0ZXIpOwo+IC0JCWVsc2UKPiArCQl9IGVsc2Ugewo+ICsJCQlfX3ByaW50X2ZpbHRl
cihmaWx0ZXIsIHNpemVvZihmaWx0ZXIpLCBmbXQsIGRldiwgZmFsc2UpOwo+ICAJCQlwcmludGYo
IiUtMjRzICAgICAgICAgICAgICVzXG4iLCBkcm1fbmFtZSwgZmlsdGVyKTsKPiArCQl9Cj4gIAo+
ICAJCW51bV9jaGlsZHJlbiA9IDA7Cj4gIAkJaWd0X2xpc3RfZm9yX2VhY2hfZW50cnkoZGV2Miwg
dmlldywgbGluaykgewo+IEBAIC04NzcsMTMgKzkxNCwxNSBAQCBzdGF0aWMgdm9pZCBpZ3RfZGV2
c19wcmludF91c2VyKHN0cnVjdCBpZ3RfbGlzdF9oZWFkICp2aWV3KQo+ICAJCQlpZiAoIWRybV9u
YW1lIHx8ICEqKytkcm1fbmFtZSkKPiAgCQkJCWNvbnRpbnVlOwo+ICAKPiAtCQkJcmV0ID0gc25w
cmludGYoZmlsdGVyLCBzaXplb2YoZmlsdGVyKSwgImRybTolcyIsCj4gLQkJCQkgICAgICAgZGV2
Mi0+ZHJtX3JlbmRlcik7Cj4gLQkJCWlndF9hc3NlcnQocmV0IDwgc2l6ZW9mKGZpbHRlcikpOwo+
IC0KPiAtCQkJcHJpbnRmKCIlcyUtMjJzICAgICAgICAgICAgICVzXG4iLAo+IC0JCQkgICAgICAg
KCsraSA9PSBudW1fY2hpbGRyZW4pID8gIuKUlOKUgCIgOiAi4pSc4pSAIiwKPiAtCQkJICAgICAg
IGRybV9uYW1lLCBmaWx0ZXIpOwo+ICsJCQlwcmludGYoIiVzJS0yMnMiLAo+ICsJCQkJKCsraSA9
PSBudW1fY2hpbGRyZW4pID8gIuKUlOKUgCIgOiAi4pSc4pSAIiwgZHJtX25hbWUpOwo+ICsJCQlp
ZiAoZm10LT5vcHRpb24gIT0gSUdUX1BSSU5UX1BDSSkgewo+ICsJCQkJX19wcmludF9maWx0ZXIo
ZmlsdGVyLCBzaXplb2YoZmlsdGVyKSwgZm10LAo+ICsJCQkJCSAgICAgICBkZXYyLCB0cnVlKTsK
PiArCQkJCXByaW50ZigiICAgICAgICAgICAgICVzXG4iLCBmaWx0ZXIpOwo+ICsJCQl9IGVsc2Ug
ewo+ICsJCQkJcHJpbnRmKCJcbiIpOwo+ICsJCQl9Cj4gIAkJfQo+ICAJfQo+ICB9Cj4gQEAgLTkw
OCw3ICs5NDcsMTAgQEAgc3RhdGljIHZvaWQgcHJpbnRfaHQoR0hhc2hUYWJsZSAqaHQpCj4gIAln
X2xpc3RfZnJlZShrZXlzKTsKPiAgfQo+ICAKPiAtc3RhdGljIHZvaWQgaWd0X2RldnNfcHJpbnRf
ZGV0YWlsKHN0cnVjdCBpZ3RfbGlzdF9oZWFkICp2aWV3KQo+ICtzdGF0aWMgdm9pZAo+ICtpZ3Rf
ZGV2c19wcmludF9kZXRhaWwoc3RydWN0IGlndF9saXN0X2hlYWQgKnZpZXcsCj4gKwkJICAgICAg
Y29uc3Qgc3RydWN0IGlndF9kZXZpY2VzX3ByaW50X2Zvcm1hdCAqZm10KQo+ICsKPiAgewo+ICAJ
c3RydWN0IGlndF9kZXZpY2UgKmRldjsKPiAgCj4gQEAgLTkzMiw3ICs5NzQsOCBAQCBzdGF0aWMg
dm9pZCBpZ3RfZGV2c19wcmludF9kZXRhaWwoc3RydWN0IGlndF9saXN0X2hlYWQgKnZpZXcpCj4g
IH0KPiAgCj4gIHN0YXRpYyBzdHJ1Y3QgcHJpbnRfZnVuYyB7Cj4gLQl2b2lkICgqcHJuKShzdHJ1
Y3QgaWd0X2xpc3RfaGVhZCAqdmlldyk7Cj4gKwl2b2lkICgqcHJuKShzdHJ1Y3QgaWd0X2xpc3Rf
aGVhZCAqdmlldywKPiArCQkgICAgY29uc3Qgc3RydWN0IGlndF9kZXZpY2VzX3ByaW50X2Zvcm1h
dCAqKTsKPiAgfSBwcmludF9mdW5jdGlvbnNbXSA9IHsKPiAgCVtJR1RfUFJJTlRfU0lNUExFXSA9
IHsgLnBybiA9IGlndF9kZXZzX3ByaW50X3NpbXBsZSB9LAo+ICAJW0lHVF9QUklOVF9ERVRBSUxd
ID0geyAucHJuID0gaWd0X2RldnNfcHJpbnRfZGV0YWlsIH0sCj4gQEAgLTk0MSwxNSArOTg0LDE1
IEBAIHN0YXRpYyBzdHJ1Y3QgcHJpbnRfZnVuYyB7Cj4gIAo+ICAvKioKPiAgICogaWd0X2Rldmlj
ZXNfcHJpbnQKPiAtICogQHByaW50dHlwZTogSUdUX1BSSU5UX1NJTVBMRSBvciBJR1RfUFJJTlRf
REVUQUlMCj4gKyAqIEBmbXQ6IFByaW50IGZvcm1hdCBhcyBzcGVjaWZpZWQgYnkgc3RydWN0IGln
dF9kZXZpY2VzX3ByaW50X2Zvcm1hdAo+ICAgKgo+ICAgKiBGdW5jdGlvbiBjYW4gYmUgdXNlZCBi
eSBleHRlcm5hbCB0b29sIHRvIHByaW50IGRldmljZSBhcnJheSBpbiBzaW1wbGUKPiAgICogb3Ig
ZGV0YWlsZWQgZm9ybS4gVGhpcyBmdW5jdGlvbiBpcyBhZGRlZCBoZXJlIHRvIGF2b2lkIGV4cG9z
aW5nCj4gICAqIGludGVybmFsIGltcGxlbWVudGF0aW9uIGRhdGEgc3RydWN0dXJlcy4KPiAgICov
Cj4gLXZvaWQgaWd0X2RldmljZXNfcHJpbnQoZW51bSBpZ3RfZGV2aWNlc19wcmludF90eXBlIHBy
aW50dHlwZSkKPiArdm9pZCBpZ3RfZGV2aWNlc19wcmludChjb25zdCBzdHJ1Y3QgaWd0X2Rldmlj
ZXNfcHJpbnRfZm9ybWF0ICpmbXQpCj4gIHsKPiAtCXByaW50X2Z1bmN0aW9uc1twcmludHR5cGVd
LnBybigmaWd0X2RldnMuZmlsdGVyZWQpOwo+ICsJcHJpbnRfZnVuY3Rpb25zW2ZtdC0+dHlwZV0u
cHJuKCZpZ3RfZGV2cy5maWx0ZXJlZCwgZm10KTsKPiAgfQo+ICAKPiAgLyoqCj4gZGlmZiAtLWdp
dCBhL2xpYi9pZ3RfZGV2aWNlX3NjYW4uaCBiL2xpYi9pZ3RfZGV2aWNlX3NjYW4uaAo+IGluZGV4
IDk4MjJjMjJjYjY5Yy4uYmI0YmU3MjM0NWZiIDEwMDY0NAo+IC0tLSBhL2xpYi9pZ3RfZGV2aWNl
X3NjYW4uaAo+ICsrKyBiL2xpYi9pZ3RfZGV2aWNlX3NjYW4uaAo+IEBAIC0zNSwxMSArMzUsMjIg
QEAKPiAgI2luY2x1ZGUgPHVuaXN0ZC5oPgo+ICAKPiAgZW51bSBpZ3RfZGV2aWNlc19wcmludF90
eXBlIHsKPiAtCUlHVF9QUklOVF9TSU1QTEUsCj4gKwlJR1RfUFJJTlRfU0lNUExFID0gMCwKPiAg
CUlHVF9QUklOVF9ERVRBSUwsCj4gIAlJR1RfUFJJTlRfVVNFUiwgLyogRW5kIHVzZXIgZnJpZW5k
bHkuICovCj4gIH07Cj4gIAo+ICtlbnVtIGlndF9kZXZpY2VzX3ByaW50X29wdGlvbiB7Cj4gKwlJ
R1RfUFJJTlRfRFJNID0gMCwKPiArCUlHVF9QUklOVF9TWVNGUywKPiArCUlHVF9QUklOVF9QQ0ks
Cj4gK307Cj4gKwo+ICtzdHJ1Y3QgaWd0X2RldmljZXNfcHJpbnRfZm9ybWF0IHsKPiArCWVudW0g
aWd0X2RldmljZXNfcHJpbnRfdHlwZSAgIHR5cGU7Cj4gKwllbnVtIGlndF9kZXZpY2VzX3ByaW50
X29wdGlvbiBvcHRpb247Cj4gK307Cj4gKwo+ICAjZGVmaW5lIElOVEVHUkFURURfSTkxNV9HUFVf
UENJX0lEICIwMDAwOjAwOjAyLjAiCj4gICNkZWZpbmUgUENJX1NMT1RfTkFNRV9TSVpFIDEyCj4g
IHN0cnVjdCBpZ3RfZGV2aWNlX2NhcmQgewo+IEBAIC01MSw3ICs2Miw3IEBAIHN0cnVjdCBpZ3Rf
ZGV2aWNlX2NhcmQgewo+ICAKPiAgdm9pZCBpZ3RfZGV2aWNlc19zY2FuKGJvb2wgZm9yY2UpOwo+
ICAKPiAtdm9pZCBpZ3RfZGV2aWNlc19wcmludChlbnVtIGlndF9kZXZpY2VzX3ByaW50X3R5cGUg
cHJpbnR0eXBlKTsKPiArdm9pZCBpZ3RfZGV2aWNlc19wcmludChjb25zdCBzdHJ1Y3QgaWd0X2Rl
dmljZXNfcHJpbnRfZm9ybWF0ICpmbXQpOwo+ICB2b2lkIGlndF9kZXZpY2VzX3ByaW50X3ZlbmRv
cnModm9pZCk7Cj4gIHZvaWQgaWd0X2RldmljZV9wcmludF9maWx0ZXJfdHlwZXModm9pZCk7Cj4g
IAo+IGRpZmYgLS1naXQgYS90b29scy9pbnRlbF9ncHVfdG9wLmMgYi90b29scy9pbnRlbF9ncHVf
dG9wLmMKPiBpbmRleCA1MjMwNDcyZDJhZjQuLjA3Zjg4ZDU1NWRjOCAxMDA2NDQKPiAtLS0gYS90
b29scy9pbnRlbF9ncHVfdG9wLmMKPiArKysgYi90b29scy9pbnRlbF9ncHVfdG9wLmMKPiBAQCAt
MTM4Nyw3ICsxMzg3LDExIEBAIGludCBtYWluKGludCBhcmdjLCBjaGFyICoqYXJndikKPiAgCWln
dF9kZXZpY2VzX3NjYW4oZmFsc2UpOwo+ICAKPiAgCWlmIChsaXN0X2RldmljZSkgewo+IC0JCWln
dF9kZXZpY2VzX3ByaW50KElHVF9QUklOVF9VU0VSKTsKPiArCQlzdHJ1Y3QgaWd0X2RldmljZXNf
cHJpbnRfZm9ybWF0IGZtdCA9IHsKPiArCQkJLnR5cGUgPSBJR1RfUFJJTlRfVVNFUgo+ICsJCX07
Cj4gKwo+ICsJCWlndF9kZXZpY2VzX3ByaW50KCZmbXQpOwo+ICAJCWdvdG8gZXhpdDsKPiAgCX0K
PiAgCj4gZGlmZiAtLWdpdCBhL3Rvb2xzL2xzZ3B1LmMgYi90b29scy9sc2dwdS5jCj4gaW5kZXgg
M2IyMzRiNzMzNjFhLi4xNjlhYjBjMjllNTAgMTAwNjQ0Cj4gLS0tIGEvdG9vbHMvbHNncHUuYwo+
ICsrKyBiL3Rvb2xzL2xzZ3B1LmMKPiBAQCAtOTEsNyArOTEsMTEgQEAgc3RhdGljIGNvbnN0IGNo
YXIgKnVzYWdlX3N0ciA9Cj4gIAkiICAtdiwgLS1saXN0LXZlbmRvcnMgICAgICAgICAgTGlzdCBy
ZWNvZ25pemVkIHZlbmRvcnNcbiIKPiAgCSIgIC1sLCAtLWxpc3QtZmlsdGVyLXR5cGVzICAgICBM
aXN0IHJlZ2lzdGVyZWQgZGV2aWNlIGZpbHRlcnMgdHlwZXNcbiIKPiAgCSIgIC1kLCAtLWRldmlj
ZSBmaWx0ZXIgICAgICAgICBEZXZpY2UgZmlsdGVyLCBjYW4gYmUgZ2l2ZW4gbXVsdGlwbGUgdGlt
ZXNcbiIKPiAtCSIgIC1oLCAtLWhlbHAgICAgICAgICAgICAgICAgICBTaG93IHRoaXMgaGVscCBt
ZXNzYWdlIGFuZCBleGl0XG4iOwo+ICsJIiAgLWgsIC0taGVscCAgICAgICAgICAgICAgICAgIFNo
b3cgdGhpcyBoZWxwIG1lc3NhZ2UgYW5kIGV4aXRcbiIKPiArCSJcbk9wdGlvbnMgdmFsaWQgZm9y
IGRlZmF1bHQgcHJpbnQgb3V0IG1vZGUgb25seTpcbiIKPiArCSIgICAgICAtLWRybSAgICAgICAg
ICAgICAgICAgICBTaG93IERSTSBmaWx0ZXJzIChkZWZhdWx0KSBmb3IgZWFjaCBkZXZpY2VcbiIK
PiArCSIgICAgICAtLXN5c2ZzICAgICAgICAgICAgICAgICBTaG93IHN5c2ZzIGZpbHRlcnMgZm9y
IGVhY2ggZGV2aWNlXG4iCj4gKwkiICAgICAgLS1wY2kgICAgICAgICAgICAgICAgICAgU2hvdyBQ
Q0kgZmlsdGVycyBmb3IgZWFjaCBkZXZpY2VcbiI7Cj4gIAo+ICBzdGF0aWMgdm9pZCB0ZXN0X2Rl
dmljZV9vcGVuKHN0cnVjdCBpZ3RfZGV2aWNlX2NhcmQgKmNhcmQpCj4gIHsKPiBAQCAtMTUzLDYg
KzE1Nyw5IEBAIHN0YXRpYyBjaGFyICpnZXRfZGV2aWNlX2Zyb21fcmModm9pZCkKPiAgaW50IG1h
aW4oaW50IGFyZ2MsIGNoYXIgKmFyZ3ZbXSkKPiAgewo+ICAJc3RhdGljIHN0cnVjdCBvcHRpb24g
bG9uZ19vcHRpb25zW10gPSB7Cj4gKwkJeyJkcm0iLCAgICAgICAgICAgICAgIG5vX2FyZ3VtZW50
LCAgICAgICBOVUxMLCAwfSwKPiArCQl7InN5c2ZzIiwgICAgICAgICAgICAgbm9fYXJndW1lbnQs
ICAgICAgIE5VTEwsIDF9LAo+ICsJCXsicGNpIiwgICAgICAgICAgICAgICBub19hcmd1bWVudCwg
ICAgICAgTlVMTCwgMn0sCj4gIAkJeyJwcmludC1zaW1wbGUiLCAgICAgIG5vX2FyZ3VtZW50LCAg
ICAgICBOVUxMLCBPUFRfUFJJTlRfU0lNUExFfSwKPiAgCQl7InByaW50LWRldGFpbCIsICAgICAg
bm9fYXJndW1lbnQsICAgICAgIE5VTEwsIE9QVF9QUklOVF9ERVRBSUx9LAo+ICAJCXsibGlzdC12
ZW5kb3JzIiwgICAgICBub19hcmd1bWVudCwgICAgICAgTlVMTCwgT1BUX0xJU1RfVkVORE9SU30s
Cj4gQEAgLTE2MywxNyArMTcwLDE5IEBAIGludCBtYWluKGludCBhcmdjLCBjaGFyICphcmd2W10p
Cj4gIAl9Owo+ICAJaW50IGMsIGluZGV4ID0gMDsKPiAgCWNoYXIgKmVudl9kZXZpY2UgPSBOVUxM
LCAqb3B0X2RldmljZSA9IE5VTEwsICpyY19kZXZpY2UgPSBOVUxMOwo+IC0JZW51bSBpZ3RfZGV2
aWNlc19wcmludF90eXBlIHByaW50dHlwZSA9IElHVF9QUklOVF9VU0VSOwo+ICsJc3RydWN0IGln
dF9kZXZpY2VzX3ByaW50X2Zvcm1hdCBmbXQgPSB7Cj4gKwkJCS50eXBlID0gSUdUX1BSSU5UX1VT
RVIsCj4gKwl9Owo+ICAKPiAgCXdoaWxlICgoYyA9IGdldG9wdF9sb25nKGFyZ2MsIGFyZ3YsICJz
cHZsZDpoIiwKPiAgCQkJCWxvbmdfb3B0aW9ucywgJmluZGV4KSkgIT0gLTEpIHsKPiAgCQlzd2l0
Y2goYykgewo+ICAKPiAgCQljYXNlIE9QVF9QUklOVF9TSU1QTEU6Cj4gLQkJCXByaW50dHlwZSA9
IElHVF9QUklOVF9TSU1QTEU7Cj4gKwkJCWZtdC50eXBlID0gSUdUX1BSSU5UX1NJTVBMRTsKPiAg
CQkJYnJlYWs7Cj4gIAkJY2FzZSBPUFRfUFJJTlRfREVUQUlMOgo+IC0JCQlwcmludHR5cGUgPSBJ
R1RfUFJJTlRfREVUQUlMOwo+ICsJCQlmbXQudHlwZSA9IElHVF9QUklOVF9ERVRBSUw7Cj4gIAkJ
CWJyZWFrOwo+ICAJCWNhc2UgT1BUX0xJU1RfVkVORE9SUzoKPiAgCQkJZ19zaG93X3ZlbmRvcnMg
PSB0cnVlOwo+IEBAIC0xODcsNiArMTk2LDE1IEBAIGludCBtYWluKGludCBhcmdjLCBjaGFyICph
cmd2W10pCj4gIAkJY2FzZSBPUFRfSEVMUDoKPiAgCQkJZ19oZWxwID0gdHJ1ZTsKPiAgCQkJYnJl
YWs7Cj4gKwkJY2FzZSAwOgo+ICsJCQlmbXQub3B0aW9uID0gSUdUX1BSSU5UX0RSTTsKPiArCQkJ
YnJlYWs7Cj4gKwkJY2FzZSAxOgo+ICsJCQlmbXQub3B0aW9uID0gSUdUX1BSSU5UX1NZU0ZTOwo+
ICsJCQlicmVhazsKPiArCQljYXNlIDI6Cj4gKwkJCWZtdC5vcHRpb24gPSBJR1RfUFJJTlRfUENJ
Owo+ICsJCQlicmVhazsKPiAgCQl9Cj4gIAl9Cj4gIAo+IEBAIC0yMzksMTQgKzI1NywxNCBAQCBp
bnQgbWFpbihpbnQgYXJnYywgY2hhciAqYXJndltdKQo+ICAJCXByaW50ZigiRGV2aWNlIGRldGFp
bDpcbiIpOwo+ICAJCXByaW50X2NhcmQoJmNhcmQpOwo+ICAJCXRlc3RfZGV2aWNlX29wZW4oJmNh
cmQpOwo+IC0JCWlmIChwcmludHR5cGUgPT0gSUdUX1BSSU5UX0RFVEFJTCkgewo+ICsJCWlmIChm
bXQudHlwZSA9PSBJR1RfUFJJTlRfREVUQUlMKSB7Cj4gIAkJCXByaW50ZigiXG4iKTsKPiAtCQkJ
aWd0X2RldmljZXNfcHJpbnQocHJpbnR0eXBlKTsKPiArCQkJaWd0X2RldmljZXNfcHJpbnQoJmZt
dCk7Cj4gIAkJfQo+ICAJCXByaW50ZigiLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLVxuIik7Cj4gIAo+ICAJfSBlbHNlIHsKPiAtCQlpZ3RfZGV2aWNlc19wcmludChw
cmludHR5cGUpOwo+ICsJCWlndF9kZXZpY2VzX3ByaW50KCZmbXQpOwo+ICAJfQo+ICAKPiAgCWZy
ZWUocmNfZGV2aWNlKTsKPiAtLSAKPiAyLjI1LjEKPgoKT2ssIGhhdmVuJ3QgdHJhY2tlZCBvdGhl
ciBpc3N1ZXMgYW5kIExHVE06CgpSZXZpZXdlZC1ieTogWmJpZ25pZXcgS2VtcGN6ecWEc2tpIDx6
Ymlnbmlldy5rZW1wY3p5bnNraUBpbnRlbC5jb20+CgotLQpaYmlnbmlldyAKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
