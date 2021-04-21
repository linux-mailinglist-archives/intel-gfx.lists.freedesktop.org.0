Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3D1366C53
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Apr 2021 15:17:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6E996E15F;
	Wed, 21 Apr 2021 13:17:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E565A6E15F
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Apr 2021 13:17:15 +0000 (UTC)
IronPort-SDR: IQzsLe9vFU1+bA8OauehqG+FFYkPFWsoeyuanMv7FeocEXvyjbwYN9+boVQD+0mjPdrRfpIMTZ
 eGMNwx/KmBtg==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="195250383"
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="195250383"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 06:17:14 -0700
IronPort-SDR: yXakpI6ceiv6ZBhiSZUymJpnmi6pYOTQTOL1mmCkLLscPrKGnVfAqN/LFTa3a08felhKnj8j1o
 SXfisspjU+8Q==
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="427511486"
Received: from uchalilx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.64])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 06:17:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210414022309.30898-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210414022309.30898-1-ville.syrjala@linux.intel.com>
 <20210414022309.30898-6-ville.syrjala@linux.intel.com>
Date: Wed, 21 Apr 2021 16:17:10 +0300
Message-ID: <87czun93qh.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915: Move the "recompress on
 activate" to a central place
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAxNCBBcHIgMjAyMSwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBPbiBJTEsrIHdlIGN1cnJlbnQgZG8gYSBudWtlIHJpZ2h0IGFm
dGVyIGFjdGl2YXRpbmcgRkJDLiBJZiBteQo+IG1lbW9yeSBpc24ndCBwbGF5aW5nIHRyaWNrcyBv
biBtZSB0aGlzIGlzIGFjdGlhbGx5IHJlcXVpcmVkIGlmCj4gRkJDIGRpZG4ndCBzdGF5IGRpc2Fi
bGVkIGZvciBhIGZ1bGwgZnJhbWUuIEluIHRoYXQgY2FzZSB0aGUKPiBkZWFjdGl2YXRlK3JlYWN0
aXZhdGUgbWF5IG5vdCBpbnZhbGlkYXRlIHRoZSBjZmIuIEknZCBoYXZlIHRvCj4gZG91YmxlIGNo
ZWtjIHRvIGJlIHN1cmUgdGhvdWdoLgo+Cj4gU28gbGV0J3Mga2VlcCB0aGUgbnVrZSwgYW5kIGp1
c3QgZXh0ZW5kIGl0IGJhY2t3YXJkcyB0byBjb3Zlcgo+IGFsbCB0aGUgcGxhdGZvcm1zIGJ5IGRv
aW5nIGl0IGEgYml0IGhpZ2hlciB1cC4KPgo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CgpEb2VzIHdoYXQgaXQgc2F5cyBvbiB0
aGUgYm94LCBhbmQgdGhlIGNoYW5nZSBvdmVyYWxsIHNlZW1zIGxvZ2ljYWwuCgpSZXZpZXdlZC1i
eTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCAxMyArKysrKy0tLS0tLS0tCj4gIDEg
ZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKPiBpbmRleCBmYjhjMDg3MmEyYjcuLjgx
NjViZGI2ZjkyMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2ZiYy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMu
Ywo+IEBAIC0yMTIsMTYgKzIxMiwxNiBAQCBzdGF0aWMgdm9pZCBpOTY1X2ZiY19yZWNvbXByZXNz
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgLyogVGhpcyBmdW5jdGlvbiBm
b3JjZXMgYSBDRkIgcmVjb21wcmVzc2lvbiB0aHJvdWdoIHRoZSBudWtlIG9wZXJhdGlvbi4gKi8K
PiAgc3RhdGljIHZvaWQgc25iX2ZiY19yZWNvbXByZXNzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdikKPiAgewo+IC0Jc3RydWN0IGludGVsX2ZiYyAqZmJjID0gJmRldl9wcml2LT5m
YmM7Cj4gLQo+IC0JdHJhY2VfaW50ZWxfZmJjX251a2UoZmJjLT5jcnRjKTsKPiAtCj4gIAlpbnRl
bF9kZV93cml0ZShkZXZfcHJpdiwgTVNHX0ZCQ19SRU5EX1NUQVRFLCBGQkNfUkVORF9OVUtFKTsK
PiAgCWludGVsX2RlX3Bvc3RpbmdfcmVhZChkZXZfcHJpdiwgTVNHX0ZCQ19SRU5EX1NUQVRFKTsK
PiAgfQo+ICAKPiAgc3RhdGljIHZvaWQgaW50ZWxfZmJjX3JlY29tcHJlc3Moc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICB7Cj4gKwlzdHJ1Y3QgaW50ZWxfZmJjICpmYmMgPSAm
ZGV2X3ByaXYtPmZiYzsKPiArCj4gKwl0cmFjZV9pbnRlbF9mYmNfbnVrZShmYmMtPmNydGMpOwo+
ICsKPiAgCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gNikKPiAgCQlzbmJfZmJjX3JlY29t
cHJlc3MoZGV2X3ByaXYpOwo+ICAJZWxzZSBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDQp
Cj4gQEAgLTI3NCw4ICsyNzQsNiBAQCBzdGF0aWMgdm9pZCBpbGtfZmJjX2FjdGl2YXRlKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgCQkgICAgICAgcGFyYW1zLT5mZW5jZV95
X29mZnNldCk7Cj4gIAkvKiBlbmFibGUgaXQuLi4gKi8KPiAgCWludGVsX2RlX3dyaXRlKGRldl9w
cml2LCBJTEtfRFBGQ19DT05UUk9MLCBkcGZjX2N0bCB8IERQRkNfQ1RMX0VOKTsKPiAtCj4gLQlp
bnRlbF9mYmNfcmVjb21wcmVzcyhkZXZfcHJpdik7Cj4gIH0KPiAgCj4gIHN0YXRpYyB2b2lkIGls
a19mYmNfZGVhY3RpdmF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gQEAg
LTM0OCw4ICszNDYsNiBAQCBzdGF0aWMgdm9pZCBnZW43X2ZiY19hY3RpdmF0ZShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gIAkJZHBmY19jdGwgfD0gRkJDX0NUTF9GQUxTRV9D
T0xPUjsKPiAgCj4gIAlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgSUxLX0RQRkNfQ09OVFJPTCwg
ZHBmY19jdGwgfCBEUEZDX0NUTF9FTik7Cj4gLQo+IC0JaW50ZWxfZmJjX3JlY29tcHJlc3MoZGV2
X3ByaXYpOwo+ICB9Cj4gIAo+ICBzdGF0aWMgYm9vbCBpbnRlbF9mYmNfaHdfaXNfYWN0aXZlKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiBAQCAtNDE4LDYgKzQxNCw3IEBAIHN0
YXRpYyB2b2lkIGludGVsX2ZiY19hY3RpdmF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpCj4gIAlkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgIW11dGV4X2lzX2xvY2tlZCgm
ZmJjLT5sb2NrKSk7Cj4gIAo+ICAJaW50ZWxfZmJjX2h3X2FjdGl2YXRlKGRldl9wcml2KTsKPiAr
CWludGVsX2ZiY19yZWNvbXByZXNzKGRldl9wcml2KTsKPiAgCj4gIAlmYmMtPm5vX2ZiY19yZWFz
b24gPSBOVUxMOwo+ICB9CgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBo
aWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
