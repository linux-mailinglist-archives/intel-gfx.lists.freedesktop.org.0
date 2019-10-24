Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58036E2B71
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 09:51:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 800B56E041;
	Thu, 24 Oct 2019 07:51:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16E8E6E041
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 07:51:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 00:51:23 -0700
X-IronPort-AV: E=Sophos;i="5.68,224,1569308400"; d="scan'208";a="192106447"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 00:51:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
In-Reply-To: <20191023184140.GF29989@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191022140300.20872-1-jani.nikula@intel.com>
 <20191023184140.GF29989@intel.com>
Date: Thu, 24 Oct 2019 10:51:20 +0300
Message-ID: <871rv2eg3r.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/bios: add compression parameter
 block definition
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

T24gV2VkLCAyMyBPY3QgMjAxOSwgTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVs
LmNvbT4gd3JvdGU6Cj4gT24gVHVlLCBPY3QgMjIsIDIwMTkgYXQgMDU6MDM6MDBQTSArMDMwMCwg
SmFuaSBOaWt1bGEgd3JvdGU6Cj4+IEFkZCBkZWZpbml0aW9uIGZvciBibG9jayA1NiwgdGhlIGNv
bXByZXNzaW9uIHBhcmFtZXRlcnMuCj4+Cj4KPiBXb3VsZCB0aGlzIGJlIHVzZWQgb24gRFAgY29u
bmVjdG9ycyBmb3IgRFNDIGFzIHdlbGw/CgpJIHRoaW5rIG9ubHkgaWYgbmVlZGVkOyB3aXRoIERT
SSBpdCdzIG5vdCBwb3NzaWJsZSB0byBxdWVyeSB0aGUKcGFyYW1ldGVycyBmcm9tIHRoZSBkaXNw
bGF5LgoKQlIsCkphbmkuCgo+Cj4gTWFuYXNpCj4gIAo+PiBDYzogVmFuZGl0YSBLdWxrYXJuaSA8
dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxh
IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oIHwgNTAgKysrKysrKysrKysrKysrKysrKwo+PiAgMSBm
aWxlIGNoYW5nZWQsIDUwIGluc2VydGlvbnMoKykKPj4gCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmgKPj4gaW5kZXggZTMwNDVjZWQ0YmZlLi43ZjIy
MjE5NmQyZDUgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdmJ0X2RlZnMuaAo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3ZidF9kZWZzLmgKPj4gQEAgLTExNCw2ICsxMTQsNyBAQCBlbnVtIGJkYl9ibG9ja19pZCB7Cj4+
ICAJQkRCX0xWRFNfUE9XRVIJCQk9IDQ0LAo+PiAgCUJEQl9NSVBJX0NPTkZJRwkJCT0gNTIsCj4+
ICAJQkRCX01JUElfU0VRVUVOQ0UJCT0gNTMsCj4+ICsJQkRCX0NPTVBSRVNTSU9OX1BBUkFNRVRF
UlMJPSA1NiwKPj4gIAlCREJfU0tJUAkJCT0gMjU0LCAvKiBWQklPUyBwcml2YXRlIGJsb2NrLCBp
Z25vcmUgKi8KPj4gIH07Cj4+ICAKPj4gQEAgLTgxMSw0ICs4MTIsNTMgQEAgc3RydWN0IGJkYl9t
aXBpX3NlcXVlbmNlIHsKPj4gIAl1OCBkYXRhWzBdOyAvKiB1cCB0byA2IHZhcmlhYmxlIGxlbmd0
aCBibG9ja3MgKi8KPj4gIH0gX19wYWNrZWQ7Cj4+ICAKPj4gKy8qCj4+ICsgKiBCbG9jayA1NiAt
IENvbXByZXNzaW9uIFBhcmFtZXRlcnMKPj4gKyAqLwo+PiArCj4+ICsjZGVmaW5lIFZCVF9SQ19C
VUZGRVJfQkxPQ0tfU0laRV8xS0IJMAo+PiArI2RlZmluZSBWQlRfUkNfQlVGRkVSX0JMT0NLX1NJ
WkVfNEtCCTEKPj4gKyNkZWZpbmUgVkJUX1JDX0JVRkZFUl9CTE9DS19TSVpFXzE2S0IJMgo+PiAr
I2RlZmluZSBWQlRfUkNfQlVGRkVSX0JMT0NLX1NJWkVfNjRLQgkzCj4+ICsKPj4gKyNkZWZpbmUg
VkJUX0RTQ19MSU5FX0JVRkZFUl9ERVBUSCh2YnRfdmFsdWUpCSgodmJ0X3ZhbHVlKSArIDgpIC8q
IGJpdHMgKi8KPj4gKyNkZWZpbmUgVkJUX0RTQ19NQVhfQlBQKHZidF92YWx1ZSkJCSg2ICsgKHZi
dF92YWx1ZSkgKiAyKQo+PiArCj4+ICtzdHJ1Y3QgZHNjX2NvbXByZXNzaW9uX3BhcmFtZXRlcnNf
ZW50cnkgewo+PiArCXU4IHZlcnNpb25fbWFqb3I6NDsKPj4gKwl1OCB2ZXJzaW9uX21pbm9yOjQ7
Cj4+ICsKPj4gKwl1OCByY19idWZmZXJfYmxvY2tfc2l6ZToyOwo+PiArCXU4IHJlc2VydmVkMTo2
Owo+PiArCj4+ICsJLyoKPj4gKwkgKiBCdWZmZXIgc2l6ZSBpbiBieXRlczoKPj4gKwkgKgo+PiAr
CSAqIDQgXiByY19idWZmZXJfYmxvY2tfc2l6ZSAqIDEwMjQgKiAocmNfYnVmZmVyX3NpemUgKyAx
KSBieXRlcwo+PiArCSAqLwo+PiArCXU4IHJjX2J1ZmZlcl9zaXplOwo+PiArCXUzMiBzbGljZXNf
cGVyX2xpbmU7Cj4+ICsKPj4gKwl1OCBsaW5lX2J1ZmZlcl9kZXB0aDo0Owo+PiArCXU4IHJlc2Vy
dmVkMjo0Owo+PiArCj4+ICsJLyogRmxhZyBCaXRzIDEgKi8KPj4gKwl1OCBibG9ja19wcmVkaWN0
aW9uX2VuYWJsZToxOwo+PiArCXU4IHJlc2VydmVkMzo3Owo+PiArCj4+ICsJdTggbWF4X2JwcDsg
LyogbWFwcGluZyAqLwo+PiArCj4+ICsJLyogQ29sb3IgZGVwdGggY2FwYWJpbGl0aWVzICovCj4+
ICsJdTggcmVzZXJ2ZWQ0OjE7Cj4+ICsJdTggc3VwcG9ydF84YnBjOjE7Cj4+ICsJdTggc3VwcG9y
dF8xMGJwYzoxOwo+PiArCXU4IHN1cHBvcnRfMTJicGM6MTsKPj4gKwl1OCByZXNlcnZlZDU6NDsK
Pj4gK30gX19wYWNrZWQ7Cj4+ICsKPj4gK3N0cnVjdCBiZGJfY29tcHJlc3Npb25fcGFyYW1ldGVy
cyB7Cj4+ICsJdTE2IGVudHJ5X3NpemU7Cj4+ICsJc3RydWN0IGRzY19jb21wcmVzc2lvbl9wYXJh
bWV0ZXJzX2VudHJ5IGRhdGFbMTZdOwo+PiArfSBfX3BhY2tlZDsKPj4gKwo+PiAgI2VuZGlmIC8q
IF9JTlRFTF9WQlRfREVGU19IXyAqLwo+PiAtLSAKPj4gMi4yMC4xCj4+IAo+PiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0Cj4+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4gaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApKYW5pIE5p
a3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
