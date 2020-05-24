Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B6E1E03EC
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2020 01:40:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 088AA89CF5;
	Sun, 24 May 2020 23:40:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4217C89CF5
 for <intel-gfx@lists.freedesktop.org>; Sun, 24 May 2020 23:40:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21282173-1500050 
 for multiple; Mon, 25 May 2020 00:38:58 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 May 2020 00:39:00 +0100
Message-Id: <20200524233900.25598-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Fix early deref of 'dsb'
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYzoxNzcgaW50ZWxfZHNiX3Jl
Z193cml0ZSgpIHdhcm46IHZhcmlhYmxlIGRlcmVmZXJlbmNlZCBiZWZvcmUgY2hlY2sgJ2RzYicg
KHNlZSBsaW5lIDE3NSkKCkZpeGVzOiBhZmVkYTRmM2IxYzggKCJkcm0vaTkxNS9kc2I6IFByZSBh
bGxvY2F0ZSBhbmQgbGF0ZSBjbGVhbnVwIG9mIGNtZCBidWZmZXIiKQpTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBBbmltZXNoIE1hbm5hIDxhbmlt
ZXNoLm1hbm5hQGludGVsLmNvbT4KQ2M6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyB8IDYgKysr
Ky0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCmluZGV4IDQ3NTEwNmU5MWZhNy4u
MjRlNmQ2M2UyZDQ3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RzYi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMK
QEAgLTE2OSwxNSArMTY5LDE3IEBAIHZvaWQgaW50ZWxfZHNiX2luZGV4ZWRfcmVnX3dyaXRlKGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogdm9pZCBpbnRlbF9kc2Jf
cmVnX3dyaXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQkJ
IGk5MTVfcmVnX3QgcmVnLCB1MzIgdmFsKQogewotCXN0cnVjdCBpbnRlbF9kc2IgKmRzYiA9IGNy
dGNfc3RhdGUtPmRzYjsKIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMo
Y3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKLQl1MzIgKmJ1ZiA9IGRzYi0+Y21kX2J1ZjsK
KwlzdHJ1Y3QgaW50ZWxfZHNiICpkc2I7CisJdTMyICpidWY7CiAKKwlkc2IgPSBjcnRjX3N0YXRl
LT5kc2I7CiAJaWYgKCFkc2IpIHsKIAkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIHJlZywgdmFs
KTsKIAkJcmV0dXJuOwogCX0KKwogCWJ1ZiA9IGRzYi0+Y21kX2J1ZjsKIAlpZiAoZHJtX1dBUk5f
T04oJmRldl9wcml2LT5kcm0sIGRzYi0+ZnJlZV9wb3MgPj0gRFNCX0JVRl9TSVpFKSkgewogCQlk
cm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwgIkRTQiBidWZmZXIgb3ZlcmZsb3dcbiIpOwotLSAK
Mi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
