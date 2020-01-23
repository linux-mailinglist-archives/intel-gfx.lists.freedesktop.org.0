Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C97BD146938
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 14:36:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA6AE6FCB7;
	Thu, 23 Jan 2020 13:36:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B48EE6FA26
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 13:36:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 05:36:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,354,1574150400"; d="scan'208";a="216259552"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga007.jf.intel.com with ESMTP; 23 Jan 2020 05:36:30 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jan 2020 18:56:55 +0530
Message-Id: <20200123132659.725-3-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200123132659.725-1-anshuman.gupta@intel.com>
References: <20200123132659.725-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 2/6] drm/i915: Remove (pipe == crtc->index)
 asummption
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

d2UgY2FuJ3QgaGF2ZSAocGlwZSA9PSBjcnRjLT5pbmRleCkgYXNzdW1wdGlvbiBpbgpkcml2ZXIg
aW4gb3JkZXIgdG8gc3VwcG9ydCAzIG5vbi1jb250aWd1b3VzCmRpc3BsYXkgcGlwZSBzeXN0ZW0u
CgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDEwICsrKyst
LS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA4Nzhk
MzMxYjllOGMuLmFmZDhkNDMxNjBjNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKQEAgLTE0MDcwLDExICsxNDA3MCwxMSBAQCB2ZXJpZnlfc2luZ2xl
X2RwbGxfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCWlmIChuZXdf
Y3J0Y19zdGF0ZS0+aHcuYWN0aXZlKQogCQlJOTE1X1NUQVRFX1dBUk4oIShwbGwtPmFjdGl2ZV9t
YXNrICYgY3J0Y19tYXNrKSwKIAkJCQkicGxsIGFjdGl2ZSBtaXNtYXRjaCAoZXhwZWN0ZWQgcGlw
ZSAlYyBpbiBhY3RpdmUgbWFzayAweCUwMngpXG4iLAotCQkJCXBpcGVfbmFtZShkcm1fY3J0Y19p
bmRleCgmY3J0Yy0+YmFzZSkpLCBwbGwtPmFjdGl2ZV9tYXNrKTsKKwkJCQlwaXBlX25hbWUoY3J0
Yy0+cGlwZSksIHBsbC0+YWN0aXZlX21hc2spOwogCWVsc2UKIAkJSTkxNV9TVEFURV9XQVJOKHBs
bC0+YWN0aXZlX21hc2sgJiBjcnRjX21hc2ssCiAJCQkJInBsbCBhY3RpdmUgbWlzbWF0Y2ggKGRp
ZG4ndCBleHBlY3QgcGlwZSAlYyBpbiBhY3RpdmUgbWFzayAweCUwMngpXG4iLAotCQkJCXBpcGVf
bmFtZShkcm1fY3J0Y19pbmRleCgmY3J0Yy0+YmFzZSkpLCBwbGwtPmFjdGl2ZV9tYXNrKTsKKwkJ
CQlwaXBlX25hbWUoY3J0Yy0+cGlwZSksIHBsbC0+YWN0aXZlX21hc2spOwogCiAJSTkxNV9TVEFU
RV9XQVJOKCEocGxsLT5zdGF0ZS5jcnRjX21hc2sgJiBjcnRjX21hc2spLAogCQkJInBsbCBlbmFi
bGVkIGNydGNzIG1pc21hdGNoIChleHBlY3RlZCAweCV4IGluIDB4JTAyeClcbiIsCkBAIC0xNDEw
MywxMCArMTQxMDMsMTAgQEAgdmVyaWZ5X3NoYXJlZF9kcGxsX3N0YXRlKHN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjLAogCiAJCUk5MTVfU1RBVEVfV0FSTihwbGwtPmFjdGl2ZV9tYXNrICYgY3J0Y19t
YXNrLAogCQkJCSJwbGwgYWN0aXZlIG1pc21hdGNoIChkaWRuJ3QgZXhwZWN0IHBpcGUgJWMgaW4g
YWN0aXZlIG1hc2spXG4iLAotCQkJCXBpcGVfbmFtZShkcm1fY3J0Y19pbmRleCgmY3J0Yy0+YmFz
ZSkpKTsKKwkJCQlwaXBlX25hbWUoY3J0Yy0+cGlwZSkpOwogCQlJOTE1X1NUQVRFX1dBUk4ocGxs
LT5zdGF0ZS5jcnRjX21hc2sgJiBjcnRjX21hc2ssCiAJCQkJInBsbCBlbmFibGVkIGNydGNzIG1p
c21hdGNoIChmb3VuZCAleCBpbiBlbmFibGVkIG1hc2spXG4iLAotCQkJCXBpcGVfbmFtZShkcm1f
Y3J0Y19pbmRleCgmY3J0Yy0+YmFzZSkpKTsKKwkJCQlwaXBlX25hbWUoY3J0Yy0+cGlwZSkpOwog
CX0KIH0KIApAQCAtMTY0ODUsOCArMTY0ODUsNiBAQCBzdGF0aWMgaW50IGludGVsX2NydGNfaW5p
dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcGlwZSBwaXBlKQogCiAJ
aW50ZWxfY29sb3JfaW5pdChjcnRjKTsKIAotCVdBUk5fT04oZHJtX2NydGNfaW5kZXgoJmNydGMt
PmJhc2UpICE9IGNydGMtPnBpcGUpOwotCiAJcmV0dXJuIDA7CiAKIGZhaWw6Ci0tIAoyLjI0LjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
