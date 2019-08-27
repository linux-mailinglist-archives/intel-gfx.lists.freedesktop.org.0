Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8FE9E949
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 15:26:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E3ED89330;
	Tue, 27 Aug 2019 13:26:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85B7B89330
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 13:26:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18278153-1500050 
 for multiple; Tue, 27 Aug 2019 14:26:32 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Aug 2019 14:26:31 +0100
Message-Id: <20190827132631.18627-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Only activate i915_active debugobject
 once
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIHBvaW50IG9mIGRlYnVnX29iamVjdF9hY3RpdmF0ZSBpcyB0byBtYXJrIHdlIGZpcnN0LCBv
bmx5IHRoZSBmaXJzdCwKYWNxdWlzaXRpb24uIFRoZSBvYmplY3QgdGhlbiByZW1haW5zIGFjdGl2
ZSB1bnRpbCB0aGUgbGFzdCByZWxlYXNlLgpIb3dldmVyLCB3ZSBtYXJrZWQgdXAgYWxsIHN1Y2Nl
c3NmdWwgZmlyc3QgYWNxdWlyZXMgZXZlbiB0aG91Z2ggd2UKYWxsb3dlZCBjb25jdXJyZW50IHBh
cnRpZXMgdG8gdHJ5IGFuZCBhY3F1aXJlIHRoZSBpOTE1X2FjdGl2ZQpzaW11bHRhbmVvdXNseSAo
c2VyaWFsaXNlZCBieSB0aGUgaTkxNV9hY3RpdmUubXV0ZXgpLgoKVGVzdGNhc2U6IGlndC9nZW1f
bW1hcF9ndHQvZmF1bHQtY29uY3VycmVudApTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jIHwgNSArKysr
LQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2FjdGl2ZS5jCmluZGV4IDQ4ZTE2YWQ5M2JiZC4uZDlkODliZGU4MjU2IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMKQEAgLTkyLDExICs5MiwxNCBAQCBzdGF0aWMg
dm9pZCBkZWJ1Z19hY3RpdmVfaW5pdChzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikKIAogc3RhdGlj
IHZvaWQgZGVidWdfYWN0aXZlX2FjdGl2YXRlKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQogewot
CWRlYnVnX29iamVjdF9hY3RpdmF0ZShyZWYsICZhY3RpdmVfZGVidWdfZGVzYyk7CisJbG9ja2Rl
cF9hc3NlcnRfaGVsZCgmcmVmLT5tdXRleCk7CisJaWYgKCFhdG9taWNfcmVhZCgmcmVmLT5jb3Vu
dCkpCisJCWRlYnVnX29iamVjdF9hY3RpdmF0ZShyZWYsICZhY3RpdmVfZGVidWdfZGVzYyk7CiB9
CiAKIHN0YXRpYyB2b2lkIGRlYnVnX2FjdGl2ZV9kZWFjdGl2YXRlKHN0cnVjdCBpOTE1X2FjdGl2
ZSAqcmVmKQogeworCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJnJlZi0+bXV0ZXgpOwogCWRlYnVnX29i
amVjdF9kZWFjdGl2YXRlKHJlZiwgJmFjdGl2ZV9kZWJ1Z19kZXNjKTsKIH0KIAotLSAKMi4yMy4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
