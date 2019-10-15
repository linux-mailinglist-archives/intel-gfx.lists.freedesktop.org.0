Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE62D77B9
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 15:52:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C9CB89BF1;
	Tue, 15 Oct 2019 13:52:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52AB489BF1
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 13:52:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 06:52:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="198612538"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by orsmga003.jf.intel.com with ESMTP; 15 Oct 2019 06:52:47 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 16:50:11 +0300
Message-Id: <20191015135013.10630-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 0/2] Refactor Gen11+ SAGV support
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
Cc: martin.peres@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yIEdlbjExKyBwbGF0Zm9ybXMgQlNwZWMgc3VnZ2VzdHMgZGlzYWJsaW5nIHNwZWNpZmljClFH
ViBwb2ludHMgc2VwYXJhdGVseSwgZGVwZW5kaW5nIG9uIGJhbmR3aWR0aCBsaW1pdGF0aW9ucwph
bmQgY3VycmVudCBkaXNwbGF5IGNvbmZpZ3VyYXRpb24uIFRodXMgaXQgcmVxdWlyZWQgYWRkaW5n
CmEgbmV3IFBDb2RlIHJlcXVlc3QgZm9yIGRpc2FibGluZyBRR1YgcG9pbnRzIGFuZCBzb21lCnJl
ZmFjdG9yaW5nIG9mIGFscmVhZHkgZXhpc3RpbmcgU0FHViBjb2RlLgoKU3RhbmlzbGF2IExpc292
c2tpeSAoMik6CiAgZHJtL2k5MTU6IFJlZmFjdG9yIGludGVsX2Nhbl9lbmFibGVfc2FndgogIGRy
bS9pOTE1OiBSZXN0cmljdCBxZ3YgcG9pbnRzIHdoaWNoIGRvbid0IGhhdmUgZW5vdWdoIGJhbmR3
aWR0aC4KCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jICAgfCAg
MTYgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5oICAgfCAg
IDMgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jICAgICAgIHwgMTA1
ICsrKysrKysrKysrKysrLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
dy5oICAgICAgIHwgICAyICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jICB8ICA1OCArKysrKysrKystCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3R5cGVzLmggICAgfCAgIDMgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAg
ICAgICAgICAgICAgIHwgICAyICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAg
ICAgICAgICAgICB8ICAgMyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jICAgICAg
ICAgICAgICAgfCAgNzMgKysrKysrKysrKystCiA5IGZpbGVzIGNoYW5nZWQsIDIzNiBpbnNlcnRp
b25zKCspLCAyOSBkZWxldGlvbnMoLSkKCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
