Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A72EF3342
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 16:33:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DD136F70D;
	Thu,  7 Nov 2019 15:33:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 909176F70D
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 15:33:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 07:33:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,278,1569308400"; d="scan'208";a="227862386"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by fmsmga004.fm.intel.com with ESMTP; 07 Nov 2019 07:33:19 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Nov 2019 17:30:35 +0200
Message-Id: <20191107153037.17640-1-stanislav.lisovskiy@intel.com>
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
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAxMDggKysrKystCiAu
Li4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgMTIgKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAgIHwgIDEwICstCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAgIDggKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyAgICAgICAgICAgICAgIHwgMzA3ICsrKysrKysrKysr
KysrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uaCAgICAgICAgICAgICAgIHwg
ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3NpZGViYW5kLmMgICAgICAgICB8ICAy
NyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc2lkZWJhbmQuaCAgICAgICAgIHwgICAx
IC0KIDExIGZpbGVzIGNoYW5nZWQsIDU2NSBpbnNlcnRpb25zKCspLCA1MSBkZWxldGlvbnMoLSkK
Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
