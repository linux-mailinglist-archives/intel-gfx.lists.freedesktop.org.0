Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB9E17EC8E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 00:18:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CD3D6E5B4;
	Mon,  9 Mar 2020 23:18:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 168DC6E5B4
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 23:18:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 16:18:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,535,1574150400"; d="scan'208";a="265422592"
Received: from przanoni-mobl.jf.intel.com ([10.24.15.100])
 by fmsmga004.fm.intel.com with ESMTP; 09 Mar 2020 16:18:27 -0700
Message-ID: <e5087cc40055ec596cfe195fecc06630fe4cbff6.camel@intel.com>
From: Paulo Zanoni <paulo.r.zanoni@intel.com>
To: Karthik B S <karthik.b.s@intel.com>, intel-gfx@lists.freedesktop.org
Date: Mon, 09 Mar 2020 16:18:27 -0700
In-Reply-To: <20200306113927.16904-3-karthik.b.s@intel.com>
References: <20200306113927.16904-1-karthik.b.s@intel.com>
 <20200306113927.16904-3-karthik.b.s@intel.com>
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 2/7] drm/i915: Add support for async flips in
 I915
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RW0gc2V4LCAyMDIwLTAzLTA2IMOgcyAxNzowOSArMDUzMCwgS2FydGhpayBCIFMgZXNjcmV2ZXU6
Cj4gRW5hYmxlIHN1cHBvcnQgZm9yIGFzeW5jIGZsaXBzIGluIEk5MTUuCj4gU2V0IHRoZSBBc3lu
YyBBZGRyZXNzIFVwZGF0ZSBFbmFibGUgYml0IGluIHBsYW5lIGN0bAo+IHdoZW4gYXN5bmMgZmxp
cCBpcyByZXF1ZXN0ZWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogS2FydGhpayBCIFMgPGthcnRoaWsu
Yi5zQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgfCA0ICsrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAg
ICAgICAgICAgICAgfCAxICsKPiAgMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IGluZGV4
IGRkNDdlYjY1YjU2My4uNGNlOTg5N2Y1YzU4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBAQCAtNDc1Niw2ICs0NzU2LDkgQEAgdTMyIHNr
bF9wbGFuZV9jdGwoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4g
IAkJCXBsYW5lX2N0bCB8PSBQTEFORV9DVExfWVVWX1JBTkdFX0NPUlJFQ1RJT05fRElTQUJMRTsK
PiAgCX0KPiAgCj4gKwlpZiAoY3J0Y19zdGF0ZS0+dWFwaS5hc3luY19mbGlwKQo+ICsJCXBsYW5l
X2N0bCB8PSBQTEFORV9DVExfQVNZTkNfRkxJUDsKPiArCj4gIAlwbGFuZV9jdGwgfD0gc2tsX3Bs
YW5lX2N0bF9mb3JtYXQoZmItPmZvcm1hdC0+Zm9ybWF0KTsKPiAgCXBsYW5lX2N0bCB8PSBza2xf
cGxhbmVfY3RsX3RpbGluZyhmYi0+bW9kaWZpZXIpOwo+ICAJcGxhbmVfY3RsIHw9IHNrbF9wbGFu
ZV9jdGxfcm90YXRlKHJvdGF0aW9uICYgRFJNX01PREVfUk9UQVRFX01BU0spOwo+IEBAIC0xNzcz
OCw2ICsxNzc0MSw3IEBAIHN0YXRpYyB2b2lkIGludGVsX21vZGVfY29uZmlnX2luaXQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gIAo+ICAJbW9kZV9jb25maWctPmZ1bmNzID0gJmlu
dGVsX21vZGVfZnVuY3M7Cj4gIAo+ICsJbW9kZV9jb25maWctPmFzeW5jX3BhZ2VfZmxpcCA9IHRy
dWU7CgpXZSBzaG91bGQgb25seSBlbmFibGUgdGhlIGZlYXR1cmUgdG8gdXNlciBzcGFjZSBhZnRl
ciBpdCBoYXMgYmVlbiBmdWxseQppbXBsZW1lbnRlZCBpbnNpZGUgdGhlIEtlcm5lbC4gVGhpbmsg
YWJvdXQgdGhlIGNhc2Ugd2hlcmUgZ2l0LWJpc2VjdApkZWNpZGVzIHRvIGxhbmQgYXQgZXhhY3Rs
eSB0aGlzIGNvbW1pdCB3aGVuIHNvbWVvbmUgaXMgZGVidWdnaW5nIGEKZmFpbHVyZSB1bnJlbGF0
ZWQgdG8gYXN5bmMgdmJsYW5rcy4KCkFsc28sIHdoZW4gZmVhdHVyZXMgaGF2ZSB0cml2aWFsIG9u
L29mZiBzd2l0Y2hlcyBsaWtlIHRoZSBsaW5lIGFib3ZlLAppdCdzIGJldHRlciBpZiB0aGUgcGF0
Y2ggdGhhdCBlbmFibGVzIHRoZSBmZWF0dXJlIG9ubHkgY29udGFpbnMgdGhlCmxpbmUgdGhhdCB0
b2dnbGVzIHRoZSBvbi9vZmYgc3dpdGNoLiBUaGlzIHdheSwgaWYgYSByZXZlcnQgaXMgbmVlZGVk
LAp3ZSBjYW4ganVzdCBzd2l0Y2ggaXQgdG8gb2ZmIHdpdGhvdXQgcmVtb3ZpbmcgbW9yZSBjb2Rl
LiBBbHNvLCBpdAplbmFibGVzIHVzIHRvIGxhbmQgdGhlIHJlc3Qgb2YgdGhlIGNvZGUgd2hpbGUg
a2VlcGluZyB0aGUgZmVhdHVyZSBvZmYKZm9yIHN0YWJpbGl6YXRpb24uCgpBbHNvLCB0aGUgbGlu
ZSBhYm92ZSBpcyBlbmFibGluZyB0aGUgZmVhdHVyZSBmb3IgZXZlcnkgcGxhdGZvcm0sIHdoaWNo
CmlzIHByb2JhYmx5IG5vdCBhIGdvYWwgb2YgdGhpcyBzZXJpZXMuCgoKPiAgCS8qCj4gIAkgKiBN
YXhpbXVtIGZyYW1lYnVmZmVyIGRpbWVuc2lvbnMsIGNob3NlbiB0byBtYXRjaAo+ICAJICogdGhl
IG1heGltdW0gcmVuZGVyIGVuZ2luZSBzdXJmYWNlIHNpemUgb24gZ2VuNCsuCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oCj4gaW5kZXggODBjZjAyYTZlZWMxLi40MjAzN2FlZTliNzggMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBAQCAtNjc5NCw2ICs2Nzk0LDcgQEAgZW51bSB7Cj4gICNk
ZWZpbmUgICBQTEFORV9DVExfVElMRURfWAkJCSgxIDw8IDEwKQo+ICAjZGVmaW5lICAgUExBTkVf
Q1RMX1RJTEVEX1kJCQkoNCA8PCAxMCkKPiAgI2RlZmluZSAgIFBMQU5FX0NUTF9USUxFRF9ZRgkJ
CSg1IDw8IDEwKQo+ICsjZGVmaW5lICAgUExBTkVfQ1RMX0FTWU5DX0ZMSVAJCQkoMSA8PCA5KQo+
ICAjZGVmaW5lICAgUExBTkVfQ1RMX0ZMSVBfSE9SSVpPTlRBTAkJKDEgPDwgOCkKPiAgI2RlZmlu
ZSAgIFBMQU5FX0NUTF9NRURJQV9ERUNPTVBSRVNTSU9OX0VOQUJMRQkoMSA8PCA0KSAvKiBUR0wr
ICovCj4gICNkZWZpbmUgICBQTEFORV9DVExfQUxQSEFfTUFTSwkJCSgweDMgPDwgNCkgLyogUHJl
LUdMSyAqLwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
