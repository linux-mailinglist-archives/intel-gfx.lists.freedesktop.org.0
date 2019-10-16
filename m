Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D38D8F3E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 13:19:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D399A6E086;
	Wed, 16 Oct 2019 11:19:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 940C46E086
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 11:19:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 04:19:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,303,1566889200"; d="scan'208";a="397134837"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by fmsmga006.fm.intel.com with ESMTP; 16 Oct 2019 04:19:35 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Oct 2019 16:40:52 +0530
Message-Id: <20191016111054.19666-1-swati2.sharma@intel.com>
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
Cc: jani.nikula@intel.com, daniel.vetter@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gdGhpcyBwYXRjaCwgZW5hYmxlZCBnYW1tYSBzdGF0ZSBjaGVja2VyIGZvciBJQ0wgYW5kIFRH
TC4KTGltaXRpbmcgc3RhdGUgY2hlY2tlciBvbmx5IGZvciBzdXBlciBmaW5lIHNlZ21lbnQsIHNp
bmNlIGdldHRpbmcgaW5jb3JyZWN0CnJlYWRiYWNrcyBmb3IgZmluZSBhbmQgY29hcnNlIHNlZ21l
bnRzLiBQYXRjaCBpbmNsdWRlcyBmaXggZm9yIG11bHRpcGxlCmNvbG9yZWQgc2NyZWVuIGR1cmlu
ZyBib290LgoKU3dhdGkgU2hhcm1hICgyKToKICBbdjZdIGRybS9pOTE1L2NvbG9yOiBFeHRyYWN0
IGljbF9yZWFkX2x1dHMoKQogIEZPUl9URVNUSU5HX09OTFk6IFByaW50IHJnYiB2YWx1ZXMgb2Yg
aHcgYW5kIHN3IGJsb2JzCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xv
ci5jIHwgMTE2ICsrKysrKysrKysrKysrKysrLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaCAgICAgICAgICAgIHwgICA2ICsrCiAyIGZpbGVzIGNoYW5nZWQsIDEwNCBpbnNlcnRp
b25zKCspLCAxOCBkZWxldGlvbnMoLSkKCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
