Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C4914DC4E
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 14:51:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D70196F9BE;
	Thu, 30 Jan 2020 13:51:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 960BB6F9BE
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 13:51:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20060269-1500050 
 for multiple; Thu, 30 Jan 2020 13:51:37 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jan 2020 13:51:36 +0000
Message-Id: <20200130135136.1878646-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/fbc: __intel_fbc_cleanup_cfb() may be
 called multiple times
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

QXZvaWQgcmVsZWFzaW5nIHRoZSBzYW1lIHN0b2xlbiBub2RlcyBjYXVzaW5nIGEgdXNlLWFmdGVy
LWZyZWUgYW5kL29yCmV4cGxvc2lvbnMgYXMgdGhlIHNlbGYtY2hlY2tzIGZhaWwsIGFzIF9faW50
ZWxfZmJjX2NsZWFudXBfY2ZiKCkgbWF5IGJlCmNhbGxlZCBtdWx0aXBsZSB0aW1lcyBkdXJpbmcg
bW9kdWxlIHVubG9hZC4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwg
NiArKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKaW5kZXggMmEzZjEzMzNj
OGZmLi5hYjY3NmM2NzU2YWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZmJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
YmMuYwpAQCAtNTM3LDEzICs1MzcsMTUgQEAgc3RhdGljIHZvaWQgX19pbnRlbF9mYmNfY2xlYW51
cF9jZmIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCXN0cnVjdCBpbnRl
bF9mYmMgKmZiYyA9ICZkZXZfcHJpdi0+ZmJjOwogCi0JaWYgKGRybV9tbV9ub2RlX2FsbG9jYXRl
ZCgmZmJjLT5jb21wcmVzc2VkX2ZiKSkKLQkJaTkxNV9nZW1fc3RvbGVuX3JlbW92ZV9ub2RlKGRl
dl9wcml2LCAmZmJjLT5jb21wcmVzc2VkX2ZiKTsKKwlpZiAoIWRybV9tbV9ub2RlX2FsbG9jYXRl
ZCgmZmJjLT5jb21wcmVzc2VkX2ZiKSkKKwkJcmV0dXJuOwogCiAJaWYgKGZiYy0+Y29tcHJlc3Nl
ZF9sbGIpIHsKIAkJaTkxNV9nZW1fc3RvbGVuX3JlbW92ZV9ub2RlKGRldl9wcml2LCBmYmMtPmNv
bXByZXNzZWRfbGxiKTsKIAkJa2ZyZWUoZmJjLT5jb21wcmVzc2VkX2xsYik7CiAJfQorCisJaTkx
NV9nZW1fc3RvbGVuX3JlbW92ZV9ub2RlKGRldl9wcml2LCAmZmJjLT5jb21wcmVzc2VkX2ZiKTsK
IH0KIAogdm9pZCBpbnRlbF9mYmNfY2xlYW51cF9jZmIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2KQotLSAKMi4yNS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
