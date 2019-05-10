Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9F419EA6
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2019 16:03:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41EBE89D2E;
	Fri, 10 May 2019 14:03:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25B2589D2E
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2019 14:03:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 May 2019 07:03:16 -0700
X-ExtLoop1: 1
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 10 May 2019 07:03:15 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 May 2019 17:02:55 +0300
Message-Id: <20190510140255.25215-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/icl: More workaround for port F
 detection due to broken VBTs
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

QWRkIGFub3RoZXIgSUNMLVkgUENJSUQgdGhhdCBwcm92ZWQgdG8gaGF2ZSBvbmx5IDUgcG9ydHMg
dG8gdGhlCmNvcnJlc3BvbmRpbmcgUENJSUQgbGlzdC4KCk1lYW53aGlsZSBJJ20gdHJ5aW5nIHRv
IGdldCBhIGNvbXBsZXRlIGxpc3Qgb2YgYWxsIFBDSUlEcyB3aXRoIGxlc3MgdGhhbgo2IHBvcnRz
IGFuZC9vciBnZXQgYSBWQlQgZml4IHRvIG1hcmsgdGhlc2UgcG9ydHMgbm9uLWV4aXN0YW50LCBi
dXQgdW50aWwKdGhlbiB0aGUgb25seSB3YXkgaXMgdG8gZ28gb25lLWJ5LW9uZS4KClRoaXMgZml4
ZXMgdGhlIGZvbGxvd2luZyBlcnJvciBvbiBtYWNoaW5lcyB3aXRoIGxlc3MgdGhhbiA2IHBvcnQ6
CgoJW2RybTppbnRlbF9wb3dlcl93ZWxsX2VuYWJsZSBbaTkxNV1dIGVuYWJsaW5nIEFVWCBGCgkt
LS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0KCVdBUk5fT04oaW50ZWxfd2FpdF9m
b3JfcmVnaXN0ZXIoJmRldl9wcml2LT51bmNvcmUsIHJlZ3MtPmRyaXZlciwgKDB4MSA8PCAoKHB3
X2lkeCkgKiAyKSksICgweDEgPDwgKChwd19pZHgpICogMikpLCAxKSkKCihJbnRlcm5hbCByZWZl
cmVuY2U6IEJTcGVjL0luZGV4LzIwNTg0L0lzc3VlcywgSFNELzEzMDYwODQxMTYpCgpDYzogTWlr
YSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4KUmVmZXJlbmNlczogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4OTE1ClNpZ25lZC1vZmYtYnk6IElt
cmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KLS0tCiBpbmNsdWRlL2RybS9pOTE1X3BjaWlk
cy5oIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggYi9pbmNsdWRlL2Ry
bS9pOTE1X3BjaWlkcy5oCmluZGV4IDY0NzdkYTIyYWYyOC4uNmQ2MGVhNjhjMTcxIDEwMDY0NAot
LS0gYS9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oCisrKyBiL2luY2x1ZGUvZHJtL2k5MTVfcGNp
aWRzLmgKQEAgLTU1OSw3ICs1NTksNiBAQAogI2RlZmluZSBJTlRFTF9JQ0xfUE9SVF9GX0lEUyhp
bmZvKSBcCiAJSU5URUxfVkdBX0RFVklDRSgweDhBNTAsIGluZm8pLCBcCiAJSU5URUxfVkdBX0RF
VklDRSgweDhBNUMsIGluZm8pLCBcCi0JSU5URUxfVkdBX0RFVklDRSgweDhBNUQsIGluZm8pLCBc
CiAJSU5URUxfVkdBX0RFVklDRSgweDhBNTksIGluZm8pLAlcCiAJSU5URUxfVkdBX0RFVklDRSgw
eDhBNTgsIGluZm8pLAlcCiAJSU5URUxfVkdBX0RFVklDRSgweDhBNTIsIGluZm8pLCBcCkBAIC01
NzMsNyArNTcyLDggQEAKIAogI2RlZmluZSBJTlRFTF9JQ0xfMTFfSURTKGluZm8pIFwKIAlJTlRF
TF9JQ0xfUE9SVF9GX0lEUyhpbmZvKSwgXAotCUlOVEVMX1ZHQV9ERVZJQ0UoMHg4QTUxLCBpbmZv
KQorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg4QTUxLCBpbmZvKSwgXAorCUlOVEVMX1ZHQV9ERVZJQ0Uo
MHg4QTVELCBpbmZvKQogCiAvKiBFSEwgKi8KICNkZWZpbmUgSU5URUxfRUhMX0lEUyhpbmZvKSBc
Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
