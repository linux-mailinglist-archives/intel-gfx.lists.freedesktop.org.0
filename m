Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4068490FBB
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Aug 2019 11:39:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A57F56E30E;
	Sat, 17 Aug 2019 09:39:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CED8889548
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Aug 2019 09:39:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Aug 2019 02:39:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,396,1559545200"; d="scan'208";a="376950668"
Received: from vidyashr-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.251.152.227])
 by fmsmga005.fm.intel.com with ESMTP; 17 Aug 2019 02:39:38 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 17 Aug 2019 02:38:39 -0700
Message-Id: <20190817093902.2171-18-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190817093902.2171-1-lucas.demarchi@intel.com>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 17/40] drm: Add
 for_each_oldnew_intel_crtc_in_state_reverse()
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpTYW1l
IGFzIGZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKCkgYnV0IGl0ZXJhdGVzIGlu
IHJldmVyc2UKb3JkZXIuCgp2MjogRml4IGFkZGl0aW9uYWwgYmxhbmsgbGluZQoKQ2M6IFJvZHJp
Z28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBN
YXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCB8IDkgKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwg
OSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuaAppbmRleCBmZDMwNDNlNzdiNTAuLmI2M2ZiN2E0NTk5ZSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKQEAgLTQxOSw2ICs0MTksMTUgQEAg
ZW51bSBwaHlfZmlhIHsKIAkJCSAgICAgKChjb25uZWN0b3IpID0gdG9faW50ZWxfY29ubmVjdG9y
KChfX3N0YXRlKS0+YmFzZS5jb25uZWN0b3JzW19faV0ucHRyKSwgXAogCQkJICAgICAobmV3X2Nv
bm5lY3Rvcl9zdGF0ZSkgPSB0b19pbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZSgoX19zdGF0
ZSktPmJhc2UuY29ubmVjdG9yc1tfX2ldLm5ld19zdGF0ZSksIDEpKQogCisjZGVmaW5lIGZvcl9l
YWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlX3JldmVyc2UoX19zdGF0ZSwgY3J0Yywgb2xk
X2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRlLCBfX2kpIFwKKwlmb3IgKChfX2kpID0gKF9fc3Rh
dGUpLT5iYXNlLmRldi0+bW9kZV9jb25maWcubnVtX2NydGMgLSAxOyBcCisJICAgICAoX19pKSA+
PSAwICAmJiBcCisJICAgICAoKGNydGMpID0gdG9faW50ZWxfY3J0YygoX19zdGF0ZSktPmJhc2Uu
Y3J0Y3NbX19pXS5wdHIpLCBcCisJICAgICAgKG9sZF9jcnRjX3N0YXRlKSA9IHRvX2ludGVsX2Ny
dGNfc3RhdGUoKF9fc3RhdGUpLT5iYXNlLmNydGNzW19faV0ub2xkX3N0YXRlKSwgXAorCSAgICAg
IChuZXdfY3J0Y19zdGF0ZSkgPSB0b19pbnRlbF9jcnRjX3N0YXRlKChfX3N0YXRlKS0+YmFzZS5j
cnRjc1tfX2ldLm5ld19zdGF0ZSksIDEpOyBcCisJICAgICAoX19pKS0tKSBcCisJCWZvcl9lYWNo
X2lmKGNydGMpCisKIHZvaWQgaW50ZWxfbGlua19jb21wdXRlX21fbih1MTYgYnBwLCBpbnQgbmxh
bmVzLAogCQkJICAgIGludCBwaXhlbF9jbG9jaywgaW50IGxpbmtfY2xvY2ssCiAJCQkgICAgc3Ry
dWN0IGludGVsX2xpbmtfbV9uICptX24sCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
