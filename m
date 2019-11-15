Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F8AFDB1A
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 11:18:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7E336E3BB;
	Fri, 15 Nov 2019 10:18:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED7166E3CE
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 10:18:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 02:18:46 -0800
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="199157032"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 02:18:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Nov 2019 12:18:39 +0200
Message-Id: <20191115101840.23921-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: move power domains dumped
 variable to drm_i915_private
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

R2V0IHJpZCBvZiB0aGUgbW9kdWxlIHNwZWNpZmljIHN0YXRpYyB2YXJpYWJsZS4KClNpZ25lZC1v
ZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgfCAxMCArKystLS0tLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaCB8ICAx
ICsKIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dl
ci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMK
aW5kZXggY2UxYjY0ZjRkZDQ0Li5jYmRmMjc3MDUxNjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCkBAIC01Mjc3LDEzICs1Mjc3
LDkgQEAgc3RhdGljIHZvaWQgaW50ZWxfcG93ZXJfZG9tYWluc192ZXJpZnlfc3RhdGUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJCX0KIAl9CiAKLQlpZiAoZHVtcF9kb21haW5faW5m
bykgewotCQlzdGF0aWMgYm9vbCBkdW1wZWQ7Ci0KLQkJaWYgKCFkdW1wZWQpIHsKLQkJCWludGVs
X3Bvd2VyX2RvbWFpbnNfZHVtcF9pbmZvKGk5MTUpOwotCQkJZHVtcGVkID0gdHJ1ZTsKLQkJfQor
CWlmIChkdW1wX2RvbWFpbl9pbmZvICYmICFwb3dlcl9kb21haW5zLT5kdW1wZWQpIHsKKwkJaW50
ZWxfcG93ZXJfZG9tYWluc19kdW1wX2luZm8oaTkxNSk7CisJCXBvd2VyX2RvbWFpbnMtPmR1bXBl
ZCA9IHRydWU7CiAJfQogCiAJbXV0ZXhfdW5sb2NrKCZwb3dlcl9kb21haW5zLT5sb2NrKTsKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dl
ci5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmgK
aW5kZXggMWRhMDRmM2UwZmIzLi44YWY0NjY2MWExMGIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oCkBAIC0yMDUsNiArMjA1LDcg
QEAgc3RydWN0IGk5MTVfcG93ZXJfZG9tYWlucyB7CiAJICovCiAJYm9vbCBpbml0aWFsaXppbmc7
CiAJYm9vbCBkaXNwbGF5X2NvcmVfc3VzcGVuZGVkOworCWJvb2wgZHVtcGVkOwogCWludCBwb3dl
cl93ZWxsX2NvdW50OwogCiAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7Ci0tIAoyLjIwLjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
