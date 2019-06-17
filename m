Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D976047EC2
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 11:48:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 078CC8919E;
	Mon, 17 Jun 2019 09:48:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 571308919D
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 09:48:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 02:48:29 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 17 Jun 2019 02:48:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jun 2019 12:51:02 +0300
Message-Id: <20190617095108.22118-6-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190617095108.22118-1-jani.nikula@intel.com>
References: <20190617095108.22118-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 05/11] drm/i915: make i915_vgpu.h self-contained
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
NS9pOTE1X3ZncHUuaCAgICAgICAgICB8IDEgKwogMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFkZXIt
dGVzdCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0CmluZGV4IGMw
ZDE2NjNlNWI2MS4uMDk2MWI2NjFkZjA5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9NYWtlZmlsZS5oZWFkZXItdGVzdAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmls
ZS5oZWFkZXItdGVzdApAQCAtMTcsNiArMTcsNyBAQCBoZWFkZXJfdGVzdCA6PSBcCiAJaTkxNV9z
Y2hlZHVsZXJfdHlwZXMuaCBcCiAJaTkxNV90aW1lbGluZV90eXBlcy5oIFwKIAlpOTE1X3V0aWxz
LmggXAorCWk5MTVfdmdwdS5oIFwKIAlpbnRlbF9jc3IuaCBcCiAJaW50ZWxfZHJ2LmggXAogCWlu
dGVsX3BtLmggXApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92Z3B1Lmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZncHUuaAppbmRleCBlYmUxYjdiY2VkOTguLjBh
ZDNjNDkxYzVkOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92Z3B1LmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92Z3B1LmgKQEAgLTI0LDYgKzI0LDcgQEAK
ICNpZm5kZWYgX0k5MTVfVkdQVV9IXwogI2RlZmluZSBfSTkxNV9WR1BVX0hfCiAKKyNpbmNsdWRl
ICJpOTE1X2Rydi5oIgogI2luY2x1ZGUgImk5MTVfcHZpbmZvLmgiCiAKIHZvaWQgaTkxNV9jaGVj
a192Z3B1KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7Ci0tIAoyLjIwLjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
