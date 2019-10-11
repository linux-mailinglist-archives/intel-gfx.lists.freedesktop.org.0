Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C70D36BB
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 03:09:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 221076E8D9;
	Fri, 11 Oct 2019 01:09:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A7E96E3EE
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 01:09:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 18:09:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,282,1566889200"; d="scan'208";a="394243442"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.11.83])
 by fmsmga005.fm.intel.com with ESMTP; 10 Oct 2019 18:09:18 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Oct 2019 18:09:01 -0700
Message-Id: <20191011010907.103309-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191011010907.103309-1-lucas.demarchi@intel.com>
References: <20191011010907.103309-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/7] drm/i915: simplify setting of
 ddi_io_power_domain
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

SW5zdGVhZCBvZiB0aGUgZXZlciBncm93aW5nIHN3aXRjaCwganVzdCBjb21wdXRlIHRoZSBkZGkg
aW8gcG93ZXIgZG9tYWluCmJhc2VkIG9uIHRoZSBwb3J0IG51bWJlci4KClNpZ25lZC1vZmYtYnk6
IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCA0MyArKy0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDQwIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4IDZjMTMxNWM3YmNk
ZS4uYjI3NzZmNjA0NGFlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMKQEAgLTQ3NTAsNDYgKzQ3NTAsOSBAQCB2b2lkIGludGVsX2RkaV9pbml0KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwb3J0IHBvcnQpCiAJCWludGVsX2VuY29kZXIt
PnVwZGF0ZV9jb21wbGV0ZSA9IGludGVsX2RkaV91cGRhdGVfY29tcGxldGU7CiAJfQogCi0Jc3dp
dGNoIChwb3J0KSB7Ci0JY2FzZSBQT1JUX0E6Ci0JCWludGVsX2RpZ19wb3J0LT5kZGlfaW9fcG93
ZXJfZG9tYWluID0KLQkJCVBPV0VSX0RPTUFJTl9QT1JUX0RESV9BX0lPOwotCQlicmVhazsKLQlj
YXNlIFBPUlRfQjoKLQkJaW50ZWxfZGlnX3BvcnQtPmRkaV9pb19wb3dlcl9kb21haW4gPQotCQkJ
UE9XRVJfRE9NQUlOX1BPUlRfRERJX0JfSU87Ci0JCWJyZWFrOwotCWNhc2UgUE9SVF9DOgotCQlp
bnRlbF9kaWdfcG9ydC0+ZGRpX2lvX3Bvd2VyX2RvbWFpbiA9Ci0JCQlQT1dFUl9ET01BSU5fUE9S
VF9ERElfQ19JTzsKLQkJYnJlYWs7Ci0JY2FzZSBQT1JUX0Q6Ci0JCWludGVsX2RpZ19wb3J0LT5k
ZGlfaW9fcG93ZXJfZG9tYWluID0KLQkJCVBPV0VSX0RPTUFJTl9QT1JUX0RESV9EX0lPOwotCQli
cmVhazsKLQljYXNlIFBPUlRfRToKLQkJaW50ZWxfZGlnX3BvcnQtPmRkaV9pb19wb3dlcl9kb21h
aW4gPQotCQkJUE9XRVJfRE9NQUlOX1BPUlRfRERJX0VfSU87Ci0JCWJyZWFrOwotCWNhc2UgUE9S
VF9GOgotCQlpbnRlbF9kaWdfcG9ydC0+ZGRpX2lvX3Bvd2VyX2RvbWFpbiA9Ci0JCQlQT1dFUl9E
T01BSU5fUE9SVF9ERElfRl9JTzsKLQkJYnJlYWs7Ci0JY2FzZSBQT1JUX0c6Ci0JCWludGVsX2Rp
Z19wb3J0LT5kZGlfaW9fcG93ZXJfZG9tYWluID0KLQkJCVBPV0VSX0RPTUFJTl9QT1JUX0RESV9H
X0lPOwotCQlicmVhazsKLQljYXNlIFBPUlRfSDoKLQkJaW50ZWxfZGlnX3BvcnQtPmRkaV9pb19w
b3dlcl9kb21haW4gPQotCQkJUE9XRVJfRE9NQUlOX1BPUlRfRERJX0hfSU87Ci0JCWJyZWFrOwot
CWNhc2UgUE9SVF9JOgotCQlpbnRlbF9kaWdfcG9ydC0+ZGRpX2lvX3Bvd2VyX2RvbWFpbiA9Ci0J
CQlQT1dFUl9ET01BSU5fUE9SVF9ERElfSV9JTzsKLQkJYnJlYWs7Ci0JZGVmYXVsdDoKLQkJTUlT
U0lOR19DQVNFKHBvcnQpOwotCX0KKwlXQVJOX09OKHBvcnQgPiBQT1JUX0kpOworCWludGVsX2Rp
Z19wb3J0LT5kZGlfaW9fcG93ZXJfZG9tYWluID0gUE9XRVJfRE9NQUlOX1BPUlRfRERJX0FfSU8g
KworCQkJCQkgICAgICBwb3J0IC0gUE9SVF9BOwogCiAJaWYgKGluaXRfZHApIHsKIAkJaWYgKCFp
bnRlbF9kZGlfaW5pdF9kcF9jb25uZWN0b3IoaW50ZWxfZGlnX3BvcnQpKQotLSAKMi4yMy4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
