Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C13A4A3C0
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 16:21:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AC6F89E5F;
	Tue, 18 Jun 2019 14:21:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 099D389E5F
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 14:21:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 07:21:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,389,1557212400"; d="scan'208";a="186130226"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 18 Jun 2019 07:21:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Jun 2019 17:21:08 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jun 2019 17:21:05 +0300
Message-Id: <20190618142108.9978-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] drm/i915: Finish drm_driver vfunc cleanup
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkkg
Zm9yZ290IHRvIGNvbnZlcnQgdGhlIHRyYWNlcG9pbnRzIHRvIHRoZSBwZXItY3J0Ywp2ZnVuY3Mg
aW4gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MjI4Ny8KRm9ydHVu
YXRlbHkgSSBoYWQgYSBwYXRjaCByZWFkeSBmb3IgdGhhdCBpbiBhIGJyYW5jaCAoZm9yIGdlbjIK
b3JpZ2luYWxseSkgc28gSSBqdXN0IHJlZnJlc2hlZCB0aGF0IGEgYml0LiBBbmQgc2luY2UgSSBo
YWQKdG8gdGFrZSBhbm90aGVyIGxvb2sgYXQgdGhpcyBzdHVmZiBhbnl3YXkgSSB3ZW50IGFoZWFk
IGFuZApudWtlZCB0aGUgaXJxIHZmdW5jcyB0b28uIEFmdGVyIHRoaXMgSSBiZWxpZXZlIG91ciBk
cm1fZHJpdmVyCnN0cnVjdCBzaG91bGQgYmUgaGFwcHkgaW4gYSBtaXhlZCBnZW4gZW52aXJvbm1l
bnQuCgpWaWxsZSBTeXJqw6Rsw6QgKDMpOgogIGRybS9pOTE1OiBGaXggdmFyaW91cyB0cmFjZXBv
aW50cyBmb3IgZ2VuMgogIGRybS9pOTE1OiBOdWtlIGRybV9kcml2ZXIgaXJxIHZmdW5jcwogIGRy
bS9pOTE1OiBJbml0aWFsaXplIGRybV9kcml2ZXIgdmJsYW5rIGZ1bmNzIGF0IGNvbXBpbGUgdGlt
ZQoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgICA0ICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jICAgICAgICAgICAgICB8ICAgNSArLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyAgICAgICAgICAgICAgfCAyOTEgKysrKysr
KysrLS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuaCAgICAgICAgICAg
ICAgfCAgIDUgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV90cmFjZS5oICAgICAgICAgICAg
fCAgNzYgKysrLS0KIDUgZmlsZXMgY2hhbmdlZCwgMTg3IGluc2VydGlvbnMoKyksIDE5NCBkZWxl
dGlvbnMoLSkKCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
