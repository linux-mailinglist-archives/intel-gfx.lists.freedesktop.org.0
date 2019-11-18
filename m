Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2791510096B
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 17:44:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 757316E602;
	Mon, 18 Nov 2019 16:44:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C2716E602
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 16:44:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 08:44:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,320,1569308400"; d="scan'208";a="204123413"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 18 Nov 2019 08:44:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 18 Nov 2019 18:44:30 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Nov 2019 18:44:20 +0200
Message-Id: <20191118164430.27265-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 00/10] drm/i915: Cleanups around
 .crtc_enable/disable()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
YmFzZWQgZm9yIENJLiBBbGwgcmV2aWV3ZWQgYWxyZWFkeS4KClZpbGxlIFN5cmrDpGzDpCAoMTAp
OgogIGRybS9pOTE1OiBDaGFuZ2UgaW50ZWxfZW5jb2RlcnNfPGhvb2s+KCkgY2FsbGluZyBjb252
ZW50aW9uCiAgZHJtL2k5MTU6IEFkZCBpbnRlbF9jcnRjX3ZibGFua19vZmYoKQogIGRybS9pOTE1
OiBNb3ZlIGFzc2VydF92YmxhbmtfZGlzYWJsZWQoKSBpbnRvIGludGVsX2NydGNfdmJsYW5rX29u
KCkKICBkcm0vaTkxNTogTW92ZSBjcnRjX3N0YXRlIHRvIHRpZ2h0ZXIgc2NvcGUKICBkcm0vaTkx
NTogUGFzcyBpbnRlbF9jcnRjIHRvIGlyb25sYWtlX2ZkaV9kaXNhYmxlKCkKICBkcm0vaTkxNTog
Q2hhbmdlIHdhdGVybWFyayBob29rIGNhbGxpbmcgY29udmVudGlvbgogIGRybS9pOTE1OiBQYXNz
IGRldl9wcml2IHRvIGNwdF92ZXJpZnlfbW9kZXNldCgpCiAgZHJtL2k5MTU6IHMvaW50ZWxfY3J0
Yy9jcnRjLyBpbiAuY3J0Y19lbmFibGUoKSBhbmQgLmNydGNfZGlzYWJsZSgpCiAgZHJtL2k5MTU6
IHMvcGlwZV9jb25maWcvbmV3X2NydGNfc3RhdGUvIGluIC5jcnRjX2VuYWJsZSgpCiAgZHJtL2k5
MTU6IENoYW5nZSAuY3J0Y19lbmFibGUvZGlzYWJsZSgpIGNhbGxpbmcgY29udmVudGlvbgoKIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNDU5ICsrKysrKysr
Ky0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAg
IHwgIDE0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jICAgICAgICAgICAgICB8
ICA2MyArLS0KIDMgZmlsZXMgY2hhbmdlZCwgMjcxIGluc2VydGlvbnMoKyksIDI2NSBkZWxldGlv
bnMoLSkKCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
