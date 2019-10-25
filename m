Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82095E4B2B
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 14:33:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81E126E9EF;
	Fri, 25 Oct 2019 12:33:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C0996E9EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 12:33:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 05:33:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,228,1569308400"; d="scan'208";a="201797031"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.9])
 by orsmga003.jf.intel.com with ESMTP; 25 Oct 2019 05:33:36 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 26 Oct 2019 04:32:25 +0800
Message-Id: <20191025203225.5322-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191025202450.5086-1-shawn.c.lee@intel.com>
References: <20191025202450.5086-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [PATCH v4] drm/i915/cml: Remove unsupport PCI ID
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
Cc: Cooper Chiou <cooper.chiou@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Y29tbWl0ICdhN2I0ZGVlYjAyYjkgKCJkcm0vaTkxNS9jbWw6IEFkZCBDTUwgUENJIElEUyknCmlu
dHJvZHVjZWQgbmV3IFBDSSBJRCB0aGF0IENNTCBzdXBwb3J0LiBCdXQgc29tZSBza3UKaXMgbm90
IHN1cHBvcnQgeWV0IHNvIHJlbW92ZSB0aGVtLgoKdjI6IHJlbW92ZSBzb21lIGluYWNjdXJhdGUg
ZGVzY3JpcHRpb25zLgp2MzogZml4IHR5cG8uCnY0OiBhZGQgbWlzc2luZyB2ZXJzaW9uIG51bWJl
ci4KCkNjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+CkNjOiBKYW5pIE5p
a3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5k
ZW1hcmNoaUBpbnRlbC5jb20+CkNjOiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBp
bnRlbC5jb20+CkNjOiBDb29wZXIgQ2hpb3UgPGNvb3Blci5jaGlvdUBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IExlZSBTaGF3biBDIDxzaGF3bi5jLmxlZUBpbnRlbC5jb20+Ci0tLQogaW5jbHVk
ZS9kcm0vaTkxNV9wY2lpZHMuaCB8IDQgLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCBiL2luY2x1ZGUvZHJt
L2k5MTVfcGNpaWRzLmgKaW5kZXggYTcwYzk4MmRkZmY5Li41NmU4MjNjZGM3MTcgMTAwNjQ0Ci0t
LSBhL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgKKysrIGIvaW5jbHVkZS9kcm0vaTkxNV9wY2lp
ZHMuaApAQCAtNDQ4LDkgKzQ0OCw3IEBACiAjZGVmaW5lIElOVEVMX0NNTF9HVDFfSURTKGluZm8p
CVwKIAlJTlRFTF9WR0FfREVWSUNFKDB4OUIyMSwgaW5mbyksIFwKIAlJTlRFTF9WR0FfREVWSUNF
KDB4OUJBQSwgaW5mbyksIFwKLQlJTlRFTF9WR0FfREVWSUNFKDB4OUJBQiwgaW5mbyksIFwKIAlJ
TlRFTF9WR0FfREVWSUNFKDB4OUJBQywgaW5mbyksIFwKLQlJTlRFTF9WR0FfREVWSUNFKDB4OUJB
MCwgaW5mbyksIFwKIAlJTlRFTF9WR0FfREVWSUNFKDB4OUJBNSwgaW5mbyksIFwKIAlJTlRFTF9W
R0FfREVWSUNFKDB4OUJBOCwgaW5mbyksIFwKIAlJTlRFTF9WR0FfREVWSUNFKDB4OUJBNCwgaW5m
byksIFwKQEAgLTQ2MCw5ICs0NTgsNyBAQAogI2RlZmluZSBJTlRFTF9DTUxfR1QyX0lEUyhpbmZv
KQlcCiAJSU5URUxfVkdBX0RFVklDRSgweDlCNDEsIGluZm8pLCBcCiAJSU5URUxfVkdBX0RFVklD
RSgweDlCQ0EsIGluZm8pLCBcCi0JSU5URUxfVkdBX0RFVklDRSgweDlCQ0IsIGluZm8pLCBcCiAJ
SU5URUxfVkdBX0RFVklDRSgweDlCQ0MsIGluZm8pLCBcCi0JSU5URUxfVkdBX0RFVklDRSgweDlC
QzAsIGluZm8pLCBcCiAJSU5URUxfVkdBX0RFVklDRSgweDlCQzUsIGluZm8pLCBcCiAJSU5URUxf
VkdBX0RFVklDRSgweDlCQzgsIGluZm8pLCBcCiAJSU5URUxfVkdBX0RFVklDRSgweDlCQzQsIGlu
Zm8pLCBcCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
