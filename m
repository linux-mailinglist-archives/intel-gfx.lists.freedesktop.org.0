Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00713E6EA6
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 10:04:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 492656E4EC;
	Mon, 28 Oct 2019 09:04:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 851836E4EC
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 09:04:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 02:04:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,239,1569308400"; d="scan'208";a="229624408"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.9])
 by fmsmga002.fm.intel.com with ESMTP; 28 Oct 2019 02:04:46 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 01:03:29 +0800
Message-Id: <20191028170330.11346-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191025203225.5322-1-shawn.c.lee@intel.com>
References: <20191025203225.5322-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [PATCH v6 1/2] drm/i915/cml: Remove unsupport PCI ID
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
dHJvZHVjZWQgbmV3IFBDSSBJRCB0aGF0IENNTCBzdXBwb3J0LiBCdXQgc29tZSBQQ0kKSURzIHdl
cmUgcmVtb3ZlZCBmcm9tIENNTCBJRHMgaW4gQlNwZWMuCgp2MjogcmVtb3ZlIHNvbWUgaW5hY2N1
cmF0ZSBkZXNjcmlwdGlvbnMuCnYzOiBmaXggdHlwby4KdjQ6IGFkZCBtaXNzaW5nIHZlcnNpb24g
bnVtYmVyLgp2NTogbm8gdXBkYXRlLgp2NjogdXBkYXRlIHBhdGNoIGNvbW1lbnQuCgpDYzogUm9k
cmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGphbmku
bmlrdWxhQGludGVsLmNvbT4KQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50
ZWwuY29tPgpDYzogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgpD
YzogQ29vcGVyIENoaW91IDxjb29wZXIuY2hpb3VAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBM
ZWUgU2hhd24gQyA8c2hhd24uYy5sZWVAaW50ZWwuY29tPgotLS0KIGluY2x1ZGUvZHJtL2k5MTVf
cGNpaWRzLmggfCA0IC0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggYi9pbmNsdWRlL2RybS9pOTE1X3BjaWlk
cy5oCmluZGV4IGE3MGM5ODJkZGZmOS4uNTZlODIzY2RjNzE3IDEwMDY0NAotLS0gYS9pbmNsdWRl
L2RybS9pOTE1X3BjaWlkcy5oCisrKyBiL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgKQEAgLTQ0
OCw5ICs0NDgsNyBAQAogI2RlZmluZSBJTlRFTF9DTUxfR1QxX0lEUyhpbmZvKQlcCiAJSU5URUxf
VkdBX0RFVklDRSgweDlCMjEsIGluZm8pLCBcCiAJSU5URUxfVkdBX0RFVklDRSgweDlCQUEsIGlu
Zm8pLCBcCi0JSU5URUxfVkdBX0RFVklDRSgweDlCQUIsIGluZm8pLCBcCiAJSU5URUxfVkdBX0RF
VklDRSgweDlCQUMsIGluZm8pLCBcCi0JSU5URUxfVkdBX0RFVklDRSgweDlCQTAsIGluZm8pLCBc
CiAJSU5URUxfVkdBX0RFVklDRSgweDlCQTUsIGluZm8pLCBcCiAJSU5URUxfVkdBX0RFVklDRSgw
eDlCQTgsIGluZm8pLCBcCiAJSU5URUxfVkdBX0RFVklDRSgweDlCQTQsIGluZm8pLCBcCkBAIC00
NjAsOSArNDU4LDcgQEAKICNkZWZpbmUgSU5URUxfQ01MX0dUMl9JRFMoaW5mbykJXAogCUlOVEVM
X1ZHQV9ERVZJQ0UoMHg5QjQxLCBpbmZvKSwgXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkNBLCBp
bmZvKSwgXAotCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkNCLCBpbmZvKSwgXAogCUlOVEVMX1ZHQV9E
RVZJQ0UoMHg5QkNDLCBpbmZvKSwgXAotCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkMwLCBpbmZvKSwg
XAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkM1LCBpbmZvKSwgXAogCUlOVEVMX1ZHQV9ERVZJQ0Uo
MHg5QkM4LCBpbmZvKSwgXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkM0LCBpbmZvKSwgXAotLSAK
Mi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
