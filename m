Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E80E39D7
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 19:24:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF1F76E584;
	Thu, 24 Oct 2019 17:24:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBDF96E584
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 17:24:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 10:24:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,225,1569308400"; d="scan'208";a="373289623"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.135])
 by orsmga005.jf.intel.com with ESMTP; 24 Oct 2019 10:24:28 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2019 10:25:06 -0700
Message-Id: <20191024172506.16454-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Handle AUX interrupts for TC ports
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UncmUgY3VycmVudGx5IG9ubHkgcHJvY2Vzc2luZyBBVVggaW50ZXJydXB0cyBvbiB0aGUgY29t
Ym8gcG9ydHM7IG1ha2UKc3VyZSB3ZSBoYW5kbGUgdGhlIFRDIHBvcnRzIGFzIHdlbGwuCgpGaXhl
czogZjY2Mzc2OWE1ZWVmICgiZHJtL2k5MTUvdGdsOiBpbml0aWFsaXplIFRDIGFuZCBUQlQgcG9y
dHMiKQpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CkNj
OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KU2lnbmVkLW9mZi1i
eTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2lycS5jIHwgOSArKysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmggfCA2ICsrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9p
cnEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKaW5kZXggYTA0OGM3OWE2YTU1
Li4wZDkwZTA2ZjgzM2QgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJx
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwpAQCAtMjU3OCw3ICsyNTc4
LDE0IEBAIHN0YXRpYyB1MzIgZ2VuOF9kZV9wb3J0X2F1eF9tYXNrKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikKIAkJLyogVE9ETzogQWRkIEFVWCBlbnRyaWVzIGZvciBVU0JDICov
CiAJCXJldHVybiBUR0xfREVfUE9SVF9BVVhfRERJQSB8CiAJCQlUR0xfREVfUE9SVF9BVVhfRERJ
QiB8Ci0JCQlUR0xfREVfUE9SVF9BVVhfRERJQzsKKwkJCVRHTF9ERV9QT1JUX0FVWF9ERElDIHwK
KwkJCVRHTF9ERV9QT1JUX0FVWF9VU0JDMSB8CisJCQlUR0xfREVfUE9SVF9BVVhfVVNCQzIgfAor
CQkJVEdMX0RFX1BPUlRfQVVYX1VTQkMzIHwKKwkJCVRHTF9ERV9QT1JUX0FVWF9VU0JDNCB8CisJ
CQlUR0xfREVfUE9SVF9BVVhfVVNCQzUgfAorCQkJVEdMX0RFX1BPUlRfQVVYX1VTQkM2OworCiAK
IAltYXNrID0gR0VOOF9BVVhfQ0hBTk5FTF9BOwogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49
IDkpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCAwN2NmNjdkNDI3MzUuLmE3YmE4MTAwZjEz
ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC03NDM2LDYgKzc0MzYsMTIgQEAgZW51bSB7
CiAjZGVmaW5lICBHRU44X1BPUlRfRFBfQV9IT1RQTFVHCQkoMSA8PCAzKQogI2RlZmluZSAgQlhU
X0RFX1BPUlRfR01CVVMJCSgxIDw8IDEpCiAjZGVmaW5lICBHRU44X0FVWF9DSEFOTkVMX0EJCSgx
IDw8IDApCisjZGVmaW5lICBUR0xfREVfUE9SVF9BVVhfVVNCQzYJCSgxIDw8IDEzKQorI2RlZmlu
ZSAgVEdMX0RFX1BPUlRfQVVYX1VTQkM1CQkoMSA8PCAxMikKKyNkZWZpbmUgIFRHTF9ERV9QT1JU
X0FVWF9VU0JDNAkJKDEgPDwgMTEpCisjZGVmaW5lICBUR0xfREVfUE9SVF9BVVhfVVNCQzMJCSgx
IDw8IDEwKQorI2RlZmluZSAgVEdMX0RFX1BPUlRfQVVYX1VTQkMyCQkoMSA8PCA5KQorI2RlZmlu
ZSAgVEdMX0RFX1BPUlRfQVVYX1VTQkMxCQkoMSA8PCA4KQogI2RlZmluZSAgVEdMX0RFX1BPUlRf
QVVYX0RESUMJCSgxIDw8IDIpCiAjZGVmaW5lICBUR0xfREVfUE9SVF9BVVhfRERJQgkJKDEgPDwg
MSkKICNkZWZpbmUgIFRHTF9ERV9QT1JUX0FVWF9ERElBCQkoMSA8PCAwKQotLSAKMi4yMS4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
