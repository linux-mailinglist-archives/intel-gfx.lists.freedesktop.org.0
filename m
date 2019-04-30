Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0797F8A6
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 14:19:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8456D891BF;
	Tue, 30 Apr 2019 12:19:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 949BF891BF
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 12:19:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 05:19:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,413,1549958400"; d="scan'208";a="166250928"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com
 ([10.237.66.154])
 by fmsmga002.fm.intel.com with ESMTP; 30 Apr 2019 05:19:04 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Apr 2019 15:18:36 +0300
Message-Id: <20190430121836.6990-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915: Corrupt DSI picture fix for
 GeminiLake
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
Cc: martin.peres@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q3VycmVudGx5IGR1ZSB0byByZWdyZXNzaW9uIENJIG1hY2hpbmUKZGlzcGxheXMgc2hvdyBjb3Jy
dXB0IHBpY3R1cmUuClByb2JsZW0gaXMgd2hlbiBDRENMSyBpcyBhcyBsb3cgYXMgNzkyMDAsIHBp
Y3R1cmUgZ2V0cwp1bnN0YWJsZSwgd2hpbGUgRFNJIGFuZCBERSBwbGwgdmFsdWVzIHdlcmUKY29u
ZmlybWVkIHRvIGJlIGNvcnJlY3QuCkxpbWl0aW5nIHRvIDE1ODQwMCBhcyBhZ3JlZWQgd2l0aCBW
aWxsZS4KCldlIGNvdWxkIG5vdCBjb21lIHVwIHdpdGggYW55IGJldHRlciBzb2x1dGlvbgp5ZXQs
IGFzIFBMTCBkaXZpZGVyIHZhbHVlcyBib3RoIGZvciBNSVBJKERTSSBQTEwpIGFuZApDRENMSyhE
RSBQTEwpIGFyZSBjb3JyZWN0LCBob3dldmVyIHNlZW1zIHRoYXQgZHVlIHRvIHNvbWUKYm91bmRh
cnkgY29uZGl0aW9ucywgd2hlbiBjbG9ja2luZyBpcyB0b28gbG93IHdlIGdldAp3cm9uZyB0aW1p
bmdzIGZvciBEU0kgZGlzcGxheS4KU2ltaWxhciB3b3JrYXJvdW5kIGV4aXN0cyBmb3IgVkxWIHRo
b3VnaCwgc28ganVzdAp0b29rIHNpbWlsYXIgY29uZGl0aW9uIGludG8gdXNlLiBBdCBsZWFzdCB0
aGF0IHdheQpHTEsgcGxhdGZvcm0gd2lsbCBzdGFydCB0byBiZSB1c2FibGUgYWdhaW4sIHdpdGgK
Y3VycmVudCBkcm0tdGlwLgoKdjI6IEZpeGVkIGNvbW1pdCBzdWJqZWN0IGFzIHN1Z2dlc3RlZC4K
CnYzOiBBZGRlZCBnZW5lcmljIGJ1Z3MoY3JjIGZhaWx1cmVzLCBzY3JlZW4gbm90IGluaXQKZm9y
IEdMSyBEU0kgd2hpY2ggbWlnaHQgYmUgYWZmZWN0ZWQpLgoKU2lnbmVkLW9mZi1ieTogU3Rhbmlz
bGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+CkFja2VkLWJ5OiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpHZW5lcmljIGJ1
Z3MgYWZmZWN0ZWQ6Cmh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTEwOTI2NwpodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMx
ODQKLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jZGNsay5jIHwgOSArKysrKysrKysK
IDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9jZGNsay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY2Rj
bGsuYwppbmRleCBhZTQwYTg2NzkzMTQuLjJiMjNmODUwMDM2MiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfY2RjbGsuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9jZGNsay5jCkBAIC0yMjc3LDYgKzIyNzcsMTUgQEAgaW50IGludGVsX2NydGNfY29tcHV0
ZV9taW5fY2RjbGsoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJ
ICAgIElTX1ZBTExFWVZJRVcoZGV2X3ByaXYpKQogCQltaW5fY2RjbGsgPSBtYXgoMzIwMDAwLCBt
aW5fY2RjbGspOwogCisJLyoKKwkgKiBPbiBHZW1pbmlsYWtlIG9uY2UgdGhlIENEQ0xLIGdldHMg
YXMgbG93IGFzIDc5MjAwCisJICogcGljdHVyZSBnZXRzIHVuc3RhYmxlLCBkZXNwaXRlIHRoYXQg
dmFsdWVzIGFyZQorCSAqIGNvcnJlY3QgZm9yIERTSSBQTEwgYW5kIERFIFBMTC4KKwkgKi8KKwlp
ZiAoaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRfRFNJKSAmJgor
CSAgICBJU19HRU1JTklMQUtFKGRldl9wcml2KSkKKwkJbWluX2NkY2xrID0gbWF4KDE1ODQwMCwg
bWluX2NkY2xrKTsKKwogCWlmIChtaW5fY2RjbGsgPiBkZXZfcHJpdi0+bWF4X2NkY2xrX2ZyZXEp
IHsKIAkJRFJNX0RFQlVHX0tNUygicmVxdWlyZWQgY2RjbGsgKCVkIGtIeikgZXhjZWVkcyBtYXgg
KCVkIGtIeilcbiIsCiAJCQkgICAgICBtaW5fY2RjbGssIGRldl9wcml2LT5tYXhfY2RjbGtfZnJl
cSk7Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
