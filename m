Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A15415964D
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 18:39:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E3E56F3EA;
	Tue, 11 Feb 2020 17:39:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 181A76F3EA
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 17:39:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 09:36:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="380503908"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga004.jf.intel.com with ESMTP; 11 Feb 2020 09:36:47 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Feb 2020 22:55:29 +0530
Message-Id: <20200211172532.14287-5-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200211172532.14287-1-anshuman.gupta@intel.com>
References: <20200211172532.14287-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 4/7] drm/i915: Fix wrongly populated plane
 possible_crtcs bit mask
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

QXMgYSBkaXNhYmxlZCBwaXBlIGluIHBpcGVfbWFzayBpcyBub3QgaGF2aW5nIGEgdmFsaWQgaW50
ZWwgY3J0YywKZHJpdmVyIHdyb25nbHkgcG9wdWxhdGVzIHRoZSBwb3NzaWJsZV9jcnRjcyBtYXNr
IHdoaWxlIGluaXRpYWxpemluZwp0aGUgcGxhbmUgZm9yIGEgQ1JUQy4gRml4aW5nIHVwIHRoZSBw
bGFuZSBwb3NzaWJsZV9jcnRjcyBtYXNrLgoKY2hhbmdlcyBzaW5jZSBSRkM6Ci0gU2ltcGxpZnkg
dGhlIHBvc3NpYmxlX2NydGNzIGluaXRpYWxpemF0aW9uLiBbVmlsbGVdCgp2MjoKLSBSZW1vdmVk
IHRoZSB1bm5lY2Vzc2FyeSBzdGFjayBnYXJiYWdlIHBvc3NpYmxlX2NydGNzIHRvCiAgZHJtX3Vu
aXZlcnNhbF9wbGFuZV9pbml0LiBbVmlsbGVdCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQW5zaHVtYW4gR3VwdGEgPGFu
c2h1bWFuLmd1cHRhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyB8IDEzICsrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgIHwgIDUgKy0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgMTQg
aW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGEzNjQ5MDIwZWE5Ny4uNWJhMGI0MGZiZmRlIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTY3
NjgsNiArMTY3NjgsMTggQEAgc3RhdGljIHZvaWQgaW50ZWxfY3J0Y19mcmVlKHN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjKQogCWtmcmVlKGNydGMpOwogfQogCitzdGF0aWMgdm9pZCBpbnRlbF9wbGFu
ZV9wb3NzaWJsZV9jcnRjc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikK
K3sKKwlzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lOworCisJZm9yX2VhY2hfaW50ZWxfcGxhbmUo
JmRldl9wcml2LT5kcm0sIHBsYW5lKSB7CisJCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOworCisJ
CWNydGMgPSBpbnRlbF9nZXRfY3J0Y19mb3JfcGlwZShkZXZfcHJpdiwgcGxhbmUtPnBpcGUpOwor
CQlwbGFuZS0+YmFzZS5wb3NzaWJsZV9jcnRjcyA9IGRybV9jcnRjX21hc2soJmNydGMtPmJhc2Up
OworCX0KK30KKwogc3RhdGljIGludCBpbnRlbF9jcnRjX2luaXQoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LCBlbnVtIHBpcGUgcGlwZSkKIHsKIAlzdHJ1Y3QgaW50ZWxfcGxhbmUg
KnByaW1hcnksICpjdXJzb3I7CkBAIC0xNzk2NCw2ICsxNzk3Niw3IEBAIGludCBpbnRlbF9tb2Rl
c2V0X2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJCX0KIAl9CiAKKwlpbnRl
bF9wbGFuZV9wb3NzaWJsZV9jcnRjc19pbml0KGk5MTUpOwogCWludGVsX3NoYXJlZF9kcGxsX2lu
aXQoZGV2KTsKIAlpbnRlbF91cGRhdGVfZmRpX3BsbF9mcmVxKGk5MTUpOwogCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwppbmRleCA3YWJlZWZlOGRjZTUuLmI1
YzdiMjcxYTFhNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9zcHJpdGUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0
ZS5jCkBAIC0zMDExLDcgKzMwMTEsNiBAQCBza2xfdW5pdmVyc2FsX3BsYW5lX2NyZWF0ZShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJc3RydWN0IGludGVsX3BsYW5lICpwbGFu
ZTsKIAllbnVtIGRybV9wbGFuZV90eXBlIHBsYW5lX3R5cGU7CiAJdW5zaWduZWQgaW50IHN1cHBv
cnRlZF9yb3RhdGlvbnM7Ci0JdW5zaWduZWQgaW50IHBvc3NpYmxlX2NydGNzOwogCWNvbnN0IHU2
NCAqbW9kaWZpZXJzOwogCWNvbnN0IHUzMiAqZm9ybWF0czsKIAlpbnQgbnVtX2Zvcm1hdHM7CkBA
IC0zMDY2LDEwICszMDY1LDggQEAgc2tsX3VuaXZlcnNhbF9wbGFuZV9jcmVhdGUoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCWVsc2UKIAkJcGxhbmVfdHlwZSA9IERSTV9QTEFO
RV9UWVBFX09WRVJMQVk7CiAKLQlwb3NzaWJsZV9jcnRjcyA9IEJJVChwaXBlKTsKLQogCXJldCA9
IGRybV91bml2ZXJzYWxfcGxhbmVfaW5pdCgmZGV2X3ByaXYtPmRybSwgJnBsYW5lLT5iYXNlLAot
CQkJCSAgICAgICBwb3NzaWJsZV9jcnRjcywgcGxhbmVfZnVuY3MsCisJCQkJICAgICAgIDAsIHBs
YW5lX2Z1bmNzLAogCQkJCSAgICAgICBmb3JtYXRzLCBudW1fZm9ybWF0cywgbW9kaWZpZXJzLAog
CQkJCSAgICAgICBwbGFuZV90eXBlLAogCQkJCSAgICAgICAicGxhbmUgJWQlYyIsIHBsYW5lX2lk
ICsgMSwKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
