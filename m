Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCBB65416
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 11:46:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3F506E10D;
	Thu, 11 Jul 2019 09:46:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE04F6E10D
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 09:46:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 02:46:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,478,1557212400"; d="scan'208";a="193346380"
Received: from amahmed2-mobl1.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.49.213])
 by fmsmga002.fm.intel.com with ESMTP; 11 Jul 2019 02:46:40 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2019 12:46:29 +0300
Message-Id: <20190711094638.8022-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 0/9] drm/i915: Vulkan performance query
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

SGksCgpBIGZldyBjaGFuZ2VzIDoKCiAgIC0gRG9uJ3QgY2FsbCBjb3B5X3RvX3VzZXIgdW5kZXIg
bG9jayBpbiBpOTE1X3F1ZXJ5CgogICAtIEZpeCBzYXZlL3Jlc3RvcmUgaGVscGVyIGZvciBub2Eg
d2FpdAoKTWFueSB0aGFua3MgdG8gdGhlIHJldmlld2VycyEKCkNoZWVycywKCkxpb25lbCBMYW5k
d2VybGluICg5KToKICBkcm0vaTkxNS9wZXJmOiBpbnRyb2R1Y2UgYSB2ZXJzaW9uaW5nIG9mIHRo
ZSBpOTE1LXBlcmYgdWFwaQogIGRybS9pOTE1L3BlcmY6IGFsbG93IGZvciBDUyBPQSBjb25maWdz
IHRvIGJlIGNyZWF0ZWQgbGF6aWx5CiAgZHJtL2k5MTUvcGVyZjogaW1wbGVtZW50IGFjdGl2ZSB3
YWl0IGZvciBub2EgY29uZmlndXJhdGlvbnMKICBkcm0vaTkxNTogaW50cm9kdWNlIGEgbWVjaGFu
aXNtIHRvIGV4dGVuZCBleGVjYnVmMgogIGRybS9pOTE1OiBhZGQgc3luY29iaiB0aW1lbGluZSBz
dXBwb3J0CiAgZHJtL2k5MTU6IGFkZCBhIG5ldyBwZXJmIGNvbmZpZ3VyYXRpb24gZXhlY2J1ZiBw
YXJhbWV0ZXIKICBkcm0vaTkxNS9wZXJmOiBhbGxvdyBob2xkaW5nIHByZWVtcHRpb24gb24gZmls
dGVyZWQgY3R4CiAgZHJtL2k5MTUvcGVyZjogZXhlY3V0ZSBPQSBjb25maWd1cmF0aW9uIGZyb20g
Y29tbWFuZCBzdHJlYW0KICBkcm0vaTkxNTogYWRkIHN1cHBvcnQgZm9yIHBlcmYgY29uZmlndXJh
dGlvbiBxdWVyaWVzCgogLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5j
ICAgIHwgNDYzICsrKysrKysrKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2Vu
Z2luZV9jcy5jICAgICB8ICAgMiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdp
bmVfdHlwZXMuaCAgfCAgIDkgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2Nv
bW1hbmRzLmggIHwgIDI1ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVz
LmggICAgICB8ICAgNSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyAgICAg
ICAgICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5j
ICAgIHwgICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyAgICAgICAg
ICAgfCAgMzEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAgICAg
IHwgIDExICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAg
fCAgNjggKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jICAgICAgICAgICAgICB8
IDY0NSArKysrKysrKysrKysrKystLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcXVlcnku
YyAgICAgICAgICAgICB8IDI4MiArKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaCAgICAgICAgICAgICAgIHwgICA0ICstCiBpbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgg
ICAgICAgICAgICAgICAgICAgfCAxOTMgKysrKystCiAxNCBmaWxlcyBjaGFuZ2VkLCAxNTczIGlu
c2VydGlvbnMoKyksIDE3MCBkZWxldGlvbnMoLSkKCi0tCjIuMjIuMApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
