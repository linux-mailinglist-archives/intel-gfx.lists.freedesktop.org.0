Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 412E0E3C7F
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 21:51:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DDC86E62C;
	Thu, 24 Oct 2019 19:51:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70F926E62C
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 19:51:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 12:51:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,225,1569308400"; d="scan'208";a="349807093"
Received: from ldmartin-desk1.jf.intel.com ([10.7.200.70])
 by orsmga004.jf.intel.com with ESMTP; 24 Oct 2019 12:51:29 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2019 12:51:19 -0700
Message-Id: <20191024195122.22877-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Add is_dgfx to device info
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpUaGlz
IHdpbGwgYmUgaGVscGZ1bCB0byBkaWZlcmVudGlhdGUgYSBzZXQgb2YgR1BVcwp3aXRoIHRoZSBz
YW1lIEdFTiB2ZXJzaW9uLgoKU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVj
YXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmggICAgICAgICAgfCAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZv
LmggfCAxICsKIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmgKaW5kZXggNjc0ZTllOTIxODM5Li4xMjY0NmI5NGFmODcgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaApAQCAtMTU0NCw2ICsxNTQ0LDcgQEAgSVNfU1VCUExBVEZPUk0oY29uc3Qgc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiB9CiAKICNkZWZpbmUgSVNfTU9CSUxFKGRldl9w
cml2KQkoSU5URUxfSU5GTyhkZXZfcHJpdiktPmlzX21vYmlsZSkKKyNkZWZpbmUgSVNfREdGWChk
ZXZfcHJpdikgICAoSU5URUxfSU5GTyhkZXZfcHJpdiktPmlzX2RnZngpCiAKICNkZWZpbmUgSVNf
STgzMChkZXZfcHJpdikJSVNfUExBVEZPUk0oZGV2X3ByaXYsIElOVEVMX0k4MzApCiAjZGVmaW5l
IElTX0k4NDVHKGRldl9wcml2KQlJU19QTEFURk9STShkZXZfcHJpdiwgSU5URUxfSTg0NUcpCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaAppbmRleCBlOTk0MGY5MzJkMjYu
Ljc4YTM4M2Y2Mzk1NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2
aWNlX2luZm8uaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5o
CkBAIC0xMDcsNiArMTA3LDcgQEAgZW51bSBpbnRlbF9wcGd0dF90eXBlIHsKIAlmdW5jKGlzX21v
YmlsZSk7IFwKIAlmdW5jKGlzX2xwKTsgXAogCWZ1bmMocmVxdWlyZV9mb3JjZV9wcm9iZSk7IFwK
KwlmdW5jKGlzX2RnZngpOyBcCiAJLyogS2VlcCBoYXNfKiBpbiBhbHBoYWJldGljYWwgb3JkZXIg
Ki8gXAogCWZ1bmMoaGFzXzY0Yml0X3JlbG9jKTsgXAogCWZ1bmMoZ3B1X3Jlc2V0X2Nsb2JiZXJz
X2Rpc3BsYXkpOyBcCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
