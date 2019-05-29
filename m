Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB8E2E1E7
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 18:06:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FF436E116;
	Wed, 29 May 2019 16:06:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDCEB6E113
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 16:06:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 09:06:17 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 29 May 2019 09:06:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 May 2019 19:06:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 May 2019 19:05:59 +0300
Message-Id: <20190529160605.28739-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190529160605.28739-1-ville.syrjala@linux.intel.com>
References: <20190529160605.28739-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/10] drm/i915: Deal with cpp==8 for g4x
 watermarks
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkRv
Y3MgdGVsbCB1cyB0aGF0IG9uIGc0eCB3ZSBoYXZlIHRvIGNvbXB1dGUgdGhlIFNSIHdhdGVybWFy
a3MKdXNpbmcgNCBieXRlcyBwZXIgcGl4ZWwuIEknbSBnb2luZyB0byBhc3N1bWUgdGhhdCBvbmx5
IGFwcGxpZXMKdG8gMSBhbmQgMiBieXRlIHBlciBwaXhlbCBmb3JtYXRzLCBhbmQgbm90IDggYnl0
ZSBwZXIgcGl4ZWwKZm9ybWF0cy4gVGhhdCBzZWVtcyBsaWtlIGEgcmVjaXBlIGZvciBhbiBpbnN1
ZmZpY2llbnQgd2F0ZXJtYXJrCndoaWNoIGNvdWxkIGxlYWQgdG8gdW5kZXJydW5zLiBVc2UgdGhl
IG1heGltdW0gb2YgdGhlIHR3byBudW1iZXJzCmluc3RlYWQuCgpTaWduZWQtb2ZmLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3BtLmMgfCA2ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwppbmRleCA4
ZjgyY2I3MmQzYTYuLmYyNzU2OThlODU5ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCkBAIC0x
MTE1LDYgKzExMTUsOCBAQCBzdGF0aWMgdTE2IGc0eF9jb21wdXRlX3dtKGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCWlmICghaW50ZWxfd21fcGxhbmVfdmlzaWJs
ZShjcnRjX3N0YXRlLCBwbGFuZV9zdGF0ZSkpCiAJCXJldHVybiAwOwogCisJY3BwID0gcGxhbmVf
c3RhdGUtPmJhc2UuZmItPmZvcm1hdC0+Y3BwWzBdOworCiAJLyoKIAkgKiBOb3QgMTAwJSBzdXJl
IHdoaWNoIHdheSBFTEsgc2hvdWxkIGdvIGhlcmUgYXMgdGhlCiAJICogc3BlYyBvbmx5IHNheXMg
Q0wvQ1RHIHNob3VsZCBhc3N1bWUgMzJicHAgYW5kIEJXCkBAIC0xMTI4LDkgKzExMzAsNyBAQCBz
dGF0aWMgdTE2IGc0eF9jb21wdXRlX3dtKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlLAogCSAqLwogCWlmIChJU19HTTQ1KGRldl9wcml2KSAmJiBwbGFuZS0+aWQgPT0g
UExBTkVfUFJJTUFSWSAmJgogCSAgICBsZXZlbCAhPSBHNFhfV01fTEVWRUxfTk9STUFMKQotCQlj
cHAgPSA0OwotCWVsc2UKLQkJY3BwID0gcGxhbmVfc3RhdGUtPmJhc2UuZmItPmZvcm1hdC0+Y3Bw
WzBdOworCQljcHAgPSBtYXgoY3BwLCA0dSk7CiAKIAljbG9jayA9IGFkanVzdGVkX21vZGUtPmNy
dGNfY2xvY2s7CiAJaHRvdGFsID0gYWRqdXN0ZWRfbW9kZS0+Y3J0Y19odG90YWw7Ci0tIAoyLjIx
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
