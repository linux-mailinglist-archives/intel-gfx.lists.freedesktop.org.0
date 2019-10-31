Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA3BEAE0F
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 11:59:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 999B06EE24;
	Thu, 31 Oct 2019 10:59:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E9EC6EE24
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 10:59:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 03:59:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,250,1569308400"; d="scan'208";a="211549317"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 31 Oct 2019 03:59:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Oct 2019 12:59:32 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Oct 2019 12:59:27 +0200
Message-Id: <20191031105929.11594-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191031105929.11594-1-ville.syrjala@linux.intel.com>
References: <20191031105929.11594-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Introduce icl_sdr_y_plane_mask()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkp1
c3QgbGlrZSB3ZSBoYXZlIGljbF9oZHJfcGxhbmVfbWFzaygpIGxldCdzIGludHJvZHVjZQppY2xf
c2RyX3lfcGxhbmVfbWFzaygpLiBUaGlzIHNob3VsZCBtYWtlIGZ1dHVyZSBjaGFuZ2VzIHRvCnRo
ZSBzZXQgb2Ygc3VwcG9ydGVkIHBsYW5lcyBlYXNpZXIuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmggfCAxMSArKysrKystLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuaAppbmRleCA5NjVhYmM4YTU3Y2MuLmYzOGNj
NDZhYjI4MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9z
cHJpdGUuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5o
CkBAIC0zMiwxMyArMzIsMTQgQEAgc3RydWN0IGludGVsX3BsYW5lICoKIHNrbF91bml2ZXJzYWxf
cGxhbmVfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCSAgIGVu
dW0gcGlwZSBwaXBlLCBlbnVtIHBsYW5lX2lkIHBsYW5lX2lkKTsKIAorc3RhdGljIGlubGluZSB1
OCBpY2xfc2RyX3lfcGxhbmVfbWFzayh2b2lkKQoreworCXJldHVybiBCSVQoUExBTkVfU1BSSVRF
NCkgfCBCSVQoUExBTkVfU1BSSVRFNSk7Cit9CisKIHN0YXRpYyBpbmxpbmUgYm9vbCBpY2xfaXNf
c2RyX3lfcGxhbmUoZW51bSBwbGFuZV9pZCBpZCkKIHsKLQkvKiBEb24ndCBuZWVkIHRvIGRvIGEg
Z2VuIGNoZWNrLCB0aGVzZSBwbGFuZXMgYXJlIG9ubHkgYXZhaWxhYmxlIG9uIGdlbjExICovCi0J
aWYgKGlkID09IFBMQU5FX1NQUklURTQgfHwgaWQgPT0gUExBTkVfU1BSSVRFNSkKLQkJcmV0dXJu
IHRydWU7Ci0KLQlyZXR1cm4gZmFsc2U7CisJcmV0dXJuIGljbF9zZHJfeV9wbGFuZV9tYXNrKCkg
JiBCSVQoaWQpOwogfQogCiBzdGF0aWMgaW5saW5lIHU4IGljbF9oZHJfcGxhbmVfbWFzayh2b2lk
KQotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
