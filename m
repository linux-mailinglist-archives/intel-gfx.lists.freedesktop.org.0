Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0490B8FCB
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 14:29:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 220BE6E844;
	Fri, 20 Sep 2019 12:29:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25C236E844
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 12:29:10 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 05:29:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,528,1559545200"; d="scan'208";a="217634353"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 20 Sep 2019 05:29:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 20 Sep 2019 15:29:06 +0300
Date: Fri, 20 Sep 2019 15:29:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: James Ausmus <james.ausmus@intel.com>
Message-ID: <20190920122906.GY1208@intel.com>
References: <20190919221640.25073-1-james.ausmus@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919221640.25073-1-james.ausmus@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Add memory type decoding for
 bandwidth checking
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

T24gVGh1LCBTZXAgMTksIDIwMTkgYXQgMDM6MTY6NDBQTSAtMDcwMCwgSmFtZXMgQXVzbXVzIHdy
b3RlOgo+IFRoZSBtZW1vcnkgdHlwZSB2YWx1ZXMgaGF2ZSBjaGFuZ2VkIGluIFRHTCwgc28gd2Ug
bmVlZCB0byB0cmFuc2xhdGUgdGhlbQo+IGRpZmZlcmVudGx5IHRoYW4gSUNMLgo+IAo+IEJTcGVj
OiA1Mzk5OAo+IAo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPgo+IENjOiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGlu
dGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKYW1lcyBBdXNtdXMgPGphbWVzLmF1c211c0BpbnRl
bC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYyB8
IDU5ICsrKysrKysrKysrKysrKysrKy0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQzIGluc2Vy
dGlvbnMoKyksIDE2IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2J3LmMKPiBpbmRleCA2ODg4NThlYmU0ZDAuLjExMjI0ZDlhNjc1MiAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMKPiBAQCAtMzUsMjIgKzM1LDQ5IEBA
IHN0YXRpYyBpbnQgaWNsX3Bjb2RlX3JlYWRfbWVtX2dsb2JhbF9pbmZvKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwKPiAgCWlmIChyZXQpCj4gIAkJcmV0dXJuIHJldDsKPiAgCj4g
LQlzd2l0Y2ggKHZhbCAmIDB4Zikgewo+IC0JY2FzZSAwOgo+IC0JCXFpLT5kcmFtX3R5cGUgPSBJ
TlRFTF9EUkFNX0REUjQ7Cj4gLQkJYnJlYWs7Cj4gLQljYXNlIDE6Cj4gLQkJcWktPmRyYW1fdHlw
ZSA9IElOVEVMX0RSQU1fRERSMzsKPiAtCQlicmVhazsKPiAtCWNhc2UgMjoKPiAtCQlxaS0+ZHJh
bV90eXBlID0gSU5URUxfRFJBTV9MUEREUjM7Cj4gLQkJYnJlYWs7Cj4gLQljYXNlIDM6Cj4gLQkJ
cWktPmRyYW1fdHlwZSA9IElOVEVMX0RSQU1fTFBERFIzOwoKVGhpcyBzaG91bGQgYmUgTFBERFI0
IGFjdHVhbGx5LiBEb2Vzbid0IHJlYWxseSBtYXR0ZXIgYnV0IHdvdWxkIGJlIG5pY2UKdG8gZml4
IGFzIHdlbGwuCgo+IC0JCWJyZWFrOwo+IC0JZGVmYXVsdDoKPiAtCQlNSVNTSU5HX0NBU0UodmFs
ICYgMHhmKTsKPiAtCQlicmVhazsKPiArCWlmIChJU19HRU4oZGV2X3ByaXYsIDEyKSkgewo+ICsJ
CXN3aXRjaCAodmFsICYgMHhmKSB7Cj4gKwkJY2FzZSAwOgo+ICsJCQlxaS0+ZHJhbV90eXBlID0g
SU5URUxfRFJBTV9ERFI0Owo+ICsJCQlicmVhazsKPiArCQljYXNlIDM6Cj4gKwkJCXFpLT5kcmFt
X3R5cGUgPSBJTlRFTF9EUkFNX0xQRERSNDsKPiArCQkJYnJlYWs7Cj4gKwkJY2FzZSA0Ogo+ICsJ
CQlxaS0+ZHJhbV90eXBlID0gSU5URUxfRFJBTV9ERFIzOwo+ICsJCQlicmVhazsKPiArCQljYXNl
IDU6Cj4gKwkJCXFpLT5kcmFtX3R5cGUgPSBJTlRFTF9EUkFNX0xQRERSMzsKPiArCQkJYnJlYWs7
Cj4gKwkJY2FzZSAxOgo+ICsJCWNhc2UgMjoKPiArCQkJLyogVW5pbXBsZW1lbnRlZCAqLwoKU2Vl
bXMgcG9pbnRsZXNzIHRvIGxpc3QgdGhlc2UuCgpUaGUgbnVtYmVycyBtYXRjaCBic3BlYy4gVW5m
b3J0dW5hdGxleSBJIGNhbid0IGdldCB0Z2wKY29uZmlnZGIgdG8gY29vcGVyYXRlIHNvIGNhbid0
IGRvdWJsZSBjaGVjayBhZ2FpbnN0IHRoZQpNQyByZWdpc3RlciBkZWZpbml0aW9uLgoKUmV2aWV3
ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cgo+
ICsJCQkvKiBmYWxsIHRocm91Z2ggKi8KPiArCQlkZWZhdWx0Ogo+ICsJCQlNSVNTSU5HX0NBU0Uo
dmFsICYgMHhmKTsKPiArCQkJYnJlYWs7Cj4gKwkJfQo+ICsJfSBlbHNlIGlmIChJU19HRU4oZGV2
X3ByaXYsIDExKSkgewo+ICsJCXN3aXRjaCAodmFsICYgMHhmKSB7Cj4gKwkJY2FzZSAwOgo+ICsJ
CQlxaS0+ZHJhbV90eXBlID0gSU5URUxfRFJBTV9ERFI0Owo+ICsJCQlicmVhazsKPiArCQljYXNl
IDE6Cj4gKwkJCXFpLT5kcmFtX3R5cGUgPSBJTlRFTF9EUkFNX0REUjM7Cj4gKwkJCWJyZWFrOwo+
ICsJCWNhc2UgMjoKPiArCQkJcWktPmRyYW1fdHlwZSA9IElOVEVMX0RSQU1fTFBERFIzOwo+ICsJ
CQlicmVhazsKPiArCQljYXNlIDM6Cj4gKwkJCXFpLT5kcmFtX3R5cGUgPSBJTlRFTF9EUkFNX0xQ
RERSMzsKPiArCQkJYnJlYWs7Cj4gKwkJZGVmYXVsdDoKPiArCQkJTUlTU0lOR19DQVNFKHZhbCAm
IDB4Zik7Cj4gKwkJCWJyZWFrOwo+ICsJCX0KPiArCX0gZWxzZSB7Cj4gKwkJTUlTU0lOR19DQVNF
KElOVEVMX0dFTihkZXZfcHJpdikpOwo+ICsJCXFpLT5kcmFtX3R5cGUgPSBJTlRFTF9EUkFNX0xQ
RERSMzsgLyogQ29uc2VydmF0aXZlIGRlZmF1bHQgKi8KPiAgCX0KPiAgCj4gIAlxaS0+bnVtX2No
YW5uZWxzID0gKHZhbCAmIDB4ZjApID4+IDQ7Cj4gLS0gCj4gMi4yMi4xCgotLSAKVmlsbGUgU3ly
asOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
