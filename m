Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7770DDC3FB
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 13:30:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FFE66EB1B;
	Fri, 18 Oct 2019 11:30:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F129D6EB1B
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 11:30:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Oct 2019 04:30:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,311,1566889200"; d="scan'208";a="348052325"
Received: from unknown (HELO
 genxfsim-Shark-Bay-Client-platform.iind.intel.com) ([10.223.34.144])
 by orsmga004.jf.intel.com with ESMTP; 18 Oct 2019 04:30:12 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Oct 2019 16:51:32 +0530
Message-Id: <20191018112134.4886-1-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] adding gamma state checker for icl+
 platforms
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gdGhpcyBwYXRjaCwgZW5hYmxlZCBnYW1tYSBzdGF0ZSBjaGVja2VyIGZvciBJQ0wgYW5kIFRH
TC4KTGltaXRpbmcgc3RhdGUgY2hlY2tlciBvbmx5IGZvciBzdXBlciBmaW5lIHNlZ21lbnQsIHNp
bmNlIGdldHRpbmcgaW5jb3JyZWN0CnJlYWRiYWNrcyBmb3IgZmluZSBhbmQgY29hcnNlIHNlZ21l
bnRzLiBQYXRjaCBpbmNsdWRlcyBmaXggZm9yIG11bHRpcGxlCmNvbG9yZWQgc2NyZWVuIGR1cmlu
ZyBib290LgoKU3dhdGkgU2hhcm1hICgyKToKICBbdjddIGRybS9pOTE1L2NvbG9yOiBFeHRyYWN0
IGljbF9yZWFkX2x1dHMoKQogIEZPUl9URVNUSU5HX09OTFk6IFByaW50IHJnYiB2YWx1ZXMgb2Yg
aHcgYW5kIHN3IGJsb2JzCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xv
ci5jIHwgMTE1ICsrKysrKysrKysrKysrKysrLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaCAgICAgICAgICAgIHwgICA2ICsrCiAyIGZpbGVzIGNoYW5nZWQsIDEwMyBpbnNlcnRp
b25zKCspLCAxOCBkZWxldGlvbnMoLSkKCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
