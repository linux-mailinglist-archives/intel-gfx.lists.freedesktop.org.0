Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F311CFBD1
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 16:03:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB5776E7BD;
	Tue,  8 Oct 2019 14:03:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CACA76E7BD
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 14:03:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 07:03:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,270,1566889200"; d="scan'208";a="277102955"
Received: from jsvenneb-mobl.ger.corp.intel.com (HELO [10.252.42.18])
 ([10.252.42.18])
 by orsmga001.jf.intel.com with ESMTP; 08 Oct 2019 07:03:07 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191008140111.5437-1-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <53b94975-803c-c672-a8d4-119873a55de0@intel.com>
Date: Tue, 8 Oct 2019 17:03:06 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191008140111.5437-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [CI] drm/i915/perf: drop list of streams
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

T24gMDgvMTAvMjAxOSAxNzowMSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IEZyb206IExpb25lbCBM
YW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KPgo+IEF0IHNvbWUgcG9p
bnQgaW4gdGltZSB0aGVyZSB3YXMgdGhlIGlkZWEgdGhhdCB3ZSBjb3VsZCBoYXZlIG11bHRpcGxl
Cj4gc3RyZWFtIGZyb20gdGhlIHNhbWUgcGllY2Ugb2YgSFcgYnV0IHRoYXQgbmV2ZXIgbWF0ZXJp
YWxpemVkIGFuZCBnaXZlbgo+IHRoZSBoYXJkIHRpbWUgd2UgYWxyZWFkeSBoYXZlIG1ha2luZyBl
dmVyeXRoaW5nIHdvcmsgd2l0aCB0aGUKPiBzdWJtaXNzaW9uIHNpZGUsIHRoZXJlIGlzIG5vIHJl
YWwgcG9pbnQgaGF2aW5nIHRoaXMgbGlzdCBvZiAxIGVsZW1lbnQKPiBhcm91bmQuCj4KPiBTaWdu
ZWQtb2ZmLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5j
b20+Cj4gUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
Pgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgoKClRoYW5rcywgc2hpcCBpdCEgOikKCgotTGlvbmVsCgoKPiAtLS0KPiAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGVyZi5jICAgICAgIHwgMTYgKy0tLS0tLS0tLS0tLS0tLQo+ICAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmX3R5cGVzLmggfCAgNiAtLS0tLS0KPiAgIDIgZmls
ZXMgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIxIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wZXJmLmMKPiBpbmRleCBlNTk3MzgwOWI2OWEuLjVhMzRjYWQ3ZDgyNCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4gQEAgLTE0MDcsOSArMTQwNyw2IEBAIHN0YXRpYyB2
b2lkIGdlbjdfaW5pdF9vYV9idWZmZXIoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSkK
PiAgIAkgKi8KPiAgIAltZW1zZXQoc3RyZWFtLT5vYV9idWZmZXIudmFkZHIsIDAsIE9BX0JVRkZF
Ul9TSVpFKTsKPiAgIAo+IC0JLyogTWF5YmUgbWFrZSAtPnBvbGxpbiBwZXItc3RyZWFtIHN0YXRl
IGlmIHdlIHN1cHBvcnQgbXVsdGlwbGUKPiAtCSAqIGNvbmN1cnJlbnQgc3RyZWFtcyBpbiB0aGUg
ZnV0dXJlLgo+IC0JICovCj4gICAJc3RyZWFtLT5wb2xsaW4gPSBmYWxzZTsKPiAgIH0KPiAgIAo+
IEBAIC0xNDY2LDEwICsxNDYzLDYgQEAgc3RhdGljIHZvaWQgZ2VuOF9pbml0X29hX2J1ZmZlcihz
dHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQo+ICAgCSAqLwo+ICAgCW1lbXNldChzdHJl
YW0tPm9hX2J1ZmZlci52YWRkciwgMCwgT0FfQlVGRkVSX1NJWkUpOwo+ICAgCj4gLQkvKgo+IC0J
ICogTWF5YmUgbWFrZSAtPnBvbGxpbiBwZXItc3RyZWFtIHN0YXRlIGlmIHdlIHN1cHBvcnQgbXVs
dGlwbGUKPiAtCSAqIGNvbmN1cnJlbnQgc3RyZWFtcyBpbiB0aGUgZnV0dXJlLgo+IC0JICovCj4g
ICAJc3RyZWFtLT5wb2xsaW4gPSBmYWxzZTsKPiAgIH0KPiAgIAo+IEBAIC0yNTg1LDggKzI1Nzgs
NiBAQCBzdGF0aWMgdm9pZCBpOTE1X3BlcmZfZGVzdHJveV9sb2NrZWQoc3RydWN0IGk5MTVfcGVy
Zl9zdHJlYW0gKnN0cmVhbSkKPiAgIAlpZiAoc3RyZWFtLT5vcHMtPmRlc3Ryb3kpCj4gICAJCXN0
cmVhbS0+b3BzLT5kZXN0cm95KHN0cmVhbSk7Cj4gICAKPiAtCWxpc3RfZGVsKCZzdHJlYW0tPmxp
bmspOwo+IC0KPiAgIAlpZiAoc3RyZWFtLT5jdHgpCj4gICAJCWk5MTVfZ2VtX2NvbnRleHRfcHV0
KHN0cmVhbS0+Y3R4KTsKPiAgIAo+IEBAIC0yNzM2LDggKzI3MjcsNiBAQCBpOTE1X3BlcmZfb3Bl
bl9pb2N0bF9sb2NrZWQoc3RydWN0IGk5MTVfcGVyZiAqcGVyZiwKPiAgIAkJZ290byBlcnJfZmxh
Z3M7Cj4gICAJfQo+ICAgCj4gLQlsaXN0X2FkZCgmc3RyZWFtLT5saW5rLCAmcGVyZi0+c3RyZWFt
cyk7Cj4gLQo+ICAgCWlmIChwYXJhbS0+ZmxhZ3MgJiBJOTE1X1BFUkZfRkxBR19GRF9DTE9FWEVD
KQo+ICAgCQlmX2ZsYWdzIHw9IE9fQ0xPRVhFQzsKPiAgIAlpZiAocGFyYW0tPmZsYWdzICYgSTkx
NV9QRVJGX0ZMQUdfRkRfTk9OQkxPQ0spCj4gQEAgLTI3NDYsNyArMjczNSw3IEBAIGk5MTVfcGVy
Zl9vcGVuX2lvY3RsX2xvY2tlZChzdHJ1Y3QgaTkxNV9wZXJmICpwZXJmLAo+ICAgCXN0cmVhbV9m
ZCA9IGFub25faW5vZGVfZ2V0ZmQoIltpOTE1X3BlcmZdIiwgJmZvcHMsIHN0cmVhbSwgZl9mbGFn
cyk7Cj4gICAJaWYgKHN0cmVhbV9mZCA8IDApIHsKPiAgIAkJcmV0ID0gc3RyZWFtX2ZkOwo+IC0J
CWdvdG8gZXJyX29wZW47Cj4gKwkJZ290byBlcnJfZmxhZ3M7Cj4gICAJfQo+ICAgCj4gICAJaWYg
KCEocGFyYW0tPmZsYWdzICYgSTkxNV9QRVJGX0ZMQUdfRElTQUJMRUQpKQo+IEBAIC0yNzU5LDgg
KzI3NDgsNiBAQCBpOTE1X3BlcmZfb3Blbl9pb2N0bF9sb2NrZWQoc3RydWN0IGk5MTVfcGVyZiAq
cGVyZiwKPiAgIAo+ICAgCXJldHVybiBzdHJlYW1fZmQ7Cj4gICAKPiAtZXJyX29wZW46Cj4gLQls
aXN0X2RlbCgmc3RyZWFtLT5saW5rKTsKPiAgIGVycl9mbGFnczoKPiAgIAlpZiAoc3RyZWFtLT5v
cHMtPmRlc3Ryb3kpCj4gICAJCXN0cmVhbS0+b3BzLT5kZXN0cm95KHN0cmVhbSk7Cj4gQEAgLTM2
MDAsNyArMzU4Nyw2IEBAIHZvaWQgaTkxNV9wZXJmX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpCj4gICAJfQo+ICAgCj4gICAJaWYgKHBlcmYtPm9wcy5lbmFibGVfbWV0cmljX3Nl
dCkgewo+IC0JCUlOSVRfTElTVF9IRUFEKCZwZXJmLT5zdHJlYW1zKTsKPiAgIAkJbXV0ZXhfaW5p
dCgmcGVyZi0+bG9jayk7Cj4gICAKPiAgIAkJb2Ffc2FtcGxlX3JhdGVfaGFyZF9saW1pdCA9IDEw
MDAgKgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmZfdHlwZXMu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZl90eXBlcy5oCj4gaW5kZXggM2M2MjQ2
MDY0YTBiLi4yZDE3MDU5ZDMyZWUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9wZXJmX3R5cGVzLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmZf
dHlwZXMuaAo+IEBAIC0xMzQsMTEgKzEzNCw2IEBAIHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtIHsK
PiAgIAkgKi8KPiAgIAlzdHJ1Y3QgaW50ZWxfZ3QgKmd0Owo+ICAgCj4gLQkvKioKPiAtCSAqIEBs
aW5rOiBMaW5rcyB0aGUgc3RyZWFtIGludG8gYGAmZHJtX2k5MTVfcHJpdmF0ZS0+c3RyZWFtc2Bg
Cj4gLQkgKi8KPiAtCXN0cnVjdCBsaXN0X2hlYWQgbGluazsKPiAtCj4gICAJLyoqCj4gICAJICog
QHdha2VyZWY6IEFzIHdlIGtlZXAgdGhlIGRldmljZSBhd2FrZSB3aGlsZSB0aGUgcGVyZiBzdHJl
YW0gaXMKPiAgIAkgKiBhY3RpdmUsIHdlIHRyYWNrIG91ciBydW50aW1lIHBtIHJlZmVyZW5jZSBm
b3IgbGF0ZXIgcmVsZWFzZS4KPiBAQCAtMzUyLDcgKzM0Nyw2IEBAIHN0cnVjdCBpOTE1X3BlcmYg
ewo+ICAgCSAqIGV4Y2VwdCBleGNsdXNpdmVfc3RyZWFtLgo+ICAgCSAqLwo+ICAgCXN0cnVjdCBt
dXRleCBsb2NrOwo+IC0Jc3RydWN0IGxpc3RfaGVhZCBzdHJlYW1zOwo+ICAgCj4gICAJLyoKPiAg
IAkgKiBUaGUgc3RyZWFtIGN1cnJlbnRseSB1c2luZyB0aGUgT0EgdW5pdC4gSWYgYWNjZXNzZWQK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
