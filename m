Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E195E47EA
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 11:56:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DE856E950;
	Fri, 25 Oct 2019 09:56:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EC136E950
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 09:56:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 02:56:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,228,1569308400"; d="scan'208";a="204509970"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by FMSMGA003.fm.intel.com with ESMTP; 25 Oct 2019 02:56:15 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2019 12:53:50 +0300
Message-Id: <20191025095352.3891-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 0/2] Refactor Gen11+ SAGV support
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
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMgICB8ICAxNiArKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuaCAgIHwgICAzICsKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYyAgICAgICB8IDExMSArKysrKystLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5oICAgICAgIHwgICAyICsKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8ICA1NyArKystCiAuLi4v
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgMTEgKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAgIHwgICAyICsKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8ICAgNSArCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9wbS5jICAgICAgICAgICAgICAgfCAyNTQgKysrKysrKysrKysrKysr
KystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zaWRlYmFuZC5jICAgICAgICAgfCAgMjcg
Ky0KIDEwIGZpbGVzIGNoYW5nZWQsIDQ1MiBpbnNlcnRpb25zKCspLCAzNiBkZWxldGlvbnMoLSkK
Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
