Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C36F381579
	for <lists+intel-gfx@lfdr.de>; Sat, 15 May 2021 05:11:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B80946F4E2;
	Sat, 15 May 2021 03:10:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83F206F4DB
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 May 2021 03:10:43 +0000 (UTC)
IronPort-SDR: Dx48cXHFYmohvqJOfoqxcfdsBsQvgHy6mVAtWvWBusgig0X/aHh62/bumMW67O4YU1Pyi/TsZd
 Oniua9lxKp8A==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="187383708"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="187383708"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 20:10:43 -0700
IronPort-SDR: 8FEuRphiwD1p6FxKN6oGZX88STcyj97lVs930xQvLQt2Amu/Cuy9I4xGLYLICn2ILzEDFOFO82
 +Y1wL/QPHA1Q==
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="392901207"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 20:10:42 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 20:10:28 -0700
Message-Id: <20210515031035.2561658-17-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210515031035.2561658-1-matthew.d.roper@intel.com>
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 16/23] drm/i915/display: Remove a redundant
 function argument from intel_psr_enable_source()
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

RnJvbTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgoKSXQgcmVt
b3ZlcyBpbnRlbF9jcnRjX3N0YXRlIGZyb20gZnVuY3Rpb24gYXJndW1lbnQgb2YKaW50ZWxfcHNy
X2VuYWJsZV9zb3VyY2UoKSBpbiBvcmRlciB0byB1c2UgaW50ZWxfcHNyX2VuYWJsZV9zb3VyY2Uo
KQp3aXRob3V0IGludGVsX2NydGNfc3RhdGUgb24gb3RoZXIgcHNyIGludGVybmFsIGZ1bmN0aW9u
cy4KQW5kIHdlIGNhbiBnZXQgY3B1X3RyYW5jb2RlciBmcm9tIGludGVsX3BzciwgdGhlcmVmb3Jl
IHdlIGRvbid0IG5lZWQgdG8KcGFzcyBpbnRlbF9jcnRjX3N0YXRlIHRvIHRoaXMgZnVuY3Rpb24u
CgpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNyArKystLS0tCiAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCmluZGV4IDViYWZkMGRlNmFkOS4uY2M4NTA4M2Rj
ZDI4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKQEAgLTk2OSwx
MSArOTY5LDEwIEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9hY3RpdmF0ZShzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwKQogCWludGVsX2RwLT5wc3IuYWN0aXZlID0gdHJ1ZTsKIH0KIAotc3RhdGlj
IHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9zb3VyY2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwK
LQkJCQkgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCitzdGF0
aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX3NvdXJjZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
KQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50
ZWxfZHApOwotCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGNydGNfc3RhdGUtPmNw
dV90cmFuc2NvZGVyOworCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGludGVsX2Rw
LT5wc3IudHJhbnNjb2RlcjsKIAl1MzIgbWFzazsKIAogCS8qIE9ubHkgSFNXIGFuZCBCRFcgaGF2
ZSBQU1IgQVVYIHJlZ2lzdGVycyB0aGF0IG5lZWQgdG8gYmUgc2V0dXAuIFNLTCsKQEAgLTEwODAs
NyArMTA3OSw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfbG9ja2VkKHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHAsCiAJCQkJICAgICAmaW50ZWxfZHAtPnBzci52c2MpOwogCWludGVs
X3dyaXRlX2RwX3ZzY19zZHAoZW5jb2RlciwgY3J0Y19zdGF0ZSwgJmludGVsX2RwLT5wc3IudnNj
KTsKIAlpbnRlbF9wc3JfZW5hYmxlX3NpbmsoaW50ZWxfZHApOwotCWludGVsX3Bzcl9lbmFibGVf
c291cmNlKGludGVsX2RwLCBjcnRjX3N0YXRlKTsKKwlpbnRlbF9wc3JfZW5hYmxlX3NvdXJjZShp
bnRlbF9kcCk7CiAJaW50ZWxfZHAtPnBzci5lbmFibGVkID0gdHJ1ZTsKIAogCWludGVsX3Bzcl9h
Y3RpdmF0ZShpbnRlbF9kcCk7Ci0tIAoyLjI1LjQKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
