Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2CBE0B12
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 19:56:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B34046E8B7;
	Tue, 22 Oct 2019 17:56:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E9476E8B7
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 17:56:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 10:56:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,217,1569308400"; d="scan'208";a="281368632"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 22 Oct 2019 10:56:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Oct 2019 20:56:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 20:55:48 +0300
Message-Id: <20191022175554.18012-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191022175554.18012-1-ville.syrjala@linux.intel.com>
References: <20191022175554.18012-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/8] drm/i915: Replace some accidental
 I915_READ_FW()s with the normal version
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNv
bWUgSTkxNV9SRUFEX0ZXKClzIGhhdmUgc251Y2sgaW4gd2hlcmUgd2UgZG9uJ3QgaG9sZCB0aGUg
dW5jb3JlIGxvY2suClJlcGxhY2Ugd2l0aCB0aGUgbm9ybWFsIHRoaW5nIGZvciBub3cuCgpTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgOCAr
KysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDIz
NmZkZjEyMmU0Ny4uODVjODJlM2YzMjIzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtNTY1NywxMCArNTY1NywxMCBAQCBzdGF0aWMgdm9pZCBz
a3lsYWtlX3BmaXRfZW5hYmxlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKQogCQlpZCA9IHNjYWxlcl9zdGF0ZS0+c2NhbGVyX2lkOwogCQlJOTE1X1dSSVRFKFNLTF9Q
U19DVFJMKHBpcGUsIGlkKSwgUFNfU0NBTEVSX0VOIHwKIAkJCVBTX0ZJTFRFUl9NRURJVU0gfCBz
Y2FsZXJfc3RhdGUtPnNjYWxlcnNbaWRdLm1vZGUpOwotCQlJOTE1X1dSSVRFX0ZXKFNLTF9QU19W
UEhBU0UocGlwZSwgaWQpLAotCQkJICAgICAgUFNfWV9QSEFTRSgwKSB8IFBTX1VWX1JHQl9QSEFT
RSh1dl9yZ2JfdnBoYXNlKSk7Ci0JCUk5MTVfV1JJVEVfRlcoU0tMX1BTX0hQSEFTRShwaXBlLCBp
ZCksCi0JCQkgICAgICBQU19ZX1BIQVNFKDApIHwgUFNfVVZfUkdCX1BIQVNFKHV2X3JnYl9ocGhh
c2UpKTsKKwkJSTkxNV9XUklURShTS0xfUFNfVlBIQVNFKHBpcGUsIGlkKSwKKwkJCSAgIFBTX1lf
UEhBU0UoMCkgfCBQU19VVl9SR0JfUEhBU0UodXZfcmdiX3ZwaGFzZSkpOworCQlJOTE1X1dSSVRF
KFNLTF9QU19IUEhBU0UocGlwZSwgaWQpLAorCQkJICAgUFNfWV9QSEFTRSgwKSB8IFBTX1VWX1JH
Ql9QSEFTRSh1dl9yZ2JfaHBoYXNlKSk7CiAJCUk5MTVfV1JJVEUoU0tMX1BTX1dJTl9QT1MocGlw
ZSwgaWQpLCBjcnRjX3N0YXRlLT5wY2hfcGZpdC5wb3MpOwogCQlJOTE1X1dSSVRFKFNLTF9QU19X
SU5fU1oocGlwZSwgaWQpLCBjcnRjX3N0YXRlLT5wY2hfcGZpdC5zaXplKTsKIAl9Ci0tIAoyLjIx
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
