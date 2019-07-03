Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA4E5EFA6
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 01:37:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3A7A6E219;
	Wed,  3 Jul 2019 23:37:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21EB96E219
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 23:37:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 16:37:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,448,1557212400"; d="scan'208";a="154899175"
Received: from mdroper-desk.fm.intel.com ([10.105.128.126])
 by orsmga007.jf.intel.com with ESMTP; 03 Jul 2019 16:37:52 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jul 2019 16:37:31 -0700
Message-Id: <20190703233736.5816-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.17.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 0/5] EHL port programming
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

UHJldmlvdXMgc2VyaWVzIHJldmlzaW9ucyB3ZXJlIGhlcmU6CiAgdjM6IGh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL2FyY2hpdmVzL2ludGVsLWdmeC8yMDE5LUp1bmUvMjAzMjg3Lmh0bWwK
ICB2MS8yOiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9hcmNoaXZlcy9pbnRlbC1nZngv
MjAxOS1KdW5lLzIwMjc3Ni5odG1sCgpPbmx5IHR3byBwYXRjaGVzIGZyb20gdGhlIHByZXZpb3Vz
IHNlcmllcyBoYXZlIHlldCB0byBsYW5kOyB0aGlzCnJldmlzaW9uIHNwbGl0cyB1cCB0aGUgZmly
c3Qgb2YgdGhvc2UgaW50byBmb3VyIHNlcGFyYXRlIHBhdGNoZXMgdG8gZWFzZQp0aGUgcmV2aWV3
IHByb2Nlc3MgYSBiaXQuCgpUaGlzIHJldmlzaW9uIGFsc28gdXBkYXRlcyBhIGhhbmRmdWwgb2Yg
Y29tYm8gUEhZIHJlZ2lzdGVycyB0byB1c2UgdGhlCm5ldyBuYW1lc3BhY2UgdGhhdCB3ZXJlIG1p
c3NlZCBpbiB0aGUgcHJldmlvdXMgaXRlcmF0aW9uIGFuZCBjYXVnaHQgYnkKSm9zZS4KCkFzIGJl
Zm9yZSwgdGhpcyBzZXJpZXMgZG9lc24ndCBldmVuIHRyeSB0byB0b3VjaCB0aGUgVEMgY29kZSAo
YXNpZGUgZnJvbQp0aGUgdHlwZSBjaGVjayBmdW5jdGlvbikuICBFSEwgaGFzIG5vIGNvbWJvIFBI
WXMsIHNvIGl0J3MgcHJvYmFibHkKYmV0dGVyIHRvIHdhaXQgdW50aWwgVEdMIHN1cHBvcnQgbGFu
ZHMgaW4gdGhlIHRyZWUgYmVmb3JlIHRhY2tsaW5nIHRoYXQKdG8gYXZvaWQgY2F1c2luZyB1bm5l
Y2Vzc2FyeSBjb25mbGljdHMuICBFdmVuIHBhdGNoICM0IG9mIHRoaXMgc2VyaWVzCm1heSB3YW50
IHRvIHdhaXQgdW50aWwgVEdMIGxhbmRzIGJlZm9yZSBiZWluZyBtZXJnZWQuCgpDYzogSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpNYXR0IFJvcGVyICg1KToK
ICBkcm0vaTkxNS9nZW4xMTogU3RhcnQgZGlzdGluZ3Vpc2hpbmcgJ3BoeScgZnJvbSAncG9ydCcK
ICBkcm0vaTkxNS9nZW4xMTogUHJvZ3JhbSBEUENMS0FfQ0ZHQ1IwX0lDTCBhY2NvcmRpbmcgdG8g
UEhZCiAgZHJtL2k5MTUvZ2VuMTE6IENvbnZlcnQgY29tYm8gUEhZIGxvZ2ljIHRvIHVzZSBuZXcg
J2VudW0gcGh5JwogICAgbmFtZXNwYWNlCiAgZHJtL2k5MTU6IFRyYW5zaXRpb24gcG9ydCB0eXBl
IGNoZWNrcyB0byBwaHkgY2hlY2tzCiAgZHJtL2k5MTUvZWhsOiBFbmFibGUgRERJLUQKCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyAgICAgICAgfCAxMzYgKysrKysrKyst
LS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jICAgICB8
ICAgNCArLQogLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbWJvX3BoeS5jICAgIHwg
MTQzICsrKysrKysrKy0tLS0tLS0tLQogLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nv
bWJvX3BoeS5oICAgIHwgICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaS5jICAgICAgfCAxMzAgKysrKysrKysrLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgIDM5ICsrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCAgfCAgMjAgKysrCiAuLi4vZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgICAgfCAgMjAgKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMgICAgICAgfCAgMTUgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyB8ICAxMSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kc2kuaCAgICAgIHwgIDEyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oICAgICAgICAgICAgICAgfCAgODYgKysrKysrLS0tLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2Rydi5oICAgICAgICAgICAgICB8ICAgNCArLQogMTMgZmlsZXMgY2hhbmdl
ZCwgMzQ4IGluc2VydGlvbnMoKyksIDI3NSBkZWxldGlvbnMoLSkKCi0tIAoyLjE3LjIKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
