Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC75BF8EAA
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 12:35:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E969C6E12F;
	Tue, 12 Nov 2019 11:35:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14B086E12F
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 11:35:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19172226-1500050 
 for multiple; Tue, 12 Nov 2019 11:34:36 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Nov 2019 11:34:34 +0000
Message-Id: <20191112113434.31088-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Remove leftover gem.pm_notifier member
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

U2luY2Ugd2UgcmVtb3ZlZCB0aGUgcG0gaG9va3VwIGZyb20gdGhlIEdULCB0aGUgaG9vayBpbgpk
cm1faTkxNV9wcml2YXRlLmdlbSBpcyB1bnVzZWQuIFJlbW92ZSBpdC4KClJlZmVyZW5jZXM6IDE4
ZjNiMjcyN2ZjMyAoImRybS9pOTE1OiBSZW1vdmUgcG0gcGFyay91bnBhcmsgbm90aWZpY2F0aW9u
cyIpClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIHwgMiAtLQogMSBmaWxlIGNoYW5nZWQsIDIgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggYzMwMzcwN2Y1MTMyLi41Zjhi
ZDFkNTRjNTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtMTI1Miw4ICsxMjUyLDYgQEAg
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgewogCXN0cnVjdCBpbnRlbF9ndCBndDsKIAogCXN0cnVj
dCB7Ci0JCXN0cnVjdCBub3RpZmllcl9ibG9jayBwbV9ub3RpZmllcjsKLQogCQlzdHJ1Y3QgaTkx
NV9nZW1fY29udGV4dHMgewogCQkJc3BpbmxvY2tfdCBsb2NrOyAvKiBsb2NrcyBsaXN0ICovCiAJ
CQlzdHJ1Y3QgbGlzdF9oZWFkIGxpc3Q7Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
