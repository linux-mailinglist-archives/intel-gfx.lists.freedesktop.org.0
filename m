Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10975F71D1
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 11:25:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA80B6E896;
	Mon, 11 Nov 2019 10:25:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 154746E896
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 10:25:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 02:25:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,292,1569308400"; d="scan'208";a="403773470"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 11 Nov 2019 02:25:09 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 616585C1DF4; Mon, 11 Nov 2019 12:25:00 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191109200823.15636-1-chris@chris-wilson.co.uk>
References: <20191109200823.15636-1-chris@chris-wilson.co.uk>
Date: Mon, 11 Nov 2019 12:25:00 +0200
Message-ID: <87imnq677n.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Protect context while grabbing
 its name for the request
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gSW5zaWRl
IHByaW50X3JlcXVlc3QoKSwgd2UgcXVlcnkgdGhlIGNvbnRleHQvdGltZWxpbmUgbmFtZS4gTm90
aGluZwo+IGltbWVkaWF0ZWx5IHByb3RlY3RzIHRoZSBjb250ZXh0IGZyb20gYmVpbmcgZnJlZWQg
aWYgdGhlIHJlcXVlc3QgaXMKPiBjb21wbGV0ZSAtLSB3ZSByZWx5IG9uIHNlcmlhbGlzYXRpb24g
YnkgdGhlIGNhbGxlciB0byBrZWVwIHRoZSBuYW1lCj4gdmFsaWQgdW50aWwgdGhleSBmaW5pc2gg
dXNpbmcgaXQuIEluc2lkZSBpbnRlbF9lbmdpbmVfZHVtcCgpLCB3ZQo+IGdlbmVyYWxseSBvbmx5
IHByaW50IHRoZSByZXF1c3RzIGluIHRoZSBleGVjdXRpb24gcXVldWUgcHJvdGVjdGVkIGJ5IHRo
ZQpyZXF1ZXN0cwoKPiBlbmdpbmUtPmFjdGl2ZS5sb2NrLCBidXQgd2UgYWxzbyBzaG93IHRoZSBw
ZW5kaW5nIGV4ZWNsaXN0cyBwb3J0cyB3aGljaAo+IGFyZSBub3QgcHJvdGVjdGVkIGFuZCBzbyBy
ZXF1aXJlIGFuIHJjdV9yZWFkX2xvY2sgdG8ga2VlcCB0aGUgcG9pbnRlcgo+IHZhbGlkLgoKcy9h
bi9hID8KCj4KPiBbIDE2OTUuNzAwODgzXSBCVUc6IEtBU0FOOiB1c2UtYWZ0ZXItZnJlZSBpbiBp
OTE1X2ZlbmNlX2dldF90aW1lbGluZV9uYW1lKzB4NTMvMHg5MCBbaTkxNV0KPiBbIDE2OTUuNzAw
OTgxXSBSZWFkIG9mIHNpemUgOCBhdCBhZGRyIGZmZmY4ODg3MzQ0ZjRkNTAgYnkgdGFzayBnZW1f
Y3R4X3BlcnNpc3QvMjk2OAo+IFsgMTY5NS43MDEwNjhdCj4gWyAxNjk1LjcwMTE1Nl0gQ1BVOiAx
IFBJRDogMjk2OCBDb21tOiBnZW1fY3R4X3BlcnNpc3QgVGFpbnRlZDogRyAgICAgVSAgICAgICAg
ICAgIDUuNC4wLXJjNisgIzMzMQo+IFsgMTY5NS43MDEyNDZdIEhhcmR3YXJlIG5hbWU6IEludGVs
IENvcnBvcmF0aW9uIE5VQzdpNUJOSy9OVUM3aTVCTkIsIEJJT1MgQk5LQkwzNTcuODZBLjAwNTIu
MjAxNy4wOTE4LjEzNDYgMDkvMTgvMjAxNwo+IFsgMTY5NS43MDEzMzRdIENhbGwgVHJhY2U6Cj4g
WyAxNjk1LjcwMTQyNF0gIGR1bXBfc3RhY2srMHg1Yi8weDkwCj4gWyAxNjk1LjcwMTg3MF0gID8g
aTkxNV9mZW5jZV9nZXRfdGltZWxpbmVfbmFtZSsweDUzLzB4OTAgW2k5MTVdCj4gWyAxNjk1Ljcw
MTk2NF0gIHByaW50X2FkZHJlc3NfZGVzY3JpcHRpb24uY29uc3Rwcm9wLjcrMHgzNi8weDUwCj4g
WyAxNjk1LjcwMjQwOF0gID8gaTkxNV9mZW5jZV9nZXRfdGltZWxpbmVfbmFtZSsweDUzLzB4OTAg
W2k5MTVdCj4gWyAxNjk1LjcwMjg1Nl0gID8gaTkxNV9mZW5jZV9nZXRfdGltZWxpbmVfbmFtZSsw
eDUzLzB4OTAgW2k5MTVdCj4gWyAxNjk1LjcwMjk0N10gIF9fa2FzYW5fcmVwb3J0LmNvbGQuMTAr
MHgxYS8weDNhCj4gWyAxNjk1LjcwMzM5MF0gID8gaTkxNV9mZW5jZV9nZXRfdGltZWxpbmVfbmFt
ZSsweDUzLzB4OTAgW2k5MTVdCj4gWyAxNjk1LjcwMzgzNl0gIGk5MTVfZmVuY2VfZ2V0X3RpbWVs
aW5lX25hbWUrMHg1My8weDkwIFtpOTE1XQo+IFsgMTY5NS43MDQyNDFdICBwcmludF9yZXF1ZXN0
KzB4ODIvMHgyZTAgW2k5MTVdCj4gWyAxNjk1LjcwNDYzOF0gID8gZnd0YWJsZV9yZWFkMzIrMHgx
MzMvMHgzNjAgW2k5MTVdCj4gWyAxNjk1LjcwNTA0Ml0gID8gd3JpdGVfdGltZXN0YW1wKzB4MTEw
LzB4MTEwIFtpOTE1XQo+IFsgMTY5NS43MDUxMzNdICA/IF9yYXdfc3Bpbl9sb2NrX2lycXNhdmUr
MHg3OS8weGMwCj4gWyAxNjk1LjcwNTIyMV0gID8gcmVmY291bnRfaW5jX25vdF96ZXJvX2NoZWNr
ZWQrMHg5MS8weDExMAo+IFsgMTY5NS43MDUzMDZdICA/IHJlZmNvdW50X2RlY19hbmRfbXV0ZXhf
bG9jaysweDUwLzB4NTAKPiBbIDE2OTUuNzA1NzA5XSAgPyBpbnRlbF9lbmdpbmVfZmluZF9hY3Rp
dmVfcmVxdWVzdCsweDIwMi8weDIzMCBbaTkxNV0KPiBbIDE2OTUuNzA2MTE1XSAgaW50ZWxfZW5n
aW5lX2R1bXArMHgyYzkvMHg5MDAgW2k5MTVdCj4KPiBGaXhlczogYzM2ZWViZDliYTVkICgiZHJt
L2k5MTUvZ3Q6IGV4ZWNsaXN0cy0+YWN0aXZlIGlzIHNlcmlhbGlzZWQgYnkgdGhlIHRhc2tsZXQi
KQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
Pgo+IENjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KPiBD
YzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAtLS0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgfCAyICsrCj4gIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2VuZ2luZV9jcy5jCj4gaW5kZXggYmYyMDMwNWExMDgzLi5iOTYxM2QwNDQzOTMgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwo+IEBAIC0xMzczLDYgKzEz
NzMsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9lbmdpbmVfcHJpbnRfcmVnaXN0ZXJzKHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPiAgCQl9Cj4gIAo+ICAJCWV4ZWNsaXN0c19hY3RpdmVf
bG9ja19iaChleGVjbGlzdHMpOwo+ICsJCXJjdV9yZWFkX2xvY2soKTsKCkZvciBtZSB0aGVyZSBp
cyB0ZW1wdGF0aW9uIHRvIHB1c2ggdGhlIHJjdSBwcm90ZWN0aW9uCmludG8gdGhlIGFjdGl2ZSBs
b2NrIGFuZCByZW1vdmUgdGhlIF9iaCBmcm9tIHRoZSBuYW1lLgoKUmV2aWV3ZWQtYnk6IE1pa2Eg
S3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgoKPiAgCQlmb3IgKHBvcnQg
PSBleGVjbGlzdHMtPmFjdGl2ZTsgKHJxID0gKnBvcnQpOyBwb3J0KyspIHsKPiAgCQkJY2hhciBo
ZHJbODBdOwo+ICAJCQlpbnQgbGVuOwo+IEBAIC0xNDEwLDYgKzE0MTEsNyBAQCBzdGF0aWMgdm9p
ZCBpbnRlbF9lbmdpbmVfcHJpbnRfcmVnaXN0ZXJzKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZSwKPiAgCQkJaWYgKHRsKQo+ICAJCQkJaW50ZWxfdGltZWxpbmVfcHV0KHRsKTsKPiAgCQl9
Cj4gKwkJcmN1X3JlYWRfdW5sb2NrKCk7Cj4gIAkJZXhlY2xpc3RzX2FjdGl2ZV91bmxvY2tfYmgo
ZXhlY2xpc3RzKTsKPiAgCX0gZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+IDYpIHsKPiAg
CQlkcm1fcHJpbnRmKG0sICJcdFBQX0RJUl9CQVNFOiAweCUwOHhcbiIsCj4gLS0gCj4gMi4yNC4w
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
