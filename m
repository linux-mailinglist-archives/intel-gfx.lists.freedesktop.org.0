Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96275675D5
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 22:20:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECA3D6E394;
	Fri, 12 Jul 2019 20:20:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C99866E393
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 20:20:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 13:20:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,483,1557212400"; d="scan'208";a="250226731"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by orsmga001.jf.intel.com with ESMTP; 12 Jul 2019 13:20:39 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jul 2019 13:22:14 -0700
Message-Id: <20190712202214.3906-2-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190712202214.3906-1-manasi.d.navare@intel.com>
References: <20190712202214.3906-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 2/2] drm/i915/display/icl: Bump up the
 plane/fb height
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

T24gSUNMKywgdGhlIG1heCBzdXBwb3J0ZWQgcGxhbmUgaGVpZ2h0IGlzIDQzMjAsIHNvIGJ1bXAg
aXQgdXAKVG8gc3VwcG9ydCA0MzIwLCB3ZSBuZWVkIHRvIGluY3JlYXNlIHRoZSBudW1iZXIgb2Yg
Yml0cyB1c2VkIHRvCnJlYWQgcGxhbmVfaGVpZ2h0IHRvIDEzIGFzIG9wcG9zZWQgdG8gb2xkZXIg
MTIgYml0cy4KCnYzOgoqIFVzZSAweGZmZmYgZm9yIG1hc2sgYXMgZXh0cmEgYml0cyBhcmUgbWJ6
IChWaWxsZSkKdjI6CiogSUNMIHBsYW5lIGhlaWdodCBzdXBwb3J0ZWQgaXMgNDMyMCAoVmlsbGUp
CiogQWRkIGEgbmV3IGxpbmUgYmV0d2VlbiBtYXggd2lkdGggYW5kIG1heCBoZWlnaHQgKEpvc2Up
CgpDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNv
bT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNp
Z25lZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxOSArKysr
KysrKysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
CmluZGV4IDE1MDA2NzY0ODYyYi4uNTEwMzUwNGJiYmVjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMzM0Myw2ICszMzQzLDE2IEBAIHN0YXRp
YyBpbnQgaWNsX21heF9wbGFuZV93aWR0aChjb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpm
YiwKIAlyZXR1cm4gNTEyMDsKIH0KIAorc3RhdGljIGludCBza2xfbWF4X3BsYW5lX2hlaWdodCh2
b2lkKQoreworCXJldHVybiA0MDk2OworfQorCitzdGF0aWMgaW50IGljbF9tYXhfcGxhbmVfaGVp
Z2h0KHZvaWQpCit7CisJcmV0dXJuIDQzMjA7Cit9CisKIHN0YXRpYyBib29sIHNrbF9jaGVja19t
YWluX2Njc19jb29yZGluYXRlcyhzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRl
LAogCQkJCQkgICBpbnQgbWFpbl94LCBpbnQgbWFpbl95LCB1MzIgbWFpbl9vZmZzZXQpCiB7CkBA
IC0zMzkxLDcgKzM0MDEsNyBAQCBzdGF0aWMgaW50IHNrbF9jaGVja19tYWluX3N1cmZhY2Uoc3Ry
dWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKIAlpbnQgdyA9IGRybV9yZWN0X3dp
ZHRoKCZwbGFuZV9zdGF0ZS0+YmFzZS5zcmMpID4+IDE2OwogCWludCBoID0gZHJtX3JlY3RfaGVp
Z2h0KCZwbGFuZV9zdGF0ZS0+YmFzZS5zcmMpID4+IDE2OwogCWludCBtYXhfd2lkdGg7Ci0JaW50
IG1heF9oZWlnaHQgPSA0MDk2OworCWludCBtYXhfaGVpZ2h0OwogCXUzMiBhbGlnbm1lbnQsIG9m
ZnNldCwgYXV4X29mZnNldCA9IHBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVsxXS5vZmZzZXQ7CiAK
IAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKQEAgLTM0MDEsNiArMzQxMSwxMSBAQCBz
dGF0aWMgaW50IHNrbF9jaGVja19tYWluX3N1cmZhY2Uoc3RydWN0IGludGVsX3BsYW5lX3N0YXRl
ICpwbGFuZV9zdGF0ZSkKIAllbHNlCiAJCW1heF93aWR0aCA9IHNrbF9tYXhfcGxhbmVfd2lkdGgo
ZmIsIDAsIHJvdGF0aW9uKTsKIAorCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQorCQlt
YXhfaGVpZ2h0ID0gaWNsX21heF9wbGFuZV9oZWlnaHQoKTsKKwllbHNlCisJCW1heF9oZWlnaHQg
PSBza2xfbWF4X3BsYW5lX2hlaWdodCgpOworCiAJaWYgKHcgPiBtYXhfd2lkdGggfHwgaCA+IG1h
eF9oZWlnaHQpIHsKIAkJRFJNX0RFQlVHX0tNUygicmVxdWVzdGVkIFkvUkdCIHNvdXJjZSBzaXpl
ICVkeCVkIHRvbyBiaWcgKGxpbWl0ICVkeCVkKVxuIiwKIAkJCSAgICAgIHcsIGgsIG1heF93aWR0
aCwgbWF4X2hlaWdodCk7CkBAIC05ODY1LDcgKzk4ODAsNyBAQCBza3lsYWtlX2dldF9pbml0aWFs
X3BsYW5lX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAlvZmZzZXQgPSBJOTE1X1JF
QUQoUExBTkVfT0ZGU0VUKHBpcGUsIHBsYW5lX2lkKSk7CiAKIAl2YWwgPSBJOTE1X1JFQUQoUExB
TkVfU0laRShwaXBlLCBwbGFuZV9pZCkpOwotCWZiLT5oZWlnaHQgPSAoKHZhbCA+PiAxNikgJiAw
eGZmZikgKyAxOworCWZiLT5oZWlnaHQgPSAoKHZhbCA+PiAxNikgJiAweGZmZmYpICsgMTsKIAlm
Yi0+d2lkdGggPSAoKHZhbCA+PiAwKSAmIDB4MWZmZikgKyAxOwogCiAJdmFsID0gSTkxNV9SRUFE
KFBMQU5FX1NUUklERShwaXBlLCBwbGFuZV9pZCkpOwotLSAKMi4xOS4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
