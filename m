Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 443C05FDAA
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 22:05:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B5AE6E3E4;
	Thu,  4 Jul 2019 20:05:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CAFD6E38D
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 20:05:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17134021-1500050 
 for multiple; Thu, 04 Jul 2019 21:04:57 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Jul 2019 21:04:55 +0100
Message-Id: <20190704200455.14870-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190704200455.14870-1-chris@chris-wilson.co.uk>
References: <20190704200455.14870-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Show instdone for each engine in
 debugfs
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

QWx0aG91Z2ggcG9sbGluZyBlYWNoIGVuZ2luZSBxdWlja2x5IGlzIHByZWZlcmFibGUgYXMgaXQg
c2hvdWxkIGdpdmUgdXMKYSBzYW1wbGUgb2YgZWFjaCBlbmdpbmUgYXQgcm91Z2hseSB0aGUgc2Ft
ZSB0aW1lLCBrZWVwIGl0IHNpbXBsZSBhbmQKanVzdCBzYW1wbGUgdGhlIGVuZ2luZSBhcyBwcmlu
dCBvdXQgdGhlIGRlYnVnIHN0YXRlLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1
Z2ZzLmMgfCAzMyArKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDEzIGluc2VydGlvbnMoKyksIDIwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
ZWJ1Z2ZzLmMKaW5kZXggZmE4ZmYyNzA0YjZlLi4zZTRmNThmMTkzNjIgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZGVidWdmcy5jCkBAIC0xMDc2LDggKzEwNzYsNiBAQCBzdGF0aWMgaW50IGk5MTVf
aGFuZ2NoZWNrX2luZm8oc3RydWN0IHNlcV9maWxlICptLCB2b2lkICp1bnVzZWQpCiB7CiAJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gbm9kZV90b19pOTE1KG0tPnByaXZhdGUp
OwogCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKLQl1NjQgYWN0aGRbSTkxNV9OVU1f
RU5HSU5FU107Ci0Jc3RydWN0IGludGVsX2luc3Rkb25lIGluc3Rkb25lOwogCWludGVsX3dha2Vy
ZWZfdCB3YWtlcmVmOwogCWVudW0gaW50ZWxfZW5naW5lX2lkIGlkOwogCkBAIC0xMDkyLDEzICsx
MDkwLDYgQEAgc3RhdGljIGludCBpOTE1X2hhbmdjaGVja19pbmZvKHN0cnVjdCBzZXFfZmlsZSAq
bSwgdm9pZCAqdW51c2VkKQogCQlyZXR1cm4gMDsKIAl9CiAKLQl3aXRoX2ludGVsX3J1bnRpbWVf
cG0oJmRldl9wcml2LT5ydW50aW1lX3BtLCB3YWtlcmVmKSB7Ci0JCWZvcl9lYWNoX2VuZ2luZShl
bmdpbmUsIGRldl9wcml2LCBpZCkKLQkJCWFjdGhkW2lkXSA9IGludGVsX2VuZ2luZV9nZXRfYWN0
aXZlX2hlYWQoZW5naW5lKTsKLQotCQlpbnRlbF9lbmdpbmVfZ2V0X2luc3Rkb25lKGRldl9wcml2
LT5lbmdpbmVbUkNTMF0sICZpbnN0ZG9uZSk7Ci0JfQotCiAJaWYgKHRpbWVyX3BlbmRpbmcoJmRl
dl9wcml2LT5ncHVfZXJyb3IuaGFuZ2NoZWNrX3dvcmsudGltZXIpKQogCQlzZXFfcHJpbnRmKG0s
ICJIYW5nY2hlY2sgYWN0aXZlLCB0aW1lciBmaXJlcyBpbiAlZG1zXG4iLAogCQkJICAgamlmZmll
c190b19tc2VjcyhkZXZfcHJpdi0+Z3B1X2Vycm9yLmhhbmdjaGVja193b3JrLnRpbWVyLmV4cGly
ZXMgLQpAQCAtMTExMCwyMyArMTEwMSwyNSBAQCBzdGF0aWMgaW50IGk5MTVfaGFuZ2NoZWNrX2lu
Zm8oc3RydWN0IHNlcV9maWxlICptLCB2b2lkICp1bnVzZWQpCiAKIAlzZXFfcHJpbnRmKG0sICJH
VCBhY3RpdmU/ICVzXG4iLCB5ZXNubyhkZXZfcHJpdi0+Z3QuYXdha2UpKTsKIAotCWZvcl9lYWNo
X2VuZ2luZShlbmdpbmUsIGRldl9wcml2LCBpZCkgewotCQlzZXFfcHJpbnRmKG0sICIlczogJWQg
bXMgYWdvXG4iLAotCQkJICAgZW5naW5lLT5uYW1lLAotCQkJICAgamlmZmllc190b19tc2Vjcyhq
aWZmaWVzIC0KLQkJCQkJICAgIGVuZ2luZS0+aGFuZ2NoZWNrLmFjdGlvbl90aW1lc3RhbXApKTsK
Kwl3aXRoX2ludGVsX3J1bnRpbWVfcG0oJmRldl9wcml2LT5ydW50aW1lX3BtLCB3YWtlcmVmKSB7
CisJCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIGRldl9wcml2LCBpZCkgeworCQkJc3RydWN0IGlu
dGVsX2luc3Rkb25lIGluc3Rkb25lOwogCi0JCXNlcV9wcmludGYobSwgIlx0QUNUSEQgPSAweCUw
OGxseCBbY3VycmVudCAweCUwOGxseF1cbiIsCi0JCQkgICAobG9uZyBsb25nKWVuZ2luZS0+aGFu
Z2NoZWNrLmFjdGhkLAotCQkJICAgKGxvbmcgbG9uZylhY3RoZFtpZF0pOworCQkJc2VxX3ByaW50
ZihtLCAiJXM6ICVkIG1zIGFnb1xuIiwKKwkJCQkgICBlbmdpbmUtPm5hbWUsCisJCQkJICAgamlm
Zmllc190b19tc2VjcyhqaWZmaWVzIC0KKwkJCQkJCSAgICBlbmdpbmUtPmhhbmdjaGVjay5hY3Rp
b25fdGltZXN0YW1wKSk7CiAKLQkJaWYgKGVuZ2luZS0+aWQgPT0gUkNTMCkgewotCQkJc2VxX3B1
dHMobSwgIlx0aW5zdGRvbmUgcmVhZCA9XG4iKTsKKwkJCXNlcV9wcmludGYobSwgIlx0QUNUSEQg
PSAweCUwOGxseCBbY3VycmVudCAweCUwOGxseF1cbiIsCisJCQkJICAgKGxvbmcgbG9uZyllbmdp
bmUtPmhhbmdjaGVjay5hY3RoZCwKKwkJCQkgICBpbnRlbF9lbmdpbmVfZ2V0X2FjdGl2ZV9oZWFk
KGVuZ2luZSkpOworCisJCQlpbnRlbF9lbmdpbmVfZ2V0X2luc3Rkb25lKGVuZ2luZSwgJmluc3Rk
b25lKTsKIAorCQkJc2VxX3B1dHMobSwgIlx0aW5zdGRvbmUgcmVhZCA9XG4iKTsKIAkJCWk5MTVf
aW5zdGRvbmVfaW5mbyhkZXZfcHJpdiwgbSwgJmluc3Rkb25lKTsKIAogCQkJc2VxX3B1dHMobSwg
Ilx0aW5zdGRvbmUgYWNjdSA9XG4iKTsKLQogCQkJaTkxNV9pbnN0ZG9uZV9pbmZvKGRldl9wcml2
LCBtLAogCQkJCQkgICAmZW5naW5lLT5oYW5nY2hlY2suaW5zdGRvbmUpOwogCQl9Ci0tIAoyLjIw
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
