Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 104D2AB4EA
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2019 11:33:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 915406E1F9;
	Fri,  6 Sep 2019 09:33:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07BAB6E1F8
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2019 09:33:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 02:33:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,472,1559545200"; d="scan'208";a="185737709"
Received: from chlopez-mobl1.amr.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.36.202])
 by orsmga003.jf.intel.com with ESMTP; 06 Sep 2019 02:33:08 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Sep 2019 12:32:43 +0300
Message-Id: <20190906093256.26198-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v15 00/13] drm/i915: Vulkan performance query
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

SGkgYWxsLAoKVGhlIHNlcmllcyBpcyBnYWluaW5nIG9uZSBwYXRjaCwgc3BsaXR0aW5nIGF3YXkg
dGhlIGk5MTVfcGVyZiB0eXBlcwppbnRvIHRoZWlyIG93biBoZWFkZXIgZmlsZS4gVGhlIENJIHJl
cG9ydGVkIGNvbXBpbGF0aW9uIGlzc3VlcyBhbmQgSQpmaWd1cmVkIGFzIHdlbGwgYXMgZml4aW5n
IHRoZW0sIHdlIGNvdWxkIHJlZHVjZSB0aGUgc2l6ZSBvZiBpOTE1X2Rydi5oCmEgYml0IG1vcmUu
CgpObyBvdGhlciBjaGFuZ2UgYXBhcnQgZnJvbSB0aGUgcmlwcGxpbmcgY2hhbmdlcyBmcm9tIHRo
ZSBtb3ZpbmcgdGhlCnR5cGVzIGFyb3VuZC4KCkNoZWVycywKCkxpb25lbCBMYW5kd2VybGluICgx
Myk6CiAgZHJtL2k5MTU6IGludHJvZHVjZSBhIG1lY2hhbmlzbSB0byBleHRlbmQgZXhlY2J1ZjIK
ICBkcm0vaTkxNTogYWRkIHN5bmNvYmogdGltZWxpbmUgc3VwcG9ydAogIGRybS9pOTE1L3BlcmY6
IGRyb3AgbGlzdCBvZiBzdHJlYW1zCiAgZHJtL2k5MTUvcGVyZjogc3RvcmUgdGhlIGFzc29jaWF0
ZWQgZW5naW5lIG9mIGEgc3RyZWFtCiAgZHJtL2k5MTUvcGVyZjogaW50cm9kdWNlIGEgdmVyc2lv
bmluZyBvZiB0aGUgaTkxNS1wZXJmIHVhcGkKICBkcm0vaTkxNS9wZXJmOiBtb3ZlIHBlcmYgdHlw
ZXMgdG8gdGhlaXIgb3duIGhlYWRlcgogIGRybS9pOTE1L3BlcmY6IGFsbG93IGZvciBDUyBPQSBj
b25maWdzIHRvIGJlIGNyZWF0ZWQgbGF6aWx5CiAgZHJtL2k5MTUvcGVyZjogaW1wbGVtZW50IGFj
dGl2ZSB3YWl0IGZvciBub2EgY29uZmlndXJhdGlvbnMKICBkcm0vaTkxNTogYWRkIHdhaXQgZmxh
Z3MgdG8gaTkxNV9hY3RpdmVfcmVxdWVzdF9yZXRpcmUKICBkcm0vaTkxNS9wZXJmOiBleGVjdXRl
IE9BIGNvbmZpZ3VyYXRpb24gZnJvbSBjb21tYW5kIHN0cmVhbQogIGRybS9pOTE1OiBhZGQgYSBu
ZXcgcGVyZiBjb25maWd1cmF0aW9uIGV4ZWNidWYgcGFyYW1ldGVyCiAgZHJtL2k5MTUvcGVyZjog
YWxsb3cgaG9sZGluZyBwcmVlbXB0aW9uIG9uIGZpbHRlcmVkIGN0eAogIGRybS9pOTE1OiBhZGQg
c3VwcG9ydCBmb3IgcGVyZiBjb25maWd1cmF0aW9uIHF1ZXJpZXMKCiAuLi4vZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgICAgfCA1MDEgKysrKysrKysrKy0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaCAgfCAgMjUgKwogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaCAgICAgIHwgICA1ICsKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMgICAgICAgICAgICB8ICAgNCArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9hY3RpdmUuaCAgICAgICAgICAgIHwgICA1ICstCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2RlYnVnZnMuYyAgICAgICAgICAgfCAgMzEgKwogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAgICAgIHwgICAzICstCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAzMTMgKy0tLS0tLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2V0cGFyYW0uYyAgICAgICAgICB8ICAgOSArCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BlcmYuYyAgICAgICAgICAgICAgfCA3MTcgKysrKysrKysrKysrKysrLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuaCAgICAgICAgICAgICAgfCAgMjkgKwog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmX3R5cGVzLmggICAgICAgIHwgMzU2ICsrKysr
KysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9xdWVyeS5jICAgICAgICAgICAgIHwgMjgz
ICsrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8
ICAgNCArLQogaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oICAgICAgICAgICAgICAgICAgIHwg
MTk2ICsrKystCiAxNSBmaWxlcyBjaGFuZ2VkLCAyMDAxIGluc2VydGlvbnMoKyksIDQ4MCBkZWxl
dGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bl
cmZfdHlwZXMuaAoKLS0KMi4yMy4wCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
