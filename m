Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA47C896F
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 15:18:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7D816E09F;
	Wed,  2 Oct 2019 13:18:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B818B6E09F
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 13:18:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 06:18:07 -0700
X-IronPort-AV: E=Sophos;i="5.64,574,1559545200"; d="scan'208";a="203590663"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 06:18:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Oct 2019 16:17:57 +0300
Message-Id: <20191002131800.21054-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/vga: rename intel_vga_msr_write()
 to intel_vga_reset_io_mem()
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVuYW1lIHRoZSBmdW5jdGlvbiBwZXIgVmlsbGUncyBzdWdnZXN0aW9uLiBObyBmdW5jdGlvbmFs
IGNoYW5nZXMuCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KU3VnZ2VzdGVkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dl
ci5jIHwgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Z2EuYyAgICAg
ICAgICAgfCAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZnYS5oICAg
ICAgICAgICB8IDIgKy0KIDMgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9wb3dlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3Bvd2VyLmMKaW5kZXggYmI2NDJhMWEwZGQ0Li4wNjE2Mjg0YzZkYTYgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCkBAIC0y
NjcsNyArMjY3LDcgQEAgc3RhdGljIHZvaWQgaHN3X3Bvd2VyX3dlbGxfcG9zdF9lbmFibGUoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJCSAgICAgICB1OCBpcnFfcGlwZV9t
YXNrLCBib29sIGhhc192Z2EpCiB7CiAJaWYgKGhhc192Z2EpCi0JCWludGVsX3ZnYV9tc3Jfd3Jp
dGUoZGV2X3ByaXYpOworCQlpbnRlbF92Z2FfcmVzZXRfaW9fbWVtKGRldl9wcml2KTsKIAogCWlm
IChpcnFfcGlwZV9tYXNrKQogCQlnZW44X2lycV9wb3dlcl93ZWxsX3Bvc3RfZW5hYmxlKGRldl9w
cml2LCBpcnFfcGlwZV9tYXNrKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfdmdhLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zn
YS5jCmluZGV4IDczMjU2OGVhYTk4OC4uMmZmNzI5Mzk4NmQ0IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZnYS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdmdhLmMKQEAgLTcyLDcgKzcyLDcgQEAgdm9pZCBpbnRlbF92Z2Ff
cmVkaXNhYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCWludGVsX2Rpc3BsYXlf
cG93ZXJfcHV0KGk5MTUsIFBPV0VSX0RPTUFJTl9WR0EsIHdha2VyZWYpOwogfQogCi12b2lkIGlu
dGVsX3ZnYV9tc3Jfd3JpdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCit2b2lkIGlu
dGVsX3ZnYV9yZXNldF9pb19tZW0oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiB7CiAJ
c3RydWN0IHBjaV9kZXYgKnBkZXYgPSBpOTE1LT5kcm0ucGRldjsKIApkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Z2EuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdmdhLmgKaW5kZXggMzUxNzg3MmU2MmFjLi5iYTViNTViOTE3ZjAg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmdhLmgKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Z2EuaApAQCAtOCw3ICs4LDcg
QEAKIAogc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7CiAKLXZvaWQgaW50ZWxfdmdhX21zcl93cml0
ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7Cit2b2lkIGludGVsX3ZnYV9yZXNldF9p
b19tZW0oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwogdm9pZCBpbnRlbF92Z2FfZGlz
YWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7CiB2b2lkIGludGVsX3ZnYV9yZWRp
c2FibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwogdm9pZCBpbnRlbF92Z2FfcmVk
aXNhYmxlX3Bvd2VyX29uKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
