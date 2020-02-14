Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F8E15D8C5
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 14:51:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D07776F935;
	Fri, 14 Feb 2020 13:51:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36A736F932
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 13:51:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 05:51:10 -0800
X-IronPort-AV: E=Sophos;i="5.70,440,1574150400"; d="scan'208";a="223021180"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 05:51:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Feb 2020 15:50:58 +0200
Message-Id: <20200214135058.7580-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214135058.7580-1-jani.nikula@intel.com>
References: <20200214135058.7580-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [CI 2/2] drm/i915: split i915_driver_modeset_remove()
 to pre/post irq uninstall
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UHVzaCBpcnEgdW5pbnN0YWxsIGZ1cnRoZXIgdXAsIGJ5IHNwbGl0dGluZyBpOTE1X2RyaXZlcl9t
b2Rlc2V0X3JlbW92ZSgpCnRvIHR3bywgdGhlIHBhcnQgd2l0aCB3b3JraW5nIGlycXMgYmVmb3Jl
IGlycSB1bmluc3RhbGwsIGFuZCB0aGUgcGFydAphZnRlciBpcnEgdW5pbnN0YWxsLiBObyBmdW5j
dGlvbmFsIGNoYW5nZXMuCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyB8IDExICsrKysr
KysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5jCmluZGV4IDQ2MzZkNzIzZDUzMS4uMmU1NjdiZGE3OWJkIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKQEAgLTM0NiwxMiArMzQ2LDE1IEBAIHN0YXRpYyBpbnQg
aTkxNV9kcml2ZXJfbW9kZXNldF9wcm9iZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkK
IAlyZXR1cm4gcmV0OwogfQogCisvKiBwYXJ0ICMxOiBjYWxsIGJlZm9yZSBpcnEgdW5pbnN0YWxs
ICovCiBzdGF0aWMgdm9pZCBpOTE1X2RyaXZlcl9tb2Rlc2V0X3JlbW92ZShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSkKIHsKIAlpbnRlbF9tb2Rlc2V0X2RyaXZlcl9yZW1vdmUoaTkxNSk7
Cit9CiAKLQlpbnRlbF9pcnFfdW5pbnN0YWxsKGk5MTUpOwotCisvKiBwYXJ0ICMyOiBjYWxsIGFm
dGVyIGlycSB1bmluc3RhbGwgKi8KK3N0YXRpYyB2b2lkIGk5MTVfZHJpdmVyX21vZGVzZXRfcmVt
b3ZlX25vaXJxKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQorewogCWludGVsX21vZGVz
ZXRfZHJpdmVyX3JlbW92ZV9ub2lycShpOTE1KTsKIAogCWludGVsX2Jpb3NfZHJpdmVyX3JlbW92
ZShpOTE1KTsKQEAgLTE1OTMsNiArMTU5NiwxMCBAQCB2b2lkIGk5MTVfZHJpdmVyX3JlbW92ZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAogCWk5MTVfZHJpdmVyX21vZGVzZXRfcmVt
b3ZlKGk5MTUpOwogCisJaW50ZWxfaXJxX3VuaW5zdGFsbChpOTE1KTsKKworCWk5MTVfZHJpdmVy
X21vZGVzZXRfcmVtb3ZlX25vaXJxKGk5MTUpOworCiAJaTkxNV9yZXNldF9lcnJvcl9zdGF0ZShp
OTE1KTsKIAlpOTE1X2dlbV9kcml2ZXJfcmVtb3ZlKGk5MTUpOwogCi0tIAoyLjIwLjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
