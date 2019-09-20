Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 835B4B8D00
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 10:37:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6218F6E821;
	Fri, 20 Sep 2019 08:37:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DF076E821
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 08:37:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18555085-1500050 
 for multiple; Fri, 20 Sep 2019 09:36:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Sep 2019 09:36:24 +0100
Message-Id: <20190920083624.4601-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Prevent bonded requests from
 overtaking each other on preemption
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

Rm9yY2UgYm9uZGVkIHJlcXVlc3RzIHRvIHJ1biBvbiBkaXN0aW5jdCBlbmdpbmVzIHNvIHRoYXQg
dGhleSBjYW5ub3QgYmUKc2h1ZmZsZWQgb250byB0aGUgc2FtZSBlbmdpbmUgd2hlcmUgdGltZXNs
aWNpbmcgd2lsbCByZXZlcnNlIHRoZSBvcmRlci4KQSBib25kZWQgcmVxdWVzdCB3aWxsIG9mdGVu
IHdhaXQgb24gYSBzZW1hcGhvcmUgc2lnbmFsZWQgYnkgaXRzIG1hc3RlciwKY3JlYXRpbmcgYW4g
aW1wbGljaXQgZGVwZW5kZW5jeSAtLSBpZiB3ZSBpZ25vcmUgdGhhdCBpbXBsaWNpdCBkZXBlbmRl
bmN5CmFuZCBhbGxvdyB0aGUgYm9uZGVkIHJlcXVlc3QgdG8gcnVuIG9uIHRoZSBzYW1lIGVuZ2lu
ZSBhbmQgYmVmb3JlIGl0cwptYXN0ZXIsIHdlIHdpbGwgY2F1c2UgYSBHUFUgaGFuZy4KCldlIGNh
biBwcmV2ZW50IHRoaXMgaW52ZXJzaW9uIGJ5IHJlc3RyaWN0aW5nIHdoaWNoIGVuZ2luZXMgd2Ug
YWxsb3cKb3Vyc2VsdmVzIHRvIGp1bXAgdG8gdXBvbiBwcmVlbXB0aW9uLCBpLmUuIGJha2luZyBp
biB0aGUgYXJyYW5nZW1lbnQKZXN0YWJsaXNoZWQgYXQgZmlyc3QgZXhlY3V0aW9uLiAoV2Ugc2hv
dWxkIGFsc28gY29uc2lkZXIgY2FwdHVyaW5nIHRoZQppbXBsaWNpdCBkZXBlbmRlbmN5IHVzaW5n
IGk5MTVfc2NoZWRfYWRkX2RlcGVuZGVuY3koKSwgYnV0IGZpcnN0IHdlIG5lZWQKdG8gdGhpbmsg
YWJvdXQgdGhlIGNvbnN0cmFpbnRzIHRoYXQgcmVxdWlyZXMgb24gdGhlIGV4ZWN1dGlvbi9yZXRp
cmVtZW50Cm9yZGVyaW5nLikKCkZpeGVzOiA4ZWUzNmUwNDhjOTggKCJkcm0vaTkxNS9leGVjbGlz
dHM6IE1pbmltYWxpc3RpYyB0aW1lc2xpY2luZyIpClJlZmVyZW5jZXM6IGVlMTEzNjkwOGU5YiAo
ImRybS9pOTE1L2V4ZWNsaXN0czogVmlydHVhbCBlbmdpbmUgYm9uZGluZyIpClNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWlrYSBLdW9w
cGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jIHwgMTkgKysrKysrKysrKystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDExIGlu
c2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
YwppbmRleCBhOTkxNjZhMmQyZWIuLjc5MjA2NDllNGQ4NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbHJjLmMKQEAgLTM3NTUsMTggKzM3NTUsMjEgQEAgc3RhdGljIHZvaWQKIHZpcnR1YWxf
Ym9uZF9leGVjdXRlKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCBzdHJ1Y3QgZG1hX2ZlbmNlICpz
aWduYWwpCiB7CiAJc3RydWN0IHZpcnR1YWxfZW5naW5lICp2ZSA9IHRvX3ZpcnR1YWxfZW5naW5l
KHJxLT5lbmdpbmUpOworCWludGVsX2VuZ2luZV9tYXNrX3QgYWxsb3dlZCwgZXhlYzsKIAlzdHJ1
Y3QgdmVfYm9uZCAqYm9uZDsKIAogCWJvbmQgPSB2aXJ0dWFsX2ZpbmRfYm9uZCh2ZSwgdG9fcmVx
dWVzdChzaWduYWwpLT5lbmdpbmUpOwotCWlmIChib25kKSB7Ci0JCWludGVsX2VuZ2luZV9tYXNr
X3Qgb2xkLCBuZXcsIGNtcDsKKwlpZiAoIWJvbmQpCisJCXJldHVybjsKIAotCQljbXAgPSBSRUFE
X09OQ0UocnEtPmV4ZWN1dGlvbl9tYXNrKTsKLQkJZG8gewotCQkJb2xkID0gY21wOwotCQkJbmV3
ID0gY21wICYgYm9uZC0+c2libGluZ19tYXNrOwotCQl9IHdoaWxlICgoY21wID0gY21weGNoZygm
cnEtPmV4ZWN1dGlvbl9tYXNrLCBvbGQsIG5ldykpICE9IG9sZCk7Ci0JfQorCS8qIFJlc3RyaWN0
IHRoZSBib25kZWQgcmVxdWVzdCB0byBydW4gb24gb25seSB0aGUgc2xhdmVkIGVuZ2luZXMgKi8K
KwlhbGxvd2VkID0gYm9uZC0+c2libGluZ19tYXNrICYgfnRvX3JlcXVlc3Qoc2lnbmFsKS0+ZW5n
aW5lLT5tYXNrOworCWV4ZWMgPSBSRUFEX09OQ0UocnEtPmV4ZWN1dGlvbl9tYXNrKTsKKwl3aGls
ZSAoIXRyeV9jbXB4Y2hnKCZycS0+ZXhlY3V0aW9uX21hc2ssICZleGVjLCBleGVjICYgYWxsb3dl
ZCkpCisJCTsKKworCS8qIFByZXZlbnQgdGhlIG1hc3RlciBmcm9tIGJlaW5nIHJlLXJ1biBvbiB0
aGUgc2xhdmVkIGVuZ2luZXMgKi8KKwl0b19yZXF1ZXN0KHNpZ25hbCktPmV4ZWN1dGlvbl9tYXNr
ICY9IH5hbGxvd2VkOwogfQogCiBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqCi0tIAoyLjIzLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
