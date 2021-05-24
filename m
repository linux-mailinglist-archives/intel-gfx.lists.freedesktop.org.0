Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 158D638F335
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 20:47:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B32E6E906;
	Mon, 24 May 2021 18:47:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DADF16E906;
 Mon, 24 May 2021 18:47:20 +0000 (UTC)
IronPort-SDR: im22Vv1nYw8xL6z8rYoTt7iHGgS1XW2pvNUmSJ9wnGA2mEwS/DHY8kBhgQP23ttOl7JSMAsWi9
 5Qhf9CUhP4Hw==
X-IronPort-AV: E=McAfee;i="6200,9189,9993"; a="201752181"
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="201752181"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 11:47:20 -0700
IronPort-SDR: VEk8O+SpTlCqwPFfirqN30Z7rIGXpv4VfPCOj1ACqkoNZ5qSHbNzfXZR329Cl9b4oQeKdX2NTM
 Yunk7K++iYPQ==
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="442952602"
Received: from clanggaa-mobl1.ger.corp.intel.com ([10.249.254.179])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 11:47:18 -0700
Message-ID: <dd37f6b3dae8c7daf735f813520af4ab17131e2e.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 24 May 2021 20:47:15 +0200
In-Reply-To: <CAM0jSHNP4NNQknBWLqn8h5kapcxVhAgwjjg3yQ9wDfYb41q92A@mail.gmail.com>
References: <20210521153253.518037-1-thomas.hellstrom@linux.intel.com>
 <20210521153253.518037-9-thomas.hellstrom@linux.intel.com>
 <CAM0jSHNP4NNQknBWLqn8h5kapcxVhAgwjjg3yQ9wDfYb41q92A@mail.gmail.com>
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 08/12] drm/ttm: Use
 drm_memcpy_from_wc_dbm for TTM bo moves
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIxLTA1LTI0IGF0IDE5OjE2ICswMTAwLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4g
T24gRnJpLCAyMSBNYXkgMjAyMSBhdCAxNjozMywgVGhvbWFzIEhlbGxzdHLDtm0KPiA8dGhvbWFz
LmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+ID4gCj4gPiBVc2UgZmFzdCB3YyBt
ZW1jcHkgZm9yIHJlYWRpbmcgb3V0IG9mIHdjIG1lbW9yeSBmb3IgVFRNIGJvIG1vdmVzLgo+ID4g
Cj4gPiBDYzogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAZ21haWwuY29tPgo+ID4gQ2M6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiA+IENjOiBEYW5pZWwgVmV0dGVy
IDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgo+ID4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxz
dHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgo+ID4gLS0tCj4gPiDCoGRy
aXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3V0aWwuYyB8IDkgKysrKysrKystCj4gPiDCoDEgZmls
ZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+IAo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3V0aWwuYwo+ID4gYi9kcml2ZXJzL2dw
dS9kcm0vdHRtL3R0bV9ib191dGlsLmMKPiA+IGluZGV4IDkxMmNiZThlNjBhMi4uNGE3ZDNkNjcy
ZjlhIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdXRpbC5jCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib191dGlsLmMKPiA+IEBAIC0zMSw2ICsz
MSw3IEBACj4gPiAKPiA+IMKgI2luY2x1ZGUgPGRybS90dG0vdHRtX2JvX2RyaXZlci5oPgo+ID4g
wqAjaW5jbHVkZSA8ZHJtL3R0bS90dG1fcGxhY2VtZW50Lmg+Cj4gPiArI2luY2x1ZGUgPGRybS9k
cm1fbWVtY3B5Lmg+Cj4gPiDCoCNpbmNsdWRlIDxkcm0vZHJtX3ZtYV9tYW5hZ2VyLmg+Cj4gPiDC
oCNpbmNsdWRlIDxsaW51eC9kbWEtYnVmLW1hcC5oPgo+ID4gwqAjaW5jbHVkZSA8bGludXgvaW8u
aD4KPiA+IEBAIC05MSw2ICs5Miw3IEBAIHZvaWQgdHRtX21vdmVfbWVtY3B5KHN0cnVjdCB0dG1f
YnVmZmVyX29iamVjdAo+ID4gKmJvLAo+ID4gwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IHR0
bV9rbWFwX2l0ZXJfb3BzICpzcmNfb3BzID0gc3JjX2l0ZXItPm9wczsKPiA+IMKgwqDCoMKgwqDC
oMKgIHN0cnVjdCB0dG1fdHQgKnR0bSA9IGJvLT50dG07Cj4gPiDCoMKgwqDCoMKgwqDCoCBzdHJ1
Y3QgZG1hX2J1Zl9tYXAgc3JjX21hcCwgZHN0X21hcDsKPiA+ICvCoMKgwqDCoMKgwqAgYm9vbCB3
Y19tZW1jcHk7Cj4gPiDCoMKgwqDCoMKgwqDCoCBwZ29mZl90IGk7Cj4gPiAKPiA+IMKgwqDCoMKg
wqDCoMKgIC8qIFNpbmdsZSBUVE0gbW92ZS4gTk9QICovCj4gPiBAQCAtMTE0LDExICsxMTYsMTYg
QEAgdm9pZCB0dG1fbW92ZV9tZW1jcHkoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0Cj4gPiAqYm8s
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuOwo+ID4gwqDCoMKgwqDC
oMKgwqAgfQo+ID4gCj4gPiArwqDCoMKgwqDCoMKgIHdjX21lbWNweSA9ICgoIXNyY19vcHMtPm1h
cHNfdHQgfHwgdHRtLT5jYWNoaW5nICE9Cj4gPiB0dG1fY2FjaGVkKSAmJgo+IAo+IFdoeSBkbyB3
ZSBvbmx5IGNvbnNpZGVyIHRoZSBjYWNoaW5nIHZhbHVlIGZvciB0aGUgbWFwc190dCBjYXNlPyBP
ciBhbQo+IEkgbWlzcmVhZGluZyB0aGlzPwoKSG1tLCB5b3UncmUgcmlnaHQgd2Ugc2hvdWxkIHBy
b2JhYmx5IGNoZWNrIGFsc28gdGhlIGlvbWVtIGNhY2hpbmcgb3IKaWdub3JlIHRoZSB0dCBjYWNo
aW5nLiBTb21ldGltZXMgdGhlc2Ugc3BlY2lhbCBtZW1jcHlzIHRlbmQgdG8gYmUgbGVzcwpjcHUg
Y2FjaGUgdGhyYXNoaW5nIGFuZCBzaG91bGQgYmUgdXNlZCB3aGVyZXZlciBwb3NzaWJsZSwgYnV0
IEkgZ3Vlc3MKd2Ugc2hvdWxkIHN0YXJ0IG91dCB3aXRoIG9ubHkgdXNpbmcgaXQgd2hlbiBzb3Vy
Y2UgaXMgV0MuCgo+IAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGRybV9oYXNfbWVtY3B5X2Zyb21fd2MoKSk7Cj4gPiArCj4gPiDCoMKgwqDCoMKgwqDCoCBmb3Ig
KGkgPSAwOyBpIDwgZHN0X21lbS0+bnVtX3BhZ2VzOyArK2kpIHsKPiA+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBkc3Rfb3BzLT5tYXBfbG9jYWwoZHN0X2l0ZXIsICZkc3RfbWFwLCBp
KTsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzcmNfb3BzLT5tYXBfbG9jYWwo
c3JjX2l0ZXIsICZzcmNfbWFwLCBpKTsKPiA+IAo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgaWYgKCFzcmNfbWFwLmlzX2lvbWVtICYmICFkc3RfbWFwLmlzX2lvbWVtKSB7Cj4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAod2NfbWVtY3B5KSB7Cj4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZHJtX21lbWNweV9mcm9tX3dj
X2RibSgmZHN0X21hcCwgJnNyY19tYXAsCj4gPiBQQUdFX1NJWkUpOwo+IAo+IERvIHdlIG5lZWQg
dG8gY2hlY2sgdGhlIHJldHVybiB2YWx1ZSBoZXJlPyBtZW1jcHlfZnJvbV93YyBleHBlY3RzCj4g
Y2VydGFpbiBhZGRyZXNzIGFsaWdubWVudCwgb3IgaXMgdGhhdCBhbHdheXMgZ3VhcmFudGVlZCBo
ZXJlPyBNYXliZQo+IHRocm93IGEgd2FybmluZyBqdXN0IGZvciBwYXJhbm9pYT8KCkl0IHNob3Vs
ZCBhbHdheXMgYmUgUEFHRV9TSVpFIGFsaWduZWQuIEJ1dCBJIGd1ZXNzIGl0IGRvZXNuJ3QgaHVy
dCB0bwpkbyAKaWYgKHdjX21lbWNweSAmJiBkcm1fbWVtY3B5X2Zyb21fd2NfZGJtKCkpCjsKCj4g
Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9IGVsc2UgaWYgKCFzcmNfbWFwLmlz
X2lvbWVtICYmICFkc3RfbWFwLmlzX2lvbWVtKQo+ID4gewo+ID4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtZW1jcHkoZHN0X21hcC52YWRkciwgc3JjX21h
cC52YWRkciwKPiA+IFBBR0VfU0laRSk7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgfSBlbHNlIGlmICghc3JjX21hcC5pc19pb21lbSkgewo+ID4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkbWFfYnVmX21hcF9tZW1jcHlfdG8oJmRzdF9t
YXAsCj4gPiBzcmNfbWFwLnZhZGRyLAo+ID4gLS0KPiA+IDIuMzEuMQo+ID4gCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
