Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE37F1FCF56
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 16:17:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 608636E95E;
	Wed, 17 Jun 2020 14:17:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACE5F6E199
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jun 2020 14:17:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21525935-1500050 
 for multiple; Wed, 17 Jun 2020 15:16:59 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 15:16:52 +0100
Message-Id: <20200617141656.24384-8-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200617141656.24384-1-chris@chris-wilson.co.uk>
References: <20200617141656.24384-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/12] drm/i915/gt: Extract busy-stats for
 ring-scheduler
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

TGlmdCB0aGUgYnVzeS1zdGF0cyBjb250ZXh0LWluL291dCBpbXBsZW1lbnRhdGlvbiBvdXQgb2Yg
aW50ZWxfbHJjLCBzbwp0aGF0IHdlIGNhbiByZXVzZSBpdCBmb3Igb3RoZXIgc2NoZWR1bGVyIGlt
cGxlbWVudGF0aW9ucy4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9z
dGF0cy5oIHwgNDkgKysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2xyYy5jICAgICAgICAgIHwgMzQgKy0tLS0tLS0tLS0tLS0KIDIgZmlsZXMgY2hhbmdl
ZCwgNTAgaW5zZXJ0aW9ucygrKSwgMzMgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N0YXRzLmgKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfc3RhdHMuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zdGF0cy5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0
CmluZGV4IDAwMDAwMDAwMDAwMC4uNTg0OTFlYWUzNDgyCi0tLSAvZGV2L251bGwKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N0YXRzLmgKQEAgLTAsMCArMSw0OSBA
QAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLworLyoKKyAqIENvcHlyaWdodCDC
qSAyMDIwIEludGVsIENvcnBvcmF0aW9uCisgKi8KKworI2lmbmRlZiBfX0lOVEVMX0VOR0lORV9T
VEFUU19IX18KKyNkZWZpbmUgX19JTlRFTF9FTkdJTkVfU1RBVFNfSF9fCisKKyNpbmNsdWRlIDxs
aW51eC9hdG9taWMuaD4KKyNpbmNsdWRlIDxsaW51eC9rdGltZS5oPgorI2luY2x1ZGUgPGxpbnV4
L3NlcWxvY2suaD4KKworI2luY2x1ZGUgImk5MTVfZ2VtLmgiIC8qIEdFTV9CVUdfT04gKi8KKyNp
bmNsdWRlICJpbnRlbF9lbmdpbmUuaCIKKworc3RhdGljIGlubGluZSB2b2lkIGludGVsX2VuZ2lu
ZV9jb250ZXh0X2luKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKK3sKKwl1bnNpZ25l
ZCBsb25nIGZsYWdzOworCisJaWYgKGF0b21pY19hZGRfdW5sZXNzKCZlbmdpbmUtPnN0YXRzLmFj
dGl2ZSwgMSwgMCkpCisJCXJldHVybjsKKworCXdyaXRlX3NlcWxvY2tfaXJxc2F2ZSgmZW5naW5l
LT5zdGF0cy5sb2NrLCBmbGFncyk7CisJaWYgKCFhdG9taWNfYWRkX3VubGVzcygmZW5naW5lLT5z
dGF0cy5hY3RpdmUsIDEsIDApKSB7CisJCWVuZ2luZS0+c3RhdHMuc3RhcnQgPSBrdGltZV9nZXQo
KTsKKwkJYXRvbWljX2luYygmZW5naW5lLT5zdGF0cy5hY3RpdmUpOworCX0KKwl3cml0ZV9zZXF1
bmxvY2tfaXJxcmVzdG9yZSgmZW5naW5lLT5zdGF0cy5sb2NrLCBmbGFncyk7Cit9CisKK3N0YXRp
YyBpbmxpbmUgdm9pZCBpbnRlbF9lbmdpbmVfY29udGV4dF9vdXQoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lKQoreworCXVuc2lnbmVkIGxvbmcgZmxhZ3M7CisKKwlHRU1fQlVHX09OKCFh
dG9taWNfcmVhZCgmZW5naW5lLT5zdGF0cy5hY3RpdmUpKTsKKworCWlmIChhdG9taWNfYWRkX3Vu
bGVzcygmZW5naW5lLT5zdGF0cy5hY3RpdmUsIC0xLCAxKSkKKwkJcmV0dXJuOworCisJd3JpdGVf
c2VxbG9ja19pcnFzYXZlKCZlbmdpbmUtPnN0YXRzLmxvY2ssIGZsYWdzKTsKKwlpZiAoYXRvbWlj
X2RlY19hbmRfdGVzdCgmZW5naW5lLT5zdGF0cy5hY3RpdmUpKSB7CisJCWVuZ2luZS0+c3RhdHMu
dG90YWwgPQorCQkJa3RpbWVfYWRkKGVuZ2luZS0+c3RhdHMudG90YWwsCisJCQkJICBrdGltZV9z
dWIoa3RpbWVfZ2V0KCksIGVuZ2luZS0+c3RhdHMuc3RhcnQpKTsKKwl9CisJd3JpdGVfc2VxdW5s
b2NrX2lycXJlc3RvcmUoJmVuZ2luZS0+c3RhdHMubG9jaywgZmxhZ3MpOworfQorCisjZW5kaWYg
LyogX19JTlRFTF9FTkdJTkVfU1RBVFNfSF9fICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xy
Yy5jCmluZGV4IDM3MmFmZjVjNTY2My4uNGM0NDQ0NzdhYmY4IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYwpAQCAtMTM5LDYgKzEzOSw3IEBACiAjaW5jbHVkZSAiaTkxNV92Z3B1Lmgi
CiAjaW5jbHVkZSAiaW50ZWxfY29udGV4dC5oIgogI2luY2x1ZGUgImludGVsX2VuZ2luZV9wbS5o
IgorI2luY2x1ZGUgImludGVsX2VuZ2luZV9zdGF0cy5oIgogI2luY2x1ZGUgImludGVsX2d0Lmgi
CiAjaW5jbHVkZSAiaW50ZWxfZ3RfcG0uaCIKICNpbmNsdWRlICJpbnRlbF9ndF9yZXF1ZXN0cy5o
IgpAQCAtMTE5NiwzOSArMTE5Nyw2IEBAIGV4ZWNsaXN0c19jb250ZXh0X3N0YXR1c19jaGFuZ2Uo
c3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsIHVuc2lnbmVkIGxvbmcgc3RhdHVzKQogCQkJCSAgIHN0
YXR1cywgcnEpOwogfQogCi1zdGF0aWMgdm9pZCBpbnRlbF9lbmdpbmVfY29udGV4dF9pbihzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCi17Ci0JdW5zaWduZWQgbG9uZyBmbGFnczsKLQot
CWlmIChhdG9taWNfYWRkX3VubGVzcygmZW5naW5lLT5zdGF0cy5hY3RpdmUsIDEsIDApKQotCQly
ZXR1cm47Ci0KLQl3cml0ZV9zZXFsb2NrX2lycXNhdmUoJmVuZ2luZS0+c3RhdHMubG9jaywgZmxh
Z3MpOwotCWlmICghYXRvbWljX2FkZF91bmxlc3MoJmVuZ2luZS0+c3RhdHMuYWN0aXZlLCAxLCAw
KSkgewotCQllbmdpbmUtPnN0YXRzLnN0YXJ0ID0ga3RpbWVfZ2V0KCk7Ci0JCWF0b21pY19pbmMo
JmVuZ2luZS0+c3RhdHMuYWN0aXZlKTsKLQl9Ci0Jd3JpdGVfc2VxdW5sb2NrX2lycXJlc3RvcmUo
JmVuZ2luZS0+c3RhdHMubG9jaywgZmxhZ3MpOwotfQotCi1zdGF0aWMgdm9pZCBpbnRlbF9lbmdp
bmVfY29udGV4dF9vdXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQotewotCXVuc2ln
bmVkIGxvbmcgZmxhZ3M7Ci0KLQlHRU1fQlVHX09OKCFhdG9taWNfcmVhZCgmZW5naW5lLT5zdGF0
cy5hY3RpdmUpKTsKLQotCWlmIChhdG9taWNfYWRkX3VubGVzcygmZW5naW5lLT5zdGF0cy5hY3Rp
dmUsIC0xLCAxKSkKLQkJcmV0dXJuOwotCi0Jd3JpdGVfc2VxbG9ja19pcnFzYXZlKCZlbmdpbmUt
PnN0YXRzLmxvY2ssIGZsYWdzKTsKLQlpZiAoYXRvbWljX2RlY19hbmRfdGVzdCgmZW5naW5lLT5z
dGF0cy5hY3RpdmUpKSB7Ci0JCWVuZ2luZS0+c3RhdHMudG90YWwgPQotCQkJa3RpbWVfYWRkKGVu
Z2luZS0+c3RhdHMudG90YWwsCi0JCQkJICBrdGltZV9zdWIoa3RpbWVfZ2V0KCksIGVuZ2luZS0+
c3RhdHMuc3RhcnQpKTsKLQl9Ci0Jd3JpdGVfc2VxdW5sb2NrX2lycXJlc3RvcmUoJmVuZ2luZS0+
c3RhdHMubG9jaywgZmxhZ3MpOwotfQotCiBzdGF0aWMgdm9pZAogZXhlY2xpc3RzX2NoZWNrX2Nv
bnRleHQoY29uc3Qgc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAogCQkJY29uc3Qgc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lKQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
