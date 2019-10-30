Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C156E948F
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 02:25:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BD246EC73;
	Wed, 30 Oct 2019 01:25:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 041AD6E868
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2019 01:25:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 18:25:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,245,1569308400"; d="scan'208";a="211945564"
Received: from ldmartin-desk1.jf.intel.com ([10.7.200.70])
 by orsmga002.jf.intel.com with ESMTP; 29 Oct 2019 18:25:10 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 18:24:47 -0700
Message-Id: <20191030012448.14937-5-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191030012448.14937-1-lucas.demarchi@intel.com>
References: <20191030012448.14937-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915: avoid reading DP_TP_CTL twice
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

SnVzdCBhdm9pZCB0aGUgYWRkaXRpb25hbCByZWFkIGluIGNhc2UgRFBfVFBfQ1RMIGlzIGVuYWJs
ZWQ6CnJlYWQgaXQgb25jZSBhbmQgc2F2ZSB0aGUgdmFsdWUuCgpTaWduZWQtb2ZmLWJ5OiBMdWNh
cyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgMzMgKysrKysrKysrKysrLS0tLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggMmNlOTk4NTI5ZDA4Li40
MWI5YjlhNjc3MmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpA
QCAtNDE0OCwzNyArNDE0OCwzOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcHJlcGFyZV9saW5r
X3JldHJhaW4oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPQogCQl0b19pOTE1KGludGVsX2RpZ19wb3J0LT5iYXNlLmJhc2UuZGV2
KTsKIAllbnVtIHBvcnQgcG9ydCA9IGludGVsX2RpZ19wb3J0LT5iYXNlLnBvcnQ7Ci0JdTMyIHZh
bDsKKwl1MzIgZHBfdHBfY3RsLCBkZGlfYnVmX2N0bDsKIAlib29sIHdhaXQgPSBmYWxzZTsKIAot
CWlmIChJOTE1X1JFQUQoaW50ZWxfZHAtPnJlZ3MuZHBfdHBfY3RsKSAmIERQX1RQX0NUTF9FTkFC
TEUpIHsKLQkJdmFsID0gSTkxNV9SRUFEKERESV9CVUZfQ1RMKHBvcnQpKTsKLQkJaWYgKHZhbCAm
IERESV9CVUZfQ1RMX0VOQUJMRSkgewotCQkJdmFsICY9IH5ERElfQlVGX0NUTF9FTkFCTEU7Ci0J
CQlJOTE1X1dSSVRFKERESV9CVUZfQ1RMKHBvcnQpLCB2YWwpOworCWRwX3RwX2N0bCA9IEk5MTVf
UkVBRChpbnRlbF9kcC0+cmVncy5kcF90cF9jdGwpOworCisJaWYgKGRwX3RwX2N0bCAmIERQX1RQ
X0NUTF9FTkFCTEUpIHsKKwkJZGRpX2J1Zl9jdGwgPSBJOTE1X1JFQUQoRERJX0JVRl9DVEwocG9y
dCkpOworCQlpZiAoZGRpX2J1Zl9jdGwgJiBERElfQlVGX0NUTF9FTkFCTEUpIHsKKwkJCUk5MTVf
V1JJVEUoRERJX0JVRl9DVEwocG9ydCksCisJCQkJICAgZGRpX2J1Zl9jdGwgJiB+RERJX0JVRl9D
VExfRU5BQkxFKTsKIAkJCXdhaXQgPSB0cnVlOwogCQl9CiAKLQkJdmFsID0gSTkxNV9SRUFEKGlu
dGVsX2RwLT5yZWdzLmRwX3RwX2N0bCk7Ci0JCXZhbCAmPSB+KERQX1RQX0NUTF9FTkFCTEUgfCBE
UF9UUF9DVExfTElOS19UUkFJTl9NQVNLKTsKLQkJdmFsIHw9IERQX1RQX0NUTF9MSU5LX1RSQUlO
X1BBVDE7Ci0JCUk5MTVfV1JJVEUoaW50ZWxfZHAtPnJlZ3MuZHBfdHBfY3RsLCB2YWwpOworCQlk
cF90cF9jdGwgJj0gfihEUF9UUF9DVExfRU5BQkxFIHwgRFBfVFBfQ1RMX0xJTktfVFJBSU5fTUFT
Syk7CisJCWRwX3RwX2N0bCB8PSBEUF9UUF9DVExfTElOS19UUkFJTl9QQVQxOworCQlJOTE1X1dS
SVRFKGludGVsX2RwLT5yZWdzLmRwX3RwX2N0bCwgZHBfdHBfY3RsKTsKIAkJUE9TVElOR19SRUFE
KGludGVsX2RwLT5yZWdzLmRwX3RwX2N0bCk7CiAKIAkJaWYgKHdhaXQpCiAJCQlpbnRlbF93YWl0
X2RkaV9idWZfaWRsZShkZXZfcHJpdiwgcG9ydCk7CiAJfQogCi0JdmFsID0gRFBfVFBfQ1RMX0VO
QUJMRSB8Ci0JICAgICAgRFBfVFBfQ1RMX0xJTktfVFJBSU5fUEFUMSB8IERQX1RQX0NUTF9TQ1JB
TUJMRV9ESVNBQkxFOworCWRwX3RwX2N0bCA9IERQX1RQX0NUTF9FTkFCTEUgfAorCQkgICAgRFBf
VFBfQ1RMX0xJTktfVFJBSU5fUEFUMSB8IERQX1RQX0NUTF9TQ1JBTUJMRV9ESVNBQkxFOwogCWlm
IChpbnRlbF9kcC0+bGlua19tc3QpCi0JCXZhbCB8PSBEUF9UUF9DVExfTU9ERV9NU1Q7CisJCWRw
X3RwX2N0bCB8PSBEUF9UUF9DVExfTU9ERV9NU1Q7CiAJZWxzZSB7Ci0JCXZhbCB8PSBEUF9UUF9D
VExfTU9ERV9TU1Q7CisJCWRwX3RwX2N0bCB8PSBEUF9UUF9DVExfTU9ERV9TU1Q7CiAJCWlmIChk
cm1fZHBfZW5oYW5jZWRfZnJhbWVfY2FwKGludGVsX2RwLT5kcGNkKSkKLQkJCXZhbCB8PSBEUF9U
UF9DVExfRU5IQU5DRURfRlJBTUVfRU5BQkxFOworCQkJZHBfdHBfY3RsIHw9IERQX1RQX0NUTF9F
TkhBTkNFRF9GUkFNRV9FTkFCTEU7CiAJfQotCUk5MTVfV1JJVEUoaW50ZWxfZHAtPnJlZ3MuZHBf
dHBfY3RsLCB2YWwpOworCUk5MTVfV1JJVEUoaW50ZWxfZHAtPnJlZ3MuZHBfdHBfY3RsLCBkcF90
cF9jdGwpOwogCVBPU1RJTkdfUkVBRChpbnRlbF9kcC0+cmVncy5kcF90cF9jdGwpOwogCiAJaW50
ZWxfZHAtPkRQIHw9IERESV9CVUZfQ1RMX0VOQUJMRTsKLS0gCjIuMjMuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
