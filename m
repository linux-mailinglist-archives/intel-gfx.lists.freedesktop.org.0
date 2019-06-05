Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4553335E0E
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2019 15:39:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6258A8990D;
	Wed,  5 Jun 2019 13:39:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1D8D898ED
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2019 13:39:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jun 2019 06:39:02 -0700
X-ExtLoop1: 1
Received: from mkopansk-mobl1.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.249.139.46])
 by fmsmga008.fm.intel.com with ESMTP; 05 Jun 2019 06:39:01 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jun 2019 16:38:44 +0300
Message-Id: <20190605133852.4493-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 0/7] drm/i915: Vulkan performance query
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

SGkgYWxsLAoKSGVyZSBpcyBhIGxpc3Qgb2YgY2hhbmdlcyBpbiB0aGlzIGl0ZXJhdGlvbiA6Cgog
IC0gUmV1c2UgaTkxNV91c2VyX2V4dGVuc2lvbl9mbgoKICAtIFNlcmlhbGl6ZSBPQSBjb25maWd1
cmF0aW9uIHVwZGF0ZXMKCiAgLSBSZXBvcnQgdGhlIHBlcmYgcHJpb3JpdHkgdGhyb3VnaCB0aGUg
ZWZmZWN0aXZlX3ByaW8oKSBoZWxwZXIKICAgIHJhdGhlciB0aGFuIHVwZGF0aW5nIHRoZSB2YWx1
ZQoKQ2hlZXJzLAoKTGlvbmVsIExhbmR3ZXJsaW4gKDcpOgogIGRybS9pOTE1L3BlcmY6IGludHJv
ZHVjZSBhIHZlcnNpb25pbmcgb2YgdGhlIGk5MTUtcGVyZiB1YXBpCiAgZHJtL2k5MTUvcGVyZjog
YWxsb3cgZm9yIENTIE9BIGNvbmZpZ3MgdG8gYmUgY3JlYXRlZCBsYXppbHkKICBkcm0vaTkxNTog
aW50cm9kdWNlIGEgbWVjaGFuaXNtIHRvIGV4dGVuZCBleGVjYnVmMgogIGRybS9pOTE1OiBhZGQg
c3luY29iaiB0aW1lbGluZSBzdXBwb3J0CiAgZHJtL2k5MTU6IGFkZCBhIG5ldyBwZXJmIGNvbmZp
Z3VyYXRpb24gZXhlY2J1ZiBwYXJhbWV0ZXIKICBkcm0vaTkxNS9wZXJmOiBhbGxvdyBob2xkaW5n
IHByZWVtcHRpb24gb24gZmlsdGVyZWQgY3R4CiAgZHJtL2k5MTU6IGFkZCBzdXBwb3J0IGZvciBw
ZXJmIGNvbmZpZ3VyYXRpb24gcXVlcmllcwoKIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X2V4ZWNidWZmZXIuYyAgICB8IDQzOSArKysrKysrKysrKysrKystLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jICAgICB8ICAgMiArCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaCAgfCAgIDkgKwogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmggIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jICAgICAgICAgICB8ICAgOCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfcmluZ2J1ZmZlci5jICAgIHwgICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5jICAgICAgICAgICAgICAgfCAgMTEgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmggICAgICAgICAgICAgICB8ICA1MSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wZXJmLmMgICAgICAgICAgICAgIHwgMjAzICsrKysrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3ByaW9saXN0X3R5cGVzLmggICAgfCAgIDcgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9xdWVyeS5jICAgICAgICAgICAgIHwgMjc5ICsrKysrKysrKysrCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlcXVlc3QuYyAgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZXF1ZXN0LmggICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2d1Y19zdWJtaXNzaW9uLmMgICB8ICAxMCArLQogaW5jbHVkZS91YXBpL2RybS9p
OTE1X2RybS5oICAgICAgICAgICAgICAgICAgIHwgMTkzICsrKysrKystCiAxNSBmaWxlcyBjaGFu
Z2VkLCAxMTE2IGluc2VydGlvbnMoKyksIDEwMyBkZWxldGlvbnMoLSkKCi0tCjIuMjEuMC4zOTIu
Z2Y4ZjY3ODcxNTllCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
