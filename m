Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F15AFD65
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 15:08:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A7E96E267;
	Wed, 11 Sep 2019 13:08:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB5AE6E267
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 13:08:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 06:08:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="268739439"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga001.jf.intel.com with ESMTP; 11 Sep 2019 06:08:24 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 5C87E5C1E15; Wed, 11 Sep 2019 16:08:10 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190911125717.28997-1-chris@chris-wilson.co.uk>
References: <20190911125717.28997-1-chris@chris-wilson.co.uk>
Date: Wed, 11 Sep 2019 16:08:10 +0300
Message-ID: <87sgp3rnet.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Disable read-only support
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gVGhlIHNh
bWUgcmVhZC1vbmx5IGFmZmxpY3Rpb24gYXMgYmVmZWxsIEljZWxha2UgaXMgYWZmZWN0aW5nIFRp
Z2VybGFrZS4KPiBEaXNhYmxlIHRoZSByZWFkLW9ubHkgc3VwcG9ydCBhcyBjbGVhcnkgaXQgd2Fz
IG5vdCBmaXhlZC4KPgo+IFRlc3RjYXNlOiBpZ3QvaTkxNV9zZWxmdGVzdHMvbGl2ZV9nZW1fY29u
dGV4dAo+IFJlZmVyZW5jZXM6IDM5MzY4NjdkYmMxZSAoImRybS9pOTE1OiBEaXNhYmxlIHJlYWQg
b25seSBwcGd0dCBzdXBwb3J0IGZvciBnZW4xMSIpCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eu
a3VvcHBhbGFAbGludXguaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1p
a2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW1fZ3R0LmMgfCA0ICsrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiBp
bmRleCBlNGY2NmJmZTc0YzIuLmEwOWE5YjYyYWZiZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtX2d0dC5jCj4gQEAgLTE0ODYsOCArMTQ4NiwxMCBAQCBzdGF0aWMgc3RydWN0IGk5MTVf
cHBndHQgKmdlbjhfcHBndHRfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+
ICAJICoKPiAgCSAqIEdlbjExIGhhcyBIU0RFUyM6MTgwNzEzNjE4NyB1bnJlc29sdmVkLiBEaXNh
YmxlIHJvIHN1cHBvcnQKPiAgCSAqIGZvciBub3cuCj4gKwkgKgo+ICsJICogR2VuMTIgaGFzIGlu
aGVyaXRlZCB0aGUgc2FtZSByZWFkLW9ubHkgZmF1bHQgaXNzdWUgZnJvbSBnZW4xMS4KPiAgCSAq
Lwo+IC0JcHBndHQtPnZtLmhhc19yZWFkX29ubHkgPSBJTlRFTF9HRU4oaTkxNSkgIT0gMTE7Cj4g
KwlwcGd0dC0+dm0uaGFzX3JlYWRfb25seSA9ICFJU19HRU5fUkFOR0UoaTkxNSwgMTEsIDEyKTsK
PiAgCj4gIAkvKiBUaGVyZSBhcmUgb25seSBmZXcgZXhjZXB0aW9ucyBmb3IgZ2VuID49Ni4gY2h2
IGFuZCBieHQuCj4gIAkgKiBBbmQgd2UgYXJlIG5vdCBzdXJlIGFib3V0IHRoZSBsYXR0ZXIgc28g
cGxheSBzYWZlIGZvciBub3cuCj4gLS0gCj4gMi4yMy4wCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
