Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 801855B510
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 08:34:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8D9E8961E;
	Mon,  1 Jul 2019 06:34:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B091C8961E
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 06:34:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jun 2019 23:34:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,437,1557212400"; d="scan'208";a="153988667"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by orsmga007.jf.intel.com with ESMTP; 30 Jun 2019 23:34:17 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jul 2019 11:56:24 +0530
Message-Id: <20190701062632.456-8-animesh.manna@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701062632.456-1-animesh.manna@intel.com>
References: <20190701062632.456-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/15] drm/i915/dsb: Register definition of DSB
 registers.
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkZWQga2V5IHJlZ2lzdGVyIGRlZmluaXRpb25zIG9mIERTQi4KCmRzYi1jdHJsIHJlZ2lzdGVy
IGlzIHJlcXVpcmVkIHRvIGVuYWJsZSBkc2ItZW5naW5lLgoKaGVhZC1wdHIgcmVnaXN0ZXIgaG9s
ZCB0aGUgaGVhZCBvZiBidWZmZXIgYWRkcmVzcyBmcm9tIHdoZXJlIHRoZQpleGVjdXRpb24gd2ls
bCBzdGFydC4KClByb2dyYW1taW5nIHRhaWwtcHRyIHJlZ2lzdGVyIGlzIGEgdHJpZ2dlciBwb2lu
dCB0byBzdGFydCBleGVjdXRpb24uCgpDYzogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVs
LmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkNjOiBSb2RyaWdv
IFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFu
bmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmggfCAxNSArKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggYjJlODM0OWYzMjk1Li44ZWYyM2U3
MzFjZmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtMTE0ODUsNCArMTE0ODUsMTkgQEAg
ZW51bSBza2xfcG93ZXJfZ2F0ZSB7CiAjZGVmaW5lIFBPUlRfVFhfREZMRVhEUENTU1MJCQlfTU1J
TyhGSUExX0JBU0UgKyAweDAwODk0KQogI2RlZmluZSAgIERQX1BIWV9NT0RFX1NUQVRVU19OT1Rf
U0FGRSh0Y19wb3J0KQkJKDEgPDwgKHRjX3BvcnQpKQogCisvKiBUaGlzIHJlZ2lzdGVyIGNvbnRy
b2xzIHRoZSBEaXNwbGF5IFN0YXRlIEJ1ZmZlciAoRFNCKSBlbmdpbmVzLiAqLworI2RlZmluZSBf
RFNCU0xfSU5TVEFOQ0VfQkFTRQkJMHg3MEIwMAorI2RlZmluZSBEU0JTTF9JTlNUQU5DRShwaXBl
LCBpZCkJKF9EU0JTTF9JTlNUQU5DRV9CQVNFICsgXAorCQkJCQkgKHBpcGUpICogMHgxMDAwICsg
KGlkKSAqIDEwMCkKKyNkZWZpbmUgRFNCX0hFQURfUFRSKHBpcGUsIGlkKQkJX01NSU8oRFNCU0xf
SU5TVEFOQ0UocGlwZSwgaWQpICsgMHgwKQorI2RlZmluZSBEU0JfVEFJTF9QVFIocGlwZSwgaWQp
CQlfTU1JTyhEU0JTTF9JTlNUQU5DRShwaXBlLCBpZCkgKyAweDQpCisjZGVmaW5lIERTQl9DVFJM
KHBpcGUsIGlkKQkJX01NSU8oRFNCU0xfSU5TVEFOQ0UocGlwZSwgaWQpICsgMHg4KQorI2RlZmlu
ZSAgIERTQl9FTkFCTEUJCQkoMSA8PCAzMSkKKyNkZWZpbmUgICBEU0JfQlVGRkVSX1JFSVRFUkFU
RQkJKDEgPDwgMjkpCisjZGVmaW5lICAgRFNCX1dBSVRfRk9SX1ZCTEFOSwkJKDEgPDwgMjgpCisj
ZGVmaW5lICAgRFNCX1dBSVRfRk9SX0xJTkVfSU5fUkFOR0UJKDEgPDwgMjcpCisjZGVmaW5lICAg
RFNCX0hBTFQJCQkoMSA8PCAxNikKKyNkZWZpbmUgICBEU0JfTk9OX1BPU1RFRF9FTkFCTEUJCSgx
IDw8IDgpCisjZGVmaW5lICAgRFNCX1NUQVRVUwkJCSgxIDw8IDApCisKICNlbmRpZiAvKiBfSTkx
NV9SRUdfSF8gKi8KLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
