Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6099947ECD
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 11:48:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7EAC891A3;
	Mon, 17 Jun 2019 09:48:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BF34891A3
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 09:48:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 02:48:39 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 17 Jun 2019 02:48:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jun 2019 12:51:07 +0300
Message-Id: <20190617095108.22118-11-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190617095108.22118-1-jani.nikula@intel.com>
References: <20190617095108.22118-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 10/11] drm/i915: make intel_uc_fw.h
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
NS9pbnRlbF91Y19mdy5oICAgICAgICB8IDIgKysKIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVy
LXRlc3QgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFkZXItdGVzdAppbmRleCA1
YWUyY2FlMjdlODUuLjkxOWQzYTg0OGIwYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZp
bGUuaGVhZGVyLXRlc3QKQEAgLTI3LDYgKzI3LDcgQEAgaGVhZGVyX3Rlc3QgOj0gXAogCWludGVs
X3BtLmggXAogCWludGVsX3J1bnRpbWVfcG0uaCBcCiAJaW50ZWxfc2lkZWJhbmQuaCBcCisJaW50
ZWxfdWNfZncuaCBcCiAJaW50ZWxfdW5jb3JlLmggXAogCWludGVsX3dha2VyZWYuaAogCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Y19mdy5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfdWNfZncuaAppbmRleCBmZjk4Zjg2NjFkNzIuLjI0ZTY2NDY5MTUzYyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWNfZncuaAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Y19mdy5oCkBAIC0yNSw2ICsyNSw4IEBACiAjaWZuZGVm
IF9JTlRFTF9VQ19GV19IXwogI2RlZmluZSBfSU5URUxfVUNfRldfSF8KIAorI2luY2x1ZGUgPGxp
bnV4L3R5cGVzLmg+CisKIHN0cnVjdCBkcm1fcHJpbnRlcjsKIHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlOwogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
