Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB98B514A
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 17:20:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 791266ECDD;
	Tue, 17 Sep 2019 15:20:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 352096ECDD
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 15:20:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 08:20:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,516,1559545200"; d="scan'208";a="198722421"
Received: from leonidf-mobl.ger.corp.intel.com (HELO [10.252.3.171])
 ([10.252.3.171])
 by orsmga002.jf.intel.com with ESMTP; 17 Sep 2019 08:20:20 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190917074312.12290-1-chris@chris-wilson.co.uk>
 <20190917150912.11215-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <950e721d-423e-7936-6d48-f30bc87841b2@linux.intel.com>
Date: Tue, 17 Sep 2019 16:20:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190917150912.11215-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Lock signaler timeline while
 navigating
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE3LzA5LzIwMTkgMTY6MDksIENocmlzIFdpbHNvbiB3cm90ZToKPiBBcyB3ZSBuZWVkIHRv
IHRha2UgYSB3YWxrIGJhY2sgYWxvbmcgdGhlIHNpZ25hbGVyIHRpbWVsaW5lIHRvIGZpbmQgdGhl
Cj4gZmVuY2UgYmVmb3JlIHVwb24gd2hpY2ggd2Ugd2FudCB0byB3YWl0LCB3ZSBuZWVkIHRvIGxv
Y2sgdGhhdCB0aW1lbGluZQo+IHRvIHByZXZlbnQgaXQgYmVpbmcgbW9kaWZpZWQgYXMgd2Ugd2Fs
ay4gU2ltaWxhcmx5LCB3ZSBhbHNvIG5lZWQgdG8KPiBhY3F1aXJlIGEgcmVmZXJlbmNlIHRvIHRo
ZSBlYXJsaWVyIGZlbmNlIHdoaWxlIGl0IHN0aWxsIGV4aXN0cyEKPiAKPiBUaG91Z2ggd2UgbGFj
ayB0aGUgY29ycmVjdCBsb2NraW5nIHRvZGF5LCB3ZSBhcmUgc2F2ZWQgYnkgdGhlCj4gb3ZlcmFy
Y2hpbmcgc3RydWN0X211dGV4IC0tIGJ1dCB0aGF0IHByb3RlY3Rpb24gaXMgYmVpbmcgcmVtb3Zl
ZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNv
bT4KPiAtLS0KPiBBZGQgdGhlIGxvY2tkZXAgYXNzZXJ0IGFuZCBHRU1fQlVHX09OIHRvIG5vdGUg
dGhlIG92ZXJsYXBwaW5nIHRpbWVsaW5lcy4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVxdWVzdC5jIHwgMzEgKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0KPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCj4gaW5kZXggZjEyMzU4MTUwMDk3Li4zOTY2YjMzMGI1
ZGUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwo+IEBAIC03NjcsMTYgKzc2
NywzNSBAQCBpOTE1X3JlcXVlc3RfY3JlYXRlKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKPiAg
IHN0YXRpYyBpbnQKPiAgIGk5MTVfcmVxdWVzdF9hd2FpdF9zdGFydChzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICpycSwgc3RydWN0IGk5MTVfcmVxdWVzdCAqc2lnbmFsKQo+ICAgewo+IC0JaWYgKGxpc3Rf
aXNfZmlyc3QoJnNpZ25hbC0+bGluaywgJnNpZ25hbC0+dGltZWxpbmUtPnJlcXVlc3RzKSkKPiAr
CXN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGwgPSBzaWduYWwtPnRpbWVsaW5lOwo+ICsJc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2U7Cj4gKwlpbnQgZXJyOwo+ICsKPiArCWxvY2tkZXBfYXNzZXJ0X2hl
bGQoJnJxLT50aW1lbGluZS0+bXV0ZXgpOwo+ICsJR0VNX0JVR19PTihycS0+dGltZWxpbmUgPT0g
c2lnbmFsLT50aW1lbGluZSk7Cj4gKwo+ICsJaWYgKGxpc3RfaXNfZmlyc3QoJnNpZ25hbC0+bGlu
aywgJnRsLT5yZXF1ZXN0cykpCj4gICAJCXJldHVybiAwOwo+ICAgCj4gLQlzaWduYWwgPSBsaXN0
X3ByZXZfZW50cnkoc2lnbmFsLCBsaW5rKTsKPiAtCWlmIChpbnRlbF90aW1lbGluZV9zeW5jX2lz
X2xhdGVyKHJxLT50aW1lbGluZSwgJnNpZ25hbC0+ZmVuY2UpKQo+ICsJaWYgKG11dGV4X2xvY2tf
aW50ZXJydXB0aWJsZV9uZXN0ZWQoJnRsLT5tdXRleCwgU0lOR0xFX0RFUFRIX05FU1RJTkcpKQo+
ICsJCXJldHVybiAtRUlOVFI7Cj4gKwo+ICsJZmVuY2UgPSBOVUxMOwo+ICsJaWYgKCFsaXN0X2lz
X2ZpcnN0KCZzaWduYWwtPmxpbmssICZ0bC0+cmVxdWVzdHMpKQo+ICsJCWZlbmNlID0gZG1hX2Zl
bmNlX2dldCgmbGlzdF9wcmV2X2VudHJ5KHNpZ25hbCwgbGluayktPmZlbmNlKTsKPiArCj4gKwlt
dXRleF91bmxvY2soJnRsLT5tdXRleCk7Cj4gKwlpZiAoIWZlbmNlKQo+ICAgCQlyZXR1cm4gMDsK
PiAgIAo+IC0JcmV0dXJuIGk5MTVfc3dfZmVuY2VfYXdhaXRfZG1hX2ZlbmNlKCZycS0+c3VibWl0
LAo+IC0JCQkJCSAgICAgJnNpZ25hbC0+ZmVuY2UsIDAsCj4gLQkJCQkJICAgICBJOTE1X0ZFTkNF
X0dGUCk7Cj4gKwllcnIgPSAwOwo+ICsJaWYgKCFpbnRlbF90aW1lbGluZV9zeW5jX2lzX2xhdGVy
KHJxLT50aW1lbGluZSwgZmVuY2UpKQo+ICsJCWVyciA9IGk5MTVfc3dfZmVuY2VfYXdhaXRfZG1h
X2ZlbmNlKCZycS0+c3VibWl0LAo+ICsJCQkJCQkgICAgZmVuY2UsIDAsCj4gKwkJCQkJCSAgICBJ
OTE1X0ZFTkNFX0dGUCk7Cj4gKwlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKPiArCj4gKwlyZXR1cm4g
ZXJyOwo+ICAgfQo+ICAgCj4gICBzdGF0aWMgaW50ZWxfZW5naW5lX21hc2tfdAo+IAoKWWVzIHRo
ZSBhc3NlcnRzIG1ha2UgaXQgb2J2aW91cyBub3cgd2h5IHRoZSBuZXN0ZWQgYW5ub3RhdGlvbiBp
cyBuZWVkZWQuCgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
