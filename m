Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 063ACC8D8D
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 18:01:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EEBE6E2D8;
	Wed,  2 Oct 2019 16:01:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B915B6E2D8
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 16:01:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18695994-1500050 
 for multiple; Wed, 02 Oct 2019 17:00:36 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Oct 2019 17:00:34 +0100
Message-Id: <20191002160034.5121-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Warn CI about an unrecoverable
 wedge
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

SWYgd2UgaGF2ZSBhIHdlZGdlZCBHUFUgdGhhdCB3ZSBuZWVkIHRvIHJlY292ZXIsIGJ1dCBmYWls
LCBhZGQgYSB0YWludApmb3IgQ0kgdG8gcGlja3VwIGFuZCBzY2hlZHVsZSBhIHJlYm9vdC4KClNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT4KQ2M6IFBldHJp
IExhdHZhbGEgPHBldHJpLmxhdHZhbGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3Jlc2V0LmMgfCA4ICsrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfcmVzZXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0
LmMKaW5kZXggZTE4OTg5N2U4Nzk3Li5iYzFiNTEzNDk0MzggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfcmVzZXQuYwpAQCAtODcyLDggKzg3MiwxNCBAQCBzdGF0aWMgYm9vbCBfX2ludGVs
X2d0X3Vuc2V0X3dlZGdlZChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogCW9rID0gIUhBU19FWEVDTElT
VFMoZ3QtPmk5MTUpOyAvKiBYWFggYmV0dGVyIGFnbm9zdGljaXNtIGRlc2lyZWQgKi8KIAlpZiAo
IUlOVEVMX0lORk8oZ3QtPmk5MTUpLT5ncHVfcmVzZXRfY2xvYmJlcnNfZGlzcGxheSkKIAkJb2sg
PSBfX2ludGVsX2d0X3Jlc2V0KGd0LCBBTExfRU5HSU5FUykgPT0gMDsKLQlpZiAoIW9rKQorCWlm
ICghb2spIHsKKwkJLyoKKwkJICogV2FybiBDSSBhYm91dCB0aGUgdW5yZWNvdmVyYWJsZSB3ZWRn
ZWQgY29uZGl0aW9uLgorCQkgKiBUaW1lIGZvciBhIHJlYm9vdC4KKwkJICovCisJCWFkZF90YWlu
dF9mb3JfQ0koVEFJTlRfV0FSTik7CiAJCXJldHVybiBmYWxzZTsKKwl9CiAKIAkvKgogCSAqIFVu
ZG8gbm9wX3N1Ym1pdF9yZXF1ZXN0LiBXZSBwcmV2ZW50IGFsbCBuZXcgaTkxNSByZXF1ZXN0cyBm
cm9tCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
