Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1989963B34
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 20:39:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AE92894D7;
	Tue,  9 Jul 2019 18:39:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA4C0894D7
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 18:39:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 11:39:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,471,1557212400"; d="scan'208";a="156261046"
Received: from mdroper-desk.fm.intel.com ([10.105.128.126])
 by orsmga007.jf.intel.com with ESMTP; 09 Jul 2019 11:39:39 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 Jul 2019 11:39:29 -0700
Message-Id: <20190709183934.445-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 0/5] EHL port programming
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

RmluYWwgcmV2aXNpb24gd2hpY2ggaW5jb3Jwb3JhdGVzIEpvc2UncyBtaW5vciBzdWdnZXN0aW9u
cyAocmVuYW1pbmcgYQpyZWdpc3RlciBhbmQgZHJvcHBpbmcgb25lICNpbmNsdWRlKSBhbmQgdHJp
Z2dlcnMgYSBmaW5hbCBDSSBydW4uICBBbGwKcGF0Y2hlcyBhcmUgcmV2aWV3ZWQgc28gdGhpcyBz
aG91bGQgYmUgcmVhZHkgdG8gYXBwbHkgb25jZSBDSSBmaW5pc2hlcy4KClByZXZpb3VzIHNlcmll
cyByZXZpc2lvbnMgd2VyZSBoZXJlOgogIHY0LzU6IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL2FyY2hpdmVzL2ludGVsLWdmeC8yMDE5LUp1bHkvMjA0MjU3Lmh0bWwKICB2MzogICBodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9hcmNoaXZlcy9pbnRlbC1nZngvMjAxOS1KdW5lLzIw
MzI4Ny5odG1sCiAgdjEvMjogaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvYXJjaGl2ZXMv
aW50ZWwtZ2Z4LzIwMTktSnVuZS8yMDI3NzYuaHRtbAoKTWF0dCBSb3BlciAoNSk6CiAgZHJtL2k5
MTUvZ2VuMTE6IFN0YXJ0IGRpc3Rpbmd1aXNoaW5nICdwaHknIGZyb20gJ3BvcnQnCiAgZHJtL2k5
MTUvZ2VuMTE6IFByb2dyYW0gSUNMX0RQQ0xLQV9DRkdDUjAgYWNjb3JkaW5nIHRvIFBIWQogIGRy
bS9pOTE1L2dlbjExOiBDb252ZXJ0IGNvbWJvIFBIWSBsb2dpYyB0byB1c2UgbmV3ICdlbnVtIHBo
eScKICAgIG5hbWVzcGFjZQogIGRybS9pOTE1OiBUcmFuc2l0aW9uIHBvcnQgdHlwZSBjaGVja3Mg
dG8gcGh5IGNoZWNrcwogIGRybS9pOTE1L2VobDogRW5hYmxlIERESS1ECgogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMgICAgICAgIHwgMTUyICsrKysrKysrKy0tLS0tLS0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgICAgIHwgICA0ICst
CiAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29tYm9fcGh5LmMgICAgfCAxNDMgKysr
KysrKystLS0tLS0tLQogLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbWJvX3BoeS5o
ICAgIHwgICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAg
ICAgfCAxNDYgKysrKysrKysrKy0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jICB8ICA0MSArKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmggIHwgIDIwICsrKwogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9wb3dlci5jICAgIHwgIDIwICstLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jICAgICAgIHwgIDE1ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwbGxfbWdyLmMgfCAgMTEgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHNpLmggICAgICB8ICAxMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aCAgICAgICAgICAgICAgIHwgIDg2ICsrKysrLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2Rydi5oICAgICAgICAgICAgICB8ICAgNCArLQogMTMgZmlsZXMgY2hhbmdlZCwgMzY1IGlu
c2VydGlvbnMoKyksIDI5MyBkZWxldGlvbnMoLSkKCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
