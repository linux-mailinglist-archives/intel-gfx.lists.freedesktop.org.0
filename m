Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5C2F91AB
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 15:14:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B96576E49D;
	Tue, 12 Nov 2019 14:14:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EA186E49D
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 14:14:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 06:14:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,296,1569308400"; d="scan'208";a="207488387"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga006.jf.intel.com with ESMTP; 12 Nov 2019 06:14:06 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 31A9E5C1E42; Tue, 12 Nov 2019 16:13:56 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191112092854.869-24-chris@chris-wilson.co.uk>
References: <20191112092854.869-1-chris@chris-wilson.co.uk>
 <20191112092854.869-24-chris@chris-wilson.co.uk>
Date: Tue, 12 Nov 2019 16:13:56 +0200
Message-ID: <87pnhx41y3.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 24/27] drm/i915/gt: Set unused mocs entry to
 follow PTE on tgl as on all others
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gQmUgY29u
c2lzdGVudCBpbiBvdXIgbW9jcyBzZXR1cCBvbiBUaWdlcmxha2UgYW5kIHNldCB0aGUgdW51c2Vk
IGNvbnRyb2wKPiB2YWx1ZSB0byBmb2xsb3cgdGhlIFBURSBlbnRyeSBhcyB3ZSBwcmV2aW91c2x5
IGhhdmUgZG9uZS4gVGhlIHVudXNlZAo+IHZhbHVlcyBhcmUgYmV5b25kIHRoZSBkZWZpbmVzIG9m
IHRoZSBBQkksIHRoZSBjb25zaXN0ZW5jeSBzaW1wbGlmaWVzIG91cgo+IGNoZWNraW5nLgoKU2lt
cGxpZmllcyBob3c/Cgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21v
Y3MuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9u
KC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jCj4gaW5kZXggNmU4ODFjNzM1
YjIwLi5kMmI0NDVkNmMyNTggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbW9jcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5j
Cj4gQEAgLTQ4OSw3ICs0ODksNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9tb2NzX2luaXRfZ2xvYmFs
KHN0cnVjdCBpbnRlbF9ndCAqZ3QpCj4gIAlmb3IgKDsgaW5kZXggPCB0YWJsZS5uX2VudHJpZXM7
IGluZGV4KyspCj4gIAkJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwKPiAgCQkJCSAgIEdFTjEy
X0dMT0JBTF9NT0NTKGluZGV4KSwKPiAtCQkJCSAgIHRhYmxlLnRhYmxlWzBdLmNvbnRyb2xfdmFs
dWUpOwo+ICsJCQkJICAgdGFibGUudGFibGVbSTkxNV9NT0NTX1BURV0uY29udHJvbF92YWx1ZSk7
CgpUaGlzIHNldHMgaXQgcG9pbnQgaW50byByZXNlcnZlZCwgc28gSSBhbSBjb25mdXNlZC4KCkFs
c28gdGhlIGNvbW1lbnQgYWJvdmUgYW5kIHRoZSBwYXJ0IGluIGdlbmVyaWMgTU9DUyB0YWJsZXMg
d2lsbApiZSBzdGFsZS4KCi1NaWthCgo+ICB9Cj4gIAo+ICB2b2lkIGludGVsX21vY3NfaW5pdChz
dHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+IC0tIAo+IDIuMjQuMAo+Cj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4g
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
