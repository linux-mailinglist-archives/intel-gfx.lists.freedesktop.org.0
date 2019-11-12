Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B56F9D30
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 23:36:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D15F6EC1B;
	Tue, 12 Nov 2019 22:36:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 816266EC1B
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 22:36:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19180079-1500050 
 for multiple; Tue, 12 Nov 2019 22:36:01 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Nov 2019 22:35:57 +0000
Message-Id: <20191112223600.30993-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/gt: Set unused mocs entry to
 follow PTE on tgl as on all others
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

QmUgY29uc2lzdGVudCBpbiBvdXIgbW9jcyBzZXR1cCBvbiBUaWdlcmxha2UgYW5kIHNldCB0aGUg
dW51c2VkIGNvbnRyb2wKdmFsdWUgdG8gZm9sbG93IHRoZSBQVEUgZW50cnkgYXMgd2UgcHJldmlv
dXNseSBoYXZlIGRvbmUuIFRoZSB1bnVzZWQKdmFsdWVzIGFyZSBiZXlvbmQgdGhlIGRlZmluZXMg
b2YgdGhlIEFCSSwgdGhlIGNvbnNpc3RlbmN5IHNpbXBsaWZpZXMgb3VyCmNoZWNraW5nLgoKU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jIHwgMiArLQogMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbW9jcy5jCmluZGV4IDZlODgxYzczNWIyMC4uZDJiNDQ1ZDZjMjU4IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbW9jcy5jCkBAIC00ODksNyArNDg5LDcgQEAgc3RhdGljIHZvaWQgaW50
ZWxfbW9jc19pbml0X2dsb2JhbChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogCWZvciAoOyBpbmRleCA8
IHRhYmxlLm5fZW50cmllczsgaW5kZXgrKykKIAkJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwK
IAkJCQkgICBHRU4xMl9HTE9CQUxfTU9DUyhpbmRleCksCi0JCQkJICAgdGFibGUudGFibGVbMF0u
Y29udHJvbF92YWx1ZSk7CisJCQkJICAgdGFibGUudGFibGVbSTkxNV9NT0NTX1BURV0uY29udHJv
bF92YWx1ZSk7CiB9CiAKIHZvaWQgaW50ZWxfbW9jc19pbml0KHN0cnVjdCBpbnRlbF9ndCAqZ3Qp
Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
