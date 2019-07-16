Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F0A6AE3E
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2019 20:13:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B6DA6E165;
	Tue, 16 Jul 2019 18:13:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C3E76E165
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2019 18:13:36 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jul 2019 11:13:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,271,1559545200"; d="scan'208";a="175473395"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Jul 2019 11:13:33 -0700
Date: Tue, 16 Jul 2019 11:15:12 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20190716181511.GB2632@intel.com>
References: <20190715234056.17112-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190715234056.17112-1-anusha.srivatsa@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/dp/dsc: Add Support for all BPCs
 supported by TGL
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBKdWwgMTUsIDIwMTkgYXQgMDQ6NDA6NTZQTSAtMDcwMCwgQW51c2hhIFNyaXZhdHNh
IHdyb3RlOgo+IERTQyBlbmdpbmUgb24gSUNMIHN1cHBvcnRzIG9ubHkgOCBhbmQgMTAgQlBDIGFz
IHRoZSBpbnB1dAo+IEJQQy4gQnV0IERTQyBlbmdpbmUgaW4gVEdMIHN1cHBvcnRzIDgsIDEwIGFu
ZCAxMiBCUEMuCj4gQWRkIDEyIEJQQyBzdXBwb3J0IGZvciBEU0Mgd2hpbGUgY2FsY3VsYXRpbmcg
Y29tcHJlc3Npb24KPiBjb25maWd1cmF0aW9uLgo+IAo+IHYyOiBSZW1vdmUgdGhlIHNlcGFyYXRl
IGRlZmluZSBUR0xfRFBfRFNDX01BWF9TVVBQT1JURURfQlBDCj4gYW5kIHVzZSB0aGUgdmFsdWUg
ZGlyZWN0bHkuKE1vcmUgc3VjaCBkZWZpbmVzIGNhbiBiZSByZW1vdmVkCj4gYXMgcGFydCBvZiBm
dXR1cmUgcGF0Y2hlcykuIChWaWxsZSkKCklNTyB3aGF0IFZpbGxlIGFza2VkIHRvIGRvIGluIGhp
cyBjb21tZW50IHdhcyB0byByZW1vdmUgYWxsIHRoZSAjZGVmaW5lcwpmb3IgdGhlIG1heCBEU0Mg
QlBDIHNvIHJlbW92ZSB0aGUgb25lcyBmb3IgOCBhbmQgMTAgYWxzbyB0byBtYWsgZWl0IG1vcmUg
cmVhZGFibGUKYW5kIHRoYXQgdXNlciBkb2VzIG5vdCBoYXZlIHRvIGh1bnQgZm9yIHRoZSAjZGVm
aW5lcyBmb3IgZWl0aGVyIG9mIHRoZXNlLgoKPiAKPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQu
bmF2YXJlQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNo
YS5zcml2YXRzYUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYyB8IDggKysrKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jCj4gaW5kZXggMGViNWQ2NmY4N2E3Li5hYThiZmI3NTRmYzEgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gQEAgLTE5MTQsOCArMTkxNCwxMiBAQCBz
dGF0aWMgaW50IGludGVsX2RwX2RzY19jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwLAo+ICAJaWYgKCFpbnRlbF9kcF9zdXBwb3J0c19kc2MoaW50ZWxfZHAsIHBpcGVfY29u
ZmlnKSkKPiAgCQlyZXR1cm4gLUVJTlZBTDsKPiAgCj4gLQlkc2NfbWF4X2JwYyA9IG1pbl90KHU4
LCBEUF9EU0NfTUFYX1NVUFBPUlRFRF9CUEMsCj4gLQkJCSAgICBjb25uX3N0YXRlLT5tYXhfcmVx
dWVzdGVkX2JwYyk7Cj4gKwkvKiBNYXggRFNDIElucHV0IEJQQyBmb3IgVEdMKyBpcyAxMiAqLwo+
ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCj4gKwkJZHNjX21heF9icGMgPSBtaW5f
dCh1OCwgMTIsIGNvbm5fc3RhdGUtPm1heF9yZXF1ZXN0ZWRfYnBjKTsKPiArCWVsc2UKPiArCQlk
c2NfbWF4X2JwYyA9IG1pbl90KHU4LCBEUF9EU0NfTUFYX1NVUFBPUlRFRF9CUEMsCj4gKwkJCQkg
ICAgY29ubl9zdGF0ZS0+bWF4X3JlcXVlc3RlZF9icGMpOwoKVXNlIDEwIGhlcmUgZGlyZWN0bHkK
Cj4gIAo+ICAJcGlwZV9icHAgPSBpbnRlbF9kcF9kc2NfY29tcHV0ZV9icHAoaW50ZWxfZHAsIGRz
Y19tYXhfYnBjKTsKPiAgCWlmIChwaXBlX2JwcCA8IERQX0RTQ19NSU5fU1VQUE9SVEVEX0JQQyAq
IDMpIHsKClVzZSA4IGhlcmUgZGlyZWN0bHkKCk1hbmFzaQo+IC0tIAo+IDIuMjEuMAo+IApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
