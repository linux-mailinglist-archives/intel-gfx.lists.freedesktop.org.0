Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C43D6F0A7
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 08:42:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FD92893DB;
	Tue, 30 Apr 2019 06:42:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD916893CD
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 06:42:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 23:42:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,412,1549958400"; d="scan'208";a="144779464"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com
 ([10.237.66.154])
 by fmsmga008.fm.intel.com with ESMTP; 29 Apr 2019 23:42:32 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Apr 2019 09:42:06 +0300
Message-Id: <20190430064206.32443-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Corrupt DSI picture fix for
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
ClNpZ25lZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlA
aW50ZWwuY29tPgpBY2tlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jZGNsay5jIHwgOSAr
KysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jZGNsay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfY2RjbGsuYwppbmRleCBhZTQwYTg2NzkzMTQuLjJiMjNmODUwMDM2MiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY2RjbGsuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9jZGNsay5jCkBAIC0yMjc3LDYgKzIyNzcsMTUgQEAgaW50IGludGVsX2Ny
dGNfY29tcHV0ZV9taW5fY2RjbGsoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpCiAJICAgIElTX1ZBTExFWVZJRVcoZGV2X3ByaXYpKQogCQltaW5fY2RjbGsgPSBtYXgo
MzIwMDAwLCBtaW5fY2RjbGspOwogCisJLyoKKwkgKiBPbiBHZW1pbmlsYWtlIG9uY2UgdGhlIENE
Q0xLIGdldHMgYXMgbG93IGFzIDc5MjAwCisJICogcGljdHVyZSBnZXRzIHVuc3RhYmxlLCBkZXNw
aXRlIHRoYXQgdmFsdWVzIGFyZQorCSAqIGNvcnJlY3QgZm9yIERTSSBQTEwgYW5kIERFIFBMTC4K
KwkgKi8KKwlpZiAoaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRf
RFNJKSAmJgorCSAgICBJU19HRU1JTklMQUtFKGRldl9wcml2KSkKKwkJbWluX2NkY2xrID0gbWF4
KDE1ODQwMCwgbWluX2NkY2xrKTsKKwogCWlmIChtaW5fY2RjbGsgPiBkZXZfcHJpdi0+bWF4X2Nk
Y2xrX2ZyZXEpIHsKIAkJRFJNX0RFQlVHX0tNUygicmVxdWlyZWQgY2RjbGsgKCVkIGtIeikgZXhj
ZWVkcyBtYXggKCVkIGtIeilcbiIsCiAJCQkgICAgICBtaW5fY2RjbGssIGRldl9wcml2LT5tYXhf
Y2RjbGtfZnJlcSk7Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
