Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5903432EA
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 08:20:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 912B58926E;
	Thu, 13 Jun 2019 06:20:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B9458926E
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 06:20:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16883628-1500050 
 for multiple; Thu, 13 Jun 2019 07:20:22 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jun 2019 07:20:19 +0100
Message-Id: <20190613062021.27094-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190613062021.27094-1-chris@chris-wilson.co.uk>
References: <20190613062021.27094-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Avoid tainting i915_gem_park()
 with wakeref.lock
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

V2hpbGUgd2UgbmVlZCB0byBmbHVzaCB0aGUgd2FrZXJlZiBiZWZvcmUgcGFya2luZywgd2UgZG8g
bm90IG5lZWQgdG8KcGVyZm9ybSB0aGUgaTkxNV9nZW1fcGFyaygpIGl0c2VsZiB1bmRlcm5lYXRo
IHRoZSB3YWtlcmVmIGxvY2ssIG1lcmVseQp0aGUgc3RydWN0X211dGV4LiBJZiB3ZSByZWFycmFu
Z2UgdGhlIGxvY2tzLCB3ZSBjYW4gYXZvaWQgdGhlIHVubmVjZXNzYXJ5CnRhaW50aW5nLgoKU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMgfCAxNyArKysrKysrKy0tLS0t
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jCmluZGV4IGY2OGMwYWQxYWE0Ny4uMDNh
Zjc4MTUxYWViIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
cG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYwpAQCAtMzAs
MjMgKzMwLDIyIEBAIHN0YXRpYyB2b2lkIGlkbGVfd29ya19oYW5kbGVyKHN0cnVjdCB3b3JrX3N0
cnVjdCAqd29yaykKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9CiAJCWNvbnRh
aW5lcl9vZih3b3JrLCB0eXBlb2YoKmk5MTUpLCBnZW0uaWRsZV93b3JrKTsKLQlib29sIHJlc3Rh
cnQgPSB0cnVlOworCWJvb2wgcGFyazsKIAotCWNhbmNlbF9kZWxheWVkX3dvcmsoJmk5MTUtPmdl
bS5yZXRpcmVfd29yayk7CisJY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5jKCZpOTE1LT5nZW0ucmV0
aXJlX3dvcmspOwogCW11dGV4X2xvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwogCiAJaW50
ZWxfd2FrZXJlZl9sb2NrKCZpOTE1LT5ndC53YWtlcmVmKTsKLQlpZiAoIWludGVsX3dha2VyZWZf
YWN0aXZlKCZpOTE1LT5ndC53YWtlcmVmKSAmJiAhd29ya19wZW5kaW5nKHdvcmspKSB7Ci0JCWk5
MTVfZ2VtX3BhcmsoaTkxNSk7Ci0JCXJlc3RhcnQgPSBmYWxzZTsKLQl9CisJcGFyayA9ICFpbnRl
bF93YWtlcmVmX2FjdGl2ZSgmaTkxNS0+Z3Qud2FrZXJlZikgJiYgIXdvcmtfcGVuZGluZyh3b3Jr
KTsKIAlpbnRlbF93YWtlcmVmX3VubG9jaygmaTkxNS0+Z3Qud2FrZXJlZik7Ci0KLQltdXRleF91
bmxvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwotCWlmIChyZXN0YXJ0KQorCWlmIChwYXJr
KQorCQlpOTE1X2dlbV9wYXJrKGk5MTUpOworCWVsc2UKIAkJcXVldWVfZGVsYXllZF93b3JrKGk5
MTUtPndxLAogCQkJCSAgICZpOTE1LT5nZW0ucmV0aXJlX3dvcmssCiAJCQkJICAgcm91bmRfamlm
Zmllc191cF9yZWxhdGl2ZShIWikpOworCisJbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0uc3RydWN0
X211dGV4KTsKIH0KIAogc3RhdGljIHZvaWQgcmV0aXJlX3dvcmtfaGFuZGxlcihzdHJ1Y3Qgd29y
a19zdHJ1Y3QgKndvcmspCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
