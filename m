Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0126EE8E1B
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 18:30:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73E186E488;
	Tue, 29 Oct 2019 17:30:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E51F76E488
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 17:30:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 10:30:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,244,1569308400"; d="scan'208";a="198429519"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.135])
 by fmsmga008.fm.intel.com with ESMTP; 29 Oct 2019 10:30:22 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 10:31:02 -0700
Message-Id: <20191029173102.9451-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191025231933.xfjp6ut4p364ngjx@ldmartin-desk1.jf.intel.com>
References: <20191025231933.xfjp6ut4p364ngjx@ldmartin-desk1.jf.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 4/5] drm/i915: Provide more information on DP
 AUX failures
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

V2UncmUgc2VlaW5nIHNvbWUgZmFpbHVyZXMgd2hlcmUgYW4gYXV4IHRyYW5zYWN0aW9uIHN0aWxs
IHNob3dzIGFzCididXN5JyB3ZWxsIGFmdGVyIHRoZSB0aW1lb3V0IGxpbWl0IHRoYXQgdGhlIGhh
cmR3YXJlIGlzIHN1cHBvc2VkIHRvCmVuZm9yY2UuICBJbXByb3ZlIHRoZSBlcnJvciBtZXNzYWdl
IHNvIHRoYXQgd2UgY2FuIHNlZSBleGFjdGx5IHdoaWNoIGF1eApjaGFubmVsIHRoaXMgZXJyb3Ig
aGFwcGVuZWQgb24gYW5kIHdoYXQgdGhlIHN0YXR1cyBiaXRzIHdlcmUgZHVyaW5nIHRoaXMKY2Fz
ZSB0aGF0IGlzbid0IHN1cHBvc2VkIHRvIGhhcHBlbi4KCnYyOgogLSBNYWtlIHRpbWVvdXQgYSBj
b25zdCB2YXJpYWJsZSBzbyB0aGF0IHRoZSB0aW1lb3V0ICYgbWVzc2FnZSB3aWxsCiAgIG1hdGNo
IGlmIHdlIGRlY2lkZSB0byBjaGFuZ2UgaXQgaW4gdGhlIGZ1dHVyZS4gIChMdWNhcykKIC0gRG9u
J3QgYm90aGVyIHRlc3RpbmcgaW50ZWxfZHAtPmF1eC5uYW1lIGZvciBOVUxMLiAgKEx1Y2FzKQoK
Q2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpTaWduZWQtb2Zm
LWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDYgKysrKy0tCiAxIGZpbGUgY2hhbmdl
ZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYwppbmRleCA2NWJhYjQ2ZjdiNDMuLmE2NmY4YzM5YjIwMSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwpAQCAtMTE3OSwxOCArMTE3OSwyMCBA
QCBpbnRlbF9kcF9hdXhfd2FpdF9kb25lKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiB7CiAJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBkcF90b19pOTE1KGludGVsX2RwKTsKIAlp
OTE1X3JlZ190IGNoX2N0bCA9IGludGVsX2RwLT5hdXhfY2hfY3RsX3JlZyhpbnRlbF9kcCk7CisJ
Y29uc3QgdW5zaWduZWQgaW50IHRpbWVvdXRfbXMgPSAxMDsKIAl1MzIgc3RhdHVzOwogCWJvb2wg
ZG9uZTsKIAogI2RlZmluZSBDICgoKHN0YXR1cyA9IGludGVsX3VuY29yZV9yZWFkX25vdHJhY2Uo
Jmk5MTUtPnVuY29yZSwgY2hfY3RsKSkgJiBEUF9BVVhfQ0hfQ1RMX1NFTkRfQlVTWSkgPT0gMCkK
IAlkb25lID0gd2FpdF9ldmVudF90aW1lb3V0KGk5MTUtPmdtYnVzX3dhaXRfcXVldWUsIEMsCi0J
CQkJICBtc2Vjc190b19qaWZmaWVzX3RpbWVvdXQoMTApKTsKKwkJCQkgIG1zZWNzX3RvX2ppZmZp
ZXNfdGltZW91dCh0aW1lb3V0X21zKSk7CiAKIAkvKiBqdXN0IHRyYWNlIHRoZSBmaW5hbCB2YWx1
ZSAqLwogCXRyYWNlX2k5MTVfcmVnX3J3KGZhbHNlLCBjaF9jdGwsIHN0YXR1cywgc2l6ZW9mKHN0
YXR1cyksIHRydWUpOwogCiAJaWYgKCFkb25lKQotCQlEUk1fRVJST1IoImRwIGF1eCBodyBkaWQg
bm90IHNpZ25hbCB0aW1lb3V0IVxuIik7CisJCURSTV9FUlJPUigiJXMgZGlkIG5vdCBjb21wbGV0
ZSBvciB0aW1lb3V0IHdpdGhpbiAldW1zIChzdGF0dXMgMHglMDh4KVxuIiwKKwkJCSAgaW50ZWxf
ZHAtPmF1eC5uYW1lLCB0aW1lb3V0X21zLCBzdGF0dXMpOwogI3VuZGVmIEMKIAogCXJldHVybiBz
dGF0dXM7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
