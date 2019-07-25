Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B7A74B9C
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 12:33:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C5A06E6D5;
	Thu, 25 Jul 2019 10:33:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4CE26E6D5
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 10:33:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 03:33:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,306,1559545200"; d="scan'208";a="175170919"
Received: from roszkopf-mobl.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.249.32.173])
 by orsmga006.jf.intel.com with ESMTP; 25 Jul 2019 03:33:29 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Jul 2019 13:33:18 +0300
Message-Id: <20190725103327.27010-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v10 0/9] drm/i915: Vulkan performance query
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

SGkgYWxsLAoKSnVzdCBwb3N0ZWQgc29tZSB0ZXN0cyA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVk
ZXNrdG9wLm9yZy9zZXJpZXMvNjQyMjAvCkFuZCBzaG9ja2luZ2x5IGl0IGZvdW5kIGEgZmV3IGJ1
Z3MuCgpUaGlzIHNlcmllcyBpcyBhbHNvIHJlYmFzZWQgb24gdG9wIG9mIENocmlzJyBvbiB0aGUg
Zmx5IE9BCnJlY29uZmlndXJhdGlvbiBvZiBjb250ZXh0cy4KCkNoZWVycywKCkxpb25lbCBMYW5k
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
ICAgIHwgNDcwICsrKysrKysrKysrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmVfY3MuYyAgICAgfCAgIDMgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5n
aW5lX3R5cGVzLmggIHwgICA5ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9j
b21tYW5kcy5oICB8ICAyNSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBl
cy5oICAgICAgfCAgIDUgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgICAg
ICAgICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIu
YyAgICB8ICAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgICAgICAg
ICAgIHwgIDMxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgICAgICAgICAg
ICB8ICAxMSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAg
IHwgIDY4ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyAgICAgICAgICAgICAg
fCA2MDMgKysrKysrKysrKysrKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3F1ZXJ5
LmMgICAgICAgICAgICAgfCAyODIgKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmggICAgICAgICAgICAgICB8ICAgNCArLQogaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5o
ICAgICAgICAgICAgICAgICAgIHwgMTkzICsrKysrLQogMTQgZmlsZXMgY2hhbmdlZCwgMTU1MCBp
bnNlcnRpb25zKCspLCAxNTkgZGVsZXRpb25zKC0pCgotLQoyLjIyLjAKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
