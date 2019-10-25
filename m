Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE3BE56E6
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 01:06:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CE2E6EBC5;
	Fri, 25 Oct 2019 23:06:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99D0A6EBC5
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 23:06:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 16:06:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,230,1569308400"; d="scan'208";a="282396809"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.135])
 by orsmga001.jf.intel.com with ESMTP; 25 Oct 2019 16:06:31 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2019 16:06:19 -0700
Message-Id: <20191025230623.27829-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191025230623.27829-1-matthew.d.roper@intel.com>
References: <20191025230623.27829-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/tgl: Handle AUX interrupts for TC
 ports
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
Ym8gcG9ydHM7IG1ha2UKc3VyZSB3ZSBoYW5kbGUgdGhlIFRDIHBvcnRzIGFzIHdlbGwuCgp2Mjog
RHJvcCBzdGFsZSBjb21tZW50CgpGaXhlczogZjY2Mzc2OWE1ZWVmICgiZHJtL2k5MTUvdGdsOiBp
bml0aWFsaXplIFRDIGFuZCBUQlQgcG9ydHMiKQpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+CkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hp
QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGlu
dGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgfCAxMCArKysr
KysrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIHwgIDYgKysrKysrCiAyIGZp
bGVzIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfaXJxLmMKaW5kZXggMzMwMjBjOGNhNWY2Li45ODdiNDZkNDk5ZmMgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9pcnEuYwpAQCAtMjU3NSwxMCArMjU3NSwxNiBAQCBzdGF0aWMgdTMyIGdlbjhfZGVf
cG9ydF9hdXhfbWFzayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJdTMyIG1h
c2s7CiAKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKLQkJLyogVE9ETzogQWRkIEFV
WCBlbnRyaWVzIGZvciBVU0JDICovCiAJCXJldHVybiBUR0xfREVfUE9SVF9BVVhfRERJQSB8CiAJ
CQlUR0xfREVfUE9SVF9BVVhfRERJQiB8Ci0JCQlUR0xfREVfUE9SVF9BVVhfRERJQzsKKwkJCVRH
TF9ERV9QT1JUX0FVWF9ERElDIHwKKwkJCVRHTF9ERV9QT1JUX0FVWF9VU0JDMSB8CisJCQlUR0xf
REVfUE9SVF9BVVhfVVNCQzIgfAorCQkJVEdMX0RFX1BPUlRfQVVYX1VTQkMzIHwKKwkJCVRHTF9E
RV9QT1JUX0FVWF9VU0JDNCB8CisJCQlUR0xfREVfUE9SVF9BVVhfVVNCQzUgfAorCQkJVEdMX0RF
X1BPUlRfQVVYX1VTQkM2OworCiAKIAltYXNrID0gR0VOOF9BVVhfQ0hBTk5FTF9BOwogCWlmIChJ
TlRFTF9HRU4oZGV2X3ByaXYpID49IDkpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCA3NDYz
MjY3ODRhNGQuLjhjZDQwZTdhZjYxOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC03NDM5
LDYgKzc0MzksMTIgQEAgZW51bSB7CiAjZGVmaW5lICBHRU44X1BPUlRfRFBfQV9IT1RQTFVHCQko
MSA8PCAzKQogI2RlZmluZSAgQlhUX0RFX1BPUlRfR01CVVMJCSgxIDw8IDEpCiAjZGVmaW5lICBH
RU44X0FVWF9DSEFOTkVMX0EJCSgxIDw8IDApCisjZGVmaW5lICBUR0xfREVfUE9SVF9BVVhfVVNC
QzYJCSgxIDw8IDEzKQorI2RlZmluZSAgVEdMX0RFX1BPUlRfQVVYX1VTQkM1CQkoMSA8PCAxMikK
KyNkZWZpbmUgIFRHTF9ERV9QT1JUX0FVWF9VU0JDNAkJKDEgPDwgMTEpCisjZGVmaW5lICBUR0xf
REVfUE9SVF9BVVhfVVNCQzMJCSgxIDw8IDEwKQorI2RlZmluZSAgVEdMX0RFX1BPUlRfQVVYX1VT
QkMyCQkoMSA8PCA5KQorI2RlZmluZSAgVEdMX0RFX1BPUlRfQVVYX1VTQkMxCQkoMSA8PCA4KQog
I2RlZmluZSAgVEdMX0RFX1BPUlRfQVVYX0RESUMJCSgxIDw8IDIpCiAjZGVmaW5lICBUR0xfREVf
UE9SVF9BVVhfRERJQgkJKDEgPDwgMSkKICNkZWZpbmUgIFRHTF9ERV9QT1JUX0FVWF9ERElBCQko
MSA8PCAwKQotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
