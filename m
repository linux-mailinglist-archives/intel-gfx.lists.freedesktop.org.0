Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9DBA55DF
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2019 14:26:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C70AA8984D;
	Mon,  2 Sep 2019 12:26:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6CC98984D
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2019 12:26:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Sep 2019 05:26:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,459,1559545200"; d="scan'208";a="183297632"
Received: from shmuelle-mobl2.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.249.38.87])
 by fmsmga007.fm.intel.com with ESMTP; 02 Sep 2019 05:26:28 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Sep 2019 15:26:13 +0300
Message-Id: <20190902122624.31902-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v13 00/11] drm/i915: Vulkan performance query
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

SGkgYWxsLAoKU29tZSBtaXNzaW5nIGxvY2tzIG9mIHRoZSBWTUEgdGhhdCBDaHJpcyBzcG90dGVk
IGluIHRoZSByZXZpZXcuIFRoaXMKYWxzbyBzaW1wbGlmaWVzIGEgYml0IHRoZSBleGVjYnVmIGNv
ZGUsIGFnYWluIGFzIHJlY29tbWVuZGVkIGJ5IENocmlzLgoKQ2hlZXJzLAoKTGlvbmVsIExhbmR3
ZXJsaW4gKDExKToKICBkcm0vaTkxNTogaW50cm9kdWNlIGEgbWVjaGFuaXNtIHRvIGV4dGVuZCBl
eGVjYnVmMgogIGRybS9pOTE1OiBhZGQgc3luY29iaiB0aW1lbGluZSBzdXBwb3J0CiAgZHJtL2k5
MTUvcGVyZjogZHJvcCBsaXN0IG9mIHN0cmVhbXMKICBkcm0vaTkxNS9wZXJmOiBzdG9yZSB0aGUg
YXNzb2NpYXRlZCBlbmdpbmUgb2YgYSBzdHJlYW0KICBkcm0vaTkxNS9wZXJmOiBpbnRyb2R1Y2Ug
YSB2ZXJzaW9uaW5nIG9mIHRoZSBpOTE1LXBlcmYgdWFwaQogIGRybS9pOTE1L3BlcmY6IGFsbG93
IGZvciBDUyBPQSBjb25maWdzIHRvIGJlIGNyZWF0ZWQgbGF6aWx5CiAgZHJtL2k5MTUvcGVyZjog
aW1wbGVtZW50IGFjdGl2ZSB3YWl0IGZvciBub2EgY29uZmlndXJhdGlvbnMKICBkcm0vaTkxNS9w
ZXJmOiBleGVjdXRlIE9BIGNvbmZpZ3VyYXRpb24gZnJvbSBjb21tYW5kIHN0cmVhbQogIGRybS9p
OTE1OiBhZGQgYSBuZXcgcGVyZiBjb25maWd1cmF0aW9uIGV4ZWNidWYgcGFyYW1ldGVyCiAgZHJt
L2k5MTUvcGVyZjogYWxsb3cgaG9sZGluZyBwcmVlbXB0aW9uIG9uIGZpbHRlcmVkIGN0eAogIGRy
bS9pOTE1OiBhZGQgc3VwcG9ydCBmb3IgcGVyZiBjb25maWd1cmF0aW9uIHF1ZXJpZXMKCiAuLi4v
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgICAgfCA1MDAgKysrKysrKysr
Ky0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaCAgfCAgMjUg
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaCAgICAgIHwgICA1ICsK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jICAgICAgICAgICB8ICAzMSArCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jICAgICAgICAgICAgICAgfCAgIDMgKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8ICA2MyArLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZXRwYXJhbS5jICAgICAgICAgIHwgICA5ICsKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jICAgICAgICAgICAgICB8IDcxNyArKysrKysrKysr
KysrKystLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5oICAgICAgICAgICAgICB8
ICAyNyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3F1ZXJ5LmMgICAgICAgICAgICAgfCAy
ODMgKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAg
IHwgICA0ICstCiBpbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggICAgICAgICAgICAgICAgICAg
fCAxOTYgKysrKy0KIDEyIGZpbGVzIGNoYW5nZWQsIDE2ODIgaW5zZXJ0aW9ucygrKSwgMTgxIGRl
bGV0aW9ucygtKQoKLS0KMi4yMy4wCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
