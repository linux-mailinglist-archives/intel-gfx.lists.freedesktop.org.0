Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF0339EFD3
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 09:40:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC9E16EB04;
	Tue,  8 Jun 2021 07:40:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03F3E6EB03;
 Tue,  8 Jun 2021 07:40:05 +0000 (UTC)
IronPort-SDR: Kxc1Ou8zh4VOgBueZmKXmCkYtzEeo8cMFIgaa/0nsldF83NH8CsPO3/DVxgrkpk/UypNmODLvc
 wZU9lWUA7iKA==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="204605927"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="204605927"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 00:40:02 -0700
IronPort-SDR: GgfC07aVKe5jpiWdewHbG0l49J8VZfusRbVuC7rhtHqhL2HWwnlRkSqmt6wjC35bO22ci3rUQo
 JHfRHAfzqUyg==
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="413296834"
Received: from delmer-mobl.ger.corp.intel.com (HELO [10.249.254.231])
 ([10.249.254.231])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 00:40:01 -0700
Message-ID: <b741db2d0b50b634a995d6f7bbfbf70b35818850.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 08 Jun 2021 09:39:58 +0200
In-Reply-To: <20210607182210.99036-6-matthew.auld@intel.com>
References: <20210607182210.99036-1-matthew.auld@intel.com>
 <20210607182210.99036-6-matthew.auld@intel.com>
User-Agent: Evolution 3.40.1 (3.40.1-1.fc34) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/ttm: switch over to
 ttm_buddy_man
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

T24gTW9uLCAyMDIxLTA2LTA3IGF0IDE5OjIyICswMTAwLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4g
TW92ZSBiYWNrIHRvIHRoZSBidWRkeSBhbGxvY2F0b3IgZm9yIG1hbmFnaW5nIGRldmljZSBsb2Nh
bCBtZW1vcnksCj4gYW5kCj4gcmVzdG9yZSB0aGUgbG9zdCBtb2NrIHNlbGZ0ZXN0cy4gS2VlcCBh
cm91bmQgdGhlIHJhbmdlIG1hbmFnZXIKPiByZWxhdGVkCj4gYml0cywgc2luY2Ugd2UgbGlrZWx5
IG5lZWQgdGhpcyBmb3IgbWFuYWdpbmcgc3RvbGVuIGF0IHNvbWUgcG9pbnQuCj4gRm9yCj4gc3Rv
bGVuIHdlIGFsc28gZG9uJ3QgbmVlZCB0byByZXNlcnZlIGFueXRoaW5nIHNvIG5vIG5lZWQgdG8g
c3VwcG9ydCBhCj4gZ2VuZXJpYyByZXNlcnZlIGludGVyZmFjZS4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gQ2M6IFRob21hcyBIZWxs
c3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiDCoGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uY8KgwqDCoMKgwqDCoCB8wqAgMjYgKy0t
Cj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmPCoMKgwqAgfMKg
IDU1ICstLS0tLQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5o
wqDCoMKgIHzCoCAxNyAtLQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcmVnaW9uX3R0
bS5jwqDCoMKgwqDCoMKgIHwgMTAwICsrKy0tLS0tLS0tCj4gwqAuLi4vZHJtL2k5MTUvc2VsZnRl
c3RzL2ludGVsX21lbW9yeV9yZWdpb24uY8KgIHwgMTcwICsrKysrKysrKysrKy0tLS0KPiAtLQo+
IAoKLi4uCgo+IMKgCj4gwqBzdGF0aWMgaW50IGk5MTVfdHRtX21vdmUoc3RydWN0IHR0bV9idWZm
ZXJfb2JqZWN0ICpibywgYm9vbCBldmljdCwKPiBAQCAtNjYxLDIwICs2NjEsOCBAQCBpbnQgX19p
OTE1X2dlbV90dG1fb2JqZWN0X2luaXQoc3RydWN0Cj4gaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVt
LAo+IMKgwqDCoMKgwqDCoMKgwqBzdGF0aWMgc3RydWN0IGxvY2tfY2xhc3Nfa2V5IGxvY2tfY2xh
c3M7Cj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gbWVt
LT5pOTE1Owo+IMKgwqDCoMKgwqDCoMKgwqBlbnVtIHR0bV9ib190eXBlIGJvX3R5cGU7Cj4gLcKg
wqDCoMKgwqDCoMKgc2l6ZV90IGFsaWdubWVudCA9IDA7Cj4gwqDCoMKgwqDCoMKgwqDCoGludCBy
ZXQ7Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqAvKiBBZGp1c3QgYWxpZ25tZW50IHRvIEdQVS0gYW5k
IENQVSBodWdlIHBhZ2Ugc2l6ZXMuICovCj4gLQo+IC3CoMKgwqDCoMKgwqDCoGlmIChtZW0tPmlz
X3JhbmdlX21hbmFnZXIpIHsKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKHNp
emUgPj0gU1pfMUcpCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBhbGlnbm1lbnQgPSBTWl8xRyA+PiBQQUdFX1NISUZUOwo+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBlbHNlIGlmIChzaXplID49IFNaXzJNKQo+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYWxpZ25tZW50ID0gU1pfMk0gPj4gUEFHRV9T
SElGVDsKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZWxzZSBpZiAoc2l6ZSA+PSBT
Wl82NEspCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBh
bGlnbm1lbnQgPSBTWl82NEsgPj4gUEFHRV9TSElGVDsKPiAtwqDCoMKgwqDCoMKgwqB9Cj4gLQo+
IMKgwqDCoMKgwqDCoMKgwqBkcm1fZ2VtX3ByaXZhdGVfb2JqZWN0X2luaXQoJmk5MTUtPmRybSwg
Jm9iai0+YmFzZSwgc2l6ZSk7Cj4gwqDCoMKgwqDCoMKgwqDCoGk5MTVfZ2VtX29iamVjdF9pbml0
KG9iaiwgJmk5MTVfZ2VtX3R0bV9vYmpfb3BzLCAmbG9ja19jbGFzcywKPiBmbGFncyk7Cj4gwqDC
oMKgwqDCoMKgwqDCoGk5MTVfZ2VtX29iamVjdF9pbml0X21lbW9yeV9yZWdpb24ob2JqLCBtZW0p
Owo+IEBAIC02OTYsNyArNjg0LDcgQEAgaW50IF9faTkxNV9nZW1fdHRtX29iamVjdF9pbml0KHN0
cnVjdAo+IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSwKPiDCoMKgwqDCoMKgwqDCoMKgICovCj4g
wqDCoMKgwqDCoMKgwqDCoG9iai0+YmFzZS52bWFfbm9kZS5kcml2ZXJfcHJpdmF0ZSA9IGk5MTVf
Z2VtX3RvX3R0bShvYmopOwo+IMKgwqDCoMKgwqDCoMKgwqByZXQgPSB0dG1fYm9faW5pdCgmaTkx
NS0+YmRldiwgaTkxNV9nZW1fdG9fdHRtKG9iaiksIHNpemUsCj4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBib190eXBlLCAmaTkxNV9zeXNfcGxhY2Vt
ZW50LCBhbGlnbm1lbnQsCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBib190eXBlLCAmaTkxNV9zeXNfcGxhY2VtZW50LCBQQUdFX1NJWkUsCgpBY3R1
YWxseSBqdXN0IHJlYWxpemVkIHRoYXQgdGhlIGFsaWdubWVudCBpcyBzcGVjaWZpZWQgaW4gUEFH
RV9TSVpFCnVuaXRzLCBzbyBhYm92ZSBzaG91bGQgYmUgcy9QQUdFX1NJWkUvMS8uIE1pZ2h0IG5l
ZWQgdG8gY2hlY2sgdGhhdCB0aGUKYnVkZHkgVFRNIGludGVyZmFjZSBnZXRzIHRoaXMgcmlnaHQg
YXMgd2VsbC4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
