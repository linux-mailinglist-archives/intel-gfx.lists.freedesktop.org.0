Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2E111E4BA
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 14:35:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29285899F2;
	Fri, 13 Dec 2019 13:34:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7562F6E7E6
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 13:34:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 05:34:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="226284907"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 13 Dec 2019 05:34:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Dec 2019 15:34:53 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Dec 2019 15:34:48 +0200
Message-Id: <20191213133453.22152-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/6] drm/i915/fbc: Reject PLANE_OFFSET.y%4!=0 on
 icl+ too
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmlj
bCBhbmQgdGdsIGFyZSBzdGlsbCBhZmZlY3RlZCBieSB0aGUgbW9kdWxvIDQgUExBTkVfT0ZGU0VU
LnkKdW5kZXJydW4gaXNzdWUuIFJlamVjdCBzdWNoIGNvbmZpZ3VyYXRpb25zIG9uIGFsbCBnZW45
KyBwbGF0Zm9ybXMuCgpDYW4gYmUgcmVwcm9kdWNlZCBlYXNpbHkgd2l0aCB0aGUgZm9sbG93aW5n
IHNlcXVlbmNlIG9mCmhhcmR3YXJlIHBva2luZzoKd2hpbGUgewogIHdyaXRlIEZCQ19DVEwuZW5h
YmxlPTEKICB3YWl0IGZvciB2YmxhbmsKCiAgd3JpdGUgUExBTkVfT0ZGU0VUIC54PTAgLnk9MzIK
ICB3cml0ZSBQTEFORV9TVVJGCiAgd2FpdCBmb3IgdmJsYW5rCgogICMgaWYgUExBTkVfT0ZGU0VU
LnkgaXMgbXVsdGlwbGUgb2YgNCB0aGUgdW5kZXJydW4gd29uJ3QgaGFwcGVuCiAgd3JpdGUgUExB
TkVfT0ZGU0VUIC54PTAgLnk9MzEKICB3cml0ZSBQTEFORV9TVVJGCiAgd2FpdCBmb3IgdmJsYW5r
CgogICMgZXh0cmEgdmJsYW5rIHdhaXQgaXMgcmVxdWlyZWQgaGVyZSBwcmVzdW1hYmx5CiAgIyB0
byBnZXQgRkJDIGludG8gdGhlIHByb3BlciBzdGF0ZQogIHdhaXQgZm9yIHZibGFuawoKICB3cml0
ZSBGQkNfQ1RMLmVuYWJsZT0wCiAgIyB1bmRlcnJ1biBoYXBwZW5zIHNvbWUgdGltZSBhZnRlciBG
QkMgZGlzYWJsZQogIHdhaXQgZm9yIHZibGFuawp9CgpCb3RoIDg4ODggYW5kIDU2NSBwaXhlbCBm
b3JtYXRzIGFuZCBhbGwgdGlsaW5nYSBmb3JtYXRzCnNlZW0gYWZmZWN0ZWQuIFJlcHJvZHVjZWQg
b24gS0JML0dMSy9JQ0wvVEdMLiBCRFcgY29uZmlybWVkCm5vdCBhZmZlY3RlZC4KCkNsb3Nlczog
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNzkyClNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyB8IDIgKy0KIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCmluZGV4IDZmMWQ1YzAzMjY4MS4uYTEwNDhlY2U1
NDFlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKQEAgLTc3Niw3
ICs3NzYsNyBAQCBzdGF0aWMgYm9vbCBpbnRlbF9mYmNfY2FuX2FjdGl2YXRlKHN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjKQogCSAqIGhhdmluZyBhIFkgb2Zmc2V0IHRoYXQgaXNuJ3QgZGl2aXNpYmxl
IGJ5IDQgY2F1c2VzIEZJRk8gdW5kZXJydW4KIAkgKiBhbmQgc2NyZWVuIGZsaWNrZXIuCiAJICov
Ci0JaWYgKElTX0dFTl9SQU5HRShkZXZfcHJpdiwgOSwgMTApICYmCisJaWYgKElOVEVMX0dFTihk
ZXZfcHJpdikgPj0gOSAmJgogCSAgICAoZmJjLT5zdGF0ZV9jYWNoZS5wbGFuZS5hZGp1c3RlZF95
ICYgMykpIHsKIAkJZmJjLT5ub19mYmNfcmVhc29uID0gInBsYW5lIFkgb2Zmc2V0IGlzIG1pc2Fs
aWduZWQiOwogCQlyZXR1cm4gZmFsc2U7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
