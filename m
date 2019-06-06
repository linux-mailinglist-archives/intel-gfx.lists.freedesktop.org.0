Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 286DC373FC
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 14:19:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8857489690;
	Thu,  6 Jun 2019 12:19:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E094589690
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 12:19:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 05:19:06 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 06 Jun 2019 05:19:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Jun 2019 15:22:01 +0300
Message-Id: <20190606122203.13416-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190606122203.13416-1-jani.nikula@intel.com>
References: <20190606122203.13416-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915: remove some unused
 declarations from intel_drv.h
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

aW50ZWxfbWFya19idXN5KCksIGludGVsX21hcmtfaWRsZSgpLCBhbmQgc2tsX2NkY2xrX2dldF92
Y28oKSBubyBsb25nZXIKZXhpc3QuCgpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rydi5oIHwg
MyAtLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZHJ2LmgKaW5kZXggZDBhZWIzODMwMjRhLi5lM2YyYjk5NzZlYWQgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2Rydi5oCkBAIC0xNDY4LDggKzE0NjgsNiBAQCB2b2lkIGludGVsX2FkZF9mYl9vZmZzZXRz
KGludCAqeCwgaW50ICp5LAogdW5zaWduZWQgaW50IGludGVsX3JvdGF0aW9uX2luZm9fc2l6ZShj
b25zdCBzdHJ1Y3QgaW50ZWxfcm90YXRpb25faW5mbyAqcm90X2luZm8pOwogdW5zaWduZWQgaW50
IGludGVsX3JlbWFwcGVkX2luZm9fc2l6ZShjb25zdCBzdHJ1Y3QgaW50ZWxfcmVtYXBwZWRfaW5m
byAqcmVtX2luZm8pOwogYm9vbCBpbnRlbF9oYXNfcGVuZGluZ19mYl91bnBpbihzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwotdm9pZCBpbnRlbF9tYXJrX2J1c3koc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKLXZvaWQgaW50ZWxfbWFya19pZGxlKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7CiBpbnQgaW50ZWxfZGlzcGxheV9zdXNwZW5kKHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYpOwogdm9pZCBpbnRlbF9wcHNfdW5sb2NrX3JlZ3Nfd2Eoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKIHZvaWQgaW50ZWxfZW5jb2Rlcl9kZXN0
cm95KHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2Rlcik7CkBAIC0xNTc4LDcgKzE1NzYsNiBAQCB2
b2lkIGFzc2VydF9waXBlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBw
aXBlIHBpcGUsIGJvb2wgc3RhdGUpOwogI2RlZmluZSBhc3NlcnRfcGlwZV9kaXNhYmxlZChkLCBw
KSBhc3NlcnRfcGlwZShkLCBwLCBmYWxzZSkKIHZvaWQgaW50ZWxfcHJlcGFyZV9yZXNldChzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwogdm9pZCBpbnRlbF9maW5pc2hfcmVzZXQo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKLXVuc2lnbmVkIGludCBza2xfY2Rj
bGtfZ2V0X3Zjbyh1bnNpZ25lZCBpbnQgZnJlcSk7CiB2b2lkIGludGVsX2RwX2dldF9tX24oc3Ry
dWN0IGludGVsX2NydGMgKmNydGMsCiAJCSAgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpw
aXBlX2NvbmZpZyk7CiB2b2lkIGludGVsX2RwX3NldF9tX24oY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUsCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
