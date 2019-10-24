Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64025E2F71
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 12:52:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A37716E239;
	Thu, 24 Oct 2019 10:52:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED3316E239
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 10:52:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 03:52:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,224,1569308400"; d="scan'208";a="188551205"
Received: from pqueiros-mobl.ger.corp.intel.com (HELO [10.252.55.18])
 ([10.252.55.18])
 by orsmga007.jf.intel.com with ESMTP; 24 Oct 2019 03:52:45 -0700
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191024103858.28113-1-mika.kuoppala@linux.intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <a709ab69-274e-dceb-5ac1-739bf2c83a2d@intel.com>
Date: Thu, 24 Oct 2019 13:52:44 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191024103858.28113-1-mika.kuoppala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Remove nonpriv flags when
 srm/lrm
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjQvMTAvMjAxOSAxMzozOCwgTWlrYSBLdW9wcGFsYSB3cm90ZToKPiBPbiB0ZXN0aW5nIHRo
ZSB3aGl0ZWxpc3RzLCB1c2luZyBhbnkgb2YgdGhlIG5vbnByaXYKPiBmbGFncyB3aGVuIHRyeWlu
ZyB0byBhY2Nlc3MgdGhlIHJlZ2lzdGVyIG9mZnNldCB3aWxsIGxlYWQKPiB0byBmYWlsdXJlLgo+
Cj4gRGVmaW5lIGFkZHJlc3MgbWFzayB0byBnZXQgdGhlIG1taW8gb2Zmc2V0IGluIG9yZGVyCj4g
dG8gZ3VhcmQgYWdhaW5zdCBhbnkgY3VycmVudCBhbmQgZnV0dXJlIGZsYWcgdXNhZ2UuCj4KPiBD
YzogVGFwYW5pIFDDpGxsaSA8dGFwYW5pLnBhbGxpQGludGVsLmNvbT4KPiBDYzogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gU2lnbmVkLW9mZi1ieTogTWlrYSBLdW9w
cGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJvdW5kcy5jIHwgNyArKysrKy0tCj4gICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgIHwgMSArCj4gICAyIGZp
bGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJvdW5kcy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMuYwo+IGluZGV4IGVmMDI5
MjBjZWMyOS4uNTQzMjRjNjU3N2RjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9zZWxmdGVzdF93b3JrYXJvdW5kcy5jCj4gQEAgLTUxMyw2ICs1MTMsOSBAQCBzdGF0aWMgaW50
IGNoZWNrX2RpcnR5X3doaXRlbGlzdChzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAo+ICAg
Cj4gICAJCXJvX3JlZyA9IHJvX3JlZ2lzdGVyKHJlZyk7Cj4gICAKPiArCQkvKiBDbGVhciBub24g
cHJpdiBmbGFncyAqLwo+ICsJCXJlZyAmPSBSSU5HX0ZPUkNFX1RPX05PTlBSSVZfQUREUkVTU19N
QVNLOwo+ICsKPiAgIAkJc3JtID0gTUlfU1RPUkVfUkVHSVNURVJfTUVNOwo+ICAgCQlscm0gPSBN
SV9MT0FEX1JFR0lTVEVSX01FTTsKPiAgIAkJaWYgKElOVEVMX0dFTihjdHgtPmk5MTUpID49IDgp
Cj4gQEAgLTgxMCw4ICs4MTMsOCBAQCBzdGF0aWMgaW50IHJlYWRfd2hpdGVsaXN0ZWRfcmVnaXN0
ZXJzKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsCj4gICAJCXU2NCBvZmZzZXQgPSByZXN1
bHRzLT5ub2RlLnN0YXJ0ICsgc2l6ZW9mKHUzMikgKiBpOwo+ICAgCQl1MzIgcmVnID0gaTkxNV9t
bWlvX3JlZ19vZmZzZXQoZW5naW5lLT53aGl0ZWxpc3QubGlzdFtpXS5yZWcpOwo+ICAgCj4gLQkJ
LyogQ2xlYXIgYWNjZXNzIHBlcm1pc3Npb24gZmllbGQgKi8KPiAtCQlyZWcgJj0gflJJTkdfRk9S
Q0VfVE9fTk9OUFJJVl9BQ0NFU1NfTUFTSzsKPiArCQkvKiBDbGVhciBub24gcHJpdiBmbGFncyAq
Lwo+ICsJCXJlZyAmPSBSSU5HX0ZPUkNFX1RPX05PTlBSSVZfQUREUkVTU19NQVNLOwo+ICAgCj4g
ICAJCSpjcysrID0gc3JtOwo+ICAgCQkqY3MrKyA9IHJlZzsKCgpBcmVuJ3QgeW91IG1pc3Npbmcg
dGhlIHNjcnViX3doaXRlbGlzdGVkX3JlZ2lzdGVycygpIGZ1bmN0aW9uIGJlbG93PwoKCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oCj4gaW5kZXggODU1ZGI4ODg1MTZjLi4zYmE1MDNiNWUwZDkgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBAQCAtMjQ5MCw2ICsyNDkwLDcgQEAgc3RhdGlj
IGlubGluZSBib29sIGk5MTVfbW1pb19yZWdfdmFsaWQoaTkxNV9yZWdfdCByZWcpCj4gICAjZGVm
aW5lIEdFTjhfUklOR19DU19HUFJfVURXKGJhc2UsIG4pCV9NTUlPKChiYXNlKSArIDB4NjAwICsg
KG4pICogOCArIDQpCj4gICAKPiAgICNkZWZpbmUgUklOR19GT1JDRV9UT19OT05QUklWKGJhc2Us
IGkpIF9NTUlPKCgoYmFzZSkgKyAweDREMCkgKyAoaSkgKiA0KQo+ICsjZGVmaW5lICAgUklOR19G
T1JDRV9UT19OT05QUklWX0FERFJFU1NfTUFTSwlSRUdfR0VOTUFTSygyNSwgMikKPiAgICNkZWZp
bmUgICBSSU5HX0ZPUkNFX1RPX05PTlBSSVZfQUNDRVNTX1JXCSgwIDw8IDI4KSAgICAvKiBDRkwr
ICYgR2VuMTErICovCj4gICAjZGVmaW5lICAgUklOR19GT1JDRV9UT19OT05QUklWX0FDQ0VTU19S
RAkoMSA8PCAyOCkKPiAgICNkZWZpbmUgICBSSU5HX0ZPUkNFX1RPX05PTlBSSVZfQUNDRVNTX1dS
CSgyIDw8IDI4KQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
