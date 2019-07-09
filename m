Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9C263960
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 18:28:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B96218972D;
	Tue,  9 Jul 2019 16:28:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B5488972D
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 16:28:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 09:28:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="364640403"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.8.246])
 by fmsmga006.fm.intel.com with ESMTP; 09 Jul 2019 09:28:54 -0700
Date: Tue, 9 Jul 2019 09:28:53 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20190709162853.trljxpm6sl7vn3os@ldmartin-desk1>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
 <20190708231629.9296-17-lucas.demarchi@intel.com>
 <20190709121108.GF16315@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709121108.GF16315@intel.com>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH v2 16/25] drm/i915/tgl: port to ddc pin
 mapping
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdWwgMDksIDIwMTkgYXQgMDU6MTE6MDhBTSAtMDcwMCwgUm9kcmlnbyBWaXZpIHdy
b3RlOgo+T24gTW9uLCBKdWwgMDgsIDIwMTkgYXQgMDQ6MTY6MjBQTSAtMDcwMCwgTHVjYXMgRGUg
TWFyY2hpIHdyb3RlOgo+PiBGcm9tOiBNYWhlc2ggS3VtYXIgPG1haGVzaDEua3VtYXJAaW50ZWwu
Y29tPgo+Pgo+PiBDcmVhdGUgYSBoZWxwZXIgZnVuY3Rpb24gdG8gZ2V0IGRkYyBwaW4gYWNjb3Jk
aW5nIHRvIHBvcnQgbnVtYmVyLgo+Cj5Db3VsZCB5b3UgcGxlYXNlIGV4cGxhaW4gd2h5IHdlIGNh
bid0IHNpbXBseSByZXVzZSB0aGUgaWNsIG9uZT8KPgo+SSBjb3VsZG4ndCBmaW5kIGEgbmV3IHRh
YmxlIGZvciB0Z2wgb24gYnNwZWMuLi4KPgo+Pgo+PiBDYzogQW51c2hhIFNyaXZhdHNhIDxhbnVz
aGEuc3JpdmF0c2FAaW50ZWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBNYWhlc2ggS3VtYXIgPG1h
aGVzaDEua3VtYXJAaW50ZWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkg
PGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2hkbWkuYyB8IDE2ICsrKysrKysrKysrKysrKy0KPj4gIDEgZmlsZSBj
aGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCj4+IGluZGV4IDBlYmVjNjliYmJmYy4uM2Iz
M2U3NjI2ZDdjIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2hkbWkuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hk
bWkuYwo+PiBAQCAtMjk4MSw2ICsyOTgxLDE4IEBAIHN0YXRpYyB1OCBtY2NfcG9ydF90b19kZGNf
cGluKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwb3J0IHBvcnQpCj4+
ICAJcmV0dXJuIGRkY19waW47Cj4+ICB9Cj4+Cj4+ICtzdGF0aWMgdTggdGdwX3BvcnRfdG9fZGRj
X3BpbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4+ICsJCQkgICAgICBlbnVt
IHBvcnQgcG9ydCkKPj4gK3sKPj4gKwlpZiAoaW50ZWxfcG9ydF9pc19jb21ib3BoeShkZXZfcHJp
diwgcG9ydCkpCj4+ICsJCXJldHVybiBHTUJVU19QSU5fMV9CWFQgKyBwb3J0Owo+PiArCWVsc2Ug
aWYgKGludGVsX3BvcnRfaXNfdGMoZGV2X3ByaXYsIHBvcnQpKQo+PiArCQlyZXR1cm4gR01CVVNf
UElOXzlfVEMxX0lDUCArIGludGVsX3BvcnRfdG9fdGMoZGV2X3ByaXYsIHBvcnQpOwo+Cj5va2F5
LCB0aGlzIHNlZW1zIGJldHRlciB0aGFuIHRoZSB0YWJsZSB3ZSBoYXZlIG9uIGljbCBmdW5jLAo+
YnV0IGNvdWxkbid0IHdlIGp1c3QgY2hhbmdlIHRoZSBpY2wgb25lPwoKSSB0aGluayBpbml0aWFs
bHkgd2UgaGFkIGl0IGltcGxlbWVudGVkIGxpa2UgaW4gdGhlIGljbCBmdW5jdGlvbiwgYW5kIG9u
CnRnbCB3ZSBoYXZlIHRoZSBhZGRpdGlvbmFsIGNvbWJvIHBvcnQuIFdpdGggdGhlIHJld29ya3Mg
dG8gdXNlCmludGVsX3BvcnRfdG9fdGMoKSBJIGRpZG4ndCByZWFsaXplIHRoaXMgbm93IGFwcGxp
ZXMgdG8gaWNsIGFzIHdlbGwuCgpJIHdpbGwgY2hhbmdlIGl0IGluIG5leHQgdmVyc2lvbi4KClRo
YW5rcwpMdWNhcyBEZSBNYXJjaGkKCj4KPj4gKwo+PiArCVdBUk4oMSwgIlVua25vd24gcG9ydDol
Y1xuIiwgcG9ydF9uYW1lKHBvcnQpKTsKPj4gKwlyZXR1cm4gR01CVVNfUElOXzJfQlhUOwo+PiAr
fQo+PiArCj4+ICBzdGF0aWMgdTggZzR4X3BvcnRfdG9fZGRjX3BpbihzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsCj4+ICAJCQkgICAgICBlbnVtIHBvcnQgcG9ydCkKPj4gIHsKPj4g
QEAgLTMwMTcsNyArMzAyOSw5IEBAIHN0YXRpYyB1OCBpbnRlbF9oZG1pX2RkY19waW4oc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+PiAgCQlyZXR1cm4gaW5mby0+YWx0ZXJuYXRl
X2RkY19waW47Cj4+ICAJfQo+Pgo+PiAtCWlmIChIQVNfUENIX01DQyhkZXZfcHJpdikpCj4+ICsJ
aWYgKEhBU19QQ0hfVEdQKGRldl9wcml2KSkKPj4gKwkJZGRjX3BpbiA9IHRncF9wb3J0X3RvX2Rk
Y19waW4oZGV2X3ByaXYsIHBvcnQpOwo+PiArCWVsc2UgaWYgKEhBU19QQ0hfTUNDKGRldl9wcml2
KSkKPj4gIAkJZGRjX3BpbiA9IG1jY19wb3J0X3RvX2RkY19waW4oZGV2X3ByaXYsIHBvcnQpOwo+
PiAgCWVsc2UgaWYgKEhBU19QQ0hfSUNQKGRldl9wcml2KSkKPj4gIAkJZGRjX3BpbiA9IGljbF9w
b3J0X3RvX2RkY19waW4oZGV2X3ByaXYsIHBvcnQpOwo+PiAtLQo+PiAyLjIxLjAKPj4KPj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdAo+PiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+IGh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
