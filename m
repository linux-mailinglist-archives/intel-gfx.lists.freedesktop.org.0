Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3EA5CDDF
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 12:50:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A25F789AEA;
	Tue,  2 Jul 2019 10:50:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 862B889ABA;
 Tue,  2 Jul 2019 10:50:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17097368-1500050 
 for multiple; Tue, 02 Jul 2019 11:50:36 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Jul 2019 11:50:34 +0100
Message-Id: <20190702105034.2535-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915: Fix gem_context_has_engine_map()
 for older kernels
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q0kgaXMgY3VycmVudGx5IGJyZWFraW5nIG9uIGxpbnVzL2RybS1pbnRlbC1maXhlcyBkdWUgdG8g
dGhlIGFzc2VydCB0aGF0CnRoZSBrZXJuZWwgc3VwcG9ydHMgY29udGV4dCBlbmdpbmUgbWFwcy4g
UmVwb3J0IHRoZSBsYWNrIG9mIG1hcHMgb24Kb2xkZXIga2VybmVscyBncmFjZWZ1bGx5IQoKU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBU
dnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPgotLS0KIGxpYi9p
OTE1L2dlbV9lbmdpbmVfdG9wb2xvZ3kuYyB8IDkgKysrKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwg
NiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2xpYi9pOTE1L2dl
bV9lbmdpbmVfdG9wb2xvZ3kuYyBiL2xpYi9pOTE1L2dlbV9lbmdpbmVfdG9wb2xvZ3kuYwppbmRl
eCBjYWU1YTAyOTIuLmNjMmIzZmY2ZSAxMDA2NDQKLS0tIGEvbGliL2k5MTUvZ2VtX2VuZ2luZV90
b3BvbG9neS5jCisrKyBiL2xpYi9pOTE1L2dlbV9lbmdpbmVfdG9wb2xvZ3kuYwpAQCAtMzIxLDEw
ICszMjEsMTMgQEAgYm9vbCBnZW1fY29udGV4dF9oYXNfZW5naW5lX21hcChpbnQgZmQsIHVpbnQz
Ml90IGN0eCkKIAkJLnBhcmFtID0gSTkxNV9DT05URVhUX1BBUkFNX0VOR0lORVMsCiAJCS5jdHhf
aWQgPSBjdHgKIAl9OwotCWludCByZXQ7CiAKLQlyZXQgPSBfX2dlbV9jb250ZXh0X2dldF9wYXJh
bShmZCwgJnBhcmFtKTsKLQlpZ3RfYXNzZXJ0X2VxKHJldCwgMCk7CisJLyoKKwkgKiBJZiB0aGUg
a2VybmVsIGlzIHRvbyBvbGQgdG8gc3VwcG9ydCBQQVJBTV9FTkdJTkVTLAorCSAqIHRoZW4gbmF0
dXJhbGx5IGlzIGhhcyBubyBlbmdpbmUgbWFwLgorCSAqLworCWlmIChfX2dlbV9jb250ZXh0X2dl
dF9wYXJhbShmZCwgJnBhcmFtKSkKKwkJcmV0dXJuIGZhbHNlOwogCiAJcmV0dXJuIHBhcmFtLnNp
emU7CiB9Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
