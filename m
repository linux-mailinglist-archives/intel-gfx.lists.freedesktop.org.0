Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C56710B147
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 15:28:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15B8489CD7;
	Wed, 27 Nov 2019 14:28:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FE2F89CD7
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 14:28:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 06:27:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,249,1571727600"; d="scan'208";a="206789008"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by fmsmga008.fm.intel.com with ESMTP; 27 Nov 2019 06:27:53 -0800
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Nov 2019 19:45:21 +0530
Message-Id: <20191127141523.5075-1-swati2.sharma@intel.com>
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
bmNlIGdldHRpbmcKaW5jb3JyZWN0IHJlYWRiYWNrcyBmb3IgZmluZSBhbmQgY29hcnNlIHNlZ21l
bnRzLiBQYXRjaCBpbmNsdWRlcyBmaXggZm9yCm11bHRpcGxlIGNvbG9yZWQgc2NyZWVuIGR1cmlu
ZyBib290LgoKU3dhdGkgU2hhcm1hICgyKToKICBbdjhdIGRybS9pOTE1L2NvbG9yOiBFeHRyYWN0
IGljbF9yZWFkX2x1dHMoKQogIEZPUl9URVNUSU5HX09OTFk6IFByaW50IHJnYiB2YWx1ZXMgb2Yg
aHcgYW5kIHN3IGJsb2JzCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xv
ci5jIHwgMTE1ICsrKysrKysrKysrKysrKysrLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaCAgICAgICAgICAgIHwgICA2ICsrCiAyIGZpbGVzIGNoYW5nZWQsIDEwMyBpbnNlcnRp
b25zKCspLCAxOCBkZWxldGlvbnMoLSkKCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
