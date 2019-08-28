Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E9BA0506
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 16:33:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F09489CD5;
	Wed, 28 Aug 2019 14:33:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D46A89CBA
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 14:33:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 07:33:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,441,1559545200"; d="scan'208";a="380419380"
Received: from cmartin2-mobl3.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.38.61])
 by fmsmga005.fm.intel.com with ESMTP; 28 Aug 2019 07:33:30 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Aug 2019 17:33:17 +0300
Message-Id: <20190828143327.7965-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v11 00/10] drm/i915: Vulkan performance query
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

SGkgYWxsLAoKVGhpcyBpcyBhIHJlYmFzZSBvbiB0b3Agb2Ygc29tZSBvZiB0aGUgaTkxNS9wZXJm
IHJlZmFjdG9yaW5nIHRoYXQKbGFuZGVkLiBJdCBhbHNvIGNoYW5nZXMgYSBmZXcgdGhpbmdzIHRv
IGFsbG9jYXRlIEJPcyBvbnRvIHRoZQppOTE1X3BlcmZfc3RyZWFtIHRvIG1ha2UgdGhlIGxhbmRl
ZCByZWZhY3RvcmluZy4gSXQgYWxzbyBtYWtlcyB0aGluZ3MKYSBiaXQgbGVzcyBjb250ZW50aW91
cyBvbiBnbG9iYWwgc3RhdGUgOikKCkFzIHRoZSBwcmV2aW91cyBpdGVyYXRpb25zIG9mIHRoaXMg
c2VyaWVzLCB0aGlzIGFsc28gaW5jbHVkZXMgMwpwYXRjaGVzICh0aGUgZmlyc3QgMykgZnJvbSB0
aGUgdGltZWxpbmUgc2VtYXBob3JlIHdvcmsuIFlvdSBjYW4gc2FmZWx5Cmlnbm9yZSB0aGVtLCB0
aGV5J3JlIGdldHRpbmcgcmV2aWV3ZWQgb24gYSBkaWZmZXJlbnQgc2VyaWVzLiBJdCdzIGp1c3QK
dW5mb3J0dW5hdGUgdGhleSBpbnRlcmFjdCBiZWNhdXNlIG9mIHVBUEkgY2hhbmdlcy4KCkNoZWVy
cywKCkxpb25lbCBMYW5kd2VybGluICgxMCk6CiAgZHJtL3N5bmNvYmo6IGFkZCBzaWRlYmFuZCBw
YXlsb2FkCiAgZHJtL2k5MTU6IGludHJvZHVjZSBhIG1lY2hhbmlzbSB0byBleHRlbmQgZXhlY2J1
ZjIKICBkcm0vaTkxNTogYWRkIHN5bmNvYmogdGltZWxpbmUgc3VwcG9ydAogIGRybS9pOTE1L3Bl
cmY6IGludHJvZHVjZSBhIHZlcnNpb25pbmcgb2YgdGhlIGk5MTUtcGVyZiB1YXBpCiAgZHJtL2k5
MTUvcGVyZjogYWxsb3cgZm9yIENTIE9BIGNvbmZpZ3MgdG8gYmUgY3JlYXRlZCBsYXppbHkKICBk
cm0vaTkxNS9wZXJmOiBpbXBsZW1lbnQgYWN0aXZlIHdhaXQgZm9yIG5vYSBjb25maWd1cmF0aW9u
cwogIGRybS9pOTE1OiBhZGQgYSBuZXcgcGVyZiBjb25maWd1cmF0aW9uIGV4ZWNidWYgcGFyYW1l
dGVyCiAgZHJtL2k5MTUvcGVyZjogYWxsb3cgaG9sZGluZyBwcmVlbXB0aW9uIG9uIGZpbHRlcmVk
IGN0eAogIGRybS9pOTE1L3BlcmY6IGV4ZWN1dGUgT0EgY29uZmlndXJhdGlvbiBmcm9tIGNvbW1h
bmQgc3RyZWFtCiAgZHJtL2k5MTU6IGFkZCBzdXBwb3J0IGZvciBwZXJmIGNvbmZpZ3VyYXRpb24g
cXVlcmllcwoKIGRyaXZlcnMvZ3B1L2RybS9kcm1faW50ZXJuYWwuaCAgICAgICAgICAgICAgICB8
ICAgMiArCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2lvY3RsLmMgICAgICAgICAgICAgICAgICAgfCAg
IDMgKwogZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMgICAgICAgICAgICAgICAgIHwgIDU5
ICstCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgICAgfCA0ODcg
KysrKysrKysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMg
ICAgIHwgICA0ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5o
ICB8ICAgOSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaCAg
fCAgMjUgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaCAgICAgIHwg
ICA1ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jICAgICAgICAgICB8ICAg
NCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jICAgIHwgICA0
ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyAgICAgICAgICAgfCAgMzEg
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAgICAgIHwgICAzICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgNDggKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2V0cGFyYW0uYyAgICAgICAgICB8ICAgOSArCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyAgICAgICAgICAgICAgfCA2NDMgKysrKysr
KysrKysrKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuaCAgICAgICAgICAg
ICAgfCAgMjMgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9xdWVyeS5jICAgICAgICAgICAg
IHwgMjgzICsrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAg
ICAgICAgfCAgIDQgKy0KIGluY2x1ZGUvZHJtL2RybV9zeW5jb2JqLmggICAgICAgICAgICAgICAg
ICAgICB8ICAgOSArCiBpbmNsdWRlL3VhcGkvZHJtL2RybS5oICAgICAgICAgICAgICAgICAgICAg
ICAgfCAgMTcgKwogaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oICAgICAgICAgICAgICAgICAg
IHwgMTk2ICsrKysrLQogMjEgZmlsZXMgY2hhbmdlZCwgMTcxMCBpbnNlcnRpb25zKCspLCAxNTgg
ZGVsZXRpb25zKC0pCgotLQoyLjIzLjAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
