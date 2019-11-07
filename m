Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7CC5F2C18
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 11:25:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F1296F534;
	Thu,  7 Nov 2019 10:25:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E3336F534
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 10:25:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 02:25:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,277,1569308400"; d="scan'208";a="230065619"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Nov 2019 02:25:07 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Nov 2019 12:22:23 +0200
Message-Id: <20191107102225.25988-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v10 0/2] Refactor Gen11+ SAGV support
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

Rm9yIEdlbjExKyBwbGF0Zm9ybXMgQlNwZWMgc3VnZ2VzdHMgZGlzYWJsaW5nIHNwZWNpZmljClFH
ViBwb2ludHMgc2VwYXJhdGVseSwgZGVwZW5kaW5nIG9uIGJhbmR3aWR0aCBsaW1pdGF0aW9ucwph
bmQgY3VycmVudCBkaXNwbGF5IGNvbmZpZ3VyYXRpb24uIFRodXMgaXQgcmVxdWlyZWQgYWRkaW5n
CmEgbmV3IFBDb2RlIHJlcXVlc3QgZm9yIGRpc2FibGluZyBRR1YgcG9pbnRzIGFuZCBzb21lCnJl
ZmFjdG9yaW5nIG9mIGFscmVhZHkgZXhpc3RpbmcgU0FHViBjb2RlLgpBbHNvIGhhZCB0byByZWZh
Y3RvciBpbnRlbF9jYW5fZW5hYmxlX3NhZ3YgZnVuY3Rpb24sCmFzIGN1cnJlbnQgc2VlbXMgdG8g
YmUgb3V0ZGF0ZWQgYW5kIHVzaW5nIHNrbCBzcGVjaWZpYwp3b3JrYXJvdW5kcywgYWxzbyBub3Qg
Zm9sbG93aW5nIEJTcGVjIGZvciBHZW4xMSsuCgpTdGFuaXNsYXYgTGlzb3Zza2l5ICgyKToKICBk
cm0vaTkxNTogUmVmYWN0b3IgaW50ZWxfY2FuX2VuYWJsZV9zYWd2CiAgZHJtL2k5MTU6IFJlc3Ry
aWN0IHFndiBwb2ludHMgd2hpY2ggZG9uJ3QgaGF2ZSBlbm91Z2ggYmFuZHdpZHRoLgoKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmggICB8ICAgMyArCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgICAgICAgfCAxMzcgKysrKysrLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuaCAgICAgICB8ICAgMiArCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAxMDEgKysrKystCiAu
Li4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgMTIgKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAgIHwgIDEwICstCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAgIDggKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyAgICAgICAgICAgICAgIHwgMzA3ICsrKysrKysrKysr
KysrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uaCAgICAgICAgICAgICAgIHwg
ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3NpZGViYW5kLmMgICAgICAgICB8ICAy
NyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc2lkZWJhbmQuaCAgICAgICAgIHwgICAx
IC0KIDExIGZpbGVzIGNoYW5nZWQsIDU2MCBpbnNlcnRpb25zKCspLCA0OSBkZWxldGlvbnMoLSkK
Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
