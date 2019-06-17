Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5AE489FA
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 19:23:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28AB989168;
	Mon, 17 Jun 2019 17:23:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E15A89168
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 17:23:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 10:23:45 -0700
X-ExtLoop1: 1
Received: from dpalikow-mobl1.ger.corp.intel.com (HELO [10.249.139.12])
 ([10.249.139.12])
 by orsmga008.jf.intel.com with ESMTP; 17 Jun 2019 10:23:43 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: Kenneth Graunke <kenneth@whitecape.org>, intel-gfx@lists.freedesktop.org
References: <20190610081914.25428-1-lionel.g.landwerlin@intel.com>
 <2412677.VNyTJ0fQGL@kirito> <b3f2f339-2108-a1ff-c319-130c47fb16b5@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <2a7ebfb1-02ac-ae1c-84fc-8971d5866bad@intel.com>
Date: Mon, 17 Jun 2019 20:23:42 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <b3f2f339-2108-a1ff-c319-130c47fb16b5@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: fix ICL perf register offsets
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

T24gMTIvMDYvMjAxOSAwOTo1MywgTGlvbmVsIExhbmR3ZXJsaW4gd3JvdGU6Cj4gT24gMTAvMDYv
MjAxOSAxODoyNSwgS2VubmV0aCBHcmF1bmtlIHdyb3RlOgo+PiBPbiBNb25kYXksIEp1bmUgMTAs
IDIwMTkgMToxOToxNCBBTSBQRFQgTGlvbmVsIExhbmR3ZXJsaW4gd3JvdGU6Cj4+PiBXZSBnb3Qg
dGhlIHdyb25nIG9mZnNldHMgKGNvdWxkIHRoZXkgaGF2ZSBjaGFuZ2VkPykuIE5ldyB2YWx1ZXMg
d2VyZQo+Pj4gY29tcHV0ZWQgb2ZmIGFuIGVycm9yIHN0YXRlIGJ5IGxvb2tpbmcgdXAgdGhlIHJl
Z2lzdGVyIG9mZnNldCBpbiB0aGUKPj4+IGNvbnRleHQgaW1hZ2UgYXMgd3JpdHRlbiBieSB0aGUg
SFcuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxh
bmR3ZXJsaW5AaW50ZWwuY29tPgo+Pj4gRml4ZXM6IDFkZTQwMWMwOGZhODA1ICgiZHJtL2k5MTUv
cGVyZjogZW5hYmxlIHBlcmYgc3VwcG9ydCBvbiBJQ0wiKQo+Pj4gLS0tCj4+PiDCoCBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyB8IDEwICsrKysrKystLS0KPj4+IMKgIDEgZmlsZSBj
aGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jIAo+Pj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BlcmYuYwo+Pj4gaW5kZXggNGE3NjcwODdkZTI3Li42Yzg1MTkxZmM2Yzkg
MTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+Pj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPj4+IEBAIC0zNjEyLDkgKzM2MTIs
MTMgQEAgdm9pZCBpOTE1X3BlcmZfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAKPj4+ICpk
ZXZfcHJpdikKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRldl9wcml2LT5wZXJmLm9h
Lm9wcy5lbmFibGVfbWV0cmljX3NldCA9IAo+Pj4gZ2VuOF9lbmFibGVfbWV0cmljX3NldDsKPj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRldl9wcml2LT5wZXJmLm9hLm9wcy5kaXNhYmxl
X21ldHJpY19zZXQgPSAKPj4+IGdlbjEwX2Rpc2FibGVfbWV0cmljX3NldDsKPj4+IMKgIC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGRldl9wcml2LT5wZXJmLm9hLmN0eF9vYWN0eGN0cmxfb2Zmc2V0
ID0gMHgxMjg7Cj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZfcHJpdi0+cGVyZi5vYS5j
dHhfZmxleGV1MF9vZmZzZXQgPSAweDNkZTsKPj4+IC0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGlmIChJU19HRU4oZGV2X3ByaXYsIDEwKSkgewo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBkZXZfcHJpdi0+cGVyZi5vYS5jdHhfb2FjdHhjdHJsX29mZnNldCA9IDB4MTI4
Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZfcHJpdi0+cGVyZi5vYS5j
dHhfZmxleGV1MF9vZmZzZXQgPSAweDNkZTsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0g
ZWxzZSB7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRldl9wcml2LT5wZXJm
Lm9hLmN0eF9vYWN0eGN0cmxfb2Zmc2V0ID0gMHgxMjQ7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGRldl9wcml2LT5wZXJmLm9hLmN0eF9mbGV4ZXUwX29mZnNldCA9IDB4Nzhl
Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgZGV2X3ByaXYtPnBlcmYub2EuZ2VuOF92YWxpZF9jdHhfYml0ID0gKDE8PDE2KTsKPj4+
IMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+PiDCoMKgwqDCoMKgIH0KPj4+Cj4+IFNvdW5kcyBiZWxp
ZXZhYmxlLgo+Pgo+PiBBY2tlZC1ieTogS2VubmV0aCBHcmF1bmtlIDxrZW5uZXRoQHdoaXRlY2Fw
ZS5vcmc+Cj4KPiBUaGFua3MgS2VuLgo+Cj4KPiBUaGlzIHdhcyBjb25maXJtZWQgdG8gZml4IHRo
ZSBpc3N1ZSBzZWVuIGluIHBlcmZvcm1hbmNlIHF1ZXJpZXMuCj4KPiBJcyBhIEFja2VkLWJ5IGVu
b3VnaCB0byBsYW5kIHRoaXM/Cj4KPiBDb3VsZCBzb21lb25lIGVsc2UgbWF5YmUgcmV2aWV3Pwo+
Cj4KPiBUaGFua3MgYSBsb3QsCj4KPiAtTGlvbmVsCj4KUGluZz8KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
