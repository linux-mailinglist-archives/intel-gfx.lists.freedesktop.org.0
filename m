Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE00F4DFB
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 15:23:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30FF26F9B3;
	Fri,  8 Nov 2019 14:23:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E4E56F9B5
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 14:23:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19129666-1500050 
 for multiple; Fri, 08 Nov 2019 14:22:51 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Nov 2019 14:22:48 +0000
Message-Id: <20191108142250.22709-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/3] i915/gem_exec_fence: KMS master is
 not required
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

V2l0aGluIHRoaXMgc2V0IG9mIGZlbmNlIGV4ZWN1dGlvbiB0ZXN0cywgd2UgbmV2ZXIgb25jZSB0
cnkgdG8gbW9kZXNldDsKYmVpbmcgS01TIG1hc3RlciBpcyBub3QgcmVxdWlyZWQuCgpTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiB0ZXN0
cy9pOTE1L2dlbV9leGVjX2ZlbmNlLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9leGVjX2Zl
bmNlLmMgYi90ZXN0cy9pOTE1L2dlbV9leGVjX2ZlbmNlLmMKaW5kZXggMzY1N2M0YjI3Li5kMmQy
NmEyOGIgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfZmVuY2UuYworKysgYi90ZXN0
cy9pOTE1L2dlbV9leGVjX2ZlbmNlLmMKQEAgLTE1MTMsNyArMTUxMyw3IEBAIGlndF9tYWluCiAJ
aW50IGk5MTUgPSAtMTsKIAogCWlndF9maXh0dXJlIHsKLQkJaTkxNSA9IGRybV9vcGVuX2RyaXZl
cl9tYXN0ZXIoRFJJVkVSX0lOVEVMKTsKKwkJaTkxNSA9IGRybV9vcGVuX2RyaXZlcihEUklWRVJf
SU5URUwpOwogCQlpZ3RfcmVxdWlyZV9nZW0oaTkxNSk7CiAJCWlndF9yZXF1aXJlKGdlbV9oYXNf
ZXhlY19mZW5jZShpOTE1KSk7CiAJCWdlbV9yZXF1aXJlX21tYXBfd2MoaTkxNSk7Ci0tIAoyLjI0
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
