Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0715E0E0
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 11:19:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49E4E6E108;
	Wed,  3 Jul 2019 09:19:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F7E0891DD
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 09:19:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17110509-1500050 
 for multiple; Wed, 03 Jul 2019 10:17:29 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jul 2019 10:17:18 +0100
Message-Id: <20190703091726.11690-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190703091726.11690-1-chris@chris-wilson.co.uk>
References: <20190703091726.11690-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/15] drm/i915: Markup potential lock for
 i915_active
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TWFrZSB0aGUgbG9ja2NoYWlucyBtb3JlIGRldGVybWluaXN0aWMgdmlhIGk5MTVfYWN0aXZlIGJ5
IGZsYWdnaW5nIHRoZQpwb3RlbnRpYWwgbG9jay4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfYWN0aXZlLmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMKaW5kZXggNTg0YjI0N2RmOWJjLi4xM2YzMDRhMjlmYzgg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYwpAQCAtMjY4LDYgKzI2OCw4IEBAIGludCBp
OTE1X2FjdGl2ZV93YWl0KHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQogCWludCBlcnI7CiAKIAlt
aWdodF9zbGVlcCgpOworCW1pZ2h0X2xvY2soJnJlZi0+bXV0ZXgpOworCiAJaWYgKFJCX0VNUFRZ
X1JPT1QoJnJlZi0+dHJlZSkpCiAJCXJldHVybiAwOwogCi0tIAoyLjIwLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
