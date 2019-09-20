Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FD5B90A7
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 15:28:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E7EC6FCFA;
	Fri, 20 Sep 2019 13:28:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9D2D6FCFA
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 13:28:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 06:28:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,528,1559545200"; d="scan'208";a="212569539"
Received: from jausmus-gentoo-dev6.jf.intel.com ([10.54.75.43])
 by fmsmga004.fm.intel.com with ESMTP; 20 Sep 2019 06:28:55 -0700
Date: Fri, 20 Sep 2019 06:29:27 -0700
From: James Ausmus <james.ausmus@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Message-ID: <20190920132927.GB16048@jausmus-gentoo-dev6.jf.intel.com>
References: <20190919221640.25073-1-james.ausmus@intel.com>
 <20190920122906.GY1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920122906.GY1208@intel.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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

T24gRnJpLCBTZXAgMjAsIDIwMTkgYXQgMDM6Mjk6MDZQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIFRodSwgU2VwIDE5LCAyMDE5IGF0IDAzOjE2OjQwUE0gLTA3MDAsIEphbWVz
IEF1c211cyB3cm90ZToKPiA+IFRoZSBtZW1vcnkgdHlwZSB2YWx1ZXMgaGF2ZSBjaGFuZ2VkIGlu
IFRHTCwgc28gd2UgbmVlZCB0byB0cmFuc2xhdGUgdGhlbQo+ID4gZGlmZmVyZW50bHkgdGhhbiBJ
Q0wuCj4gPiAKPiA+IEJTcGVjOiA1Mzk5OAo+ID4gCj4gPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+IENjOiBTdGFuaXNsYXYgTGlzb3Zza2l5
IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IEphbWVz
IEF1c211cyA8amFtZXMuYXVzbXVzQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYyB8IDU5ICsrKysrKysrKysrKysrKysrKy0tLS0t
LS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNDMgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0p
Cj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2J3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMKPiA+IGluZGV4
IDY4ODg1OGViZTRkMC4uMTEyMjRkOWE2NzUyIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2J3LmMKPiA+IEBAIC0zNSwyMiArMzUsNDkgQEAgc3RhdGljIGludCBp
Y2xfcGNvZGVfcmVhZF9tZW1fZ2xvYmFsX2luZm8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAo+ID4gIAlpZiAocmV0KQo+ID4gIAkJcmV0dXJuIHJldDsKPiA+ICAKPiA+IC0Jc3dp
dGNoICh2YWwgJiAweGYpIHsKPiA+IC0JY2FzZSAwOgo+ID4gLQkJcWktPmRyYW1fdHlwZSA9IElO
VEVMX0RSQU1fRERSNDsKPiA+IC0JCWJyZWFrOwo+ID4gLQljYXNlIDE6Cj4gPiAtCQlxaS0+ZHJh
bV90eXBlID0gSU5URUxfRFJBTV9ERFIzOwo+ID4gLQkJYnJlYWs7Cj4gPiAtCWNhc2UgMjoKPiA+
IC0JCXFpLT5kcmFtX3R5cGUgPSBJTlRFTF9EUkFNX0xQRERSMzsKPiA+IC0JCWJyZWFrOwo+ID4g
LQljYXNlIDM6Cj4gPiAtCQlxaS0+ZHJhbV90eXBlID0gSU5URUxfRFJBTV9MUEREUjM7Cj4gCj4g
VGhpcyBzaG91bGQgYmUgTFBERFI0IGFjdHVhbGx5LiBEb2Vzbid0IHJlYWxseSBtYXR0ZXIgYnV0
IHdvdWxkIGJlIG5pY2UKPiB0byBmaXggYXMgd2VsbC4KCkVpdGhlciBteSBnaXQgc2VuZC1lbWFp
bCBjb25maWcgb3IgdGhlIE1MIHNlZW1zIHRvIGJlIGVhdGluZyBteSBvcmlnaW5hbApwYXRjaCBt
YWlsLCBhbmQgaXQncyBub3QgaGl0dGluZyB0aGUgbGlzdCwgcGF0Y2h3b3JrLCBvciBDSSwgc28g
d2lsbApoYXZlIHRvIHNlbmQgYSB2MiBhbnl3YXkgYW5kIEkgd2lsbCBmaXggdGhpcyB1cCBpbiB0
aGF0LgoKPiAKPiA+IC0JCWJyZWFrOwo+ID4gLQlkZWZhdWx0Ogo+ID4gLQkJTUlTU0lOR19DQVNF
KHZhbCAmIDB4Zik7Cj4gPiAtCQlicmVhazsKPiA+ICsJaWYgKElTX0dFTihkZXZfcHJpdiwgMTIp
KSB7Cj4gPiArCQlzd2l0Y2ggKHZhbCAmIDB4Zikgewo+ID4gKwkJY2FzZSAwOgo+ID4gKwkJCXFp
LT5kcmFtX3R5cGUgPSBJTlRFTF9EUkFNX0REUjQ7Cj4gPiArCQkJYnJlYWs7Cj4gPiArCQljYXNl
IDM6Cj4gPiArCQkJcWktPmRyYW1fdHlwZSA9IElOVEVMX0RSQU1fTFBERFI0Owo+ID4gKwkJCWJy
ZWFrOwo+ID4gKwkJY2FzZSA0Ogo+ID4gKwkJCXFpLT5kcmFtX3R5cGUgPSBJTlRFTF9EUkFNX0RE
UjM7Cj4gPiArCQkJYnJlYWs7Cj4gPiArCQljYXNlIDU6Cj4gPiArCQkJcWktPmRyYW1fdHlwZSA9
IElOVEVMX0RSQU1fTFBERFIzOwo+ID4gKwkJCWJyZWFrOwo+ID4gKwkJY2FzZSAxOgo+ID4gKwkJ
Y2FzZSAyOgo+ID4gKwkJCS8qIFVuaW1wbGVtZW50ZWQgKi8KPiAKPiBTZWVtcyBwb2ludGxlc3Mg
dG8gbGlzdCB0aGVzZS4KCldpbGwgZHJvcCBpbiB2Mi4KCj4gCj4gVGhlIG51bWJlcnMgbWF0Y2gg
YnNwZWMuIFVuZm9ydHVuYXRsZXkgSSBjYW4ndCBnZXQgdGdsCj4gY29uZmlnZGIgdG8gY29vcGVy
YXRlIHNvIGNhbid0IGRvdWJsZSBjaGVjayBhZ2FpbnN0IHRoZQo+IE1DIHJlZ2lzdGVyIGRlZmlu
aXRpb24uCj4gCj4gUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+CgpUaGFua3MhCgotSmFtZXMKCj4gCj4gPiArCQkJLyogZmFsbCB0aHJv
dWdoICovCj4gPiArCQlkZWZhdWx0Ogo+ID4gKwkJCU1JU1NJTkdfQ0FTRSh2YWwgJiAweGYpOwo+
ID4gKwkJCWJyZWFrOwo+ID4gKwkJfQo+ID4gKwl9IGVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwg
MTEpKSB7Cj4gPiArCQlzd2l0Y2ggKHZhbCAmIDB4Zikgewo+ID4gKwkJY2FzZSAwOgo+ID4gKwkJ
CXFpLT5kcmFtX3R5cGUgPSBJTlRFTF9EUkFNX0REUjQ7Cj4gPiArCQkJYnJlYWs7Cj4gPiArCQlj
YXNlIDE6Cj4gPiArCQkJcWktPmRyYW1fdHlwZSA9IElOVEVMX0RSQU1fRERSMzsKPiA+ICsJCQli
cmVhazsKPiA+ICsJCWNhc2UgMjoKPiA+ICsJCQlxaS0+ZHJhbV90eXBlID0gSU5URUxfRFJBTV9M
UEREUjM7Cj4gPiArCQkJYnJlYWs7Cj4gPiArCQljYXNlIDM6Cj4gPiArCQkJcWktPmRyYW1fdHlw
ZSA9IElOVEVMX0RSQU1fTFBERFIzOwo+ID4gKwkJCWJyZWFrOwo+ID4gKwkJZGVmYXVsdDoKPiA+
ICsJCQlNSVNTSU5HX0NBU0UodmFsICYgMHhmKTsKPiA+ICsJCQlicmVhazsKPiA+ICsJCX0KPiA+
ICsJfSBlbHNlIHsKPiA+ICsJCU1JU1NJTkdfQ0FTRShJTlRFTF9HRU4oZGV2X3ByaXYpKTsKPiA+
ICsJCXFpLT5kcmFtX3R5cGUgPSBJTlRFTF9EUkFNX0xQRERSMzsgLyogQ29uc2VydmF0aXZlIGRl
ZmF1bHQgKi8KPiA+ICAJfQo+ID4gIAo+ID4gIAlxaS0+bnVtX2NoYW5uZWxzID0gKHZhbCAmIDB4
ZjApID4+IDQ7Cj4gPiAtLSAKPiA+IDIuMjIuMQo+IAo+IC0tIAo+IFZpbGxlIFN5cmrDpGzDpAo+
IEludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
