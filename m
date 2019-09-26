Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6543BF319
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 14:36:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A5956ED0D;
	Thu, 26 Sep 2019 12:36:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AC046ED05
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 12:36:19 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 05:36:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,551,1559545200"; d="scan'208";a="180155295"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 26 Sep 2019 05:36:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 26 Sep 2019 15:36:15 +0300
Date: Thu, 26 Sep 2019 15:36:15 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stuart Summers <stuart.summers@intel.com>
Message-ID: <20190926123615.GK1208@intel.com>
References: <20190925210727.38413-1-stuart.summers@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190925210727.38413-1-stuart.summers@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add feature flag for platforms
 with DRAM
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

T24gV2VkLCBTZXAgMjUsIDIwMTkgYXQgMDI6MDc6MjdQTSAtMDcwMCwgU3R1YXJ0IFN1bW1lcnMg
d3JvdGU6CgpObyBjb21taXQgbWVzc2FnZS4KCj4gU2lnbmVkLW9mZi1ieTogU3R1YXJ0IFN1bW1l
cnMgPHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuYyAgICAgICAgICB8IDIgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaCAgICAgICAgICB8IDIgKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2ku
YyAgICAgICAgICB8IDMgKystCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9p
bmZvLmggfCAxICsKPiAgNCBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gaW5kZXggYTllZTczYjYxZjRkLi41
NTJiYTc2MDdlOWEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiBAQCAtMTEyOCw3ICsx
MTI4LDcgQEAgaW50ZWxfZ2V0X2RyYW1faW5mbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpCj4gIAkgKi8KPiAgCWRyYW1faW5mby0+aXNfMTZnYl9kaW1tID0gIUlTX0dFTjlfTFAo
ZGV2X3ByaXYpOwo+ICAKPiAtCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgOSkKPiArCWlmICgh
SEFTX0RSQU0oZGV2X3ByaXYpKQo+ICAJCXJldHVybjsKCkFzIG9wcG9zZWQgdG8gd2hhdD8gU1JB
TT8KCj4gIAo+ICAJaWYgKElTX0dFTjlfTFAoZGV2X3ByaXYpKQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaAo+IGluZGV4IGZjZjc0MjMwNzVlZi4uZTgyY2EzOGJlNTllIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5oCj4gQEAgLTIxNTEsNiArMjE1MSw4IEBAIElTX1NVQlBMQVRGT1JNKGNvbnN0
IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+ICAKPiAgI2RlZmluZSBIQVNfRFBfTVNU
KGRldl9wcml2KQkoSU5URUxfSU5GTyhkZXZfcHJpdiktPmRpc3BsYXkuaGFzX2RwX21zdCkKPiAg
Cj4gKyNkZWZpbmUgSEFTX0RSQU0oZGV2X3ByaXYpCShJTlRFTF9JTkZPKGRldl9wcml2KS0+aGFz
X2RyYW0pCj4gKwo+ICAjZGVmaW5lIEhBU19EREkoZGV2X3ByaXYpCQkgKElOVEVMX0lORk8oZGV2
X3ByaXYpLT5kaXNwbGF5Lmhhc19kZGkpCj4gICNkZWZpbmUgSEFTX0ZQR0FfREJHX1VOQ0xBSU1F
RChkZXZfcHJpdikgKElOVEVMX0lORk8oZGV2X3ByaXYpLT5oYXNfZnBnYV9kYmcpCj4gICNkZWZp
bmUgSEFTX1BTUihkZXZfcHJpdikJCSAoSU5URUxfSU5GTyhkZXZfcHJpdiktPmRpc3BsYXkuaGFz
X3BzcikKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKPiBpbmRleCBlYTUzZGZlMmZiYTAuLjk4ZDdl
MDdkYmE2YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwo+IEBAIC02MDIsNyArNjAyLDgg
QEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBpbnRlbF9jaGVycnl2aWV3
X2luZm8gPSB7Cj4gIAkuZGlzcGxheS5oYXNfY3NyID0gMSwgXAo+ICAJLmhhc19ndF91YyA9IDEs
IFwKPiAgCS5kaXNwbGF5Lmhhc19pcGMgPSAxLCBcCj4gLQkuZGRiX3NpemUgPSA4OTYKPiArCS5k
ZGJfc2l6ZSA9IDg5NiwgXAo+ICsJLmhhc19kcmFtID0gMQo+ICAKPiAgI2RlZmluZSBTS0xfUExB
VEZPUk0gXAo+ICAJR0VOOV9GRUFUVVJFUywgXAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZGV2aWNlX2luZm8uaAo+IGluZGV4IDBjZGMyNDY1NTM0Yi4uYzljODU4MTAwZWEzIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oCj4gQEAgLTEwOSw2ICsxMDks
NyBAQCBlbnVtIGludGVsX3BwZ3R0X3R5cGUgewo+ICAJZnVuYyhyZXF1aXJlX2ZvcmNlX3Byb2Jl
KTsgXAo+ICAJLyogS2VlcCBoYXNfKiBpbiBhbHBoYWJldGljYWwgb3JkZXIgKi8gXAo+ICAJZnVu
YyhoYXNfNjRiaXRfcmVsb2MpOyBcCj4gKwlmdW5jKGhhc19kcmFtKTsgXAo+ICAJZnVuYyhncHVf
cmVzZXRfY2xvYmJlcnNfZGlzcGxheSk7IFwKPiAgCWZ1bmMoaGFzX3Jlc2V0X2VuZ2luZSk7IFwK
PiAgCWZ1bmMoaGFzX2ZwZ2FfZGJnKTsgXAo+IC0tIAo+IDIuMjIuMAo+IAo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gClZpbGxlIFN5cmrD
pGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
