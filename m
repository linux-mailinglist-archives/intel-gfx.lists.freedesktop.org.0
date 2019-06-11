Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3E63CD3A
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 15:43:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5612891C5;
	Tue, 11 Jun 2019 13:43:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B900E891C5
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 13:43:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16864673-1500050 
 for multiple; Tue, 11 Jun 2019 14:43:14 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Jun 2019 14:43:13 +0100
Message-Id: <20190611134313.21757-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Check the right binding exists in
 i915_vma_misplaced()
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

QXMgYSBmaW5hbCBjaGVjaywgYWZ0ZXIgY2hlY2tpbmcgdGhlIHZhcmlvdXMgYWxpZ25tZW50IGFu
ZCBwbGFjZW1lbnQsCmNoZWNrIHRoYXQgd2UgZXhpc3QgaW4gdGhlIHJpZ2h0IGJpbmRpbmcgYWxp
YXMuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jIHwgMiArLQogMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1h
LmMKaW5kZXggODAwNTBmNmEwODkzLi5hZGVjZDdlMTY2NDcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfdm1hLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92
bWEuYwpAQCAtNDczLDcgKzQ3Myw3IEBAIGJvb2wgaTkxNV92bWFfbWlzcGxhY2VkKGNvbnN0IHN0
cnVjdCBpOTE1X3ZtYSAqdm1hLAogCSAgICB2bWEtPm5vZGUuc3RhcnQgIT0gKGZsYWdzICYgUElO
X09GRlNFVF9NQVNLKSkKIAkJcmV0dXJuIHRydWU7CiAKLQlyZXR1cm4gZmFsc2U7CisJcmV0dXJu
ICh2bWEtPmZsYWdzICYgZmxhZ3MgJiBJOTE1X1ZNQV9CSU5EX01BU0spID09IDA7CiB9CiAKIHZv
aWQgX19pOTE1X3ZtYV9zZXRfbWFwX2FuZF9mZW5jZWFibGUoc3RydWN0IGk5MTVfdm1hICp2bWEp
Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
