Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B09487A1C
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 14:32:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2A4A6EDFD;
	Fri,  9 Aug 2019 12:32:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30D956EDFD
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 12:32:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17943071-1500050 
 for multiple; Fri, 09 Aug 2019 13:31:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Aug 2019 13:31:53 +0100
Message-Id: <20190809123153.20574-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190809091010.23281-1-chris@chris-wilson.co.uk>
References: <20190809091010.23281-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Check for a second VCS engine more
 carefully
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

VG8gdXNlIHRoZSBsZWdhY3kgQlNEIHNlbGVjdG9yLCB5b3UgbXVzdCBoYXZlIGEgc2Vjb25kIFZD
UyBlbmdpbmUsIG9yCmVsc2UgdGhlIEFCSSBzaW1wbHkgbWFwcyB0aGUgcmVxdWVzdCBmb3IgYW5v
dGhlciBlbmdpbmUgb250byBWQ1MwLgpIb3dldmVyLCB3ZSBvbmx5IGNoZWNrZWQgYSBzaW5nbGUg
VkNTMSBsb2NhdGlvbiBhbmQgb3Zlcmxvb2tpbmcgdGhlCnBvc3NpYmlsaXR5IG9mIGEgc3BhcnNl
IFZDUyBzZXQgYmVpbmcgbWFwcGVkIHRvIHRoZSBkZW5zZSBBQkkuCgp2MjogbnVtX3Zjc19lbmdp
bmVzKCkgdHVybnMgb3V0IHRvIGJlIHJldXNhYmxlIGFuZCBmdXR1cmVwcm9vZiBpdCBzbyB3ZQpu
ZXZlciBoYXZlIHRvIHdvcnJ5IGFib3V0IHRoaXMgc2lsbHkgYml0IG9mIEFCSSBhZ2FpbiEKClNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzog
TWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBKb29uYXMg
TGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBK
b29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Ci0tLQpPZmYt
Ynktb25lIGluIHRoZSBWQ1MgbWFzaywgd2UgZG9uJ3Qgd2FudCB0byBpbmNsdWRlIFZFQ1MwIQot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgfCA4ICsr
KysrKystCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKaW5kZXgg
NTY2ZThhNDg0NGNmLi5lM2JlNmIwMzlkYjcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwpAQCAtMjEwMiw2ICsyMTAyLDEyIEBAIHN0YXRpYyBp
bnQgZWJfc3VibWl0KHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViKQogCXJldHVybiAwOwogfQog
CitzdGF0aWMgaW50IG51bV92Y3NfZW5naW5lcyhjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSkKK3sKKwlyZXR1cm4gaHdlaWdodDY0KElOVEVMX0lORk8oaTkxNSktPmVuZ2luZV9t
YXNrICYKKwkJCSBHRU5NQVNLX1VMTChWQ1MwICsgSTkxNV9NQVhfVkNTIC0gMSwgVkNTMCkpOwor
fQorCiAvKgogICogRmluZCBvbmUgQlNEIHJpbmcgdG8gZGlzcGF0Y2ggdGhlIGNvcnJlc3BvbmRp
bmcgQlNEIGNvbW1hbmQuCiAgKiBUaGUgZW5naW5lIGluZGV4IGlzIHJldHVybmVkLgpAQCAtMjIw
MCw3ICsyMjA2LDcgQEAgZWJfc2VsZWN0X2xlZ2FjeV9yaW5nKHN0cnVjdCBpOTE1X2V4ZWNidWZm
ZXIgKmViLAogCQlyZXR1cm4gLTE7CiAJfQogCi0JaWYgKHVzZXJfcmluZ19pZCA9PSBJOTE1X0VY
RUNfQlNEICYmIEhBU19FTkdJTkUoaTkxNSwgVkNTMSkpIHsKKwlpZiAodXNlcl9yaW5nX2lkID09
IEk5MTVfRVhFQ19CU0QgJiYgbnVtX3Zjc19lbmdpbmVzKGk5MTUpID4gMSkgewogCQl1bnNpZ25l
ZCBpbnQgYnNkX2lkeCA9IGFyZ3MtPmZsYWdzICYgSTkxNV9FWEVDX0JTRF9NQVNLOwogCiAJCWlm
IChic2RfaWR4ID09IEk5MTVfRVhFQ19CU0RfREVGQVVMVCkgewotLSAKMi4yMy4wLnJjMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
