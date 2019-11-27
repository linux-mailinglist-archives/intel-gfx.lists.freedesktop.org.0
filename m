Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26CBD10B18C
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 15:43:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70AED6E0FB;
	Wed, 27 Nov 2019 14:43:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE40489BAB
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 14:43:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 06:43:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,249,1571727600"; d="scan'208";a="234122830"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by fmsmga004.fm.intel.com with ESMTP; 27 Nov 2019 06:43:47 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Nov 2019 16:41:24 +0200
Message-Id: <20191127144128.3195-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH v6 0/4] Enable second DBuf slice for ICL and TGL
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhvc2UgcGF0Y2ggc2VyaWVzLCBkbyBzb21lIGluaXRpYWwgcHJlcGFyYXRpb24gREJ1ZiBtYW5p
cHVsYXRpbmcgY29kZQpjbGVhbnVwcywgaS5lIHJlbW92ZSByZWR1bmRhbnQgc3RydWN0dXJlcy9j
b2RlLCBzd2l0Y2ggdG8gbWFzawpiYXNlZCBEQnVmIG1hbnVwdWxhdGlvbiwgZ2V0IGludG8gdXNl
IERCdWYgYXNzaWdubWVudCBhY2NvcmRpbmcgdG8KQlNwZWMgcnVsZXMuCgpTdGFuaXNsYXYgTGlz
b3Zza2l5ICg0KToKICBkcm0vaTkxNTogUmVtb3ZlIHNrbF9kZGxfYWxsb2NhdGlvbiBzdHJ1Y3QK
ICBkcm0vaTkxNTogTW92ZSBkYnVmIHNsaWNlIHVwZGF0ZSB0byBwcm9wZXIgcGxhY2UKICBkcm0v
aTkxNTogTWFuaXB1bGF0ZSBEQnVmIHNsaWNlcyBwcm9wZXJseQogIGRybS9pOTE1OiBDb3JyZWN0
bHkgbWFwIERCVUYgc2xpY2VzIHRvIHBpcGVzCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMgIHwgIDQ3ICsrLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9wb3dlci5jICAgIHwgMTAwICsrKy0tLS0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcG93ZXIuaCAgICB8ICAgNSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oICAgICAgICAgICAgICAgfCAgIDYgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cGNpLmMgICAgICAgICAgICAgICB8ICAgNiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZGV2aWNlX2luZm8uaCAgICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bt
LmMgICAgICAgICAgICAgICB8IDI4MSArKysrKysrKysrKysrKystLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3BtLmggICAgICAgICAgICAgICB8ICAgNCArLQogOCBmaWxlcyBjaGFuZ2Vk
LCAzMjcgaW5zZXJ0aW9ucygrKSwgMTIzIGRlbGV0aW9ucygtKQoKLS0gCjIuMTcuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
