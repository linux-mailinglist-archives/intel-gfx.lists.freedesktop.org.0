Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B6657D94
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 10:00:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB5446E808;
	Thu, 27 Jun 2019 08:00:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D67246E7E2
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 08:00:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 01:00:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="313709729"
Received: from lswidere-mobl.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.249.140.121])
 by orsmga004.jf.intel.com with ESMTP; 27 Jun 2019 01:00:48 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jun 2019 11:00:35 +0300
Message-Id: <20190627080045.8814-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 00/10] drm/i915: Vulkan performance query
 support
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

SGksCgpTaW5jZSB0aGUgbGFzdCBpdGVyYXRpb24gd2UgZm91bmQgYSBjb3VwbGUgb2YgaXNzdWVz
IHdpdGggdGhlIE5PQQpjb25maWd1cmF0aW9uIG5vdCBiZWluZyByZWFkeSB3aGVuIHdlIHJ1biB0
aGUgcGVyZm9ybWFuY2UgcXVlcmllcy4KClRoaXMgbGVkIG1lIHRvIHJlYWxpemVkIEkgaGFkICJs
b3N0IiBhIHBhdGNoIGR1cmluZyBhIHJlYmFzZQooImRybS9pOTE1L3BlcmY6IGltcGxlbWVudCBh
Y3RpdmUgd2FpdCBmb3Igbm9hIGNvbmZpZ3VyYXRpb25zIikgYW5kCmFsc28gZXhwb3NlZCBhIGJ1
ZyBmaXhlZCAoImRybS9pOTE1L3BlcmY6IGFkZCBtaXNzaW5nIGRlbGF5IGZvciBPQQptdXhlcyBj
b25maWd1cmF0aW9uIikuCgpGaW5hbGx5IGEgbmV3IHBhdGNoIGlzIGFkZGVkIHRvIG1ha2UgdXNl
IG9mIGFjdGl2ZSBOT0Egd2FpdAooImRybS9pOTE1L3BlcmY6IGV4ZWN1dGUgT0EgY29uZmlndXJh
dGlvbiBmcm9tIGNvbW1hbmQgc3RyZWFtIikKaW5zdGVhZCBvZiBhIHdhaXQgb24gdGhlIENQVSBz
aWRlLiBUaGlzIG1ha2VzIGFsbCBvZiB0aGUgbm9uIHBlcgpjb250ZXh0IHBhcnQgb2YgT0EgY29u
ZmlndXJhdGlvbnMgdG8gYmUgZXhlY3V0ZWQgb24gdGhlIGNvbW1hbmQKc3RyZWFtZXIgcmF0aGVy
IHRoYW4gdGhyb3VnaCBDUFUgTU1JTy4KCkNoZWVycywKCkxpb25lbCBMYW5kd2VybGluICgxMCk6
CiAgZHJtL2k5MTUvcGVyZjogYWRkIG1pc3NpbmcgZGVsYXkgZm9yIE9BIG11eGVzIGNvbmZpZ3Vy
YXRpb24KICBkcm0vaTkxNS9wZXJmOiBpbnRyb2R1Y2UgYSB2ZXJzaW9uaW5nIG9mIHRoZSBpOTE1
LXBlcmYgdWFwaQogIGRybS9pOTE1L3BlcmY6IGFsbG93IGZvciBDUyBPQSBjb25maWdzIHRvIGJl
IGNyZWF0ZWQgbGF6aWx5CiAgZHJtL2k5MTUvcGVyZjogaW1wbGVtZW50IGFjdGl2ZSB3YWl0IGZv
ciBub2EgY29uZmlndXJhdGlvbnMKICBkcm0vaTkxNTogaW50cm9kdWNlIGEgbWVjaGFuaXNtIHRv
IGV4dGVuZCBleGVjYnVmMgogIGRybS9pOTE1OiBhZGQgc3luY29iaiB0aW1lbGluZSBzdXBwb3J0
CiAgZHJtL2k5MTU6IGFkZCBhIG5ldyBwZXJmIGNvbmZpZ3VyYXRpb24gZXhlY2J1ZiBwYXJhbWV0
ZXIKICBkcm0vaTkxNS9wZXJmOiBhbGxvdyBob2xkaW5nIHByZWVtcHRpb24gb24gZmlsdGVyZWQg
Y3R4CiAgZHJtL2k5MTUvcGVyZjogZXhlY3V0ZSBPQSBjb25maWd1cmF0aW9uIGZyb20gY29tbWFu
ZCBzdHJlYW0KICBkcm0vaTkxNTogYWRkIHN1cHBvcnQgZm9yIHBlcmYgY29uZmlndXJhdGlvbiBx
dWVyaWVzCgogLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jICAgIHwg
NDQwICsrKysrKysrKysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
X2NzLmMgICAgIHwgICAyICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90
eXBlcy5oICB8ICAgOSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFu
ZHMuaCAgfCAgMjUgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgICAgICAg
ICAgIHwgICA4ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMg
ICAgfCAgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jICAgICAgICAg
ICB8ICAyNSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jICAgICAgICAgICAgICAg
fCAgIDkgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAgIHwg
IDU5ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyAgICAgICAgICAgICAgfCA1
MjUgKysrKysrKysrKysrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ByaW9saXN0
X3R5cGVzLmggICAgfCAgIDcgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9xdWVyeS5jICAg
ICAgICAgICAgIHwgMjc5ICsrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmggICAgICAgICAgICAgICB8ICAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1
ZXN0LmMgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVz
dC5oICAgICAgICAgICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfc3Vi
bWlzc2lvbi5jICAgfCAgMTIgKy0KIGluY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaCAgICAgICAg
ICAgICAgICAgICB8IDE5MyArKysrKystCiAxNyBmaWxlcyBjaGFuZ2VkLCAxNDM2IGluc2VydGlv
bnMoKyksIDE2NyBkZWxldGlvbnMoLSkKCi0tCjIuMjEuMC4zOTIuZ2Y4ZjY3ODcxNTllCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
