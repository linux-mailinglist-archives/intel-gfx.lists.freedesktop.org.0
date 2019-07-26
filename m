Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 581F775D95
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 06:04:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEEE06E878;
	Fri, 26 Jul 2019 04:04:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF0DA6E878
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 04:04:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 21:04:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,309,1559545200"; d="scan'208";a="369414196"
Received: from anshuma1-mobl1.gar.corp.intel.com (HELO [10.252.95.97])
 ([10.252.95.97])
 by fmsmga005.fm.intel.com with ESMTP; 25 Jul 2019 21:04:05 -0700
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190726002412.5827-1-lucas.demarchi@intel.com>
 <20190726002412.5827-2-lucas.demarchi@intel.com>
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Message-ID: <692d28f1-765e-e365-60e7-445cabaeb8ef@intel.com>
Date: Fri, 26 Jul 2019 09:34:03 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190726002412.5827-2-lucas.demarchi@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/tgl: Add and use new DC5 and
 DC6 residency counter registers
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

CgpPbiA3LzI2LzIwMTkgNTo1NCBBTSwgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOgo+IEZyb206IEpv
c8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IAo+IFRpZ2VyIExh
a2UgaGFzIGEgbmV3IHJlZ2lzdGVyIG9mZnNldCBmb3IgREM1IGFuZCBEQzYgcmVzaWRlbmN5IGNv
dW50ZXJzLgo+IAo+IHYyOgo+ICAgIC0gUmVuYW1lIHJlZ2lzdGVycyBzaW5jZSB0aGV5IGFyZSBu
b3QgaW4gdGhlIENTUiBtZW1vcnkgcmFuZ2UKPiAgICAgIChyZXF1ZXN0ZWQgYnkgQW5zaHVtYW4p
Cj4gICAgLSBGaXggdHlwZSAocmVxdWVzdGVkIGJ5IE1hdHRoZXcpCj4gCj4gU2lnbmVkLW9mZi1i
eTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gU2lnbmVk
LW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ckxvb2tz
IEdvb2QgdG8gbWUuClJldmlld2VkLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFA
aW50ZWwuY29tPgoKPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5j
IHwgMjEgKysrKysrKysrKysrKy0tLS0tLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oICAgICB8ICAyICsrCj4gICAyIGZpbGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyks
IDggZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiBpbmRl
eCAyNDc4N2JiNDhjOWYuLjZkYmQ4NWIzODc1OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZGVidWdmcy5jCj4gQEAgLTI0NjUsNiArMjQ2NSw3IEBAIHN0YXRpYyBpbnQgaTkxNV9kbWNfaW5m
byhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKnVudXNlZCkKPiAgIAlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYgPSBub2RlX3RvX2k5MTUobS0+cHJpdmF0ZSk7Cj4gICAJaW50ZWxf
d2FrZXJlZl90IHdha2VyZWY7Cj4gICAJc3RydWN0IGludGVsX2NzciAqY3NyOwo+ICsJaTkxNV9y
ZWdfdCBkYzVfcmVnLCBkYzZfcmVnID0ge307Cj4gICAKPiAgIAlpZiAoIUhBU19DU1IoZGV2X3By
aXYpKQo+ICAgCQlyZXR1cm4gLUVOT0RFVjsKPiBAQCAtMjQ4MiwxNSArMjQ4MywxOSBAQCBzdGF0
aWMgaW50IGk5MTVfZG1jX2luZm8oc3RydWN0IHNlcV9maWxlICptLCB2b2lkICp1bnVzZWQpCj4g
ICAJc2VxX3ByaW50ZihtLCAidmVyc2lvbjogJWQuJWRcbiIsIENTUl9WRVJTSU9OX01BSk9SKGNz
ci0+dmVyc2lvbiksCj4gICAJCSAgIENTUl9WRVJTSU9OX01JTk9SKGNzci0+dmVyc2lvbikpOwo+
ICAgCj4gLQlpZiAoV0FSTl9PTihJTlRFTF9HRU4oZGV2X3ByaXYpID4gMTEpKQo+IC0JCWdvdG8g
b3V0Owo+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsKPiArCQlkYzVfcmVnID0g
VEdMX0RNQ19ERUJVR19EQzVfQ09VTlQ7Cj4gKwkJZGM2X3JlZyA9IFRHTF9ETUNfREVCVUdfREM2
X0NPVU5UOwo+ICsJfSBlbHNlIHsKPiArCQlkYzVfcmVnID0gSVNfQlJPWFRPTihkZXZfcHJpdikg
PyBCWFRfQ1NSX0RDM19EQzVfQ09VTlQgOgo+ICsJCQkJCQkgU0tMX0NTUl9EQzNfREM1X0NPVU5U
Owo+ICsJCWlmICghSVNfR0VOOV9MUChkZXZfcHJpdikpCj4gKwkJCWRjNl9yZWcgPSBTS0xfQ1NS
X0RDNV9EQzZfQ09VTlQ7Cj4gKwl9Cj4gICAKPiAtCXNlcV9wcmludGYobSwgIkRDMyAtPiBEQzUg
Y291bnQ6ICVkXG4iLAo+IC0JCSAgIEk5MTVfUkVBRChJU19CUk9YVE9OKGRldl9wcml2KSA/IEJY
VF9DU1JfREMzX0RDNV9DT1VOVCA6Cj4gLQkJCQkJCSAgICBTS0xfQ1NSX0RDM19EQzVfQ09VTlQp
KTsKPiAtCWlmICghSVNfR0VOOV9MUChkZXZfcHJpdikpCj4gLQkJc2VxX3ByaW50ZihtLCAiREM1
IC0+IERDNiBjb3VudDogJWRcbiIsCj4gLQkJCSAgIEk5MTVfUkVBRChTS0xfQ1NSX0RDNV9EQzZf
Q09VTlQpKTsKPiArCXNlcV9wcmludGYobSwgIkRDMyAtPiBEQzUgY291bnQ6ICVkXG4iLCBJOTE1
X1JFQUQoZGM1X3JlZykpOwo+ICsJaWYgKGRjNl9yZWcucmVnKQo+ICsJCXNlcV9wcmludGYobSwg
IkRDNSAtPiBEQzYgY291bnQ6ICVkXG4iLCBJOTE1X1JFQUQoZGM2X3JlZykpOwo+ICAgCj4gICBv
dXQ6Cj4gICAJc2VxX3ByaW50ZihtLCAicHJvZ3JhbSBiYXNlOiAweCUwOHhcbiIsIEk5MTVfUkVB
RChDU1JfUFJPR1JBTSgwKSkpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IGluZGV4IDI0ZjJh
NTJhMmI0Mi4uZTk5OWNlOTRiNDVjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gQEAg
LTcyNjgsNiArNzI2OCw4IEBAIGVudW0gewo+ICAgI2RlZmluZSBTS0xfQ1NSX0RDM19EQzVfQ09V
TlQJX01NSU8oMHg4MDAzMCkKPiAgICNkZWZpbmUgU0tMX0NTUl9EQzVfREM2X0NPVU5UCV9NTUlP
KDB4ODAwMkMpCj4gICAjZGVmaW5lIEJYVF9DU1JfREMzX0RDNV9DT1VOVAlfTU1JTygweDgwMDM4
KQo+ICsjZGVmaW5lIFRHTF9ETUNfREVCVUdfREM1X0NPVU5UCV9NTUlPKDB4MTAxMDg0KQo+ICsj
ZGVmaW5lIFRHTF9ETUNfREVCVUdfREM2X0NPVU5UCV9NTUlPKDB4MTAxMDg4KQo+ICAgCj4gICAv
KiBpbnRlcnJ1cHRzICovCj4gICAjZGVmaW5lIERFX01BU1RFUl9JUlFfQ09OVFJPTCAgICgxIDw8
IDMxKQo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
