Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A516AD5B1
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 11:31:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 720BF89A6D;
	Mon,  9 Sep 2019 09:31:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C71F89A72
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 09:31:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 02:31:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,484,1559545200"; d="scan'208";a="359433636"
Received: from hoernig-mobl.ger.corp.intel.com (HELO delly.ger.corp.intel.com)
 ([10.249.33.104])
 by orsmga005.jf.intel.com with ESMTP; 09 Sep 2019 02:31:18 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Sep 2019 12:31:03 +0300
Message-Id: <20190909093116.7747-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v16 00/13] drm/i915: Vulkan performance query
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

SGkgYWxsLAoKVGhpcyBpcyBqdXN0IGEgZmV3IGNvbXBpbGF0aW9uIGZpeGVzIG9ubHkgc2VlbiBv
biBDSS4KCkNoZWVycywKCkxpb25lbCBMYW5kd2VybGluICgxMyk6CiAgZHJtL2k5MTU6IGludHJv
ZHVjZSBhIG1lY2hhbmlzbSB0byBleHRlbmQgZXhlY2J1ZjIKICBkcm0vaTkxNTogYWRkIHN5bmNv
YmogdGltZWxpbmUgc3VwcG9ydAogIGRybS9pOTE1L3BlcmY6IGRyb3AgbGlzdCBvZiBzdHJlYW1z
CiAgZHJtL2k5MTUvcGVyZjogc3RvcmUgdGhlIGFzc29jaWF0ZWQgZW5naW5lIG9mIGEgc3RyZWFt
CiAgZHJtL2k5MTUvcGVyZjogaW50cm9kdWNlIGEgdmVyc2lvbmluZyBvZiB0aGUgaTkxNS1wZXJm
IHVhcGkKICBkcm0vaTkxNS9wZXJmOiBtb3ZlIHBlcmYgdHlwZXMgdG8gdGhlaXIgb3duIGhlYWRl
cgogIGRybS9pOTE1L3BlcmY6IGFsbG93IGZvciBDUyBPQSBjb25maWdzIHRvIGJlIGNyZWF0ZWQg
bGF6aWx5CiAgZHJtL2k5MTUvcGVyZjogaW1wbGVtZW50IGFjdGl2ZSB3YWl0IGZvciBub2EgY29u
ZmlndXJhdGlvbnMKICBkcm0vaTkxNTogYWRkIHdhaXQgZmxhZ3MgdG8gaTkxNV9hY3RpdmVfcmVx
dWVzdF9yZXRpcmUKICBkcm0vaTkxNS9wZXJmOiBleGVjdXRlIE9BIGNvbmZpZ3VyYXRpb24gZnJv
bSBjb21tYW5kIHN0cmVhbQogIGRybS9pOTE1OiBhZGQgYSBuZXcgcGVyZiBjb25maWd1cmF0aW9u
IGV4ZWNidWYgcGFyYW1ldGVyCiAgZHJtL2k5MTUvcGVyZjogYWxsb3cgaG9sZGluZyBwcmVlbXB0
aW9uIG9uIGZpbHRlcmVkIGN0eAogIGRybS9pOTE1OiBhZGQgc3VwcG9ydCBmb3IgcGVyZiBjb25m
aWd1cmF0aW9uIHF1ZXJpZXMKCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVm
ZmVyLmMgICAgfCA1MDEgKysrKysrKysrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ncHVfY29tbWFuZHMuaCAgfCAgMjUgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z3RfdHlwZXMuaCAgICAgIHwgICA1ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZl
LmMgICAgICAgICAgICB8ICAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUu
aCAgICAgICAgICAgIHwgICA1ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMu
YyAgICAgICAgICAgfCAgMzAgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAg
ICAgICAgICAgIHwgICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAg
ICAgICAgICAgfCAzMTMgKy0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2V0cGFy
YW0uYyAgICAgICAgICB8ICAgOSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyAg
ICAgICAgICAgICAgfCA3MTkgKysrKysrKysrKysrKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3BlcmYuaCAgICAgICAgICAgICAgfCAgMjkgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9wZXJmX3R5cGVzLmggICAgICAgIHwgMzY3ICsrKysrKysrKwogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9xdWVyeS5jICAgICAgICAgICAgIHwgMjgyICsrKysrKysKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8ICAgNCArLQogaW5jbHVkZS91YXBp
L2RybS9pOTE1X2RybS5oICAgICAgICAgICAgICAgICAgIHwgMTk2ICsrKystCiAxNSBmaWxlcyBj
aGFuZ2VkLCAyMDEyIGluc2VydGlvbnMoKyksIDQ4MCBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmZfdHlwZXMuaAoKLS0KMi4yMy4w
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
