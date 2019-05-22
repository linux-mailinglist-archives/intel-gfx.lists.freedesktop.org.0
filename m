Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 805BA26639
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 16:47:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E29B589829;
	Wed, 22 May 2019 14:47:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 061A289829
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 14:47:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 07:47:18 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 22 May 2019 07:47:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 May 2019 17:50:29 +0300
Message-Id: <20190522145030.12751-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190522145030.12751-1-jani.nikula@intel.com>
References: <20190522145030.12751-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: remove some unused declarations
 from intel_drv.h
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
ZHJ2LmgKaW5kZXggMjcwZjViLi43MjBhMjcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rydi5oCkBA
IC0xNDYzLDggKzE0NjMsNiBAQCB2b2lkIGludGVsX2FkZF9mYl9vZmZzZXRzKGludCAqeCwgaW50
ICp5LAogdW5zaWduZWQgaW50IGludGVsX3JvdGF0aW9uX2luZm9fc2l6ZShjb25zdCBzdHJ1Y3Qg
aW50ZWxfcm90YXRpb25faW5mbyAqcm90X2luZm8pOwogdW5zaWduZWQgaW50IGludGVsX3JlbWFw
cGVkX2luZm9fc2l6ZShjb25zdCBzdHJ1Y3QgaW50ZWxfcmVtYXBwZWRfaW5mbyAqcmVtX2luZm8p
OwogYm9vbCBpbnRlbF9oYXNfcGVuZGluZ19mYl91bnBpbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYpOwotdm9pZCBpbnRlbF9tYXJrX2J1c3koc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KTsKLXZvaWQgaW50ZWxfbWFya19pZGxlKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdik7CiBpbnQgaW50ZWxfZGlzcGxheV9zdXNwZW5kKHN0cnVjdCBkcm1fZGV2
aWNlICpkZXYpOwogdm9pZCBpbnRlbF9wcHNfdW5sb2NrX3JlZ3Nfd2Eoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KTsKIHZvaWQgaW50ZWxfZW5jb2Rlcl9kZXN0cm95KHN0cnVjdCBk
cm1fZW5jb2RlciAqZW5jb2Rlcik7CkBAIC0xNTcyLDcgKzE1NzAsNiBAQCB2b2lkIGFzc2VydF9w
aXBlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwaXBlIHBpcGUsIGJv
b2wgc3RhdGUpOwogI2RlZmluZSBhc3NlcnRfcGlwZV9kaXNhYmxlZChkLCBwKSBhc3NlcnRfcGlw
ZShkLCBwLCBmYWxzZSkKIHZvaWQgaW50ZWxfcHJlcGFyZV9yZXNldChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpOwogdm9pZCBpbnRlbF9maW5pc2hfcmVzZXQoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KTsKLXVuc2lnbmVkIGludCBza2xfY2RjbGtfZ2V0X3Zjbyh1
bnNpZ25lZCBpbnQgZnJlcSk7CiB2b2lkIGludGVsX2RwX2dldF9tX24oc3RydWN0IGludGVsX2Ny
dGMgKmNydGMsCiAJCSAgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZyk7
CiB2b2lkIGludGVsX2RwX3NldF9tX24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUsCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
