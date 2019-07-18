Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6D86D2C5
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 19:29:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 548606E428;
	Thu, 18 Jul 2019 17:29:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D3606E445
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 17:29:50 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jul 2019 10:29:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,279,1559545200"; d="scan'208";a="251877709"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 18 Jul 2019 10:29:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 18 Jul 2019 20:29:46 +0300
Date: Thu, 18 Jul 2019 20:29:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Message-ID: <20190718172946.GC5942@intel.com>
References: <20190710184752.GL5942@intel.com>
 <20190717021316.18610-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190717021316.18610-1-vivek.kasireddy@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Use an id of 4 while
 accessing DPLL4's CR0 and CR1
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

T24gVHVlLCBKdWwgMTYsIDIwMTkgYXQgMDc6MTM6MTZQTSAtMDcwMCwgVml2ZWsgS2FzaXJlZGR5
IHdyb3RlOgo+IEFsdGhvdWdoLCBEUExMNCBlbmFibGUgYW5kIGRpc2FibGUgaXMgYXNzb2NpYXRl
ZCB3aXRoIE1HUExMMV9FTkFCTEUKPiByZWdpc3Rlciwgd2UgY2FuIHVzZSBJQ0xfRFBMTF9DRkdD
UjAvQ1IxIG1hY3JvcyB0byBhY2Nlc3MgdGhpcyBkcGxsJ3MKPiBDUjAgYW5kIENSMSByZWdpc3Rl
cnMgYnkgcGFzc2luZyBhbiBpZCBvZiA0IHRvIHRoZXNlIG1hY3Jvcy4KPiAKPiBSZXBvcnRlZC1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogSm9z
w6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gQ2M6IE1hdHQgUm9w
ZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4gQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFr
QGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBWaXZlayBLYXNpcmVkZHkgPHZpdmVrLmthc2ly
ZWRkeUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBsbF9tZ3IuYyB8IDE4ICsrKysrKysrKysrKysrLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MTQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCj4gaW5kZXggMzE5YTI2YTFlYzEwLi5mOWJk
Zjg1MTRhNTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcGxsX21nci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cGxsX21nci5jCj4gQEAgLTMxMjcsOCArMzEyNywxMyBAQCBzdGF0aWMgYm9vbCBpY2xfcGxsX2dl
dF9od19zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAkJaHdfc3Rh
dGUtPmNmZ2NyMCA9IEk5MTVfUkVBRChUR0xfRFBMTF9DRkdDUjAoaWQpKTsKPiAgCQlod19zdGF0
ZS0+Y2ZnY3IxID0gSTkxNV9SRUFEKFRHTF9EUExMX0NGR0NSMShpZCkpOwo+ICAJfSBlbHNlIHsK
PiAtCQlod19zdGF0ZS0+Y2ZnY3IwID0gSTkxNV9SRUFEKElDTF9EUExMX0NGR0NSMChpZCkpOwo+
IC0JCWh3X3N0YXRlLT5jZmdjcjEgPSBJOTE1X1JFQUQoSUNMX0RQTExfQ0ZHQ1IxKGlkKSk7Cj4g
KwkJaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSAmJiBpZCA9PSBEUExMX0lEX0VITF9EUExM
NCkgewo+ICsJCQlod19zdGF0ZS0+Y2ZnY3IwID0gSTkxNV9SRUFEKElDTF9EUExMX0NGR0NSMCg0
KSk7Cj4gKwkJCWh3X3N0YXRlLT5jZmdjcjEgPSBJOTE1X1JFQUQoSUNMX0RQTExfQ0ZHQ1IxKDQp
KTsKPiArCQl9IGVsc2Ugewo+ICsJCQlod19zdGF0ZS0+Y2ZnY3IwID0gSTkxNV9SRUFEKElDTF9E
UExMX0NGR0NSMChpZCkpOwo+ICsJCQlod19zdGF0ZS0+Y2ZnY3IxID0gSTkxNV9SRUFEKElDTF9E
UExMX0NGR0NSMShpZCkpOwo+ICsJCX0KPiAgCX0KPiAgCj4gIAlyZXQgPSB0cnVlOwo+IEBAIC0z
MTY5LDggKzMxNzQsMTMgQEAgc3RhdGljIHZvaWQgaWNsX2RwbGxfd3JpdGUoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICAJCWNmZ2NyMF9yZWcgPSBUR0xfRFBMTF9DRkdDUjAo
aWQpOwo+ICAJCWNmZ2NyMV9yZWcgPSBUR0xfRFBMTF9DRkdDUjEoaWQpOwo+ICAJfSBlbHNlIHsK
PiAtCQljZmdjcjBfcmVnID0gSUNMX0RQTExfQ0ZHQ1IwKGlkKTsKPiAtCQljZmdjcjFfcmVnID0g
SUNMX0RQTExfQ0ZHQ1IxKGlkKTsKPiArCQlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpICYm
IGlkID09IERQTExfSURfRUhMX0RQTEw0KSB7Cj4gKwkJCWNmZ2NyMF9yZWcgPSBJQ0xfRFBMTF9D
RkdDUjAoNCk7Cj4gKwkJCWNmZ2NyMV9yZWcgPSBJQ0xfRFBMTF9DRkdDUjEoNCk7Cj4gKwkJfSBl
bHNlIHsKPiArCQkJY2ZnY3IwX3JlZyA9IElDTF9EUExMX0NGR0NSMChpZCk7Cj4gKwkJCWNmZ2Ny
MV9yZWcgPSBJQ0xfRFBMTF9DRkdDUjEoaWQpOwo+ICsJCX0KCkkgd2FzIGEgYml0IHdvcnJpZWQg
dGhpcyB3b3VsZCBhbHNvIGFmZmVjdCBvdGhlciBwYXJ0cyBvZiB0aGUgY29kZSwgYnV0IAphdCBs
ZWFzdCBJQ0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NFTCgpIHNlZW1zIHRvIGRvIHRoZSByaWdo
dCB0aGluZwp3aXRoIHRoZSBpZD09MiwgYW5kIEkgY291bGRuJ3QgaW1tZWRpYXRlbHkgc3BvdCBv
dGhlciBpc3N1ZXMuCgpBbHNvIHN1cnByaXNpbmcgdGhhdCBjaSBkaWRuJ3QgZ2V0IGNvbmZ1c2Vk
IGJ5IHRoZSBmYWN0IHRoYXQgdGhpcyB3YXMgcG9zdGVkCmFzIGEgcmVwbHkgdG8gYW5vdGhlciBz
ZXJpZXMuIEdlbmVyYWxseSB5b3Ugc2hvdWxkIGF2b2lkIHJlcGx5aW5nIHdpdGgKYW55dGhpbmcg
ZXhjZXB0IGRpcmVjdCByZXBsYWNlbWVudHMgZm9yIHRoZSBvcmlnaW5hbCBwYXRjaGVzIGluIHRo
ZQpzZXJpZXMuCgpQdXNoZWQgdG8gZGlucS4gVGhhbmtzIGZvciB0aGUgcGF0Y2guCgo+ICAJfQo+
ICAKPiAgCUk5MTVfV1JJVEUoY2ZnY3IwX3JlZywgaHdfc3RhdGUtPmNmZ2NyMCk7Cj4gLS0gCj4g
Mi4yMS4wCgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
