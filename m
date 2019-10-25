Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D17E4B0C
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 14:30:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6060B89A1E;
	Fri, 25 Oct 2019 12:30:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F301B6E9EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 12:30:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 05:30:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,228,1569308400"; d="scan'208";a="201796425"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.9])
 by orsmga003.jf.intel.com with ESMTP; 25 Oct 2019 05:30:22 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 26 Oct 2019 04:29:11 +0800
Message-Id: <20191025202911.5230-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191025202450.5086-1-shawn.c.lee@intel.com>
References: <20191025202450.5086-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [PATCH] drm/i915/cml: Remove unsupport PCI ID
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
ZGVzY3JpcHRpb25zLgp2MzogZml4IHR5cG8uCgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZp
dmlAaW50ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6
IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpDYzogQW51c2hhIFNy
aXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgpDYzogQ29vcGVyIENoaW91IDxjb29w
ZXIuY2hpb3VAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMZWUgU2hhd24gQyA8c2hhd24uYy5s
ZWVAaW50ZWwuY29tPgotLS0KIGluY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggfCA0IC0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2k5
MTVfcGNpaWRzLmggYi9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oCmluZGV4IGE3MGM5ODJkZGZm
OS4uNTZlODIzY2RjNzE3IDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oCisr
KyBiL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgKQEAgLTQ0OCw5ICs0NDgsNyBAQAogI2RlZmlu
ZSBJTlRFTF9DTUxfR1QxX0lEUyhpbmZvKQlcCiAJSU5URUxfVkdBX0RFVklDRSgweDlCMjEsIGlu
Zm8pLCBcCiAJSU5URUxfVkdBX0RFVklDRSgweDlCQUEsIGluZm8pLCBcCi0JSU5URUxfVkdBX0RF
VklDRSgweDlCQUIsIGluZm8pLCBcCiAJSU5URUxfVkdBX0RFVklDRSgweDlCQUMsIGluZm8pLCBc
Ci0JSU5URUxfVkdBX0RFVklDRSgweDlCQTAsIGluZm8pLCBcCiAJSU5URUxfVkdBX0RFVklDRSgw
eDlCQTUsIGluZm8pLCBcCiAJSU5URUxfVkdBX0RFVklDRSgweDlCQTgsIGluZm8pLCBcCiAJSU5U
RUxfVkdBX0RFVklDRSgweDlCQTQsIGluZm8pLCBcCkBAIC00NjAsOSArNDU4LDcgQEAKICNkZWZp
bmUgSU5URUxfQ01MX0dUMl9JRFMoaW5mbykJXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QjQxLCBp
bmZvKSwgXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkNBLCBpbmZvKSwgXAotCUlOVEVMX1ZHQV9E
RVZJQ0UoMHg5QkNCLCBpbmZvKSwgXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkNDLCBpbmZvKSwg
XAotCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkMwLCBpbmZvKSwgXAogCUlOVEVMX1ZHQV9ERVZJQ0Uo
MHg5QkM1LCBpbmZvKSwgXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkM4LCBpbmZvKSwgXAogCUlO
VEVMX1ZHQV9ERVZJQ0UoMHg5QkM0LCBpbmZvKSwgXAotLSAKMi4xNy4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
