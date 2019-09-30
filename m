Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D454C2349
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 16:30:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A65A6E459;
	Mon, 30 Sep 2019 14:30:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44E526E459
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 14:30:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18668312-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 15:30:02 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: intel-gfx@lists.freedesktop.org
References: <20190930123929.12758-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190930123929.12758-1-chris@chris-wilson.co.uk>
Message-ID: <156985379618.1880.7316254058460023074@skylake-alporthouse-com>
Date: Mon, 30 Sep 2019 15:29:56 +0100
Subject: Re: [Intel-gfx] [CI] RFT drm/i915/tgl: Re-enable rps
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDktMzAgMTM6Mzk6MjkpCj4gLS0tCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgfCAxIC0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgZGVs
ZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2ku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKPiBpbmRleCBlYTUzZGZlMmZiYTAu
LmNkMWZiZDcxZGMzMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bj
aS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwo+IEBAIC04MDcsNyAr
ODA3LDYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBpbnRlbF90aWdl
cmxha2VfMTJfaW5mbyA9IHsKPiAgICAgICAgIC5kaXNwbGF5Lmhhc19tb2R1bGFyX2ZpYSA9IDEs
Cj4gICAgICAgICAuZW5naW5lX21hc2sgPQo+ICAgICAgICAgICAgICAgICBCSVQoUkNTMCkgfCBC
SVQoQkNTMCkgfCBCSVQoVkVDUzApIHwgQklUKFZDUzApIHwgQklUKFZDUzIpLAo+IC0gICAgICAg
Lmhhc19ycHMgPSBmYWxzZSwgLyogWFhYIGRpc2FibGVkIGZvciBkZWJ1Z2dpbmcgKi8KClNlZW1z
IHRoZSByZXBvcnQgaXMgYSBsaXR0bGUgZGVsYXllZC4gTG9uZyBzdG9yeSBzaG9ydCwgZmktdGds
LXUyIGRpZWQKaW4gZ2VtX3N5bmMgYXMgYmVmb3JlLiBVbmRlcmx5aW5nIGNhdXNlIGlzIHN0aWxs
IHVucmVzb2x2ZWQsIGFsdGhvdWdoCnJwcyBpcyBsaWtlbHkgYSBjb3JyZWxhdGlvbiByYXRoZXIg
dGhhbiBjYXVzYWwgbGluay4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
