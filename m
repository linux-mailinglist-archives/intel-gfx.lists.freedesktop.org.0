Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFA1E7421
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 15:56:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87B8E6E8DD;
	Mon, 28 Oct 2019 14:56:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A48AA6E8DD
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 14:56:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 07:56:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="203281878"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga006.jf.intel.com with ESMTP; 28 Oct 2019 07:56:29 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 61AB75C1EB8; Mon, 28 Oct 2019 16:55:37 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191028142652.1987-2-chris@chris-wilson.co.uk>
References: <20191028142652.1987-1-chris@chris-wilson.co.uk>
 <20191028142652.1987-2-chris@chris-wilson.co.uk>
Date: Mon, 28 Oct 2019 16:55:37 +0200
Message-ID: <87y2x46hsm.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: Mark conn as
 initialised by iterator
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gc21hdGNo
IGNvbXBsYWlucyBhYm91dAo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1Ly9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYzoxNDQwMyBpbnRlbF9zZXRfZHBfdHBfY3RsX25vcm1hbCgpIGVycm9yOiB1bmluaXRp
YWxpemVkIHN5bWJvbCAnY29ubicuCj4gYmVjYXVzZSBpdCBoYXMgbm8gd2F5IHRvIGRldGVybWlu
ZSB0aGF0IHRoZSBsb29wIG11c3QgaGF2ZSBhbiBlbnRyeS4KPiBUZWxsIHRoZSBzdGF0aWMgYW5h
bHlzZXJzIHRvIGlnbm9yZSB0aGUgbG9jYWwsIGl0IHdpbGwgYWx3YXlzIGJlIHNldC4KPgo+IFNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKUmV2
aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgoK
PiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAy
ICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBpbmRleCAw
ZjBjNTgyYTU2ZDUuLjlkY2UyZTllNTM3NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gQEAgLTE0MzkxLDggKzE0MzkxLDggQEAgc3RhdGlj
IHZvaWQgaW50ZWxfY3J0Y19lbmFibGVfdHJhbnNfcG9ydF9zeW5jKHN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjLAo+ICBzdGF0aWMgdm9pZCBpbnRlbF9zZXRfZHBfdHBfY3RsX25vcm1hbChzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YywKPiAgCQkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSkKPiAgewo+ICsJc3RydWN0IGRybV9jb25uZWN0b3IgKnVuaW5pdGlhbGl6ZWRfdmFy
KGNvbm4pOwo+ICAJc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGU7Cj4gLQlz
dHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubjsKPiAgCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHA7
Cj4gIAlpbnQgaTsKPiAgCj4gLS0gCj4gMi4yNC4wLnJjMQo+Cj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4g
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
