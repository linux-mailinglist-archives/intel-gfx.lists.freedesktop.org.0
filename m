Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91940E8F5E
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 19:36:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D60FB6E58A;
	Tue, 29 Oct 2019 18:36:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D08706E58A
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 18:36:00 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 11:36:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,244,1569308400"; d="scan'208";a="211157887"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 29 Oct 2019 11:35:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Oct 2019 20:35:57 +0200
Date: Tue, 29 Oct 2019 20:35:57 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20191029183557.GE1208@intel.com>
References: <20191029072229.27092-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029072229.27092-1-maarten.lankhorst@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [CI 01/12] drm/i915: Introduce
 intel_atomic_get_plane_state_after_check(), v2.
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

T24gVHVlLCBPY3QgMjksIDIwMTkgYXQgMDg6MjI6MThBTSArMDEwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gVXNlIHRoaXMgaW4gYWxsIHRoZSBwbGFjZXMgd2hlcmUgd2UgdHJ5IHRvIGFj
cXVpcmUgcGxhbmVzIGFmdGVyIHRoZSBwbGFuZXMKPiBhdG9taWNfY2hlY2soKS4KPiAKPiBJbiBj
YXNlIG9mIGludGVsX21vZGVzZXRfYWxsX3BpcGVzKCkgdGhpcyBpcyBub3QgeWV0IGRvbmUgYWZ0
ZXIgYXRvbWljX2NoZWNrLAo+IGJ1dCBzZWVtcyBsaWtlIGl0IHdpbGwgYmUgaW4gdGhlIGZ1dHVy
ZS4gVG8gYWRkIHNvbWUgcGFyYW5vaWEsIGFkZCBhbGwgcGxhbmVzCj4gcmF0aGVyIHRoYW4gYWN0
aXZlIHBsYW5lcywgYmVjYXVzZSBvZiBiaWdqb2luZXIgYW5kIHBsYW5hciBZVVYgc3VwcG9ydCBo
YXZpbmcKPiBleHRyYSBwbGFuZXMgb3V0c2lkZSBvZiB0aGUgY29yZSdzIHZpZXcgdGhhdCB3b3Vs
ZG4ndCBiZSBhZGRlZCBvdGhlcndpc2UuCj4gCj4gQ2hhbmdlcyBzaW5jZSB2MToKPiAtIEFsd2F5
cyBhZGQgYWxsIHBsYW5lcywgdG8gaGFuZGxlIGZvcmNlIHBsYW5lIHVwZGF0ZXMgdG8gd29yayBj
b3JyZWN0bHkKPiAgIHdpdGggYSBkaXNhYmxlZCBjdXJzb3IgcGxhbmUuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNv
bT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYyAg
IHwgNDEgKysrKysrKysrLS0tLS0tLS0tLQo+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYXRvbWljX3BsYW5lLmMgfCAxNSArKysrKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY2RjbGsuYyAgICB8IDE1ICsrKystLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jICAgIHwgIDcgKystLQo+ICAuLi4vZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgNiArKysKPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcG0uYyAgICAgICAgICAgICAgIHwgMTQgKysrKy0tLQo+ICA2IGZpbGVzIGNo
YW5nZWQsIDYyIGluc2VydGlvbnMoKyksIDM2IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYwo+IGluZGV4IDljZDZkMjM0OGExZS4u
ODBkZjZjMjMzNTgxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYXRvbWljLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2F0b21pYy5jCj4gQEAgLTMxMywxMyArMzEzLDEwIEBAIGludCBpbnRlbF9hdG9taWNfc2V0dXBf
c2NhbGVycyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAkJCSAgICAgICBz
dHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxfY3J0YywKPiAgCQkJICAgICAgIHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICB7Cj4gLQlzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSA9
IE5VTEw7Cj4gLQlzdHJ1Y3QgaW50ZWxfcGxhbmUgKmludGVsX3BsYW5lOwo+IC0Jc3RydWN0IGlu
dGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSA9IE5VTEw7Cj4gIAlzdHJ1Y3QgaW50ZWxfY3J0
Y19zY2FsZXJfc3RhdGUgKnNjYWxlcl9zdGF0ZSA9Cj4gIAkJJmNydGNfc3RhdGUtPnNjYWxlcl9z
dGF0ZTsKPiAgCXN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpkcm1fc3RhdGUgPSBjcnRjX3N0YXRl
LT5iYXNlLnN0YXRlOwo+IC0Jc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqaW50ZWxfc3RhdGUg
PSB0b19pbnRlbF9hdG9taWNfc3RhdGUoZHJtX3N0YXRlKTsKPiArCXN0cnVjdCBpbnRlbF9hdG9t
aWNfc3RhdGUgKnN0YXRlID0gdG9faW50ZWxfYXRvbWljX3N0YXRlKGRybV9zdGF0ZSk7Cj4gIAlp
bnQgbnVtX3NjYWxlcnNfbmVlZDsKPiAgCWludCBpOwo+ICAKPiBAQCAtMzQ2LDYgKzM0Myw3IEBA
IGludCBpbnRlbF9hdG9taWNfc2V0dXBfc2NhbGVycyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsCj4gIAo+ICAJLyogd2Fsa3Rocm91Z2ggc2NhbGVyX3VzZXJzIGJpdHMgYW5kIHN0
YXJ0IGFzc2lnbmluZyBzY2FsZXJzICovCj4gIAlmb3IgKGkgPSAwOyBpIDwgc2l6ZW9mKHNjYWxl
cl9zdGF0ZS0+c2NhbGVyX3VzZXJzKSAqIDg7IGkrKykgewo+ICsJCXN0cnVjdCBpbnRlbF9wbGFu
ZV9zdGF0ZSAqcGxhbmVfc3RhdGUgPSBOVUxMOwo+ICAJCWludCAqc2NhbGVyX2lkOwo+ICAJCWNv
bnN0IGNoYXIgKm5hbWU7Cj4gIAkJaW50IGlkeDsKPiBAQCAtMzYxLDE5ICszNTksMTYgQEAgaW50
IGludGVsX2F0b21pY19zZXR1cF9zY2FsZXJzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwKPiAgCQkJLyogcGFuZWwgZml0dGVyIGNhc2U6IGFzc2lnbiBhcyBhIGNydGMgc2NhbGVy
ICovCj4gIAkJCXNjYWxlcl9pZCA9ICZzY2FsZXJfc3RhdGUtPnNjYWxlcl9pZDsKPiAgCQl9IGVs
c2Ugewo+IC0JCQluYW1lID0gIlBMQU5FIjsKPiArCQkJc3RydWN0IGludGVsX3BsYW5lICpwbGFu
ZTsKPiAgCj4gIAkJCS8qIHBsYW5lIHNjYWxlciBjYXNlOiBhc3NpZ24gYXMgYSBwbGFuZSBzY2Fs
ZXIgKi8KPiAgCQkJLyogZmluZCB0aGUgcGxhbmUgdGhhdCBzZXQgdGhlIGJpdCBhcyBzY2FsZXJf
dXNlciAqLwo+IC0JCQlwbGFuZSA9IGRybV9zdGF0ZS0+cGxhbmVzW2ldLnB0cjsKPiAgCj4gIAkJ
CS8qCj4gIAkJCSAqIHRvIGVuYWJsZS9kaXNhYmxlIGhxIG1vZGUsIGFkZCBwbGFuZXMgdGhhdCBh
cmUgdXNpbmcgc2NhbGVyCj4gIAkJCSAqIGludG8gdGhpcyB0cmFuc2FjdGlvbgo+ICAJCQkgKi8K
PiAtCQkJaWYgKCFwbGFuZSkgewo+IC0JCQkJc3RydWN0IGRybV9wbGFuZV9zdGF0ZSAqc3RhdGU7
Cj4gLQo+ICsJCQlpZiAoIWRybV9zdGF0ZS0+cGxhbmVzW2ldLnB0cikgewo+ICAJCQkJLyoKPiAg
CQkJCSAqIEdMSysgc2NhbGVycyBkb24ndCBoYXZlIGEgSFEgbW9kZSBzbyBpdAo+ICAJCQkJICog
aXNuJ3QgbmVjZXNzYXJ5IHRvIGNoYW5nZSBiZXR3ZWVuIEhRIGFuZCBkeW4gbW9kZQo+IEBAIC0z
ODIsMjQgKzM3NywyOCBAQCBpbnQgaW50ZWxfYXRvbWljX3NldHVwX3NjYWxlcnMoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICAJCQkJaWYgKElOVEVMX0dFTihkZXZfcHJpdikg
Pj0gMTAgfHwgSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpCj4gIAkJCQkJY29udGludWU7Cj4gIAo+
IC0JCQkJcGxhbmUgPSBkcm1fcGxhbmVfZnJvbV9pbmRleCgmZGV2X3ByaXYtPmRybSwgaSk7Cj4g
LQkJCQlzdGF0ZSA9IGRybV9hdG9taWNfZ2V0X3BsYW5lX3N0YXRlKGRybV9zdGF0ZSwgcGxhbmUp
Owo+IC0JCQkJaWYgKElTX0VSUihzdGF0ZSkpIHsKPiAtCQkJCQlEUk1fREVCVUdfS01TKCJGYWls
ZWQgdG8gYWRkIFtQTEFORTolZF0gdG8gZHJtX3N0YXRlXG4iLAo+IC0JCQkJCQlwbGFuZS0+YmFz
ZS5pZCk7Cj4gLQkJCQkJcmV0dXJuIFBUUl9FUlIoc3RhdGUpOwo+ICsJCQkJcGxhbmUgPSB0b19p
bnRlbF9wbGFuZShkcm1fcGxhbmVfZnJvbV9pbmRleCgmZGV2X3ByaXYtPmRybSwgaSkpOwo+ICsJ
CQkJcGxhbmVfc3RhdGUgPQo+ICsJCQkJCWludGVsX2F0b21pY19nZXRfcGxhbmVfc3RhdGVfYWZ0
ZXJfY2hlY2soc3RhdGUsCj4gKwkJCQkJCQkJCQkgY3J0Y19zdGF0ZSwKPiArCQkJCQkJCQkJCSBw
bGFuZSk7Cj4gKwkJCQlpZiAoSVNfRVJSKHBsYW5lX3N0YXRlKSkgewo+ICsJCQkJCURSTV9ERUJV
R19LTVMoIkZhaWxlZCB0byBhZGQgW1BMQU5FOiVkXSB0byBkcm1fc3RhdGU6ICVsaVxuIiwKPiAr
CQkJCQkJcGxhbmUtPmJhc2UuYmFzZS5pZCwgUFRSX0VSUihwbGFuZV9zdGF0ZSkpOwo+ICsJCQkJ
CXJldHVybiBQVFJfRVJSKHBsYW5lX3N0YXRlKTsKPiAgCQkJCX0KPiArCQkJfSBlbHNlIHsKPiAr
CQkJCXBsYW5lID0gdG9faW50ZWxfcGxhbmUoZHJtX3N0YXRlLT5wbGFuZXNbaV0ucHRyKTsKPiAr
CQkJCXBsYW5lX3N0YXRlID0gaW50ZWxfYXRvbWljX2dldF9uZXdfcGxhbmVfc3RhdGUoc3RhdGUs
Cj4gKwkJCQkJCQkJCSAgICAgICBwbGFuZSk7Cj4gIAkJCX0KPiAgCj4gLQkJCWludGVsX3BsYW5l
ID0gdG9faW50ZWxfcGxhbmUocGxhbmUpOwo+IC0JCQlpZHggPSBwbGFuZS0+YmFzZS5pZDsKPiAt
Cj4gIAkJCS8qIHBsYW5lIG9uIGRpZmZlcmVudCBjcnRjIGNhbm5vdCBiZSBhIHNjYWxlciB1c2Vy
IG9mIHRoaXMgY3J0YyAqLwo+IC0JCQlpZiAoV0FSTl9PTihpbnRlbF9wbGFuZS0+cGlwZSAhPSBp
bnRlbF9jcnRjLT5waXBlKSkKPiArCQkJaWYgKFdBUk5fT04ocGxhbmUtPnBpcGUgIT0gaW50ZWxf
Y3J0Yy0+cGlwZSkpCj4gIAkJCQljb250aW51ZTsKPiAgCj4gLQkJCXBsYW5lX3N0YXRlID0gaW50
ZWxfYXRvbWljX2dldF9uZXdfcGxhbmVfc3RhdGUoaW50ZWxfc3RhdGUsCj4gLQkJCQkJCQkJICAg
ICAgIGludGVsX3BsYW5lKTsKPiArCQkJbmFtZSA9ICJQTEFORSI7Cj4gKwkJCWlkeCA9IHBsYW5l
LT5iYXNlLmJhc2UuaWQ7Cj4gIAkJCXNjYWxlcl9pZCA9ICZwbGFuZV9zdGF0ZS0+c2NhbGVyX2lk
Owo+ICAJCX0KPiAgCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYXRvbWljX3BsYW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2F0b21pY19wbGFuZS5jCj4gaW5kZXggOThmNTU3YTlmOGVlLi5hOWUyNjg0YzZiNmQgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5l
LmMKPiBAQCAtNDAyLDYgKzQwMiwyMSBAQCB2b2lkIGk5eHhfdXBkYXRlX3BsYW5lc19vbl9jcnRj
KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ICAJfQo+ICB9Cj4gIAo+ICtzdHJ1
Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKgo+ICtpbnRlbF9hdG9taWNfZ2V0X3BsYW5lX3N0YXRlX2Fm
dGVyX2NoZWNrKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ICsJCQkJCSBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUsCj4gKwkJCQkJIHN0cnVjdCBpbnRl
bF9wbGFuZSAqcGxhbmUpCj4gK3sKPiArCXN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVf
c3RhdGUgPQo+ICsJCWludGVsX2F0b21pY19nZXRfcGxhbmVfc3RhdGUoc3RhdGUsIHBsYW5lKTsK
PiArCj4gKwlpZiAoSVNfRVJSKHBsYW5lX3N0YXRlKSkKPiArCQlyZXR1cm4gcGxhbmVfc3RhdGU7
Cj4gKwo+ICsJbmV3X2NydGNfc3RhdGUtPnVwZGF0ZV9wbGFuZXMgfD0gQklUKHBsYW5lLT5pZCk7
Cj4gKwlyZXR1cm4gcGxhbmVfc3RhdGU7Cj4gK30KCldpdGggdGhlIGh3IHN0YXRlIGJlaW5nIHBl
cnNpc3RlbnQgbm93IEkgZ3Vlc3Mgd2UgZG9uJ3QgbmVlZCB0aGlzCmFueW1vcmU/Cgo+ICsKPiAg
Y29uc3Qgc3RydWN0IGRybV9wbGFuZV9oZWxwZXJfZnVuY3MgaW50ZWxfcGxhbmVfaGVscGVyX2Z1
bmNzID0gewo+ICAJLnByZXBhcmVfZmIgPSBpbnRlbF9wcmVwYXJlX3BsYW5lX2ZiLAo+ICAJLmNs
ZWFudXBfZmIgPSBpbnRlbF9jbGVhbnVwX3BsYW5lX2ZiLAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKPiBpbmRleCAwY2FlZjI1OTJhN2UuLmE5ZTk1MTBkMmQw
NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xr
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKPiBA
QCAtMjI3NSw2ICsyMjc1LDcgQEAgc3RhdGljIGludCBpbnRlbF9tb2Rlc2V0X2FsbF9waXBlcyhz
dHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKPiAgCSAqLwo+ICAJZm9yX2VhY2hfaW50
ZWxfY3J0YygmZGV2X3ByaXYtPmRybSwgY3J0Yykgewo+ICAJCXN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlOwo+ICsJCXN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmU7Cj4gIAkJaW50
IHJldDsKPiAgCj4gIAkJY3J0Y19zdGF0ZSA9IGludGVsX2F0b21pY19nZXRfY3J0Y19zdGF0ZSgm
c3RhdGUtPmJhc2UsIGNydGMpOwo+IEBAIC0yMjkyLDEyICsyMjkzLDE0IEBAIHN0YXRpYyBpbnQg
aW50ZWxfbW9kZXNldF9hbGxfcGlwZXMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUp
Cj4gIAkJaWYgKHJldCkKPiAgCQkJcmV0dXJuIHJldDsKPiAgCj4gLQkJcmV0ID0gZHJtX2F0b21p
Y19hZGRfYWZmZWN0ZWRfcGxhbmVzKCZzdGF0ZS0+YmFzZSwKPiAtCQkJCQkJICAgICAmY3J0Yy0+
YmFzZSk7Cj4gLQkJaWYgKHJldCkKPiAtCQkJcmV0dXJuIHJldDsKPiAtCj4gLQkJY3J0Y19zdGF0
ZS0+dXBkYXRlX3BsYW5lcyB8PSBjcnRjX3N0YXRlLT5hY3RpdmVfcGxhbmVzOwo+ICsJCWZvcl9l
YWNoX2ludGVsX3BsYW5lX29uX2NydGMoJmRldl9wcml2LT5kcm0sIGNydGMsIHBsYW5lKSB7Cj4g
KwkJCXN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUgPQo+ICsJCQkJaW50ZWxf
YXRvbWljX2dldF9wbGFuZV9zdGF0ZV9hZnRlcl9jaGVjayhzdGF0ZSwKPiArCQkJCQkJCQkJIGNy
dGNfc3RhdGUsCj4gKwkJCQkJCQkJCSBwbGFuZSk7Cj4gKwkJCWlmIChJU19FUlIocGxhbmVfc3Rh
dGUpKQo+ICsJCQkJcmV0dXJuIFBUUl9FUlIocGxhbmVfc3RhdGUpOwo+ICsJCX0KPiAgCX0KPiAg
Cj4gIAlyZXR1cm4gMDsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jb2xvci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xv
ci5jCj4gaW5kZXggZmE0NGViNzNkMDg4Li45NTU4NmE1ODgyMzQgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCj4gQEAgLTEwNzcsMTEgKzEwNzcsMTIg
QEAgaW50ZWxfY29sb3JfYWRkX2FmZmVjdGVkX3BsYW5lcyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqbmV3X2NydGNfc3RhdGUpCj4gIAkJaWYgKCFuZWVkX3BsYW5lX3VwZGF0ZShwbGFuZSwgbmV3
X2NydGNfc3RhdGUpKQo+ICAJCQljb250aW51ZTsKPiAgCj4gLQkJcGxhbmVfc3RhdGUgPSBpbnRl
bF9hdG9taWNfZ2V0X3BsYW5lX3N0YXRlKHN0YXRlLCBwbGFuZSk7Cj4gKwkJcGxhbmVfc3RhdGUg
PQo+ICsJCQlpbnRlbF9hdG9taWNfZ2V0X3BsYW5lX3N0YXRlX2FmdGVyX2NoZWNrKHN0YXRlLAo+
ICsJCQkJCQkJCSBuZXdfY3J0Y19zdGF0ZSwKPiArCQkJCQkJCQkgcGxhbmUpOwo+ICAJCWlmIChJ
U19FUlIocGxhbmVfc3RhdGUpKQo+ICAJCQlyZXR1cm4gUFRSX0VSUihwbGFuZV9zdGF0ZSk7Cj4g
LQo+IC0JCW5ld19jcnRjX3N0YXRlLT51cGRhdGVfcGxhbmVzIHw9IEJJVChwbGFuZS0+aWQpOwo+
ICAJfQo+ICAKPiAgCXJldHVybiAwOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gaW5kZXggNDAxODRlODIzYzg0Li42MWU5ZGIw
NDE2MTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3R5cGVzLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfdHlwZXMuaAo+IEBAIC0xNTYxLDQgKzE1NjEsMTAgQEAgc3RhdGljIGlubGluZSB1
MzIgaW50ZWxfcGxhbmVfZ2d0dF9vZmZzZXQoY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRl
ICpzdGF0ZSkKPiAgCXJldHVybiBpOTE1X2dndHRfb2Zmc2V0KHN0YXRlLT52bWEpOwo+ICB9Cj4g
IAo+ICsvKiBpbnRlbF9hdG9taWNfcGxhbmUuYyAqLwo+ICtzdHJ1Y3QgaW50ZWxfcGxhbmVfc3Rh
dGUgKgo+ICtpbnRlbF9hdG9taWNfZ2V0X3BsYW5lX3N0YXRlX2FmdGVyX2NoZWNrKHN0cnVjdCBp
bnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ICsJCQkJCSBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSwKPiArCQkJCQkgc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSk7Cj4gKwo+
ICAjZW5kaWYgLyogIF9fSU5URUxfRElTUExBWV9UWVBFU19IX18gKi8KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmMKPiBpbmRleCA1ZDJiNDYwZDNlZTUuLjAzYTIzNmFkNmE2YiAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcG0uYwo+IEBAIC01MTU4LDExICs1MTU4LDEyIEBAIHNrbF9kZGJfYWRkX2Fm
ZmVjdGVkX3BsYW5lcyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3Rh
dGUsCj4gIAkJCQkJJm5ld19jcnRjX3N0YXRlLT53bS5za2wucGxhbmVfZGRiX3V2W3BsYW5lX2lk
XSkpCj4gIAkJCWNvbnRpbnVlOwo+ICAKPiAtCQlwbGFuZV9zdGF0ZSA9IGludGVsX2F0b21pY19n
ZXRfcGxhbmVfc3RhdGUoc3RhdGUsIHBsYW5lKTsKPiArCQlwbGFuZV9zdGF0ZSA9Cj4gKwkJCWlu
dGVsX2F0b21pY19nZXRfcGxhbmVfc3RhdGVfYWZ0ZXJfY2hlY2soc3RhdGUsCj4gKwkJCQkJCQkJ
IG5ld19jcnRjX3N0YXRlLAo+ICsJCQkJCQkJCSBwbGFuZSk7Cj4gIAkJaWYgKElTX0VSUihwbGFu
ZV9zdGF0ZSkpCj4gIAkJCXJldHVybiBQVFJfRVJSKHBsYW5lX3N0YXRlKTsKPiAtCj4gLQkJbmV3
X2NydGNfc3RhdGUtPnVwZGF0ZV9wbGFuZXMgfD0gQklUKHBsYW5lX2lkKTsKPiAgCX0KPiAgCj4g
IAlyZXR1cm4gMDsKPiBAQCAtNTQzNCwxMSArNTQzNSwxMiBAQCBzdGF0aWMgaW50IHNrbF93bV9h
ZGRfYWZmZWN0ZWRfcGxhbmVzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ICAJ
CQkJCSZuZXdfY3J0Y19zdGF0ZS0+d20uc2tsLm9wdGltYWwucGxhbmVzW3BsYW5lX2lkXSkpCj4g
IAkJCWNvbnRpbnVlOwo+ICAKPiAtCQlwbGFuZV9zdGF0ZSA9IGludGVsX2F0b21pY19nZXRfcGxh
bmVfc3RhdGUoc3RhdGUsIHBsYW5lKTsKPiArCQlwbGFuZV9zdGF0ZSA9Cj4gKwkJCWludGVsX2F0
b21pY19nZXRfcGxhbmVfc3RhdGVfYWZ0ZXJfY2hlY2soc3RhdGUsCj4gKwkJCQkJCQkJIG5ld19j
cnRjX3N0YXRlLAo+ICsJCQkJCQkJCSBwbGFuZSk7Cj4gIAkJaWYgKElTX0VSUihwbGFuZV9zdGF0
ZSkpCj4gIAkJCXJldHVybiBQVFJfRVJSKHBsYW5lX3N0YXRlKTsKPiAtCj4gLQkJbmV3X2NydGNf
c3RhdGUtPnVwZGF0ZV9wbGFuZXMgfD0gQklUKHBsYW5lX2lkKTsKPiAgCX0KPiAgCj4gIAlyZXR1
cm4gMDsKPiAtLSAKPiAyLjIzLjAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
