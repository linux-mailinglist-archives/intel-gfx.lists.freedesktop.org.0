Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D095B3B3F
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2019 15:25:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1E416E1D7;
	Mon, 16 Sep 2019 13:25:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56ABC6E1D7
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2019 13:25:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Sep 2019 06:25:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,512,1559545200"; d="scan'208";a="386198658"
Received: from amanna-mobl.gar.corp.intel.com (HELO [10.66.121.189])
 ([10.66.121.189])
 by fmsmga005.fm.intel.com with ESMTP; 16 Sep 2019 06:25:12 -0700
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190913082339.1785-1-anshuman.gupta@intel.com>
 <20190913082339.1785-3-anshuman.gupta@intel.com>
From: Animesh Manna <animesh.manna@intel.com>
Message-ID: <fec661bb-3f96-7ac6-87d0-1f0e489c9ec0@intel.com>
Date: Mon, 16 Sep 2019 18:55:11 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20190913082339.1785-3-anshuman.gupta@intel.com>
Subject: Re: [Intel-gfx] [PATCH v8 2/7] drm/i915/tgl: Add DC3CO mask to
 allowed_dc_mask and gen9_dc_mask
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
Cc: jani.nikula@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA5LzEzLzIwMTkgMTo1MyBQTSwgQW5zaHVtYW4gR3VwdGEgd3JvdGU6Cj4gRW5hYmxlIGRj
M2NvIHN0YXRlIGluIGVuYWJsZV9kYyBtb2R1bGUgcGFyYW0gYW5kIGFkZCBkYzNjbwo+IGVuYWJs
ZSBtYXNrIHRvIGFsbG93ZWRfZGNfbWFzayBhbmQgZ2VuOV9kY19tYXNrLgo+Cj4gdjE6IEFkZGlu
ZyBlbmFibGVfZGM9Myw0IG9wdGlvbnMgdG8gZW5hYmxlIERDM0NPIHdpdGggREM1IGFuZCBEQzYK
PiAgICAgIGluZGVwZW5kZW50bHkuIFtBbmltZXNoXQo+IHYyOiBVc2luZyBhIHN3aXRjaCBzdGF0
ZW1lbnQgZm9yIGNsZWFuZXIgY29kZS4gW0FuaW1lc2hdCj4KPiBDYzogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4KPiBDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29t
Pgo+IENjOiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4KPiBTaWduZWQt
b2ZmLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPgo+IC0tLQo+
ICAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jICAgIHwgMjkgKysr
KysrKysrKysrKysrLS0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuYyAg
ICAgICAgICAgIHwgIDMgKy0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwg
NyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9wb3dlci5jCj4gaW5kZXggY2U4OGEyNzIyOWVmLi4yNGNkOTMyMGFkNGMg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3Bvd2VyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcG93ZXIuYwo+IEBAIC02OTgsNyArNjk4LDExIEBAIHN0YXRpYyB1MzIgZ2VuOV9kY19tYXNr
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgIAl1MzIgbWFzazsKPiAgIAo+
ICAgCW1hc2sgPSBEQ19TVEFURV9FTl9VUFRPX0RDNTsKPiAtCWlmIChJTlRFTF9HRU4oZGV2X3By
aXYpID49IDExKQo+ICsKPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQo+ICsJCW1h
c2sgfD0gRENfU1RBVEVfRU5fREMzQ08gfCBEQ19TVEFURV9FTl9VUFRPX0RDNgo+ICsJCQkJCSAg
fCBEQ19TVEFURV9FTl9EQzk7Cj4gKwllbHNlIGlmIChJU19HRU4oZGV2X3ByaXYsIDExKSkKPiAg
IAkJbWFzayB8PSBEQ19TVEFURV9FTl9VUFRPX0RDNiB8IERDX1NUQVRFX0VOX0RDOTsKPiAgIAll
bHNlIGlmIChJU19HRU45X0xQKGRldl9wcml2KSkKPiAgIAkJbWFzayB8PSBEQ19TVEFURV9FTl9E
Qzk7Cj4gQEAgLTM5MjcsMTQgKzM5MzEsMTcgQEAgc3RhdGljIHUzMiBnZXRfYWxsb3dlZF9kY19t
YXNrKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgIAlpbnQgcmVx
dWVzdGVkX2RjOwo+ICAgCWludCBtYXhfZGM7Cj4gICAKPiAtCWlmIChJTlRFTF9HRU4oZGV2X3By
aXYpID49IDExKSB7Cj4gLQkJbWF4X2RjID0gMjsKPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYp
ID49IDEyKSB7Cj4gKwkJbWF4X2RjID0gNDsKPiAgIAkJLyoKPiAgIAkJICogREM5IGhhcyBhIHNl
cGFyYXRlIEhXIGZsb3cgZnJvbSB0aGUgcmVzdCBvZiB0aGUgREMgc3RhdGVzLAo+ICAgCQkgKiBu
b3QgZGVwZW5kaW5nIG9uIHRoZSBETUMgZmlybXdhcmUuIEl0J3MgbmVlZGVkIGJ5IHN5c3RlbQo+
ICAgCQkgKiBzdXNwZW5kL3Jlc3VtZSwgc28gYWxsb3cgaXQgdW5jb25kaXRpb25hbGx5Lgo+ICAg
CQkgKi8KPiAgIAkJbWFzayA9IERDX1NUQVRFX0VOX0RDOTsKPiArCX0gZWxzZSBpZiAoSVNfR0VO
KGRldl9wcml2LCAxMSkpIHsKPiArCQltYXhfZGMgPSAyOwo+ICsJCW1hc2sgPSBEQ19TVEFURV9F
Tl9EQzk7Cj4gICAJfSBlbHNlIGlmIChJU19HRU4oZGV2X3ByaXYsIDEwKSB8fCBJU19HRU45X0JD
KGRldl9wcml2KSkgewo+ICAgCQltYXhfZGMgPSAyOwo+ICAgCQltYXNrID0gMDsKPiBAQCAtMzk1
Myw3ICszOTYwLDcgQEAgc3RhdGljIHUzMiBnZXRfYWxsb3dlZF9kY19tYXNrKGNvbnN0IHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgIAkJcmVxdWVzdGVkX2RjID0gZW5hYmxl
X2RjOwo+ICAgCX0gZWxzZSBpZiAoZW5hYmxlX2RjID09IC0xKSB7Cj4gICAJCXJlcXVlc3RlZF9k
YyA9IG1heF9kYzsKPiAtCX0gZWxzZSBpZiAoZW5hYmxlX2RjID4gbWF4X2RjICYmIGVuYWJsZV9k
YyA8PSAyKSB7Cj4gKwl9IGVsc2UgaWYgKGVuYWJsZV9kYyA+IG1heF9kYyAmJiBlbmFibGVfZGMg
PD0gNCkgewo+ICAgCQlEUk1fREVCVUdfS01TKCJBZGp1c3RpbmcgcmVxdWVzdGVkIG1heCBEQyBz
dGF0ZSAoJWQtPiVkKVxuIiwKPiAgIAkJCSAgICAgIGVuYWJsZV9kYywgbWF4X2RjKTsKPiAgIAkJ
cmVxdWVzdGVkX2RjID0gbWF4X2RjOwo+IEBAIC0zOTYyLDEwICszOTY5LDIwIEBAIHN0YXRpYyB1
MzIgZ2V0X2FsbG93ZWRfZGNfbWFzayhjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsCj4gICAJCXJlcXVlc3RlZF9kYyA9IG1heF9kYzsKPiAgIAl9Cj4gICAKPiAtCWlmIChy
ZXF1ZXN0ZWRfZGMgPiAxKQo+ICsJc3dpdGNoIChyZXF1ZXN0ZWRfZGMpIHsKPiArCWNhc2UgNDoK
PiArCQltYXNrIHw9IERDX1NUQVRFX0VOX0RDM0NPIHwgRENfU1RBVEVfRU5fVVBUT19EQzY7Cj4g
KwkJYnJlYWs7Cj4gKwljYXNlIDM6Cj4gKwkJbWFzayB8PSBEQ19TVEFURV9FTl9EQzNDTyB8IERD
X1NUQVRFX0VOX1VQVE9fREM1Owo+ICsJCWJyZWFrOwo+ICsJY2FzZSAyOgo+ICAgCQltYXNrIHw9
IERDX1NUQVRFX0VOX1VQVE9fREM2Owo+IC0JaWYgKHJlcXVlc3RlZF9kYyA+IDApCj4gKwkJYnJl
YWs7Cj4gKwljYXNlIDE6Cj4gICAJCW1hc2sgfD0gRENfU1RBVEVfRU5fVVBUT19EQzU7Cj4gKwkJ
YnJlYWs7Cj4gKwl9Cj4gICAKPiAgIAlEUk1fREVCVUdfS01TKCJBbGxvd2VkIERDIHN0YXRlIG1h
c2sgJTAyeFxuIiwgbWFzayk7Cj4gICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wYXJhbXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmMKPiBp
bmRleCAyOTY0NTJmOWVmZTQuLjRmMTgwNmY2NTA0MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wYXJhbXMuYwo+IEBAIC00Niw3ICs0Niw4IEBAIGk5MTVfcGFyYW1fbmFtZWQobW9kZXNldCwg
aW50LCAwNDAwLAo+ICAgCj4gICBpOTE1X3BhcmFtX25hbWVkX3Vuc2FmZShlbmFibGVfZGMsIGlu
dCwgMDQwMCwKPiAgIAkiRW5hYmxlIHBvd2VyLXNhdmluZyBkaXNwbGF5IEMtc3RhdGVzLiAiCj4g
LQkiKC0xPWF1dG8gW2RlZmF1bHRdOyAwPWRpc2FibGU7IDE9dXAgdG8gREM1OyAyPXVwIHRvIERD
NikiKTsKPiArCSIoLTE9YXV0byBbZGVmYXVsdF07IDA9ZGlzYWJsZTsgMT11cCB0byBEQzU7IDI9
dXAgdG8gREM2OyAiCj4gKwkiMz11cCB0byBEQzUgd2l0aCBEQzNDTzsgND11cCB0byBEQzYgd2l0
aCBEQzNDTykiKTsKPiAgIAo+ICAgaTkxNV9wYXJhbV9uYW1lZF91bnNhZmUoZW5hYmxlX2ZiYywg
aW50LCAwNjAwLAo+ICAgCSJFbmFibGUgZnJhbWUgYnVmZmVyIGNvbXByZXNzaW9uIGZvciBwb3dl
ciBzYXZpbmdzICIKCkNoYW5nZXMgbG9va3Mgb2sgdG8gbWUuCkNhbiBhZGQgUmV2aWV3ZWQtYnk6
IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
