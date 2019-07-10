Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B197364E0A
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 23:37:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58D6289152;
	Wed, 10 Jul 2019 21:37:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E8B589154
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 21:37:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 14:37:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,476,1557212400"; d="scan'208";a="156623298"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by orsmga007.jf.intel.com with ESMTP; 10 Jul 2019 14:37:36 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 14:39:51 -0700
Message-Id: <20190710213951.517-2-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190710213951.517-1-manasi.d.navare@intel.com>
References: <20190710213951.517-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915/display/icl: Bump up the
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
MTIgYml0cy4KCnYyOgoqIElDTCBwbGFuZSBoZWlnaHQgc3VwcG9ydGVkIGlzIDQzMjAgKFZpbGxl
KQoqIEFkZCBhIG5ldyBsaW5lIGJldHdlZW4gbWF4IHdpZHRoIGFuZCBtYXggaGVpZ2h0IChKb3Nl
KQoKQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5j
b20+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpT
aWduZWQtb2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMjIgKysr
KysrKysrKysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKaW5kZXggOTg4M2Y2MDdiYjg4Li5lNDkxNWQ2ODE0N2EgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0zMzQzLDYgKzMzNDMsMTYgQEAgc3Rh
dGljIGludCBpY2xfbWF4X3BsYW5lX3dpZHRoKGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIg
KmZiLAogCXJldHVybiA1MTIwOwogfQogCitzdGF0aWMgaW50IHNrbF9tYXhfcGxhbmVfaGVpZ2h0
KHZvaWQpCit7CisJcmV0dXJuIDQwOTY7Cit9CisKK3N0YXRpYyBpbnQgaWNsX21heF9wbGFuZV9o
ZWlnaHQodm9pZCkKK3sKKwlyZXR1cm4gNDMyMDsKK30KKwogc3RhdGljIGJvb2wgc2tsX2NoZWNr
X21haW5fY2NzX2Nvb3JkaW5hdGVzKHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3Rh
dGUsCiAJCQkJCSAgIGludCBtYWluX3gsIGludCBtYWluX3ksIHUzMiBtYWluX29mZnNldCkKIHsK
QEAgLTMzOTEsNyArMzQwMSw3IEBAIHN0YXRpYyBpbnQgc2tsX2NoZWNrX21haW5fc3VyZmFjZShz
dHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQogCWludCB3ID0gZHJtX3JlY3Rf
d2lkdGgoJnBsYW5lX3N0YXRlLT5iYXNlLnNyYykgPj4gMTY7CiAJaW50IGggPSBkcm1fcmVjdF9o
ZWlnaHQoJnBsYW5lX3N0YXRlLT5iYXNlLnNyYykgPj4gMTY7CiAJaW50IG1heF93aWR0aDsKLQlp
bnQgbWF4X2hlaWdodCA9IDQwOTY7CisJaW50IG1heF9oZWlnaHQ7CiAJdTMyIGFsaWdubWVudCwg
b2Zmc2V0LCBhdXhfb2Zmc2V0ID0gcGxhbmVfc3RhdGUtPmNvbG9yX3BsYW5lWzFdLm9mZnNldDsK
IAogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQpAQCAtMzQwMSw2ICszNDExLDExIEBA
IHN0YXRpYyBpbnQgc2tsX2NoZWNrX21haW5fc3VyZmFjZShzdHJ1Y3QgaW50ZWxfcGxhbmVfc3Rh
dGUgKnBsYW5lX3N0YXRlKQogCWVsc2UKIAkJbWF4X3dpZHRoID0gc2tsX21heF9wbGFuZV93aWR0
aChmYiwgMCwgcm90YXRpb24pOwogCisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCisJ
CW1heF9oZWlnaHQgPSBpY2xfbWF4X3BsYW5lX2hlaWdodCgpOworCWVsc2UKKwkJbWF4X2hlaWdo
dCA9IHNrbF9tYXhfcGxhbmVfaGVpZ2h0KCk7CisKIAlpZiAodyA+IG1heF93aWR0aCB8fCBoID4g
bWF4X2hlaWdodCkgewogCQlEUk1fREVCVUdfS01TKCJyZXF1ZXN0ZWQgWS9SR0Igc291cmNlIHNp
emUgJWR4JWQgdG9vIGJpZyAobGltaXQgJWR4JWQpXG4iLAogCQkJICAgICAgdywgaCwgbWF4X3dp
ZHRoLCBtYXhfaGVpZ2h0KTsKQEAgLTk4NjUsNyArOTg4MCwxMCBAQCBza3lsYWtlX2dldF9pbml0
aWFsX3BsYW5lX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAlvZmZzZXQgPSBJOTE1
X1JFQUQoUExBTkVfT0ZGU0VUKHBpcGUsIHBsYW5lX2lkKSk7CiAKIAl2YWwgPSBJOTE1X1JFQUQo
UExBTkVfU0laRShwaXBlLCBwbGFuZV9pZCkpOwotCWZiLT5oZWlnaHQgPSAoKHZhbCA+PiAxNikg
JiAweGZmZikgKyAxOworCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQorCQlmYi0+aGVp
Z2h0ID0gKCh2YWwgPj4gMTYpICYgMHgxZmZmKSArIDE7CisJZWxzZQorCQlmYi0+aGVpZ2h0ID0g
KCh2YWwgPj4gMTYpICYgMHhmZmYpICsgMTsKIAlmYi0+d2lkdGggPSAoKHZhbCA+PiAwKSAmIDB4
MWZmZikgKyAxOwogCiAJdmFsID0gSTkxNV9SRUFEKFBMQU5FX1NUUklERShwaXBlLCBwbGFuZV9p
ZCkpOwotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
