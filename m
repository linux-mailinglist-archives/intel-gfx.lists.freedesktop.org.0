Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DB1874E5
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 11:10:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E5026ED40;
	Fri,  9 Aug 2019 09:10:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B98EF6ED3F
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 09:10:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17939916-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 09 Aug 2019 10:10:11 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Aug 2019 10:10:10 +0100
Message-Id: <20190809091010.23281-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190809091010.23281-1-chris@chris-wilson.co.uk>
References: <20190809091010.23281-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915: Generalise BSD default selection
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

Rm9yIHRoZSBkZWZhdWx0IEk5MTVfRVhFQ19CU0Qgcm91bmQgcm9iaW4gc2VsZWN0b3IsIGl0IG1h
eSBzZWxlY3QgYW55CmF2YWlsYWJsZSBWQ1MgZW5naW5lLiBNYWtlIGl0IHNvLgoKU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBUdnJ0a28g
VXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpDYzogSm9vbmFzIExhaHRpbmVuIDxq
b29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogSm9vbmFzIExhaHRp
bmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgfCAzICsrLQogMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCmluZGV4IDgwOTUwNzBmYWQ2MC4uMWMzNDA2ZWJl
MzdiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1
ZmZlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVy
LmMKQEAgLTIxMjAsNyArMjEyMCw4IEBAIGdlbjhfZGlzcGF0Y2hfYnNkX2VuZ2luZShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAKIAkvKiBDaGVjayB3aGV0aGVyIHRoZSBmaWxl
X3ByaXYgaGFzIGFscmVhZHkgc2VsZWN0ZWQgb25lIHJpbmcuICovCiAJaWYgKChpbnQpZmlsZV9w
cml2LT5ic2RfZW5naW5lIDwgMCkKLQkJZmlsZV9wcml2LT5ic2RfZW5naW5lID0gZ2V0X3JhbmRv
bV9pbnQoKSAmIDE7CisJCWZpbGVfcHJpdi0+YnNkX2VuZ2luZSA9CisJCQlnZXRfcmFuZG9tX2lu
dCgpICUgbnVtX3Zjc19lbmdpbmVzKGRldl9wcml2KTsKIAogCXJldHVybiBmaWxlX3ByaXYtPmJz
ZF9lbmdpbmU7CiB9Ci0tIAoyLjIzLjAucmMxCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
