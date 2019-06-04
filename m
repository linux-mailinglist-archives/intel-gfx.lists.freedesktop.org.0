Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB8134B26
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 16:59:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E66D89805;
	Tue,  4 Jun 2019 14:59:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09B3F89805
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 14:59:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 07:59:21 -0700
X-ExtLoop1: 1
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 04 Jun 2019 07:59:20 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jun 2019 17:58:08 +0300
Message-Id: <20190604145826.16424-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604145826.16424-1-imre.deak@intel.com>
References: <20190604145826.16424-1-imre.deak@intel.com>
Subject: [Intel-gfx] [PATCH 05/23] drm/i915: Don't enable the DDI-IO power
 in the TypeC TBT-alt mode
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWNjb3JkaW5nIHRvIHRoZSBzcGVjIHdlIHNob3VsZCBub3QgZW5hYmxlIHRoZSBEREktSU8gcG93
ZXIgZG9tYWluIGlmCnRoZSBUeXBlQyBwb3J0IGlzIGluIHRoZSBUQlQtYWx0IG1vZGUsIHNvIGRv
IHRoYXQgb25seSBpbiB0aGUgb3RoZXIKVHlwZUMgbW9kZXMgb3IgZm9yIG5vbi1UeXBlQyBwb3J0
cy4KCkNjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgpDYzogQW51
c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBJ
bXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGRpLmMgfCAxMSArKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9u
cygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RkaS5jCmluZGV4IGEzNTc0
ZjE0YTNkMC4uOGYyMjNkNDhkNTYyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZGkuYwpAQCAtMzEx
MSw3ICszMTExLDEwIEBAIHN0YXRpYyB2b2lkIGludGVsX2RkaV9wcmVfZW5hYmxlX2RwKHN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCiAJaW50ZWxfZGRpX2Nsa19zZWxlY3QoZW5jb2Rl
ciwgY3J0Y19zdGF0ZSk7CiAKLQlpbnRlbF9kaXNwbGF5X3Bvd2VyX2dldChkZXZfcHJpdiwgZGln
X3BvcnQtPmRkaV9pb19wb3dlcl9kb21haW4pOworCWlmICghaW50ZWxfcG9ydF9pc190YyhkZXZf
cHJpdiwgcG9ydCkgfHwKKwkgICAgZGlnX3BvcnQtPnRjX21vZGUgIT0gVENfUE9SVF9UQlRfQUxU
KQorCQlpbnRlbF9kaXNwbGF5X3Bvd2VyX2dldChkZXZfcHJpdiwKKwkJCQkJZGlnX3BvcnQtPmRk
aV9pb19wb3dlcl9kb21haW4pOwogCiAJaWNsX3Byb2dyYW1fbWdfZHBfbW9kZShkaWdfcG9ydCk7
CiAJaWNsX2Rpc2FibGVfcGh5X2Nsb2NrX2dhdGluZyhkaWdfcG9ydCk7CkBAIC0zMjkzLDggKzMy
OTYsMTAgQEAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX3Bvc3RfZGlzYWJsZV9kcChzdHJ1Y3QgaW50
ZWxfZW5jb2RlciAqZW5jb2RlciwKIAlpbnRlbF9lZHBfcGFuZWxfdmRkX29uKGludGVsX2RwKTsK
IAlpbnRlbF9lZHBfcGFuZWxfb2ZmKGludGVsX2RwKTsKIAotCWludGVsX2Rpc3BsYXlfcG93ZXJf
cHV0X3VuY2hlY2tlZChkZXZfcHJpdiwKLQkJCQkJICBkaWdfcG9ydC0+ZGRpX2lvX3Bvd2VyX2Rv
bWFpbik7CisJaWYgKCFpbnRlbF9wb3J0X2lzX3RjKGRldl9wcml2LCBlbmNvZGVyLT5wb3J0KSB8
fAorCSAgICBkaWdfcG9ydC0+dGNfbW9kZSAhPSBUQ19QT1JUX1RCVF9BTFQpCisJCWludGVsX2Rp
c3BsYXlfcG93ZXJfcHV0X3VuY2hlY2tlZChkZXZfcHJpdiwKKwkJCQkJCSAgZGlnX3BvcnQtPmRk
aV9pb19wb3dlcl9kb21haW4pOwogCiAJaW50ZWxfZGRpX2Nsa19kaXNhYmxlKGVuY29kZXIpOwog
fQotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
