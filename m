Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDB347EC5
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 11:48:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26731891A1;
	Mon, 17 Jun 2019 09:48:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B67718919F
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 09:48:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 02:48:33 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 17 Jun 2019 02:48:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jun 2019 12:51:04 +0300
Message-Id: <20190617095108.22118-8-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190617095108.22118-1-jani.nikula@intel.com>
References: <20190617095108.22118-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 07/11] drm/i915: make intel_guc_fwif.h
 self-contained
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

QWRkIHRoZSBtaW5pbWFsIGluY2x1ZGVzL2RlY2xhcmF0aW9ucyB0byBtYWtlIHRoZSBoZWFkZXIg
c2VsZi1jb250YWluZWQsCmFuZCBlbnN1cmUgaXQgc3RheXMgdGhhdCB3YXkuCgpTaWduZWQtb2Zm
LWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0IHwgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9ndWNfZndpZi5oICAgICB8IDQgKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFk
ZXItdGVzdCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0CmluZGV4
IDMxNWYwYjdkMDQwNi4uYjE0MGFmZWI2MTdlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9NYWtlZmlsZS5oZWFkZXItdGVzdAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtl
ZmlsZS5oZWFkZXItdGVzdApAQCAtMjEsNiArMjEsNyBAQCBoZWFkZXJfdGVzdCA6PSBcCiAJaW50
ZWxfY3NyLmggXAogCWludGVsX2Rydi5oIFwKIAlpbnRlbF9ndWNfY3QuaCBcCisJaW50ZWxfZ3Vj
X2Z3aWYuaCBcCiAJaW50ZWxfcG0uaCBcCiAJaW50ZWxfcnVudGltZV9wbS5oIFwKIAlpbnRlbF9z
aWRlYmFuZC5oIFwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19m
d2lmLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfZndpZi5oCmluZGV4IGY1NWYz
YmM4NTI0ZC4uOTJiZDdmZmI1YjEwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9ndWNfZndpZi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19md2lm
LmgKQEAgLTIzLDYgKzIzLDEwIEBACiAjaWZuZGVmIF9JTlRFTF9HVUNfRldJRl9ICiAjZGVmaW5l
IF9JTlRFTF9HVUNfRldJRl9ICiAKKyNpbmNsdWRlIDxsaW51eC9iaXRzLmg+CisjaW5jbHVkZSA8
bGludXgvY29tcGlsZXIuaD4KKyNpbmNsdWRlIDxsaW51eC90eXBlcy5oPgorCiAjZGVmaW5lIEdV
Q19DTElFTlRfUFJJT1JJVFlfS01EX0hJR0gJMAogI2RlZmluZSBHVUNfQ0xJRU5UX1BSSU9SSVRZ
X0hJR0gJMQogI2RlZmluZSBHVUNfQ0xJRU5UX1BSSU9SSVRZX0tNRF9OT1JNQUwJMgotLSAKMi4y
MC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
