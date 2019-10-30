Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4366CEA552
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 22:22:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 968A46EBA3;
	Wed, 30 Oct 2019 21:22:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E2586EBA3
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2019 21:22:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Oct 2019 14:22:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,248,1569308400"; d="scan'208";a="194100177"
Received: from dhiatt-desk.jf.intel.com ([10.54.81.11])
 by orsmga008.jf.intel.com with ESMTP; 30 Oct 2019 14:22:08 -0700
From: don.hiatt@intel.com
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Oct 2019 14:22:09 -0700
Message-Id: <20191030212209.28796-1-don.hiatt@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/guc: Skip suspend/resume GuC action on
 platforms w/o GuC submission
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

RnJvbTogRG9uIEhpYXR0IDxkb24uaGlhdHRAaW50ZWwuY29tPgoKT24gc29tZSBwbGF0Zm9ybXMg
KGUuZy4gS0JMKSB0aGF0IGRvIG5vdCBzdXBwb3J0IEd1QyBzdWJtaXNzaW9uLCBidXQKdGhlIHVz
ZXIgZW5hYmxlZCB0aGUgR3VDIGNvbW11bmljYXRpb24gKGUuZyBmb3IgSHVDIGF1dGhlbnRpY2F0
aW9uKQpjYWxsaW5nIHRoZSBHdUMgRVhJVF9TX1NUQVRFIGFjdGlvbiByZXN1bHRzIGluIGxvc2Ug
b2YgYWJpbGl0eSB0bwplbnRlciBSQzYuIFdlIGNhbiByZW1vdmUgdGhlIEd1QyBzdXNwZW5kL3Jl
c3VtZSBlbnRpcmVseSBhcyB3ZSBkbwpub3QgbmVlZCB0byBzYXZlIHRoZSBHdUMgc3VibWlzc2lv
biBzdGF0dXMuCgp2MjogRG8gbm90IHN1c3BlbmQvcmVzdW1lIHRoZSBHdUMgb24gcGxhdGZvcm1z
IHRoYXQgZG8gbm90IHN1cHBvcnQKICAgIEd1YyBTdWJtaXNzaW9uLgp2MzogRml4IHR5cG8sIG1v
dmUgc3VzcGVuZCBsb2dpYyB0byByZW1vdmUgZ290by4KClNpZ25lZC1vZmYtYnk6IERvbiBIaWF0
dCA8ZG9uLmhpYXR0QGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF9ndWMuYyB8IDcgKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
dWMuYyAgfCA4ICsrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jCmluZGV4IGYxMjk1OTE4MjE4Mi4uMDcw
YzNkYjg1MTNhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9n
dWMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYwpAQCAtNTg3
LDYgKzU4NywxMyBAQCBpbnQgaW50ZWxfZ3VjX3N1c3BlbmQoc3RydWN0IGludGVsX2d1YyAqZ3Vj
KQogCQlHVUNfUE9XRVJfRDEsIC8qIGFueSB2YWx1ZSBncmVhdGVyIHRoYW4gR1VDX1BPV0VSX0Qw
ICovCiAJfTsKIAorCS8qCisJICogSWYgR3VDIGNvbW11bmljYXRpb24gaXMgZW5hYmxlZCBidXQg
c3VibWlzc2lvbiBpcyBub3Qgc3VwcG9ydGVkLAorCSAqIHdlIGRvIG5vdCBuZWVkIHRvIHN1c3Bl
bmQgdGhlIEd1Qy4KKwkgKi8KKwlpZiAoIWd1Yy0+c3VibWlzc2lvbl9zdXBwb3J0ZWQpCisJCXJl
dHVybiAwOworCiAJLyoKIAkgKiBUaGUgRU5URVJfU19TVEFURSBhY3Rpb24gcXVldWVzIHRoZSBz
YXZlL3Jlc3RvcmUgb3BlcmF0aW9uIGluIEd1QyBGVwogCSAqIGFuZCB0aGVuIHJldHVybnMsIHNv
IHdhaXRpbmcgb24gdGhlIEgyRyBpcyBub3QgZW5vdWdoIHRvIGd1YXJhbnRlZQpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKaW5kZXggNjI5YjE5Mzc3YTI5Li5lMGI1OWRmYmI5MDEg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwpAQCAtNjA1LDYgKzYwNSwxNCBA
QCBzdGF0aWMgaW50IF9fdWNfcmVzdW1lKHN0cnVjdCBpbnRlbF91YyAqdWMsIGJvb2wgZW5hYmxl
X2NvbW11bmljYXRpb24pCiAJaWYgKGVuYWJsZV9jb21tdW5pY2F0aW9uKQogCQlndWNfZW5hYmxl
X2NvbW11bmljYXRpb24oZ3VjKTsKIAorCS8qCisJICogSWYgR3VDIGNvbW11bmljYXRpb24gaXMg
ZW5hYmxlZCBidXQgc3VibWlzc2lvbiBpcyBub3Qgc3VwcG9ydGVkLAorCSAqIHdlIGRvIG5vdCBu
ZWVkIHRvIHJlc3VtZSB0aGUgR3VDIGJ1dCB3ZSBkbyBuZWVkIHRvIGVuYWJsZSB0aGUKKwkgKiBH
dUMgY29tbXVuaWNhdGlvbiBvbiByZXN1bWUgKGFib3ZlKS4KKwkgKi8KKwlpZiAoIWd1Yy0+c3Vi
bWlzc2lvbl9zdXBwb3J0ZWQpCisJCXJldHVybiAwOworCiAJZXJyID0gaW50ZWxfZ3VjX3Jlc3Vt
ZShndWMpOwogCWlmIChlcnIpIHsKIAkJRFJNX0RFQlVHX0RSSVZFUigiRmFpbGVkIHRvIHJlc3Vt
ZSBHdUMsIGVycj0lZCIsIGVycik7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
