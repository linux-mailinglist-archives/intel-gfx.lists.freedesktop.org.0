Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 045E110A30C
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 18:09:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B5E66E43C;
	Tue, 26 Nov 2019 17:09:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 538BD6E43C
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 17:09:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 09:09:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,246,1571727600"; d="scan'208";a="202781445"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 26 Nov 2019 09:09:12 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Nov 2019 19:09:11 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Nov 2019 19:08:58 +0200
Message-Id: <20191126170911.23253-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/13] drm/i915/fbc: Fix FBC for glk+
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
Cc: Jian-Hong Pan <jian-hong@endlessm.com>,
 Paulo Zanoni <paulo.r.zanoni@intel.com>, Daniel Drake <drake@endlessm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCklt
cGxlbWVudCB0aGUgbWlzc2luZyB3L2EgZm9yIGJhY2sgdG8gYmFjayBGQkMgZGlzYWJsZSArIHBs
YW5lCnVwZGF0ZSBvbiBnbGsrLiBUaGUgc2Nhcmllc3QgcGFydCBvZiB0aGlzIGlzIHRoYXQgd2Ug
bm93IHN0YXJ0CnRvIHVzZSBmbGlwIG51a2Ugc28gdGhhdCB3ZSBjYW4gYXZvaWQgdGhlIHcvYSAo
YXMgaXQgd291bGQgY29zdAp1cyBvbmUgZXh0cmEgZnJhbWUgZm9yIGV2ZXJ5IHBsYW5lIHVwZGF0
ZSkuIEhvcGVmdWxseSBteSAiY2FuCndlIGZsaXAgbnVrZSBzYWZlbHk/IiBjaGVjayBpcyBnb29k
IGVub3VnaC4KClRoZXJlJ3MgYSBiaXQgb2YgY2xlYW51cCBtaXhlZCBpbiBzaW5jZSB0aGVyZSB3
YXMgYWxsIGtpbmRzIG9mCmNyYXAgaW4gbXkgd2F5LiBUaGUgc3RhdGUgb2YgdGhlIGNvZGUgaXMg
c3RpbGwgbm90IHByZXR0eSBidXQKc2VlbWVkIHRvIHdvcmsgd2VsbCBlbm91Z2ggaW4gbXkgbGlt
aXRlZCB0ZXN0aW5nLgoKRW50aXJlIHNlcmllcyBhdmFpbGFsYmUgaGVyZToKZ2l0Oi8vZ2l0aHVi
LmNvbS92c3lyamFsYS9saW51eC5naXQgZ2xrX2ZiY193YQoKQ2M6IERhbmllbCBEcmFrZSA8ZHJh
a2VAZW5kbGVzc20uY29tPiwKQ2M6IFBhdWxvIFphbm9uaSA8cGF1bG8uci56YW5vbmlAaW50ZWwu
Y29tPiwKQ2M6IEppYW4tSG9uZyBQYW4gPGppYW4taG9uZ0BlbmRsZXNzbS5jb20+LApDYzogTWFh
cnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KClZpbGxl
IFN5cmrDpGzDpCAoMTMpOgogIGRybS9pOTE1L2ZiYzogRGlzYWJsZSBmYmMgYnkgZGVmYXVsdCBv
biBhbGwgZ2xrKwogIGRybS9pOTE1L2ZiYzogTnVrZSBib2d1cyBzaW5nbGUgcGlwZSBmYmMxIHJl
c3RyaWN0aW9uCiAgZHJtL2k5MTU6IFJlbG9jYXRlIGludGVsX2NydGNfYWN0aXZlKCkKICBkcm0v
aTkxNS9mYmM6IFJlbW92ZSB0aGUgRkJDX1JUX0JBU0Ugc2V0dXAgZm9yIElMSy9TTkIKICBkcm0v
aTkxNS9mYmM6IFByZWNvbXB1dGUgZ2VuOSBjZmIgc3RyaWRlIHcvYQogIGRybS9pOTE1L2ZiYzog
VHJhY2sgcGxhbmUgdmlzaWJpbGl0eQogIGRybS9pOTE1L2ZiYzogU3RvcmUgZmVuY2VfaWQgZGly
ZWN0aW9uIGluIGZiYyBjYWNoZS9wYXJhbXMKICBkcm0vaTkxNS9mYmM6IE1ha2UgZmVuY2VfaWQg
b3B0aW9uYWwgZm9yIGk5NjVnbQogIGRybS9pOTE1L2ZiYzogcy9nZW45ICYmICFnbGsvZ2VuOV9i
YyB8fCBieHQvCiAgZHJtL2k5MTUvZmJjOiBOdWtlIGZiYy5lbmFibGVkCiAgZHJtL2k5MTUvZmJj
OiBTdGFydCB1c2luZyBmbGlwIG51a2UKICBkcm0vaTkxNS9mYmM6IFdhaXQgZm9yIHZibGFuayBh
ZnRlciBGQkMgZGlzYWJsZSBvbiBnbGsrCiAgZHJtL2k5MTUvZmJjOiBFbmFibGUgZmJjIGJ5IGRl
ZmF1bHQgb24gZ2xrKyBvbmNlIGFnYWluCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMgfCAgMjUgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5oIHwgICAxIC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZmJjLmMgICAgIHwgMjQ5ICsrKysrKysrKy0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZmJjLmggICAgIHwgICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oICAgICAgICAgICAgICB8ICAxNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcG0uYyAgICAgICAgICAgICAgfCAgMTkgKysKIDYgZmlsZXMgY2hhbmdlZCwgMTUwIGluc2Vy
dGlvbnMoKyksIDE2MSBkZWxldGlvbnMoLSkKCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
