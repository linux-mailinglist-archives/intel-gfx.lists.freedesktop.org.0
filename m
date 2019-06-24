Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21723517DB
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 18:01:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F93089CBC;
	Mon, 24 Jun 2019 16:01:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 239A689CBA
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2019 16:01:26 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jun 2019 09:01:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,412,1557212400"; d="scan'208";a="161649165"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 24 Jun 2019 09:01:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jun 2019 19:01:22 +0300
Date: Mon, 24 Jun 2019 19:01:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20190624160122.GV5942@intel.com>
References: <20190620214613.14481-1-maarten.lankhorst@linux.intel.com>
 <20190620214613.14481-6-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620214613.14481-6-maarten.lankhorst@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/i915: Pass intel state to plane
 functions as well
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

T24gVGh1LCBKdW4gMjAsIDIwMTkgYXQgMTE6NDY6MDlQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFu
a2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2F0b21pY19wbGFuZS5jIHwgMzkgKysrKysrKy0tLS0tLQo+ICAuLi4vZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmggfCAgNSArLQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCA1OCArKysrKysrKystLS0tLS0tLS0t
Cj4gIDMgZmlsZXMgY2hhbmdlZCwgNDkgaW5zZXJ0aW9ucygrKSwgNTMgZGVsZXRpb25zKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWlj
X3BsYW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFu
ZS5jCj4gaW5kZXggMzBiZDRlNzZmZmY5Li4wMjVjMDk0NjFjOWEgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMKPiBAQCAtMTc2
LDMzICsxNzYsMzYgQEAgaW50IGludGVsX3BsYW5lX2F0b21pY19jaGVja193aXRoX3N0YXRlKGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y18KPiAgCW5ld19jcnRjX3N0YXRl
LT5kYXRhX3JhdGVbcGxhbmUtPmlkXSA9Cj4gIAkJaW50ZWxfcGxhbmVfZGF0YV9yYXRlKG5ld19j
cnRjX3N0YXRlLCBuZXdfcGxhbmVfc3RhdGUpOwo+ICAKPiAtCXJldHVybiBpbnRlbF9wbGFuZV9h
dG9taWNfY2FsY19jaGFuZ2VzKG9sZF9jcnRjX3N0YXRlLAo+IC0JCQkJCSAgICAgICAmbmV3X2Ny
dGNfc3RhdGUtPmJhc2UsCj4gLQkJCQkJICAgICAgIG9sZF9wbGFuZV9zdGF0ZSwKPiAtCQkJCQkg
ICAgICAgJm5ld19wbGFuZV9zdGF0ZS0+YmFzZSk7Cj4gKwlyZXR1cm4gaW50ZWxfcGxhbmVfYXRv
bWljX2NhbGNfY2hhbmdlcyhvbGRfY3J0Y19zdGF0ZSwgbmV3X2NydGNfc3RhdGUsCj4gKwkJCQkJ
ICAgICAgIG9sZF9wbGFuZV9zdGF0ZSwgbmV3X3BsYW5lX3N0YXRlKTsKPiAgfQo+ICAKPiAgc3Rh
dGljIGludCBpbnRlbF9wbGFuZV9hdG9taWNfY2hlY2soc3RydWN0IGRybV9wbGFuZSAqcGxhbmUs
Cj4gIAkJCQkgICAgc3RydWN0IGRybV9wbGFuZV9zdGF0ZSAqbmV3X3BsYW5lX3N0YXRlKQo+ICB7
Cj4gLQlzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUgPSBuZXdfcGxhbmVfc3RhdGUtPnN0
YXRlOwo+IC0JY29uc3Qgc3RydWN0IGRybV9wbGFuZV9zdGF0ZSAqb2xkX3BsYW5lX3N0YXRlID0K
PiAtCQlkcm1fYXRvbWljX2dldF9vbGRfcGxhbmVfc3RhdGUoc3RhdGUsIHBsYW5lKTsKPiAtCXN0
cnVjdCBkcm1fY3J0YyAqY3J0YyA9IG5ld19wbGFuZV9zdGF0ZS0+Y3J0YyA/OiBvbGRfcGxhbmVf
c3RhdGUtPmNydGM7Cj4gLQljb25zdCBzdHJ1Y3QgZHJtX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0
YXRlOwo+IC0Jc3RydWN0IGRybV9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZTsKPiAtCj4gLQlu
ZXdfcGxhbmVfc3RhdGUtPnZpc2libGUgPSBmYWxzZTsKPiArCXN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlID0KPiArCQl0b19pbnRlbF9hdG9taWNfc3RhdGUobmV3X3BsYW5lX3N0YXRl
LT5zdGF0ZSk7Cj4gKwljb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKm9sZF9pbnRlbF9w
bGFuZV9zdGF0ZSA9Cj4gKwkJaW50ZWxfYXRvbWljX2dldF9vbGRfcGxhbmVfc3RhdGUoc3RhdGUs
IHRvX2ludGVsX3BsYW5lKHBsYW5lKSk7Cj4gKwlzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKm5l
d19pbnRlbF9wbGFuZV9zdGF0ZSA9Cj4gKwkJdG9faW50ZWxfcGxhbmVfc3RhdGUobmV3X3BsYW5l
X3N0YXRlKTsKCkkgdGhpbmsgd2Ugc2hvdWxkIGRvIHRoZSBfbmV3X3BsYW5lX3N0YXRlIHRyaWNr
IGZvciB0aGUgZnVuY3Rpb24KYXJndW1lbnRzIGFuZCB0aGVuIHVzZSB0aGUgbm9uLXVuZGVyc2Nv
cmUgbmFtZXMgZm9yIHRoZSBpbnRlbCB0eXBlcy4KCj4gKwlzdHJ1Y3QgZHJtX2NydGMgKmNydGMg
PQo+ICsJCW5ld19pbnRlbF9wbGFuZV9zdGF0ZS0+YmFzZS5jcnRjID86IG9sZF9pbnRlbF9wbGFu
ZV9zdGF0ZS0+YmFzZS5jcnRjOwo+ICsJc3RydWN0IGludGVsX2NydGMgKmludGVsX2NydGMgPSBj
cnRjID8gdG9faW50ZWxfY3J0YyhjcnRjKSA6IE5VTEw7Cgo/OiBub3QgbmVlZGVkLiBJIGFsc28g
ZGlzbGlrZSB0aGUgY3J0YyB2cy4gaW50ZWxfY3JjIHRoaW5nLiBNYXliZQpleHRyYWN0IHRoaXMg
bWVzcyBpbnRvIGEgc21hbGwgZnVuY3Rpb24gdGhhdCBqdXN0IHJldHVybnMgdGhlCmludGVsX2Ny
dGMgd2Ugd2FudD8KClJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgoKPiArCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRf
Y3J0Y19zdGF0ZTsKPiArCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZTsK
PiArCj4gKwluZXdfaW50ZWxfcGxhbmVfc3RhdGUtPmJhc2UudmlzaWJsZSA9IGZhbHNlOwo+ICAJ
aWYgKCFjcnRjKQo+ICAJCXJldHVybiAwOwo+ICAKPiAtCW9sZF9jcnRjX3N0YXRlID0gZHJtX2F0
b21pY19nZXRfb2xkX2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOwo+IC0JbmV3X2NydGNfc3RhdGUg
PSBkcm1fYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7Cj4gKwlvbGRfY3J0
Y19zdGF0ZSA9IGludGVsX2F0b21pY19nZXRfb2xkX2NydGNfc3RhdGUoc3RhdGUsIGludGVsX2Ny
dGMpOwo+ICsJbmV3X2NydGNfc3RhdGUgPSBpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRl
KHN0YXRlLCBpbnRlbF9jcnRjKTsKPiAgCj4gLQlyZXR1cm4gaW50ZWxfcGxhbmVfYXRvbWljX2No
ZWNrX3dpdGhfc3RhdGUodG9faW50ZWxfY3J0Y19zdGF0ZShvbGRfY3J0Y19zdGF0ZSksCj4gLQkJ
CQkJCSAgIHRvX2ludGVsX2NydGNfc3RhdGUobmV3X2NydGNfc3RhdGUpLAo+IC0JCQkJCQkgICB0
b19pbnRlbF9wbGFuZV9zdGF0ZShvbGRfcGxhbmVfc3RhdGUpLAo+IC0JCQkJCQkgICB0b19pbnRl
bF9wbGFuZV9zdGF0ZShuZXdfcGxhbmVfc3RhdGUpKTsKPiArCXJldHVybiBpbnRlbF9wbGFuZV9h
dG9taWNfY2hlY2tfd2l0aF9zdGF0ZShvbGRfY3J0Y19zdGF0ZSwKPiArCQkJCQkJICAgbmV3X2Ny
dGNfc3RhdGUsCj4gKwkJCQkJCSAgIG9sZF9pbnRlbF9wbGFuZV9zdGF0ZSwKPiArCQkJCQkJICAg
bmV3X2ludGVsX3BsYW5lX3N0YXRlKTsKPiAgfQo+ICAKPiAgc3RhdGljIHN0cnVjdCBpbnRlbF9w
bGFuZSAqCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YXRvbWljX3BsYW5lLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21p
Y19wbGFuZS5oCj4gaW5kZXggMTQzN2E4Nzk3ZTEwLi5jYjdlZjRmOWVhZmQgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuaAo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmgKPiBA
QCAtOCw3ICs4LDYgQEAKPiAgCj4gICNpbmNsdWRlIDxsaW51eC90eXBlcy5oPgo+ICAKPiAtc3Ry
dWN0IGRybV9jcnRjX3N0YXRlOwo+ICBzdHJ1Y3QgZHJtX3BsYW5lOwo+ICBzdHJ1Y3QgZHJtX3By
b3BlcnR5Owo+ICBzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlOwo+IEBAIC00Myw4ICs0Miw4IEBA
IGludCBpbnRlbF9wbGFuZV9hdG9taWNfY2hlY2tfd2l0aF9zdGF0ZShjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfCj4gIAkJCQkJY29uc3Qgc3RydWN0IGludGVsX3BsYW5l
X3N0YXRlICpvbGRfcGxhbmVfc3RhdGUsCj4gIAkJCQkJc3RydWN0IGludGVsX3BsYW5lX3N0YXRl
ICppbnRlbF9zdGF0ZSk7Cj4gIGludCBpbnRlbF9wbGFuZV9hdG9taWNfY2FsY19jaGFuZ2VzKGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwKPiAtCQkJCSAgICBz
dHJ1Y3QgZHJtX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gKwkJCQkgICAgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gIAkJCQkgICAgY29uc3Qgc3RydWN0IGludGVsX3Bs
YW5lX3N0YXRlICpvbGRfcGxhbmVfc3RhdGUsCj4gLQkJCQkgICAgc3RydWN0IGRybV9wbGFuZV9z
dGF0ZSAqcGxhbmVfc3RhdGUpOwo+ICsJCQkJICAgIHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAq
cGxhbmVfc3RhdGUpOwo+ICAKPiAgI2VuZGlmIC8qIF9fSU5URUxfQVRPTUlDX1BMQU5FX0hfXyAq
Lwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5k
ZXggYmFhMGUxOTU3ZmZlLi41YzFkYjFkM2QxMmIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0xMTI4Niw3ICsxMTI4Niw3IEBAIHN0
YXRpYyB2b2lkIGludGVsX2NydGNfZGVzdHJveShzdHJ1Y3QgZHJtX2NydGMgKmNydGMpCj4gICAq
Cj4gICAqIFJldHVybnMgdHJ1ZSBvciBmYWxzZS4KPiAgICovCj4gLXN0YXRpYyBib29sIGludGVs
X3dtX25lZWRfdXBkYXRlKHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqY3VyLAo+ICtzdGF0aWMg
Ym9vbCBpbnRlbF93bV9uZWVkX3VwZGF0ZShjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUg
KmN1ciwKPiAgCQkJCSBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKm5ldykKPiAgewo+ICAJLyog
VXBkYXRlIHdhdGVybWFya3Mgb24gdGlsaW5nIG9yIHNpemUgY2hhbmdlcy4gKi8KPiBAQCAtMTEz
MTgsMzMgKzExMzE4LDI4IEBAIHN0YXRpYyBib29sIG5lZWRzX3NjYWxpbmcoY29uc3Qgc3RydWN0
IGludGVsX3BsYW5lX3N0YXRlICpzdGF0ZSkKPiAgfQo+ICAKPiAgaW50IGludGVsX3BsYW5lX2F0
b21pY19jYWxjX2NoYW5nZXMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRj
X3N0YXRlLAo+IC0JCQkJICAgIHN0cnVjdCBkcm1fY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiAr
CQkJCSAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiAgCQkJCSAgICBj
b25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKm9sZF9wbGFuZV9zdGF0ZSwKPiAtCQkJCSAg
ICBzdHJ1Y3QgZHJtX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKPiArCQkJCSAgICBzdHJ1Y3Qg
aW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQo+ICB7Cj4gLQlzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqcGlwZV9jb25maWcgPSB0b19pbnRlbF9jcnRjX3N0YXRlKGNydGNfc3RhdGUpOwo+
IC0Jc3RydWN0IGRybV9jcnRjICpjcnRjID0gY3J0Y19zdGF0ZS0+Y3J0YzsKPiAtCXN0cnVjdCBp
bnRlbF9jcnRjICppbnRlbF9jcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjKTsKPiAtCXN0cnVjdCBp
bnRlbF9wbGFuZSAqcGxhbmUgPSB0b19pbnRlbF9wbGFuZShwbGFuZV9zdGF0ZS0+cGxhbmUpOwo+
IC0Jc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IGNydGMtPmRldjsKPiAtCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKPiAtCWJvb2wgbW9kZV9jaGFuZ2Vk
ID0gbmVlZHNfbW9kZXNldChwaXBlX2NvbmZpZyk7Cj4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+YmFzZS5jcnRjKTsKPiArCXN0cnVjdCBpbnRl
bF9wbGFuZSAqcGxhbmUgPSB0b19pbnRlbF9wbGFuZShwbGFuZV9zdGF0ZS0+YmFzZS5wbGFuZSk7
Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJh
c2UuZGV2KTsKPiArCWJvb2wgbW9kZV9jaGFuZ2VkID0gbmVlZHNfbW9kZXNldChjcnRjX3N0YXRl
KTsKPiAgCWJvb2wgd2FzX2NydGNfZW5hYmxlZCA9IG9sZF9jcnRjX3N0YXRlLT5iYXNlLmFjdGl2
ZTsKPiAtCWJvb2wgaXNfY3J0Y19lbmFibGVkID0gY3J0Y19zdGF0ZS0+YWN0aXZlOwo+ICsJYm9v
bCBpc19jcnRjX2VuYWJsZWQgPSBjcnRjX3N0YXRlLT5iYXNlLmFjdGl2ZTsKPiAgCWJvb2wgdHVy
bl9vZmYsIHR1cm5fb24sIHZpc2libGUsIHdhc192aXNpYmxlOwo+IC0Jc3RydWN0IGRybV9mcmFt
ZWJ1ZmZlciAqZmIgPSBwbGFuZV9zdGF0ZS0+ZmI7Cj4gKwlzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVy
ICpmYiA9IHBsYW5lX3N0YXRlLT5iYXNlLmZiOwo+ICAJaW50IHJldDsKPiAgCj4gIAlpZiAoSU5U
RUxfR0VOKGRldl9wcml2KSA+PSA5ICYmIHBsYW5lLT5pZCAhPSBQTEFORV9DVVJTT1IpIHsKPiAt
CQlyZXQgPSBza2xfdXBkYXRlX3NjYWxlcl9wbGFuZSgKPiAtCQkJdG9faW50ZWxfY3J0Y19zdGF0
ZShjcnRjX3N0YXRlKSwKPiAtCQkJdG9faW50ZWxfcGxhbmVfc3RhdGUocGxhbmVfc3RhdGUpKTsK
PiArCQlyZXQgPSBza2xfdXBkYXRlX3NjYWxlcl9wbGFuZShjcnRjX3N0YXRlLCBwbGFuZV9zdGF0
ZSk7Cj4gIAkJaWYgKHJldCkKPiAgCQkJcmV0dXJuIHJldDsKPiAgCX0KPiAgCj4gIAl3YXNfdmlz
aWJsZSA9IG9sZF9wbGFuZV9zdGF0ZS0+YmFzZS52aXNpYmxlOwo+IC0JdmlzaWJsZSA9IHBsYW5l
X3N0YXRlLT52aXNpYmxlOwo+ICsJdmlzaWJsZSA9IHBsYW5lX3N0YXRlLT5iYXNlLnZpc2libGU7
Cj4gIAo+ICAJaWYgKCF3YXNfY3J0Y19lbmFibGVkICYmIFdBUk5fT04od2FzX3Zpc2libGUpKQo+
ICAJCXdhc192aXNpYmxlID0gZmFsc2U7Cj4gQEAgLTExMzYwLDIyICsxMTM1NSwyMiBAQCBpbnQg
aW50ZWxfcGxhbmVfYXRvbWljX2NhbGNfY2hhbmdlcyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqb2xkX2NydGNfc3RhdAo+ICAJICogb25seSBjb21iaW5lIHRoZSByZXN1bHRzIGZyb20g
YWxsIHBsYW5lcyBpbiB0aGUgY3VycmVudCBwbGFjZT8KPiAgCSAqLwo+ICAJaWYgKCFpc19jcnRj
X2VuYWJsZWQpIHsKPiAtCQlwbGFuZV9zdGF0ZS0+dmlzaWJsZSA9IHZpc2libGUgPSBmYWxzZTsK
PiAtCQl0b19pbnRlbF9jcnRjX3N0YXRlKGNydGNfc3RhdGUpLT5hY3RpdmVfcGxhbmVzICY9IH5C
SVQocGxhbmUtPmlkKTsKPiAtCQl0b19pbnRlbF9jcnRjX3N0YXRlKGNydGNfc3RhdGUpLT5kYXRh
X3JhdGVbcGxhbmUtPmlkXSA9IDA7Cj4gKwkJcGxhbmVfc3RhdGUtPmJhc2UudmlzaWJsZSA9IHZp
c2libGUgPSBmYWxzZTsKPiArCQljcnRjX3N0YXRlLT5hY3RpdmVfcGxhbmVzICY9IH5CSVQocGxh
bmUtPmlkKTsKPiArCQljcnRjX3N0YXRlLT5kYXRhX3JhdGVbcGxhbmUtPmlkXSA9IDA7Cj4gIAl9
Cj4gIAo+ICAJaWYgKCF3YXNfdmlzaWJsZSAmJiAhdmlzaWJsZSkKPiAgCQlyZXR1cm4gMDsKPiAg
Cj4gIAlpZiAoZmIgIT0gb2xkX3BsYW5lX3N0YXRlLT5iYXNlLmZiKQo+IC0JCXBpcGVfY29uZmln
LT5mYl9jaGFuZ2VkID0gdHJ1ZTsKPiArCQljcnRjX3N0YXRlLT5mYl9jaGFuZ2VkID0gdHJ1ZTsK
PiAgCj4gIAl0dXJuX29mZiA9IHdhc192aXNpYmxlICYmICghdmlzaWJsZSB8fCBtb2RlX2NoYW5n
ZWQpOwo+ICAJdHVybl9vbiA9IHZpc2libGUgJiYgKCF3YXNfdmlzaWJsZSB8fCBtb2RlX2NoYW5n
ZWQpOwo+ICAKPiAgCURSTV9ERUJVR19BVE9NSUMoIltDUlRDOiVkOiVzXSBoYXMgW1BMQU5FOiVk
OiVzXSB3aXRoIGZiICVpXG4iLAo+IC0JCQkgaW50ZWxfY3J0Yy0+YmFzZS5iYXNlLmlkLCBpbnRl
bF9jcnRjLT5iYXNlLm5hbWUsCj4gKwkJCSBjcnRjLT5iYXNlLmJhc2UuaWQsIGNydGMtPmJhc2Uu
bmFtZSwKPiAgCQkJIHBsYW5lLT5iYXNlLmJhc2UuaWQsIHBsYW5lLT5iYXNlLm5hbWUsCj4gIAkJ
CSBmYiA/IGZiLT5iYXNlLmlkIDogLTEpOwo+ICAKPiBAQCAtMTEzODYsMjkgKzExMzgxLDI4IEBA
IGludCBpbnRlbF9wbGFuZV9hdG9taWNfY2FsY19jaGFuZ2VzKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0Cj4gIAo+ICAJaWYgKHR1cm5fb24pIHsKPiAgCQlpZiAo
SU5URUxfR0VOKGRldl9wcml2KSA8IDUgJiYgIUlTX0c0WChkZXZfcHJpdikpCj4gLQkJCXBpcGVf
Y29uZmlnLT51cGRhdGVfd21fcHJlID0gdHJ1ZTsKPiArCQkJY3J0Y19zdGF0ZS0+dXBkYXRlX3dt
X3ByZSA9IHRydWU7Cj4gIAo+ICAJCS8qIG11c3QgZGlzYWJsZSBjeHNyIGFyb3VuZCBwbGFuZSBl
bmFibGUvZGlzYWJsZSAqLwo+ICAJCWlmIChwbGFuZS0+aWQgIT0gUExBTkVfQ1VSU09SKQo+IC0J
CQlwaXBlX2NvbmZpZy0+ZGlzYWJsZV9jeHNyID0gdHJ1ZTsKPiArCQkJY3J0Y19zdGF0ZS0+ZGlz
YWJsZV9jeHNyID0gdHJ1ZTsKPiAgCX0gZWxzZSBpZiAodHVybl9vZmYpIHsKPiAgCQlpZiAoSU5U
RUxfR0VOKGRldl9wcml2KSA8IDUgJiYgIUlTX0c0WChkZXZfcHJpdikpCj4gLQkJCXBpcGVfY29u
ZmlnLT51cGRhdGVfd21fcG9zdCA9IHRydWU7Cj4gKwkJCWNydGNfc3RhdGUtPnVwZGF0ZV93bV9w
b3N0ID0gdHJ1ZTsKPiAgCj4gIAkJLyogbXVzdCBkaXNhYmxlIGN4c3IgYXJvdW5kIHBsYW5lIGVu
YWJsZS9kaXNhYmxlICovCj4gIAkJaWYgKHBsYW5lLT5pZCAhPSBQTEFORV9DVVJTT1IpCj4gLQkJ
CXBpcGVfY29uZmlnLT5kaXNhYmxlX2N4c3IgPSB0cnVlOwo+IC0JfSBlbHNlIGlmIChpbnRlbF93
bV9uZWVkX3VwZGF0ZSh0b19pbnRlbF9wbGFuZV9zdGF0ZShwbGFuZS0+YmFzZS5zdGF0ZSksCj4g
LQkJCQkJdG9faW50ZWxfcGxhbmVfc3RhdGUocGxhbmVfc3RhdGUpKSkgewo+ICsJCQljcnRjX3N0
YXRlLT5kaXNhYmxlX2N4c3IgPSB0cnVlOwo+ICsJfSBlbHNlIGlmIChpbnRlbF93bV9uZWVkX3Vw
ZGF0ZShvbGRfcGxhbmVfc3RhdGUsIHBsYW5lX3N0YXRlKSkgewo+ICAJCWlmIChJTlRFTF9HRU4o
ZGV2X3ByaXYpIDwgNSAmJiAhSVNfRzRYKGRldl9wcml2KSkgewo+ICAJCQkvKiBGSVhNRSBib2xs
b2NrcyAqLwo+IC0JCQlwaXBlX2NvbmZpZy0+dXBkYXRlX3dtX3ByZSA9IHRydWU7Cj4gLQkJCXBp
cGVfY29uZmlnLT51cGRhdGVfd21fcG9zdCA9IHRydWU7Cj4gKwkJCWNydGNfc3RhdGUtPnVwZGF0
ZV93bV9wcmUgPSB0cnVlOwo+ICsJCQljcnRjX3N0YXRlLT51cGRhdGVfd21fcG9zdCA9IHRydWU7
Cj4gIAkJfQo+ICAJfQo+ICAKPiAgCWlmICh2aXNpYmxlIHx8IHdhc192aXNpYmxlKQo+IC0JCXBp
cGVfY29uZmlnLT5mYl9iaXRzIHw9IHBsYW5lLT5mcm9udGJ1ZmZlcl9iaXQ7Cj4gKwkJY3J0Y19z
dGF0ZS0+ZmJfYml0cyB8PSBwbGFuZS0+ZnJvbnRidWZmZXJfYml0Owo+ICAKPiAgCS8qCj4gIAkg
KiBJTEsvU05CIERWU0FDTlRSL1Nwcml0ZSBFbmFibGUKPiBAQCAtMTE0NDcsOCArMTE0NDEsOCBA
QCBpbnQgaW50ZWxfcGxhbmVfYXRvbWljX2NhbGNfY2hhbmdlcyhjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdAo+ICAJICAgIChJU19HRU5fUkFOR0UoZGV2X3ByaXYs
IDUsIDYpIHx8Cj4gIAkgICAgIElTX0lWWUJSSURHRShkZXZfcHJpdikpICYmCj4gIAkgICAgKHR1
cm5fb24gfHwgKCFuZWVkc19zY2FsaW5nKG9sZF9wbGFuZV9zdGF0ZSkgJiYKPiAtCQkJIG5lZWRz
X3NjYWxpbmcodG9faW50ZWxfcGxhbmVfc3RhdGUocGxhbmVfc3RhdGUpKSkpKQo+IC0JCXBpcGVf
Y29uZmlnLT5kaXNhYmxlX2xwX3dtID0gdHJ1ZTsKPiArCQkJIG5lZWRzX3NjYWxpbmcocGxhbmVf
c3RhdGUpKSkpCj4gKwkJY3J0Y19zdGF0ZS0+ZGlzYWJsZV9scF93bSA9IHRydWU7Cj4gIAo+ICAJ
cmV0dXJuIDA7Cj4gIH0KPiAtLSAKPiAyLjIwLjEKPiAKPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
