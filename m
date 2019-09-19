Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92154B6FE4
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 02:07:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19A367B926;
	Thu, 19 Sep 2019 00:07:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 625127B998
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 00:07:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 17:07:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,522,1559545200"; d="scan'208";a="189426765"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by orsmga003.jf.intel.com with ESMTP; 18 Sep 2019 17:07:32 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Sep 2019 17:07:25 -0700
Message-Id: <20190919000726.267988-13-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190919000726.267988-1-jose.souza@intel.com>
References: <20190919000726.267988-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 12/13] drm/i915/tgl: Fix dkl link training
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

TGluayB0cmFpbmluZyBpcyBmYWlsbGluZyB3aGVuIHJ1bm5pbmcgbGluayBhdCAyLjdHSHogYW5k
IDEuNjJHSHogYW5kCmZvbGxvd2luZyBCU3BlYyBwbGwgYWxnb3JpdGhtLgoKQ29tcGFyaW5nIHRo
ZSB2YWx1ZXMgY2FsY3VsYXRlZCBhbmQgdGhlIG9uZXMgZnJvbSB0aGUgcmVmZXJlbmNlIHRhYmxl
Cml0IGxvb2tzIGxpa2UgTUdfQ0xLVE9QMl9DT1JFQ0xLQ1RMMV9BX0RJVlJBVElPIHNob3VsZCBu
b3QgYWx3YXlzIHNldAp0byA1LiBGb3IgRFAgcG9ydHMgSUNMIG1nIHBsbCBhbGdvcml0aG0gc2V0
cyBpdCB0byAxMCBvciA1IGJhc2VkIG9uCmRpdjIgdmFsdWUsIHRoYXQgbWF0Y2hlcyB3aXRoIGRr
bCBoYXJkY29kZWQgdGFibGUuCgpTbyBpbXBsZW1lbnRpbmcgdGhpcyB3YXkgYXMgaXQgcHJvdmVk
IHRvIHdvcmsgaW4gSFcgYW5kIGxlYXZpbmcgYQpjb21tZW50IHNvIHdlIGtub3cgd2h5IGl0IGRv
IG5vdCBtYXRjaCBCU3BlYy4KCklzc3VlIHJlcG9ydGVkIG9uIEJTcGVjIDQ5MjA0LgoKU2lnbmVk
LW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIHwgNyArKysr
KystCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCmluZGV4IGU2YTcy
ODBkYTQwOC4uMjM3OTI5MGVlNmYyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcGxsX21nci5jCkBAIC0yNjMwLDcgKzI2MzAsMTIgQEAgc3RhdGljIGJvb2wgaWNs
X21nX3BsbF9maW5kX2Rpdmlzb3JzKGludCBjbG9ja19raHosIGJvb2wgaXNfZHAsIGJvb2wgdXNl
X3NzYywKIAkJCQljb250aW51ZTsKIAkJCWlmIChkaXYyID49IDIpIHsKIAkJCQlpZiAoaXNfZGts
KSB7Ci0JCQkJCWFfZGl2cmF0aW8gPSA1OworCQkJCQkvKgorCQkJCQkgKiBOb3RlOiBhX2RpdnJh
dGlvIG5vdCBtYXRjaGluZyBUR0wKKwkJCQkJICogQlNwZWMgYWxnb3JpdGhtIGJ1dCBtYXRjaGlu
ZworCQkJCQkgKiBoYXJkY29kZWQgdmFsdWVzIGFuZCB3b3JraW5nIG9uIEhXCisJCQkJCSAqLwor
CQkJCQlhX2RpdnJhdGlvID0gMTA7CiAJCQkJCXRsaW5lZHJ2ID0gMTsKIAkJCQl9IGVsc2Ugewog
CQkJCQlhX2RpdnJhdGlvID0gaXNfZHAgPyAxMCA6IDU7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
