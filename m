Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC6EB1D9F
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2019 14:27:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B2CA6F390;
	Fri, 13 Sep 2019 12:27:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AFAC6F390
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2019 12:27:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 05:27:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,501,1559545200"; d="scan'208";a="185085660"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga008.fm.intel.com with ESMTP; 13 Sep 2019 05:27:09 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 740E75C0495; Fri, 13 Sep 2019 15:26:54 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190912160834.30601-1-chris@chris-wilson.co.uk>
References: <20190911104011.22860-1-chris@chris-wilson.co.uk>
 <20190912160834.30601-1-chris@chris-wilson.co.uk>
Date: Fri, 13 Sep 2019 15:26:54 +0300
Message-ID: <875zlws7ox.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Don't mix srcu tag and
 negative error codes
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gV2hpbGUg
c3JjdSBtYXkgdXNlIGFuIGludGVnZXIgdGFnLCBpdCBkb2VzIG5vdCBleGNsdWRlIHBvdGVudGlh
bCBlcnJvcgo+IGNvZGVzIGFuZCBzbyBtYXkgb3ZlcmxhcCB3aXRoIG91ciBvd24gdXNlIG9mIC1F
SU5UUi4gVXNlIGEgc2VwYXJhdGUKPiBvdXRwYXJhbSB0byBzdG9yZSB0aGUgdGFnLCBhbmQgcmVw
b3J0IHRoZSBlcnJvciBjb2RlIHNlcGFyYXRlbHkuIFdoaWxlCj4gY2hhbmdpbmcgdGhlIGZ1bmN0
aW9uIHNpZ25hdHVyZSBhbGxvdyB0aGUgY2FsbGVyIHRvIGNob29zZSB3aGV0aGVyIG9yIG5vdAo+
IHRoZSBwb3RlbnRpYWwgd2FpdCBtYXkgYmUgaW50ZXJydXB0ZWQuCj4KPiBGaXhlczogMmNhZmZi
ZjExNzYyICgiZHJtL2k5MTU6IFJldm9rZSBtbWFwcyBhbmQgcHJldmVudCBhY2Nlc3MgdG8gZmVu
Y2UgcmVnaXN0ZXJzIGFjcm9zcyByZXNldCIpCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3Vv
cHBhbGFAbGludXguaW50ZWwuY29tPgo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3Vv
cHBhbGFAbGludXguaW50ZWwuY29tPgoKPiAtLS0KPiBEcm9wIHN0YXRlIHBhcmFtZXRlcnMsIHRo
ZSBwb3RlbnRpYWwgdXNlciBldmFwb3JhdGVkLgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fbW1hbi5jIHwgNiArKy0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfcmVzZXQuYyAgICB8IDggKysrLS0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfcmVzZXQuaCAgICB8IDIgKy0KPiAgMyBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlv
bnMoKyksIDEwIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fbW1hbi5jCj4gaW5kZXggODJkYjJiNzgzMTIzLi4xNzQ4ZTYzMTU2YTIgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKPiBAQCAtMjQ1LDExICsyNDUsOSBA
QCB2bV9mYXVsdF90IGk5MTVfZ2VtX2ZhdWx0KHN0cnVjdCB2bV9mYXVsdCAqdm1mKQo+ICAKPiAg
CXdha2VyZWYgPSBpbnRlbF9ydW50aW1lX3BtX2dldChycG0pOwo+ICAKPiAtCXNyY3UgPSBpbnRl
bF9ndF9yZXNldF90cnlsb2NrKGdndHQtPnZtLmd0KTsKPiAtCWlmIChzcmN1IDwgMCkgewo+IC0J
CXJldCA9IHNyY3U7Cj4gKwlyZXQgPSBpbnRlbF9ndF9yZXNldF90cnlsb2NrKGdndHQtPnZtLmd0
LCAmc3JjdSk7Cj4gKwlpZiAocmV0KQo+ICAJCWdvdG8gZXJyX3JwbTsKPiAtCX0KPiAgCj4gIAly
ZXQgPSBpOTE1X211dGV4X2xvY2tfaW50ZXJydXB0aWJsZShkZXYpOwo+ICAJaWYgKHJldCkKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKPiBpbmRleCAyOTZiYmM3NzQ1ZmIuLjgz
MjcyMjBhYzU1OCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9y
ZXNldC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwo+IEBA
IC0xMjE0LDEwICsxMjE0LDggQEAgdm9pZCBpbnRlbF9ndF9oYW5kbGVfZXJyb3Ioc3RydWN0IGlu
dGVsX2d0ICpndCwKPiAgCWludGVsX3J1bnRpbWVfcG1fcHV0KCZndC0+aTkxNS0+cnVudGltZV9w
bSwgd2FrZXJlZik7Cj4gIH0KPiAgCj4gLWludCBpbnRlbF9ndF9yZXNldF90cnlsb2NrKHN0cnVj
dCBpbnRlbF9ndCAqZ3QpCj4gK2ludCBpbnRlbF9ndF9yZXNldF90cnlsb2NrKHN0cnVjdCBpbnRl
bF9ndCAqZ3QsIGludCAqc3JjdSkKPiAgewo+IC0JaW50IHNyY3U7Cj4gLQo+ICAJbWlnaHRfbG9j
aygmZ3QtPnJlc2V0LmJhY2tvZmZfc3JjdSk7Cj4gIAltaWdodF9zbGVlcCgpOwo+ICAKPiBAQCAt
MTIzMiwxMCArMTIzMCwxMCBAQCBpbnQgaW50ZWxfZ3RfcmVzZXRfdHJ5bG9jayhzdHJ1Y3QgaW50
ZWxfZ3QgKmd0KQo+ICAKPiAgCQlyY3VfcmVhZF9sb2NrKCk7Cj4gIAl9Cj4gLQlzcmN1ID0gc3Jj
dV9yZWFkX2xvY2soJmd0LT5yZXNldC5iYWNrb2ZmX3NyY3UpOwo+ICsJKnNyY3UgPSBzcmN1X3Jl
YWRfbG9jaygmZ3QtPnJlc2V0LmJhY2tvZmZfc3JjdSk7Cj4gIAlyY3VfcmVhZF91bmxvY2soKTsK
PiAgCj4gLQlyZXR1cm4gc3JjdTsKPiArCXJldHVybiAwOwo+ICB9Cj4gIAo+ICB2b2lkIGludGVs
X2d0X3Jlc2V0X3VubG9jayhzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBpbnQgdGFnKQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuaAo+IGluZGV4IDM3YTk4N2IxNzEwOC4uNTJjMDAxOTll
MDY5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmgK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5oCj4gQEAgLTM4LDcg
KzM4LDcgQEAgaW50IGludGVsX2VuZ2luZV9yZXNldChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpl
bmdpbmUsCj4gIAo+ICB2b2lkIF9faTkxNV9yZXF1ZXN0X3Jlc2V0KHN0cnVjdCBpOTE1X3JlcXVl
c3QgKnJxLCBib29sIGd1aWx0eSk7Cj4gIAo+IC1pbnQgX19tdXN0X2NoZWNrIGludGVsX2d0X3Jl
c2V0X3RyeWxvY2soc3RydWN0IGludGVsX2d0ICpndCk7Cj4gK2ludCBfX211c3RfY2hlY2sgaW50
ZWxfZ3RfcmVzZXRfdHJ5bG9jayhzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBpbnQgKnNyY3UpOwo+ICB2
b2lkIGludGVsX2d0X3Jlc2V0X3VubG9jayhzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBpbnQgdGFnKTsK
PiAgCj4gIHZvaWQgaW50ZWxfZ3Rfc2V0X3dlZGdlZChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KTsKPiAt
LSAKPiAyLjIzLjAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
