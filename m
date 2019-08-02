Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3A38025F
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 23:59:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B41936E02C;
	Fri,  2 Aug 2019 21:59:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8178A6E02C
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 21:59:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Aug 2019 14:59:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,339,1559545200"; d="scan'208";a="184703649"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.51])
 by orsmga002.jf.intel.com with ESMTP; 02 Aug 2019 14:59:12 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Aug 2019 14:59:03 -0700
Message-Id: <20190802215903.14020-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190802215356.13563-2-jose.souza@intel.com>
References: <20190802215356.13563-2-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915/tgl: Fix the read of the DDI
 that transcoder is attached to
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

T24gVEdMIHRoaXMgcmVnaXN0ZXIgZG8gbm90IG1hcCBkaXJlY3RseSB0byBwb3J0LCBpdCB3YXMg
YWxyZWFkeQpoYW5kbGVkIHdoZW4gc2V0dGluZyBpdChUR0xfVFJBTlNfRERJX1NFTEVDVF9QT1JU
KCkpIGJ1dCBub3Qgd2hlbgpyZWFkaW5nIGl0LgoKdjI6CkFkZGluZyBUR0xfUE9SVF9UUkFOU19E
RElfU0VMRUNUKCkgc28gYWxsIGZ1dHVyZSB1c2VycyBjYW4gcmV1c2UgaXQKKEx1Y2FzKQoKdjM6
IE1pc3NlZCBwYXJlbnRoZXNlcyBhcnJvdW5kIHZhbCAoSm9zZSkKCkNjOiBMdWNhcyBEZSBNYXJj
aGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAzICstLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaCAgICAgICAgICAgICAgfCAxICsKIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKaW5kZXggOWU0ZWUyOWZkMGZjLi42OGU1ZDhhOWMyM2QgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xMDM1NCw4ICsx
MDM1NCw3IEBAIHN0YXRpYyB2b2lkIGhhc3dlbGxfZ2V0X2RkaV9wb3J0X3N0YXRlKHN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjLAogCXRtcCA9IEk5MTVfUkVBRChUUkFOU19ERElfRlVOQ19DVEwocGlw
ZV9jb25maWctPmNwdV90cmFuc2NvZGVyKSk7CiAKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+
PSAxMikKLQkJcG9ydCA9ICh0bXAgJiBUR0xfVFJBTlNfRERJX1BPUlRfTUFTSykgPj4KLQkJCVRH
TF9UUkFOU19ERElfUE9SVF9TSElGVDsKKwkJcG9ydCA9IFRHTF9QT1JUX1RSQU5TX0RESV9TRUxF
Q1QodG1wKTsKIAllbHNlCiAJCXBvcnQgPSAodG1wICYgVFJBTlNfRERJX1BPUlRfTUFTSykgPj4g
VFJBTlNfRERJX1BPUlRfU0hJRlQ7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IGQ3NjA4
MzBjZmQ3Yi4uOTVlMmNmZGQ0MWI5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTk0MzIs
NiArOTQzMiw3IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgewogI2RlZmluZSAgVEdMX1RSQU5TX0RE
SV9QT1JUX01BU0sJKDB4ZiA8PCBUR0xfVFJBTlNfRERJX1BPUlRfU0hJRlQpCiAjZGVmaW5lICBU
UkFOU19ERElfU0VMRUNUX1BPUlQoeCkJKCh4KSA8PCBUUkFOU19ERElfUE9SVF9TSElGVCkKICNk
ZWZpbmUgIFRHTF9UUkFOU19ERElfU0VMRUNUX1BPUlQoeCkJKCgoeCkgKyAxKSA8PCBUR0xfVFJB
TlNfRERJX1BPUlRfU0hJRlQpCisjZGVmaW5lICBUR0xfUE9SVF9UUkFOU19ERElfU0VMRUNUKHZh
bCkgKCgodmFsKSAmIFRHTF9UUkFOU19ERElfUE9SVF9NQVNLID4+IFRHTF9UUkFOU19ERElfUE9S
VF9TSElGVCkgLSAxKQogI2RlZmluZSAgVFJBTlNfRERJX01PREVfU0VMRUNUX01BU0sJKDcgPDwg
MjQpCiAjZGVmaW5lICBUUkFOU19ERElfTU9ERV9TRUxFQ1RfSERNSQkoMCA8PCAyNCkKICNkZWZp
bmUgIFRSQU5TX0RESV9NT0RFX1NFTEVDVF9EVkkJKDEgPDwgMjQpCi0tIAoyLjIyLjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
