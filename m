Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F67786362
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 15:44:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 734D36E846;
	Thu,  8 Aug 2019 13:44:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3343B6E83D
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 13:43:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 06:38:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,361,1559545200"; d="scan'208";a="193158110"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 08 Aug 2019 06:38:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Aug 2019 16:42:40 +0300
Message-Id: <f1f0830bb43ddc6857d6a43e51c14b2f0c58c4e0.1565271681.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1565271681.git.jani.nikula@intel.com>
References: <cover.1565271681.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 01/10] drm/i915: remove unused
 dev_priv->no_aux_handshake
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

VGhlIGxhc3QgdXNlciBvZiBkZXZfcHJpdi0+bm9fYXV4X2hhbmRzaGFrZSB3YXMgcmVtb3ZlZCBp
biBjb21taXQKM2NmMmVmYjFhN2M2ICgiUmV2ZXJ0ICJkcm0vaTkxNS9kcDogdXNlIFZCVCBwcm92
aWRlZCBlRFAgcGFyYW1zIGlmCmF2YWlsYWJsZSIiKS4gRmluYWxseSByZW1vdmUgdGhlIGxlZnRv
dmVycy4KCkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KU2lnbmVk
LW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCA0IC0tLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICB8IDMgLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDcgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCmluZGV4IDEw
OTI0OTkxMTU3Ni4uNDg4NGM4N2M4ZWQ3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jCkBAIC00MTQ3LDEwICs0MTQ3LDYgQEAgaW50ZWxfZWRwX2luaXRfZHBjZChzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogCWRybV9kcF9yZWFkX2Rlc2MoJmludGVsX2RwLT5hdXgs
ICZpbnRlbF9kcC0+ZGVzYywKIAkJCSBkcm1fZHBfaXNfYnJhbmNoKGludGVsX2RwLT5kcGNkKSk7
CiAKLQlpZiAoaW50ZWxfZHAtPmRwY2RbRFBfRFBDRF9SRVZdID49IDB4MTEpCi0JCWRldl9wcml2
LT5ub19hdXhfaGFuZHNoYWtlID0gaW50ZWxfZHAtPmRwY2RbRFBfTUFYX0RPV05TUFJFQURdICYK
LQkJCURQX05PX0FVWF9IQU5EU0hBS0VfTElOS19UUkFJTklORzsKLQogCS8qCiAJICogUmVhZCB0
aGUgZURQIGRpc3BsYXkgY29udHJvbCByZWdpc3RlcnMuCiAJICoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oCmluZGV4IDBkMTk0OWE3OGM0NC4uNGI5NDRhMTI1ODkzIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmgKQEAgLTE0ODMsOSArMTQ4Myw2IEBAIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlIHsKIAkv
KiBiYWNrbGlnaHQgcmVnaXN0ZXJzIGFuZCBmaWVsZHMgaW4gc3RydWN0IGludGVsX3BhbmVsICov
CiAJc3RydWN0IG11dGV4IGJhY2tsaWdodF9sb2NrOwogCi0JLyogTFZEUyBpbmZvICovCi0JYm9v
bCBub19hdXhfaGFuZHNoYWtlOwotCiAJLyogcHJvdGVjdHMgcGFuZWwgcG93ZXIgc2VxdWVuY2Vy
IHN0YXRlICovCiAJc3RydWN0IG11dGV4IHBwc19tdXRleDsKIAotLSAKMi4yMC4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
