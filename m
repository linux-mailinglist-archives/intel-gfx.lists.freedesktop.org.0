Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7831B72A
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2019 15:39:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDBA689CE2;
	Mon, 13 May 2019 13:39:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C27089CE2
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2019 13:39:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 May 2019 06:39:10 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 13 May 2019 06:39:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 May 2019 16:39:08 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 May 2019 16:39:03 +0300
Message-Id: <20190513133904.20374-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190513133904.20374-1-ville.syrjala@linux.intel.com>
References: <20190513133904.20374-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Update pipe gamma enable bits
 when C8 planes are getting enabled/disabled
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldo
ZW4gdGhlIGZpcnN0IEM4IHBsYW5lIGdldHMgZW5hYmxlZCwgb3IgdGhlIGxhc3Qgb25lIGdldHMg
ZGlzYWJsZWQgd2UKbWF5IG5lZWQgdG8gZW5hYmxlL2Rpc2FibGUgdGhlIHBpcGUgZ2FtbWEgZm9y
IHRoZSBvdGhlciBhY3RpdmUgcGxhbmVzLgpDaGVjayBmb3IgdGhhdCBhbmQgcnVuIHRocm91Z2gg
dGhlIG5vcm1hbCBpbnRlbF9jb2xvcl9jaGVjaygpIHBhdGguCgpTaWduZWQtb2ZmLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYyB8IDE4ICsrKysrKysrKysrKysrKysrKwogMSBm
aWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNw
bGF5LmMKaW5kZXggMDUxNzdmMzcxODFiLi4wMWM1YzA3YmM3ZWEgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kaXNwbGF5LmMKQEAgLTExMTc2LDYgKzExMTc2LDE3IEBAIHN0YXRpYyBpbnQgaWNs
X2NoZWNrX252MTJfcGxhbmVzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQog
CXJldHVybiAwOwogfQogCitzdGF0aWMgYm9vbCBjOF9wbGFuZXNfY2hhbmdlZChjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUpCit7CisJc3RydWN0IGludGVsX2Ny
dGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKG5ld19jcnRjX3N0YXRlLT5iYXNlLmNydGMpOworCXN0
cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlID0KKwkJdG9faW50ZWxfYXRvbWljX3N0YXRl
KG5ld19jcnRjX3N0YXRlLT5iYXNlLnN0YXRlKTsKKwljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqb2xkX2NydGNfc3RhdGUgPQorCQlpbnRlbF9hdG9taWNfZ2V0X29sZF9jcnRjX3N0YXRl
KHN0YXRlLCBjcnRjKTsKKworCXJldHVybiAhb2xkX2NydGNfc3RhdGUtPmM4X3BsYW5lcyAhPSAh
bmV3X2NydGNfc3RhdGUtPmM4X3BsYW5lczsKK30KKwogc3RhdGljIGludCBpbnRlbF9jcnRjX2F0
b21pY19jaGVjayhzdHJ1Y3QgZHJtX2NydGMgKmNydGMsCiAJCQkJICAgc3RydWN0IGRybV9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKQogewpAQCAtMTExOTksNiArMTEyMTAsMTMgQEAgc3RhdGljIGlu
dCBpbnRlbF9jcnRjX2F0b21pY19jaGVjayhzdHJ1Y3QgZHJtX2NydGMgKmNydGMsCiAJCQlyZXR1
cm4gcmV0OwogCX0KIAorCS8qCisJICogTWF5IG5lZWQgdG8gdXBkYXRlIHBpcGUgZ2FtbWEgZW5h
YmxlIGJpdHMKKwkgKiB3aGVuIEM4IHBsYW5lcyBhcmUgZ2V0dGluZyBlbmFibGVkL2Rpc2FibGVk
LgorCSAqLworCWlmIChjOF9wbGFuZXNfY2hhbmdlZChwaXBlX2NvbmZpZykpCisJCWNydGNfc3Rh
dGUtPmNvbG9yX21nbXRfY2hhbmdlZCA9IHRydWU7CisKIAlpZiAobW9kZV9jaGFuZ2VkIHx8IHBp
cGVfY29uZmlnLT51cGRhdGVfcGlwZSB8fAogCSAgICBjcnRjX3N0YXRlLT5jb2xvcl9tZ210X2No
YW5nZWQpIHsKIAkJcmV0ID0gaW50ZWxfY29sb3JfY2hlY2socGlwZV9jb25maWcpOwotLSAKMi4y
MS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
