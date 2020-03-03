Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8550C177D83
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 18:33:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71D3D6E921;
	Tue,  3 Mar 2020 17:33:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D718C6E921
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 17:33:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 09:33:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="351881397"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 03 Mar 2020 09:33:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Mar 2020 19:33:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Mar 2020 19:33:04 +0200
Message-Id: <20200303173313.28117-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/9] drm/i915: Gamma cleanups
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
bWFpbmRlciBvZiBteSBlYXJsaWVyIGdhbW1hIGNsZWFudXBzLCByZWJhc2VkIGR1ZSB0bwpodyB2
cy4gdWFwaSBzcGxpdCBhbmQgaW50ZWxfZGVfe3JlYWQsd3JpdGV9KCkuCgpWaWxsZSBTeXJqw6Rs
w6QgKDkpOgogIGRybS9pOTE1OiBQb2xpc2ggQ0hWIENHTSBDU0MgbG9hZGluZwogIGRybS9pOTE1
OiBDbGVhbiB1cCBpOXh4X2xvYWRfbHV0c19pbnRlcm5hbCgpCiAgZHJtL2k5MTU6IFNwbGl0IGk5
eHhfcmVhZF9sdXRfOCgpIHRvIGdtY2ggdnMuIGlsayB2YXJpYW50cwogIGRybS9pOTE1OiBzL2Js
b2JfZGF0YS9sdXQvCiAgZHJtL2k5MTU6IHMvY2h2X3JlYWRfY2dtX2x1dC9jaHZfcmVhZF9jZ21f
Z2FtbWEvCiAgZHJtL2k5MTU6IENsZWFuIHVwIGludGVnZXIgdHlwZXMgaW4gY29sb3IgY29kZQog
IGRybS9pOTE1OiBSZWZhY3RvciBMVVQgcmVhZCBmdW5jdGlvbnMKICBkcm0vaTkxNTogRml4IHJl
YWRvdXQgb2YgUElQRUdDTUFYCiAgZHJtL2k5MTU6IFBhc3MgdGhlIGNydGMgdG8gdGhlIGxvdyBs
ZXZlbCByZWFkX2x1dCgpIGZ1bmNzCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jb2xvci5jIHwgNDA3ICsrKysrKysrKysrKy0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaCAgICAgICAgICAgIHwgICAxIC0KIDIgZmlsZXMgY2hhbmdlZCwgMjI1IGlu
c2VydGlvbnMoKyksIDE4MyBkZWxldGlvbnMoLSkKCi0tIAoyLjI0LjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
