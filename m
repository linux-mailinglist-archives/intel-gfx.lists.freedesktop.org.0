Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB60AF21C6
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 23:35:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81A656EE3B;
	Wed,  6 Nov 2019 22:35:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85FE46E0AA
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 22:35:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19108057-1500050 
 for multiple; Wed, 06 Nov 2019 22:34:12 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Nov 2019 22:34:10 +0000
Message-Id: <20191106223410.30334-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Cleanup heartbeat systole first
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

QmVmb3JlIHdlIGdyYWIgdGhlIGVuZ2luZSB3YWtlcmVmLCB0aWR5IHVwIHRoZSBwcmV2aW91cyBo
ZWFydGJlYXQKcmVxdWVzdC4gSWYgd2UgdGhlbiBhYm9ydCBiZWNhdXNlIHRoZSBlbmdpbmUgcG93
ZXJ3ZWxsIGlzIG9mZiwgd2UgZW5zdXJlCnRoZSByZXF1ZXN0IGlzIGZyZWVkIGFzIHdlIGtub3cg
d2Ugd2lsbCBub3QgaGF2ZSBmcmVlZCBpdCB3aGVuCmNhbmNlbGxpbmcgdGhlIHdvcmsgKGFzIHRo
ZSB3b3JrIGlzIHJ1bm5pbmchKS4KCkZpeGVzOiA4NDFlODY3Mjg2MTUgKCJkcm0vaTkxNS9ndDog
T25seSBkcm9wIGhlYXJ0YmVhdC5zeXN0b2xlIGlmIHRoZSBzb2xlIG93bmVyIikKUmVmZXJlbmNl
czogMDU4MTc5ZTcyZTA5ICgiZHJtL2k5MTUvZ3Q6IFJlcGxhY2UgaGFuZ2NoZWNrIGJ5IGhlYXJ0
YmVhdHMiKQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9oZWFydGJlYXQuYyB8IDYg
KysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9oZWFydGJl
YXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9oZWFydGJlYXQuYwpp
bmRleCAwNmFhMTRjN2FhOGMuLmM5MWZkNGU0YWYyOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2hlYXJ0YmVhdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZV9oZWFydGJlYXQuYwpAQCAtNjMsMTUgKzYzLDE1IEBAIHN0
YXRpYyB2b2lkIGhlYXJ0YmVhdChzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndyaykKIAlzdHJ1Y3QgaW50
ZWxfY29udGV4dCAqY2UgPSBlbmdpbmUtPmtlcm5lbF9jb250ZXh0OwogCXN0cnVjdCBpOTE1X3Jl
cXVlc3QgKnJxOwogCi0JaWYgKCFpbnRlbF9lbmdpbmVfcG1fZ2V0X2lmX2F3YWtlKGVuZ2luZSkp
Ci0JCXJldHVybjsKLQogCXJxID0gZW5naW5lLT5oZWFydGJlYXQuc3lzdG9sZTsKIAlpZiAocnEg
JiYgaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZChycSkpIHsKIAkJaTkxNV9yZXF1ZXN0X3B1dChycSk7
CiAJCWVuZ2luZS0+aGVhcnRiZWF0LnN5c3RvbGUgPSBOVUxMOwogCX0KIAorCWlmICghaW50ZWxf
ZW5naW5lX3BtX2dldF9pZl9hd2FrZShlbmdpbmUpKQorCQlyZXR1cm47CisKIAlpZiAoaW50ZWxf
Z3RfaXNfd2VkZ2VkKGVuZ2luZS0+Z3QpKQogCQlnb3RvIG91dDsKIAotLSAKMi4yNC4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
