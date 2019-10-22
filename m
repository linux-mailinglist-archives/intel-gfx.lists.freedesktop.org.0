Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7FDE0363
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 13:51:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A62906E5F3;
	Tue, 22 Oct 2019 11:51:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 566506E5F3
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 11:51:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18924475-1500050 
 for multiple; Tue, 22 Oct 2019 12:51:38 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 12:51:23 +0100
Message-Id: <20191022115126.18746-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
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
ZWxfbW9jcy5jCmluZGV4IDViYWMzOTY2OTA2Yi4uYWVhMzg5NmNjMTM5IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbW9jcy5jCkBAIC00ODIsNyArNDgyLDcgQEAgc3RhdGljIHZvaWQgaW50
ZWxfbW9jc19pbml0X2dsb2JhbChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogCWZvciAoOyBpbmRleCA8
IHRhYmxlLm5fZW50cmllczsgaW5kZXgrKykKIAkJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwK
IAkJCQkgICBHRU4xMl9HTE9CQUxfTU9DUyhpbmRleCksCi0JCQkJICAgdGFibGUudGFibGVbMF0u
Y29udHJvbF92YWx1ZSk7CisJCQkJICAgdGFibGUudGFibGVbSTkxNV9NT0NTX1BURV0uY29udHJv
bF92YWx1ZSk7CiB9CiAKIHZvaWQgaW50ZWxfbW9jc19pbml0KHN0cnVjdCBpbnRlbF9ndCAqZ3Qp
Ci0tIAoyLjI0LjAucmMwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
