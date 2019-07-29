Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C72C79AEF
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 23:19:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E2F56E2A8;
	Mon, 29 Jul 2019 21:19:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E87DF6E2A8
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 21:19:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 14:19:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,324,1559545200"; d="scan'208";a="182895928"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.10.102])
 by orsmga002.jf.intel.com with ESMTP; 29 Jul 2019 14:19:43 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jul 2019 14:19:34 -0700
Message-Id: <20190729211937.19731-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190729211937.19731-1-lucas.demarchi@intel.com>
References: <20190729211937.19731-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/5] drm/i915/tgl: stop using ERROR_GEN6 and
 DONE_REG
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

VGhlc2UgcmVnaXN0ZXJzIGhhdmUgYmVlbiByZW1vdmVkIG9uIGdlbjEyLgoKQ2M6IERhbmllbGUg
Q2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+ClNpZ25lZC1v
ZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMgfCAxNiArKysrKysrKystLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jCmluZGV4IDY3M2M1ZGM5M2QyOC4uOTc0YmUzNTE2
MWQ0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMKQEAgLTc0NSwxNSArNzQ1
LDE1IEBAIHN0YXRpYyB2b2lkIF9fZXJyX3ByaW50X3RvX3NnbChzdHJ1Y3QgZHJtX2k5MTVfZXJy
b3Jfc3RhdGVfYnVmICptLAogCWZvciAoaSA9IDA7IGkgPCBlcnJvci0+bmZlbmNlOyBpKyspCiAJ
CWVycl9wcmludGYobSwgIiAgZmVuY2VbJWRdID0gJTA4bGx4XG4iLCBpLCBlcnJvci0+ZmVuY2Vb
aV0pOwogCi0JaWYgKElOVEVMX0dFTihtLT5pOTE1KSA+PSA2KSB7CisJaWYgKElTX0dFTl9SQU5H
RShtLT5pOTE1LCA2LCAxMSkpCiAJCWVycl9wcmludGYobSwgIkVSUk9SOiAweCUwOHhcbiIsIGVy
cm9yLT5lcnJvcik7CiAKLQkJaWYgKElOVEVMX0dFTihtLT5pOTE1KSA+PSA4KQotCQkJZXJyX3By
aW50ZihtLCAiRkFVTFRfVExCX0RBVEE6IDB4JTA4eCAweCUwOHhcbiIsCi0JCQkJICAgZXJyb3It
PmZhdWx0X2RhdGExLCBlcnJvci0+ZmF1bHRfZGF0YTApOworCWlmIChJTlRFTF9HRU4obS0+aTkx
NSkgPj0gOCkKKwkJZXJyX3ByaW50ZihtLCAiRkFVTFRfVExCX0RBVEE6IDB4JTA4eCAweCUwOHhc
biIsCisJCQkgICBlcnJvci0+ZmF1bHRfZGF0YTEsIGVycm9yLT5mYXVsdF9kYXRhMCk7CiAKKwlp
ZiAoSVNfR0VOX1JBTkdFKG0tPmk5MTUsIDYsIDExKSkKIAkJZXJyX3ByaW50ZihtLCAiRE9ORV9S
RUc6IDB4JTA4eFxuIiwgZXJyb3ItPmRvbmVfcmVnKTsKLQl9CiAKIAlpZiAoSVNfR0VOKG0tPmk5
MTUsIDcpKQogCQllcnJfcHJpbnRmKG0sICJFUlJfSU5UOiAweCUwOHhcbiIsIGVycm9yLT5lcnJf
aW50KTsKQEAgLTE1NjksOCArMTU2OSwxMCBAQCBzdGF0aWMgdm9pZCBjYXB0dXJlX3JlZ19zdGF0
ZShzdHJ1Y3QgaTkxNV9ncHVfc3RhdGUgKmVycm9yKQogCiAJaWYgKElOVEVMX0dFTihpOTE1KSA+
PSA2KSB7CiAJCWVycm9yLT5kZXJybXIgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIERFUlJN
Uik7Ci0JCWVycm9yLT5lcnJvciA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgRVJST1JfR0VO
Nik7Ci0JCWVycm9yLT5kb25lX3JlZyA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgRE9ORV9S
RUcpOworCQlpZiAoSU5URUxfR0VOKGk5MTUpIDwgMTIpIHsKKwkJCWVycm9yLT5lcnJvciA9IGlu
dGVsX3VuY29yZV9yZWFkKHVuY29yZSwgRVJST1JfR0VONik7CisJCQllcnJvci0+ZG9uZV9yZWcg
PSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIERPTkVfUkVHKTsKKwkJfQogCX0KIAogCWlmIChJ
TlRFTF9HRU4oaTkxNSkgPj0gNSkKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
