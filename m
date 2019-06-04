Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A085349B4
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 16:02:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B2C189183;
	Tue,  4 Jun 2019 14:02:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8F6489183
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 14:02:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 07:02:20 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 04 Jun 2019 07:02:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Jun 2019 17:02:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jun 2019 17:02:14 +0300
Message-Id: <20190604140214.9947-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190604140214.9947-1-ville.syrjala@linux.intel.com>
References: <20190604140214.9947-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Drop pointless WARN_ON
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmlu
dGVsX2RwX2xpbmtfZG93bigpIGlzIHN0YXRpYyBhbmQgaXQncyBvbmx5IGNhbGxlZCBmcm9tIHRo
ZSBwcmUtZGRpCkRQIGZ1bmN0aW9ucywgc28gaGF2aW5nIGEgV0FSTl9PTihIQVNfRERJKSBpbiB0
aGVyZSBpcyBxdWl0ZSBwb2ludGxlc3MuClJlbW92ZSBpdC4KClNpZ25lZC1vZmYtYnk6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZHAuYyB8IDMgLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwppbmRleCA2NGZlZmM5YWY3YTYuLjc2NGU1NGZl
ZjVlZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jCkBAIC0zOTk0LDkgKzM5OTQsNiBAQCBpbnRl
bF9kcF9saW5rX2Rvd24oc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJZW51bSBwb3J0
IHBvcnQgPSBlbmNvZGVyLT5wb3J0OwogCXUzMiBEUCA9IGludGVsX2RwLT5EUDsKIAotCWlmIChX
QVJOX09OKEhBU19EREkoZGV2X3ByaXYpKSkKLQkJcmV0dXJuOwotCiAJaWYgKFdBUk5fT04oKEk5
MTVfUkVBRChpbnRlbF9kcC0+b3V0cHV0X3JlZykgJiBEUF9QT1JUX0VOKSA9PSAwKSkKIAkJcmV0
dXJuOwogCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
