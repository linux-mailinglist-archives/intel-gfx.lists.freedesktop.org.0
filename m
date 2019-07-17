Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0BC6B468
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 04:14:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A8A46E207;
	Wed, 17 Jul 2019 02:14:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 160266E207
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 02:14:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jul 2019 19:14:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,272,1559545200"; d="scan'208";a="319177186"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by orsmga004.jf.intel.com with ESMTP; 16 Jul 2019 19:14:29 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 16 Jul 2019 19:14:29 -0700
Received: from vkasired-desk2.fm.intel.com (10.22.254.140) by
 ORSMSX152.amr.corp.intel.com (10.22.226.39) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 16 Jul 2019 19:14:28 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Tue, 16 Jul 2019 19:13:16 -0700
Message-ID: <20190717021316.18610-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190710184752.GL5942@intel.com>
References: <20190710184752.GL5942@intel.com>
MIME-Version: 1.0
X-Originating-IP: [10.22.254.140]
Subject: [Intel-gfx] [PATCH] drm/i915/ehl: Use an id of 4 while accessing
 DPLL4's CR0 and CR1
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

QWx0aG91Z2gsIERQTEw0IGVuYWJsZSBhbmQgZGlzYWJsZSBpcyBhc3NvY2lhdGVkIHdpdGggTUdQ
TEwxX0VOQUJMRQpyZWdpc3Rlciwgd2UgY2FuIHVzZSBJQ0xfRFBMTF9DRkdDUjAvQ1IxIG1hY3Jv
cyB0byBhY2Nlc3MgdGhpcyBkcGxsJ3MKQ1IwIGFuZCBDUjEgcmVnaXN0ZXJzIGJ5IHBhc3Npbmcg
YW4gaWQgb2YgNCB0byB0aGVzZSBtYWNyb3MuCgpSZXBvcnRlZC1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxq
b3NlLnNvdXphQGludGVsLmNvbT4KQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRl
bC5jb20+CkNjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6
IFZpdmVrIEthc2lyZWRkeSA8dml2ZWsua2FzaXJlZGR5QGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMgfCAxOCArKysrKysrKysrKysr
Ky0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3Iu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYwppbmRleCAz
MTlhMjZhMWVjMTAuLmY5YmRmODUxNGE1MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBsbF9tZ3IuYwpAQCAtMzEyNyw4ICszMTI3LDEzIEBAIHN0YXRpYyBib29s
IGljbF9wbGxfZ2V0X2h3X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwK
IAkJaHdfc3RhdGUtPmNmZ2NyMCA9IEk5MTVfUkVBRChUR0xfRFBMTF9DRkdDUjAoaWQpKTsKIAkJ
aHdfc3RhdGUtPmNmZ2NyMSA9IEk5MTVfUkVBRChUR0xfRFBMTF9DRkdDUjEoaWQpKTsKIAl9IGVs
c2UgewotCQlod19zdGF0ZS0+Y2ZnY3IwID0gSTkxNV9SRUFEKElDTF9EUExMX0NGR0NSMChpZCkp
OwotCQlod19zdGF0ZS0+Y2ZnY3IxID0gSTkxNV9SRUFEKElDTF9EUExMX0NGR0NSMShpZCkpOwor
CQlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpICYmIGlkID09IERQTExfSURfRUhMX0RQTEw0
KSB7CisJCQlod19zdGF0ZS0+Y2ZnY3IwID0gSTkxNV9SRUFEKElDTF9EUExMX0NGR0NSMCg0KSk7
CisJCQlod19zdGF0ZS0+Y2ZnY3IxID0gSTkxNV9SRUFEKElDTF9EUExMX0NGR0NSMSg0KSk7CisJ
CX0gZWxzZSB7CisJCQlod19zdGF0ZS0+Y2ZnY3IwID0gSTkxNV9SRUFEKElDTF9EUExMX0NGR0NS
MChpZCkpOworCQkJaHdfc3RhdGUtPmNmZ2NyMSA9IEk5MTVfUkVBRChJQ0xfRFBMTF9DRkdDUjEo
aWQpKTsKKwkJfQogCX0KIAogCXJldCA9IHRydWU7CkBAIC0zMTY5LDggKzMxNzQsMTMgQEAgc3Rh
dGljIHZvaWQgaWNsX2RwbGxfd3JpdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LAogCQljZmdjcjBfcmVnID0gVEdMX0RQTExfQ0ZHQ1IwKGlkKTsKIAkJY2ZnY3IxX3JlZyA9IFRH
TF9EUExMX0NGR0NSMShpZCk7CiAJfSBlbHNlIHsKLQkJY2ZnY3IwX3JlZyA9IElDTF9EUExMX0NG
R0NSMChpZCk7Ci0JCWNmZ2NyMV9yZWcgPSBJQ0xfRFBMTF9DRkdDUjEoaWQpOworCQlpZiAoSVNf
RUxLSEFSVExBS0UoZGV2X3ByaXYpICYmIGlkID09IERQTExfSURfRUhMX0RQTEw0KSB7CisJCQlj
ZmdjcjBfcmVnID0gSUNMX0RQTExfQ0ZHQ1IwKDQpOworCQkJY2ZnY3IxX3JlZyA9IElDTF9EUExM
X0NGR0NSMSg0KTsKKwkJfSBlbHNlIHsKKwkJCWNmZ2NyMF9yZWcgPSBJQ0xfRFBMTF9DRkdDUjAo
aWQpOworCQkJY2ZnY3IxX3JlZyA9IElDTF9EUExMX0NGR0NSMShpZCk7CisJCX0KIAl9CiAKIAlJ
OTE1X1dSSVRFKGNmZ2NyMF9yZWcsIGh3X3N0YXRlLT5jZmdjcjApOwotLSAKMi4yMS4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
