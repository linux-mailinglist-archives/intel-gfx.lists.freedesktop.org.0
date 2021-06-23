Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8643B1A7E
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 14:50:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F40466E0E6;
	Wed, 23 Jun 2021 12:50:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDA3F6E0E6;
 Wed, 23 Jun 2021 12:50:50 +0000 (UTC)
IronPort-SDR: Iuk2AAT54learJ4rKCx+8+AY7s2gxsD+fW1BIKsPqkYRPjQ6fGFxIQVRZtIS9VhIejIaAd6E08
 Cjlp+TV0XUjQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="207294468"
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="207294468"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 05:50:49 -0700
IronPort-SDR: b38MtDZ3FnbELNUJNBkrxwtq4E/3l8qOxkxI64emgzJHFqLdIFYcYEc8sisV3LgChlviTbgk2H
 WChcuKmWvm1Q==
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="623829990"
Received: from asortkjx-mobl.ger.corp.intel.com (HELO [10.249.254.136])
 ([10.249.254.136])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 05:50:48 -0700
Message-ID: <c8f4daeaba546d20c63ee4a7fb2c99824a319df9.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 23 Jun 2021 14:50:46 +0200
In-Reply-To: <20210623112637.266855-1-matthew.auld@intel.com>
References: <20210623112637.266855-1-matthew.auld@intel.com>
User-Agent: Evolution 3.40.1 (3.40.1-1.fc34) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/ttm: consider all placements
 for the page alignment
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIxLTA2LTIzIGF0IDEyOjI2ICswMTAwLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4g
SnVzdCBjaGVja2luZyB0aGUgY3VycmVudCByZWdpb24gaXMgbm90IGVub3VnaCwgaWYgd2UgbGF0
ZXIgbWlncmF0ZQo+IHRoZQo+IG9iamVjdCBzb21ld2hlcmUgZWxzZS4gRm9yIGV4YW1wbGUgaWYg
dGhlIHBsYWNlbWVudHMgYXJlIHtTTUVNLAo+IExNRU19LAo+IHRoZW4gd2UgbWlnaHQgZ2V0IHRo
aXMgd3JvbmcuIEFub3RoZXIgaWRlYSBtaWdodCBiZSB0byBtYWtlIHRoZQo+IHBhZ2VfYWxpZ25t
ZW50IHBhcnQgb2YgdGhlIHR0bV9wbGFjZSwgaW5zdGVhZCBvZiB0aGUgQk8uCj4gCj4gU2lnbmVk
LW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+IENjOiBUaG9t
YXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4g
wqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMgfCAyMSArKysrKysrKysr
KysrKysrKysrKy0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV90dG0uYwo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jCj4gaW5k
ZXggYzVkZWI4YjcyMjdjLi41ZDg5NGJiYTY0MzAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX3R0bS5jCj4gQEAgLTc1Myw2ICs3NTMsMjUgQEAgdm9pZCBpOTE1X3R0bV9i
b19kZXN0cm95KHN0cnVjdAo+IHR0bV9idWZmZXJfb2JqZWN0ICpibykKPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGNhbGxfcmN1KCZvYmotPnJjdSwgX19pOTE1X2dlbV9mcmVlX29i
amVjdF9yY3UpOwo+IMKgfQo+IMKgCj4gK3N0YXRpYyB1NjQgaTkxNV9nZW1fb2JqZWN0X3BhZ2Vf
c2l6ZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdAo+ICpvYmopCj4gK3sKPiArwqDCoMKgwqDC
oMKgwqB1NjQgcGFnZV9zaXplOwo+ICvCoMKgwqDCoMKgwqDCoGludCBpOwo+ICsKPiArwqDCoMKg
wqDCoMKgwqBpZiAoIW9iai0+bW0ubl9wbGFjZW1lbnRzKQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqByZXR1cm4gb2JqLT5tbS5yZWdpb24tPm1pbl9wYWdlX3NpemU7Cj4gKwo+ICvC
oMKgwqDCoMKgwqDCoHBhZ2Vfc2l6ZSA9IDA7Cj4gK8KgwqDCoMKgwqDCoMKgZm9yIChpID0gMDsg
aSA8IG9iai0+bW0ubl9wbGFjZW1lbnRzOyBpKyspIHsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1yID0gb2JqLQo+ID5tbS5wbGFj
ZW1lbnRzW2ldOwo+ICsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcGFnZV9zaXpl
ID0gbWF4X3QodTY0LCBtci0+bWluX3BhZ2Vfc2l6ZSwgcGFnZV9zaXplKTsKPiArwqDCoMKgwqDC
oMKgwqB9Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoEdFTV9CVUdfT04oIXBhZ2Vfc2l6ZSk7Cj4gK8Kg
wqDCoMKgwqDCoMKgcmV0dXJuIHBhZ2Vfc2l6ZTsKPiArfQo+ICsKCkkgdGhpbmsgaWYgYXQgYWxs
IHBvc3NpYmxlLCB3ZSByZWFsbHkgc2hvdWxkIHRyeSB0byBhdm9pZCB0aGUgYWJvdmUuCkNvdWxk
IHdlLCBqdXN0IGxpa2UgaW4geW91ciBuZXh0IHBhdGNoLCBwZXJoYXBzIHNldCBhbGlnbm1lbnQg
dG8gMCwKaW5kaWNhdGluZyB0aGF0IHdlIGRvbid0IGNhcmUgYXQgdGhlIHBlci1vYmplY3QgbGV2
ZWwgYW5kIHNvbWV0aGluZwplbHNlLCBpbmRpY2F0aW5nIHRoYXQgd2UgY2FyZS4KClRoZW4gdGhl
IG1hbmFnZXIgY291bGQgdXNlIGl0cyBkZWZhdWx0IGlmIHdlIGRvbid0IGNhcmUgYW5kIHRoZQpp
bmRpY2F0ZWQgYWxpZ25tZW50LCBldmVuIGlmIGl0J3MgbGVzcywgaWYgd2UgY2FyZSBhdCB0aGUg
cGVyIG9iamVjdApsZXZlbD8gCgovVGhvbWFzCgo+IMKgLyoqCj4gwqAgKiBfX2k5MTVfZ2VtX3R0
bV9vYmplY3RfaW5pdCAtIEluaXRpYWxpemUgYSB0dG0tYmFja2VkIGk5MTUgZ2VtCj4gb2JqZWN0
Cj4gwqAgKiBAbWVtOiBUaGUgaW5pdGlhbCBtZW1vcnkgcmVnaW9uIGZvciB0aGUgb2JqZWN0Lgo+
IEBAIC03OTMsNyArODEyLDcgQEAgaW50IF9faTkxNV9nZW1fdHRtX29iamVjdF9pbml0KHN0cnVj
dAo+IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSwKPiDCoMKgwqDCoMKgwqDCoMKgb2JqLT5iYXNl
LnZtYV9ub2RlLmRyaXZlcl9wcml2YXRlID0gaTkxNV9nZW1fdG9fdHRtKG9iaik7Cj4gwqDCoMKg
wqDCoMKgwqDCoHJldCA9IHR0bV9ib19pbml0KCZpOTE1LT5iZGV2LCBpOTE1X2dlbV90b190dG0o
b2JqKSwgc2l6ZSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBib190eXBlLCAmaTkxNV9zeXNfcGxhY2VtZW50LAo+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbWVtLT5taW5fcGFnZV9zaXplID4+IFBB
R0VfU0hJRlQsCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBpOTE1X2dlbV9vYmplY3RfcGFnZV9zaXplKG9iaikgPj4KPiBQQUdFX1NISUZULAoKCgoK
Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdHJ1
ZSwgTlVMTCwgTlVMTCwgaTkxNV90dG1fYm9fZGVzdHJveSk7Cj4gwqDCoMKgwqDCoMKgwqDCoGlm
ICghcmV0KQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgb2JqLT50dG0uY3JlYXRl
ZCA9IHRydWU7CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
