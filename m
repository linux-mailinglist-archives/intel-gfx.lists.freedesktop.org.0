Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 722835E0DA
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 11:19:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C15786E107;
	Wed,  3 Jul 2019 09:19:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E9BA88E57
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 09:19:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17110504-1500050 
 for multiple; Wed, 03 Jul 2019 10:17:28 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jul 2019 10:17:13 +0100
Message-Id: <20190703091726.11690-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190703091726.11690-1-chris@chris-wilson.co.uk>
References: <20190703091726.11690-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/15] drm/i915/selftests: Lock the drm_mm while
 modifying
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

UmVtZW1iZXIgdG8gbG9jayB0aGUgZHJtX21tIGFzIHdlIG1vZGlmeSBpdCwgbGVzdCBpdCBiZSBt
b2RpZmllZCBpbiB0aGUKYmFja2dyb3VuZCBieSByZXRpcmUvZnJlZSB3b3JrZXJzIQoKU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9tbWFuLmMgfCA0ICsrKysK
IDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5jCmluZGV4IGExZjBiMjM1ZjU2Yi4u
OWIwNWJlZjE1MDIzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRl
c3RzL2k5MTVfZ2VtX21tYW4uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRl
c3RzL2k5MTVfZ2VtX21tYW4uYwpAQCAtNDE0LDcgKzQxNCw5IEBAIHN0YXRpYyBpbnQgaWd0X21t
YXBfb2Zmc2V0X2V4aGF1c3Rpb24odm9pZCAqYXJnKQogCWRybV9tbV9mb3JfZWFjaF9ob2xlKGhv
bGUsIG1tLCBob2xlX3N0YXJ0LCBob2xlX2VuZCkgewogCQlyZXN2LnN0YXJ0ID0gaG9sZV9zdGFy
dDsKIAkJcmVzdi5zaXplID0gaG9sZV9lbmQgLSBob2xlX3N0YXJ0IC0gMTsgLyogUEFHRV9TSVpF
IHVuaXRzICovCisJCW11dGV4X2xvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwogCQllcnIg
PSBkcm1fbW1fcmVzZXJ2ZV9ub2RlKG1tLCAmcmVzdik7CisJCW11dGV4X3VubG9jaygmaTkxNS0+
ZHJtLnN0cnVjdF9tdXRleCk7CiAJCWlmIChlcnIpIHsKIAkJCXByX2VycigiRmFpbGVkIHRvIHRy
aW0gVk1BIG1hbmFnZXIsIGVycj0lZFxuIiwgZXJyKTsKIAkJCWdvdG8gb3V0X3Bhcms7CkBAIC00
NzgsNyArNDgwLDkgQEAgc3RhdGljIGludCBpZ3RfbW1hcF9vZmZzZXRfZXhoYXVzdGlvbih2b2lk
ICphcmcpCiAJfQogCiBvdXQ6CisJbXV0ZXhfbG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7
CiAJZHJtX21tX3JlbW92ZV9ub2RlKCZyZXN2KTsKKwltdXRleF91bmxvY2soJmk5MTUtPmRybS5z
dHJ1Y3RfbXV0ZXgpOwogb3V0X3Bhcms6CiAJcmVzdG9yZV9yZXRpcmVfd29ya2VyKGk5MTUpOwog
CXJldHVybiBlcnI7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
