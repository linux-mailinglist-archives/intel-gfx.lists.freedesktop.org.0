Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F8897264
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 08:40:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C5A66E90D;
	Wed, 21 Aug 2019 06:40:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 457686E910
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 06:40:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 23:40:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,411,1559545200"; d="scan'208";a="195935721"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2019 23:40:14 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Aug 2019 12:02:27 +0530
Message-Id: <20190821063236.19705-8-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190821063236.19705-1-animesh.manna@intel.com>
References: <20190821063236.19705-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 07/15] drm/i915/dsb: Register definition of
 DSB registers.
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
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggYzRhMTcwMzRkNGRjLi5hMWE5ZDA5
YjY0MjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtMTE1NTAsNCArMTE1NTAsMTkgQEAg
ZW51bSBza2xfcG93ZXJfZ2F0ZSB7CiAjZGVmaW5lIFBPUlRfVFhfREZMRVhEUENTU1MoZmlhKQkJ
X01NSU9fRklBKChmaWEpLCAweDAwODk0KQogI2RlZmluZSAgIERQX1BIWV9NT0RFX1NUQVRVU19O
T1RfU0FGRSh0Y19wb3J0KQkJKDEgPDwgKHRjX3BvcnQpKQogCisvKiBUaGlzIHJlZ2lzdGVyIGNv
bnRyb2xzIHRoZSBEaXNwbGF5IFN0YXRlIEJ1ZmZlciAoRFNCKSBlbmdpbmVzLiAqLworI2RlZmlu
ZSBfRFNCU0xfSU5TVEFOQ0VfQkFTRQkJMHg3MEIwMAorI2RlZmluZSBEU0JTTF9JTlNUQU5DRShw
aXBlLCBpZCkJKF9EU0JTTF9JTlNUQU5DRV9CQVNFICsgXAorCQkJCQkgKHBpcGUpICogMHgxMDAw
ICsgKGlkKSAqIDEwMCkKKyNkZWZpbmUgRFNCX0hFQURfUFRSKHBpcGUsIGlkKQkJX01NSU8oRFNC
U0xfSU5TVEFOQ0UocGlwZSwgaWQpICsgMHgwKQorI2RlZmluZSBEU0JfVEFJTF9QVFIocGlwZSwg
aWQpCQlfTU1JTyhEU0JTTF9JTlNUQU5DRShwaXBlLCBpZCkgKyAweDQpCisjZGVmaW5lIERTQl9D
VFJMKHBpcGUsIGlkKQkJX01NSU8oRFNCU0xfSU5TVEFOQ0UocGlwZSwgaWQpICsgMHg4KQorI2Rl
ZmluZSAgIERTQl9FTkFCTEUJCQkoMSA8PCAzMSkKKyNkZWZpbmUgICBEU0JfQlVGRkVSX1JFSVRF
UkFURQkJKDEgPDwgMjkpCisjZGVmaW5lICAgRFNCX1dBSVRfRk9SX1ZCTEFOSwkJKDEgPDwgMjgp
CisjZGVmaW5lICAgRFNCX1dBSVRfRk9SX0xJTkVfSU5fUkFOR0UJKDEgPDwgMjcpCisjZGVmaW5l
ICAgRFNCX0hBTFQJCQkoMSA8PCAxNikKKyNkZWZpbmUgICBEU0JfTk9OX1BPU1RFRF9FTkFCTEUJ
CSgxIDw8IDgpCisjZGVmaW5lICAgRFNCX1NUQVRVUwkJCSgxIDw8IDApCisKICNlbmRpZiAvKiBf
STkxNV9SRUdfSF8gKi8KLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
