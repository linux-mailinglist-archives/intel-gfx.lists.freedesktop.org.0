Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC81D7767
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 15:26:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 655646E369;
	Tue, 15 Oct 2019 13:26:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A6C06E286
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 13:26:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18844651-1500050 
 for multiple; Tue, 15 Oct 2019 14:26:07 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 14:26:06 +0100
Message-Id: <20191015132606.14349-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Flush tasklet submission before
 sleeping on i915_request_wait
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

SWYgdGhlIHN5c3RlbSBpcyBiZWluZyBzbG93IGFuZCB1c2Vyc3BhY2UgaXMgcmFjaW5nIGFoZWFk
IG9mIHRoZSBHUFUgYW5kCmZpbmRzIGl0c2VsZiB3YWl0aW5nIGZvciB0aGUgR1BVIHRvIGNhdGNo
IHVwLCBiZWZvcmUgdGhlIHByb2Nlc3Mgc2xlZXBzCmdpdmUgdGhlIHRhc2tsZXQgYSBraWNrLCBi
eXBhc3Npbmcga3NvZnRpcnFkLiBJZiB0aGUgc3lzdGVtIGlzCm92ZXJsb2FkZWQsIHRoZW4ga3Nv
ZnRpcnFkIG1heSBiZSBkZWxheWVkIGluY3VycmluZyBhZGRpdGlvbmFsIGxhdGVuY3kKdG8gb3Vy
IHVzZXIuCgpUaGlzIHNob3VsZCBub3QgYmUgYSBmcmVxdWVudCBwcm9ibGVtLCBidXQgaW4gdGhl
IHBhc3Qgd2UgaGF2ZSBvYnNlcnZlZApzZXZlcmFsIGh1bmRyZWQgbWlsbGlzZWNvbmQgZGVsYXlz
IGJlZm9yZSBrc29mdGlycWQgc2VydmljZXMgYW4KaW50ZXJydXB0LCBzbyBidXJuIGEgZmV3IGN5
Y2xlcyB0byBsZW5kIGEgaGVscGluZyBoYW5kLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVy
c3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5j
IHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVxdWVzdC5jCmluZGV4IGI4YTU0NTcyYTRmOC4uZjFjYWRhZDRlODFjIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlcXVlc3QuYwpAQCAtMTQ5Niw2ICsxNDk2LDcgQEAgbG9uZyBpOTE1X3Jl
cXVlc3Rfd2FpdChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwKIAkJCWJyZWFrOwogCQl9CiAKKwkJ
aW50ZWxfZW5naW5lX2ZsdXNoX3N1Ym1pc3Npb24ocnEtPmVuZ2luZSk7CiAJCXRpbWVvdXQgPSBp
b19zY2hlZHVsZV90aW1lb3V0KHRpbWVvdXQpOwogCX0KIAlfX3NldF9jdXJyZW50X3N0YXRlKFRB
U0tfUlVOTklORyk7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
