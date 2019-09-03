Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69644A6CEC
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 17:35:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DC738919D;
	Tue,  3 Sep 2019 15:35:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D86F8919D
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 15:34:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 08:34:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,463,1559545200"; d="scan'208";a="184789439"
Received: from abj-mbp2.fi.intel.com ([10.237.66.144])
 by orsmga003.jf.intel.com with ESMTP; 03 Sep 2019 08:34:53 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190902040303.14195-1-chris@chris-wilson.co.uk>
 <20190902040303.14195-4-chris@chris-wilson.co.uk>
From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Message-ID: <e040a35e-d030-502a-b475-c043400a5025@linux.intel.com>
Date: Tue, 3 Sep 2019 18:34:52 +0300
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190902040303.14195-4-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 04/21] drm/i915: Refresh the errno to
 vmf_fault translations
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

Ck9uIDAyLzA5LzIwMTkgNy4wMiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IEl0J3MgYmVlbiBhIGxv
bmcgdGltZSBzaW5jZSB3ZSBhY2NpZGVudGFsbHkgcmVwb3J0ZWQgLUVJTyB1cG9uIHdlZGdpbmcs
Cj4gaXQgY2FuIG5vdyBvbmx5IGJlIGdlbmVyYXRlZCBieSBmYWlsdXJlIHRvIHN3YXAgaW4gYSBw
YWdlLgo+IAoKUmV2aWV3ZWQtYnk6IEFiZGllbCBKYW51bGd1ZSA8YWJkaWVsLmphbnVsZ3VlQGxp
bnV4LmludGVsLmNvbT4KCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+Cj4gQ2M6IEFiZGllbCBKYW51bGd1ZSA8YWJkaWVsLmphbnVsZ3VlQGxp
bnV4LmludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X21tYW4uYyB8IDM5ICsrKysrKysrKy0tLS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MTUgaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fbW1hbi5jCj4gaW5kZXggMjYxYzliZDgzZjUxLi44MmRiMmI3ODMxMjMg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKPiBAQCAtMjg3
LDYgKzI4Nyw5IEBAIHZtX2ZhdWx0X3QgaTkxNV9nZW1fZmF1bHQoc3RydWN0IHZtX2ZhdWx0ICp2
bWYpCj4gIAkJCXZpZXcudHlwZSA9IEk5MTVfR0dUVF9WSUVXX1BBUlRJQUw7Cj4gIAkJCXZtYSA9
IGk5MTVfZ2VtX29iamVjdF9nZ3R0X3BpbihvYmosICZ2aWV3LCAwLCAwLCBmbGFncyk7Cj4gIAkJ
fQo+ICsKPiArCQkvKiBUaGUgZW50aXJlIG1hcHBhYmxlIEdHVFQgaXMgcGlubmVkPyBVbmV4cGVj
dGVkISAqLwo+ICsJCUdFTV9CVUdfT04odm1hID09IEVSUl9QVFIoLUVOT1NQQykpOwo+ICAJfQo+
ICAJaWYgKElTX0VSUih2bWEpKSB7Cj4gIAkJcmV0ID0gUFRSX0VSUih2bWEpOwo+IEBAIC0zMzMs
MjMgKzMzNiwxOSBAQCB2bV9mYXVsdF90IGk5MTVfZ2VtX2ZhdWx0KHN0cnVjdCB2bV9mYXVsdCAq
dm1mKQo+ICAJaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKG9iaik7Cj4gIGVycjoKPiAgCXN3
aXRjaCAocmV0KSB7Cj4gLQljYXNlIC1FSU86Cj4gLQkJLyoKPiAtCQkgKiBXZSBlYXQgZXJyb3Jz
IHdoZW4gdGhlIGdwdSBpcyB0ZXJtaW5hbGx5IHdlZGdlZCB0byBhdm9pZAo+IC0JCSAqIHVzZXJz
cGFjZSB1bmR1bHkgY3Jhc2hpbmcgKGdsIGhhcyBubyBwcm92aXNpb25zIGZvciBtbWFwcyB0bwo+
IC0JCSAqIGZhaWwpLiBCdXQgYW55IG90aGVyIC1FSU8gaXNuJ3Qgb3VycyAoZS5nLiBzd2FwIGlu
IGZhaWx1cmUpCj4gLQkJICogYW5kIHNvIG5lZWRzIHRvIGJlIHJlcG9ydGVkLgo+IC0JCSAqLwo+
IC0JCWlmICghaW50ZWxfZ3RfaXNfd2VkZ2VkKGdndHQtPnZtLmd0KSkKPiAtCQkJcmV0dXJuIFZN
X0ZBVUxUX1NJR0JVUzsKPiAtCQkvKiBlbHNlLCBmYWxsIHRocm91Z2ggKi8KPiAtCWNhc2UgLUVB
R0FJTjoKPiAtCQkvKgo+IC0JCSAqIEVBR0FJTiBtZWFucyB0aGUgZ3B1IGlzIGh1bmcgYW5kIHdl
J2xsIHdhaXQgZm9yIHRoZSBlcnJvcgo+IC0JCSAqIGhhbmRsZXIgdG8gcmVzZXQgZXZlcnl0aGlu
ZyB3aGVuIHJlLWZhdWx0aW5nIGluCj4gLQkJICogaTkxNV9tdXRleF9sb2NrX2ludGVycnVwdGli
bGUuCj4gLQkJICovCj4gKwlkZWZhdWx0Ogo+ICsJCVdBUk5fT05DRShyZXQsICJ1bmhhbmRsZWQg
ZXJyb3IgaW4gJXM6ICVpXG4iLCBfX2Z1bmNfXywgcmV0KTsKPiArCQkvKiBmYWxsdGhyb3VnaCAq
Lwo+ICsJY2FzZSAtRUlPOiAvKiBzaG1lbWZzIGZhaWx1cmUgZnJvbSBzd2FwIGRldmljZSAqLwo+
ICsJY2FzZSAtRUZBVUxUOiAvKiBwdXJnZWQgb2JqZWN0ICovCj4gKwkJcmV0dXJuIFZNX0ZBVUxU
X1NJR0JVUzsKPiArCj4gKwljYXNlIC1FTk9TUEM6IC8qIHNobWVtZnMgYWxsb2NhdGlvbiBmYWls
dXJlICovCj4gKwljYXNlIC1FTk9NRU06IC8qIG91ciBhbGxvY2F0aW9uIGZhaWx1cmUgKi8KPiAr
CQlyZXR1cm4gVk1fRkFVTFRfT09NOwo+ICsKPiAgCWNhc2UgMDoKPiArCWNhc2UgLUVBR0FJTjoK
PiAgCWNhc2UgLUVSRVNUQVJUU1lTOgo+ICAJY2FzZSAtRUlOVFI6Cj4gIAljYXNlIC1FQlVTWToK
PiBAQCAtMzU4LDE0ICszNTcsNiBAQCB2bV9mYXVsdF90IGk5MTVfZ2VtX2ZhdWx0KHN0cnVjdCB2
bV9mYXVsdCAqdm1mKQo+ICAJCSAqIGFscmVhZHkgZGlkIHRoZSBqb2IuCj4gIAkJICovCj4gIAkJ
cmV0dXJuIFZNX0ZBVUxUX05PUEFHRTsKPiAtCWNhc2UgLUVOT01FTToKPiAtCQlyZXR1cm4gVk1f
RkFVTFRfT09NOwo+IC0JY2FzZSAtRU5PU1BDOgo+IC0JY2FzZSAtRUZBVUxUOgo+IC0JCXJldHVy
biBWTV9GQVVMVF9TSUdCVVM7Cj4gLQlkZWZhdWx0Ogo+IC0JCVdBUk5fT05DRShyZXQsICJ1bmhh
bmRsZWQgZXJyb3IgaW4gJXM6ICVpXG4iLCBfX2Z1bmNfXywgcmV0KTsKPiAtCQlyZXR1cm4gVk1f
RkFVTFRfU0lHQlVTOwo+ICAJfQo+ICB9Cj4gIAo+IApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
