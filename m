Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C27A8AA85
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 00:37:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66F556E49C;
	Mon, 12 Aug 2019 22:37:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D0246E49C
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 22:37:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Aug 2019 15:37:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,379,1559545200"; d="scan'208";a="194059994"
Received: from anusha.jf.intel.com ([10.54.75.126])
 by fmsmga001.fm.intel.com with ESMTP; 12 Aug 2019 15:37:48 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Aug 2019 15:27:37 -0700
Message-Id: <20190812222737.29356-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/cml: Add Missing PCI IDs
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIEJTcGVjIGhhcyBhZGRlZCB0aHJlZSBuZXcgSURTIGZvciBDTUwuClVwZGF0ZSB0aGUgSURz
IGluIGFjY29yZGFuY2UgdG8gdGhlIFNwZWMuCgpDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5k
ZW1hcmNoaUBpbnRlbC5jb20+CkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXph
QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0
c2FAaW50ZWwuY29tPgotLS0KIGluY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggfCA1ICsrKystCiAx
IGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCBiL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgK
aW5kZXggYTcwYzk4MmRkZmY5Li5iMWY2NmIxMTdjNzQgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvZHJt
L2k5MTVfcGNpaWRzLmgKKysrIGIvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaApAQCAtNDY2LDcg
KzQ2NiwxMCBAQAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkM1LCBpbmZvKSwgXAogCUlOVEVMX1ZH
QV9ERVZJQ0UoMHg5QkM4LCBpbmZvKSwgXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkM0LCBpbmZv
KSwgXAotCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkMyLCBpbmZvKQorCUlOVEVMX1ZHQV9ERVZJQ0Uo
MHg5QkMyLCBpbmZvKSwgXAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkM2LCBpbmZvKSwgXAorCUlO
VEVMX1ZHQV9ERVZJQ0UoMHg5QkU2LCBpbmZvKSwgXAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkY2
LCBpbmZvKQogCiAjZGVmaW5lIElOVEVMX0tCTF9JRFMoaW5mbykgXAogCUlOVEVMX0tCTF9HVDFf
SURTKGluZm8pLCBcCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
