Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A69FAAA293
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 14:05:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8079489DB9;
	Thu,  5 Sep 2019 12:05:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02AF689DB9
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2019 12:04:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 05:04:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="190474524"
Received: from aandueza-mobl1.amr.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.38.201])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Sep 2019 05:04:58 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Sep 2019 15:04:39 +0300
Message-Id: <20190905120451.14327-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v14 00/12] drm/i915: Vulkan performance query
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

SGkgYWxsLAoKV2hpbGUgZXhlcmNpc2luZyB0aGlzIHNlcmllcyB3aXRoIFJlbmRlcmRvYyBJIGZv
dW5kIGEgY291cGxlIG9mCmlzc3VlcyA6CgogICAtIExlYWtlZCBwZXJmX2ZkIGluIGV4ZWNidWYg
d2hlbiBydW5uaW5nIGludG8gYW4gZXJyb3IKCiAgIC0gVGhlIHdhaXQgb24gdGhlIGNvbXBsZXRp
b24gb2YgdGhlIGNvbmZpZ3VyZSByZXF1ZXN0IGJlaW5nCiAgICAgaW50ZXJydXB0ZWQKCkkgYWxz
byBmaXhlZCBhbiBlcnJvciByZXR1cm4gdmFsdWUgaXNzdWUgcmVwb3J0ZWQgYnkgRGFuIENhcnBl
bnRlci4KCkNoZWVycywKCkxpb25lbCBMYW5kd2VybGluICgxMik6CiAgZHJtL2k5MTU6IGludHJv
ZHVjZSBhIG1lY2hhbmlzbSB0byBleHRlbmQgZXhlY2J1ZjIKICBkcm0vaTkxNTogYWRkIHN5bmNv
YmogdGltZWxpbmUgc3VwcG9ydAogIGRybS9pOTE1L3BlcmY6IGRyb3AgbGlzdCBvZiBzdHJlYW1z
CiAgZHJtL2k5MTUvcGVyZjogc3RvcmUgdGhlIGFzc29jaWF0ZWQgZW5naW5lIG9mIGEgc3RyZWFt
CiAgZHJtL2k5MTUvcGVyZjogaW50cm9kdWNlIGEgdmVyc2lvbmluZyBvZiB0aGUgaTkxNS1wZXJm
IHVhcGkKICBkcm0vaTkxNS9wZXJmOiBhbGxvdyBmb3IgQ1MgT0EgY29uZmlncyB0byBiZSBjcmVh
dGVkIGxhemlseQogIGRybS9pOTE1L3BlcmY6IGltcGxlbWVudCBhY3RpdmUgd2FpdCBmb3Igbm9h
IGNvbmZpZ3VyYXRpb25zCiAgZHJtL2k5MTU6IGFkZCB3YWl0IGZsYWdzIHRvIGk5MTVfYWN0aXZl
X3JlcXVlc3RfcmV0aXJlCiAgZHJtL2k5MTUvcGVyZjogZXhlY3V0ZSBPQSBjb25maWd1cmF0aW9u
IGZyb20gY29tbWFuZCBzdHJlYW0KICBkcm0vaTkxNTogYWRkIGEgbmV3IHBlcmYgY29uZmlndXJh
dGlvbiBleGVjYnVmIHBhcmFtZXRlcgogIGRybS9pOTE1L3BlcmY6IGFsbG93IGhvbGRpbmcgcHJl
ZW1wdGlvbiBvbiBmaWx0ZXJlZCBjdHgKICBkcm0vaTkxNTogYWRkIHN1cHBvcnQgZm9yIHBlcmYg
Y29uZmlndXJhdGlvbiBxdWVyaWVzCgogLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhl
Y2J1ZmZlci5jICAgIHwgNTAxICsrKysrKysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZ3B1X2NvbW1hbmRzLmggIHwgIDI1ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2d0X3R5cGVzLmggICAgICB8ICAgNSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Fj
dGl2ZS5jICAgICAgICAgICAgfCAgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0
aXZlLmggICAgICAgICAgICB8ICAgNSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1
Z2ZzLmMgICAgICAgICAgIHwgIDMxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMg
ICAgICAgICAgICAgICB8ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAg
ICAgICAgICAgICAgIHwgIDYzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dldHBhcmFt
LmMgICAgICAgICAgfCAgIDkgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgICAg
ICAgICAgICAgIHwgNzE3ICsrKysrKysrKysrKysrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9wZXJmLmggICAgICAgICAgICAgIHwgIDI3ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcXVlcnkuYyAgICAgICAgICAgICB8IDI4MyArKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAgIDQgKy0KIGluY2x1ZGUvdWFwaS9kcm0vaTkx
NV9kcm0uaCAgICAgICAgICAgICAgICAgICB8IDE5NiArKysrLQogMTQgZmlsZXMgY2hhbmdlZCwg
MTY4NiBpbnNlcnRpb25zKCspLCAxODcgZGVsZXRpb25zKC0pCgotLQoyLjIzLjAKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
