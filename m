Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0926310D630
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 14:40:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52EFE6E8FF;
	Fri, 29 Nov 2019 13:40:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE7FB6E8FF
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 13:40:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Nov 2019 05:40:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,257,1571727600"; d="scan'208";a="234712506"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by fmsmga004.fm.intel.com with ESMTP; 29 Nov 2019 05:40:06 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Nov 2019 15:37:05 +0200
Message-Id: <20191129133709.24397-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH v7 0/4] Enable second DBuf slice for ICL and TGL
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
eS9pbnRlbF9kaXNwbGF5LmMgIHwgIDUzICsrLS0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcG93ZXIuYyAgICB8IDEwMCArKystLS0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcG93ZXIuaCAgICB8ICAgNSArCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3R5cGVzLmggICAgfCAgIDMgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaCAgICAgICAgICAgICAgIHwgICA3ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bj
aS5jICAgICAgICAgICAgICAgfCAgIDYgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rl
dmljZV9pbmZvLmggICAgICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5j
ICAgICAgICAgICAgICAgfCAyODkgKysrKysrKysrKysrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5oICAgICAgICAgICAgICAgfCAgIDYgKy0KIDkgZmlsZXMgY2hhbmdlZCwg
MzMzIGluc2VydGlvbnMoKyksIDEzNyBkZWxldGlvbnMoLSkKCi0tIAoyLjE3LjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
