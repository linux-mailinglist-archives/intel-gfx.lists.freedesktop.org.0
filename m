Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E7710ECCC
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2019 17:02:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B0D56E226;
	Mon,  2 Dec 2019 16:01:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7945F6E222
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2019 16:01:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Dec 2019 08:01:57 -0800
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; d="scan'208";a="208130037"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Dec 2019 08:01:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Dec 2019 18:00:57 +0200
Message-Id: <cdcd4101cd407322ffba1faa78b1b51ed1eaa9e9.1575302334.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1575302334.git.jani.nikula@intel.com>
References: <cover.1575302334.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 09/10] drm/i915/pm: use intel de functions for
 forcewake register access
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

TW92ZSBhd2F5IGZyb20gSTkxNV9SRUFEX0ZXKCkgYW5kIEk5MTVfV1JJVEVfRlcoKSBpbiBkaXNw
bGF5IGNvZGUsIGFuZApzd2l0Y2ggdG8gdXNpbmcgaW50ZWxfZGVfcmVhZF9mdygpIGFuZCBpbnRl
bF9kZV93cml0ZV9mdygpLApyZXNwZWN0aXZlbHkuCgpObyBmdW5jdGlvbmFsIGNoYW5nZXMuCgpT
aWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgfCA3ICsrKystLS0KIDEgZmlsZSBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMK
aW5kZXggZGZkMGI4Y2FhYmRlLi5hZmQwODIxYWIxN2YgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0u
YwpAQCAtNTAxMSw5ICs1MDExLDEwIEBAIHN0YXRpYyB2b2lkIHNrbF9kZGJfZW50cnlfd3JpdGUo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJCWNvbnN0IHN0cnVjdCBza2xf
ZGRiX2VudHJ5ICplbnRyeSkKIHsKIAlpZiAoZW50cnktPmVuZCkKLQkJSTkxNV9XUklURV9GVyhy
ZWcsIChlbnRyeS0+ZW5kIC0gMSkgPDwgMTYgfCBlbnRyeS0+c3RhcnQpOworCQlpbnRlbF9kZV93
cml0ZV9mdyhkZXZfcHJpdiwgcmVnLAorCQkJCSAgKGVudHJ5LT5lbmQgLSAxKSA8PCAxNiB8IGVu
dHJ5LT5zdGFydCk7CiAJZWxzZQotCQlJOTE1X1dSSVRFX0ZXKHJlZywgMCk7CisJCWludGVsX2Rl
X3dyaXRlX2Z3KGRldl9wcml2LCByZWcsIDApOwogfQogCiBzdGF0aWMgdm9pZCBza2xfd3JpdGVf
d21fbGV2ZWwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LApAQCAtNTAyOSw3ICs1
MDMwLDcgQEAgc3RhdGljIHZvaWQgc2tsX3dyaXRlX3dtX2xldmVsKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwKIAl2YWwgfD0gbGV2ZWwtPnBsYW5lX3Jlc19iOwogCXZhbCB8PSBs
ZXZlbC0+cGxhbmVfcmVzX2wgPDwgUExBTkVfV01fTElORVNfU0hJRlQ7CiAKLQlJOTE1X1dSSVRF
X0ZXKHJlZywgdmFsKTsKKwlpbnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgcmVnLCB2YWwpOwog
fQogCiB2b2lkIHNrbF93cml0ZV9wbGFuZV93bShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAot
LSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
