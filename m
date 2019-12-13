Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DD411E4BB
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 14:35:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C204A6E7E6;
	Fri, 13 Dec 2019 13:35:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37AE989DFF
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 13:34:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 05:34:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="211379073"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 13 Dec 2019 05:34:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Dec 2019 15:34:56 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Dec 2019 15:34:49 +0200
Message-Id: <20191213133453.22152-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191213133453.22152-1-ville.syrjala@linux.intel.com>
References: <20191213133453.22152-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/6] drm/i915/fbc: Remove second redundant
 intel_fbc_pre_update() call
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkkg
ZnVtYmxlZCB0aGUgY29uZmxpY3QgcmVzb2x1dGlvbiBhIGJpdCB3aGVuIGFwcGx5aW5nIHRoZQpm
YmMgdmJsYW5rIHdhaXQgdy9hLiBCZWNhdXNlIG9mIHRoYXQgd2Ugbm93IGNhbGwgaW50ZWxfZmJj
X3ByZV91cGRhdGUoKQp0d2ljZS4gUmVtb3ZlIHRoZSBzZWNvbmQgcmVkdW5kYW50IGNhbGwuCgpS
ZXBvcnRlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAzIC0t
LQogMSBmaWxlIGNoYW5nZWQsIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCAwZjM3ZjFkMjAyNmQuLjhmMTQzNTJhMjE5
MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAg
LTYwNjIsOSArNjA2Miw2IEBAIHN0YXRpYyB2b2lkIGludGVsX3ByZV9wbGFuZV91cGRhdGUoc3Ry
dWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJICAgIGludGVsX2ZiY19wcmVfdXBkYXRl
KGNydGMsIG5ld19jcnRjX3N0YXRlLCBuZXdfcHJpbWFyeV9zdGF0ZSkpCiAJCWludGVsX3dhaXRf
Zm9yX3ZibGFuayhkZXZfcHJpdiwgcGlwZSk7CiAKLQlpZiAobmV3X3ByaW1hcnlfc3RhdGUpCi0J
CWludGVsX2ZiY19wcmVfdXBkYXRlKGNydGMsIG5ld19jcnRjX3N0YXRlLCBuZXdfcHJpbWFyeV9z
dGF0ZSk7Ci0KIAkvKiBEaXNwbGF5IFdBIDgyNyAqLwogCWlmICghbmVlZHNfbnYxMl93YShvbGRf
Y3J0Y19zdGF0ZSkgJiYKIAkgICAgbmVlZHNfbnYxMl93YShuZXdfY3J0Y19zdGF0ZSkpCi0tIAoy
LjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
