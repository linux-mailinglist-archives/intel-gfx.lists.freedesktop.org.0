Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37EA839BBB7
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 17:23:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A9306F618;
	Fri,  4 Jun 2021 15:23:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B69CB6F618
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 15:23:17 +0000 (UTC)
IronPort-SDR: jM2y+Z+9sOIzwO8Mki7mewloE1vZ1ZEM6Cm6ZByQMyI+oQyuf2t7XLy93ghLZ6AOtLZ7E0ZhLg
 2Wwg97rRcbvA==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="204286263"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="204286263"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 08:23:05 -0700
IronPort-SDR: 6fdveGg9cBMKVK8JZ1wKiVNuqK/x8NK7NfDGCVu2UG/vlZhptPTNlmSKKNTifhLXj2inxFipor
 58kS2M8mQ5iQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="550553804"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 04 Jun 2021 08:23:04 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id B60255C1F0D; Fri,  4 Jun 2021 18:22:49 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Manasi Navare <manasi.d.navare@intel.com>
In-Reply-To: <YLoheJuGxUjOgHd1@intel.com>
References: <20210603220754.13920-1-manasi.d.navare@intel.com>
 <YLoheJuGxUjOgHd1@intel.com>
Date: Fri, 04 Jun 2021 18:22:49 +0300
Message-ID: <87wnr9odrq.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Initialize the mbus_offset to
 fix static analysis issue
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Um9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPiB3cml0ZXM6Cgo+IE9uIFRodSwg
SnVuIDAzLCAyMDIxIGF0IDAzOjA3OjU0UE0gLTA3MDAsIE1hbmFzaSBOYXZhcmUgd3JvdGU6Cj4+
IFN0YXRpYyBhbmFseXNpcyBpZGVudGlmaWVkIGFuIGlzc3VlIGluIHNrbF9jcnRjX2FsbG9jYXRl
X2RkYiB3aGVyZQo+PiBtYnVzX29mZnNldCBtYXkgYmUgdXNlZCB1bmluaXRpYWxpemVkLgo+PiBU
aGlzIHBhdGNoIGZpeGVzIGl0Lgo+Cj4gSSdtIHNvcnJ5LCBidXQgSSByZWFsbHkgY2Fubm90IHNl
ZSB3aGF0IHRoaXMgdG9vbCBpcyBzZWVpbmcuLi4KPiBJIGV2ZW4gdHJpZWQgdG8gbG9vayB0byBv
dXIgaW50ZXJuYWwgYnJhbmNoIHRvIHNlZSBpZiBpdCB3YXMgYW4gaXNzdWUKPiB0aGVyZS4KPiBC
dXQgSSdtIGZhaWxpbmcgdG8gc2VlIGhvdyBpdCBpcyBwb3NzaWJsZS4uLgoKSXQgaXMgaW4gdGhl
IGdvdG8gb3V0OyBwYXRoLgotTWlrYQoKPgo+PiAKPj4gRml4ZXM6IDgzNWMxNzZjYjFjNCAoImRy
bS9pOTE1OiBJbnRyb2R1Y2UgTUJVUyByZWxhdGl2ZSBkYnVmIG9mZnNldHMiKQo+PiBDYzogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4gU2lnbmVkLW9m
Zi1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KPj4gLS0tCj4+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwgMiArLQo+PiAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3BtLmMKPj4gaW5kZXggMDBmM2RlYWQyMGFkLi5hMzg1YjhiNzQxNGYgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcG0uYwo+PiBAQCAtNDE2Myw3ICs0MTYzLDcgQEAgc2tsX2NydGNfYWxsb2Nh
dGVfZGRiKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLCBzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YykKPj4gIAlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZTsKPj4gIAlz
dHJ1Y3Qgc2tsX2RkYl9lbnRyeSBkZGJfc2xpY2VzOwo+PiAgCWVudW0gcGlwZSBwaXBlID0gY3J0
Yy0+cGlwZTsKPj4gLQl1bnNpZ25lZCBpbnQgbWJ1c19vZmZzZXQ7Cj4+ICsJdW5zaWduZWQgaW50
IG1idXNfb2Zmc2V0ID0gMDsKPj4gIAl1MzIgZGRiX3JhbmdlX3NpemU7Cj4+ICAJdTMyIGRidWZf
c2xpY2VfbWFzazsKPj4gIAl1MzIgc3RhcnQsIGVuZDsKPj4gLS0gCj4+IDIuMTkuMQo+PiAKPj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdAo+PiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+IGh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1n
ZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
