Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 231D319A301
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 02:40:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9B3C6E8B3;
	Wed,  1 Apr 2020 00:39:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B3FD6E8AA
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 00:39:55 +0000 (UTC)
IronPort-SDR: egRS2ojGqORiw9l9wukgvrT0khcMc0Bg06SOn3rUezs0e7WiZYTo/l/vyCrNkD9YCzhM9DTzMu
 TLegEGa4BEFQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 17:39:54 -0700
IronPort-SDR: U2gzBJcCMN2D5I5vzAZGOJhV4auV8nI5VY5/ko2ojOBAs0b3sayoR9fDpS9ROa0ALHA8FjorMF
 YZvnmnwAOsdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,329,1580803200"; d="scan'208";a="295169805"
Received: from akahan1-mobl3.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.252.143.47])
 by FMSMGA003.fm.intel.com with ESMTP; 31 Mar 2020 17:39:54 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Mar 2020 17:41:17 -0700
Message-Id: <20200401004120.408586-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200401004120.408586-1-jose.souza@intel.com>
References: <20200401004120.408586-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/6] drm/i915/display: Add
 intel_aux_ch_to_power_domain()
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
Cc: Cooper Chiou <cooper.chiou@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBpcyBhIHNpbWlsYXIgZnVuY3Rpb24gdG8gaW50ZWxfYXV4X3Bvd2VyX2RvbWFpbigpIGJ1
dCBpdCBkbyBub3QKY2FyZSBhYm91dCBUQlQgcG9ydHMsIHRoaXMgd2lsbCBiZSBuZWVkZWQgYnkg
R0VOMTEgVEMgc2VxdWVuY2VzLgoKQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4K
Q2M6IENvb3BlciBDaGlvdSA8Y29vcGVyLmNoaW91QGludGVsLmNvbT4KQ2M6IEthaS1IZW5nIEZl
bmcgPGthaS5oZW5nLmZlbmdAY2Fub25pY2FsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxNCArKysrKysrKysrKystLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggfCAgMiArKwogMiBmaWxlcyBj
aGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggZTA5YTExYjFlNTA5Li43ZTA2
ZDIzMDZkY2QgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCkBAIC03Mjc4LDcgKzcyNzgsMTcgQEAgaW50ZWxfYXV4X3Bvd2VyX2RvbWFpbihzdHJ1Y3Qg
aW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkKIAkJfQogCX0KIAotCXN3aXRjaCAoZGlnX3Bv
cnQtPmF1eF9jaCkgeworCXJldHVybiBpbnRlbF9hdXhfY2hfdG9fcG93ZXJfZG9tYWluKGRpZ19w
b3J0LT5hdXhfY2gpOworfQorCisvKgorICogQ29udmVydHMgYXV4X2NoIHRvIHBvd2VyX2RvbWFp
biB3aXRob3V0IGNhcmluZyBhYm91dCBUQlQgcG9ydHMgZm9yIHRoYXQgdXNlCisgKiBpbnRlbF9h
dXhfcG93ZXJfZG9tYWluKCkKKyAqLworZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbgor
aW50ZWxfYXV4X2NoX3RvX3Bvd2VyX2RvbWFpbihlbnVtIGF1eF9jaCBhdXhfY2gpCit7CisJc3dp
dGNoIChhdXhfY2gpIHsKIAljYXNlIEFVWF9DSF9BOgogCQlyZXR1cm4gUE9XRVJfRE9NQUlOX0FV
WF9BOwogCWNhc2UgQVVYX0NIX0I6CkBAIC03Mjk0LDcgKzczMDQsNyBAQCBpbnRlbF9hdXhfcG93
ZXJfZG9tYWluKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQogCWNhc2UgQVVY
X0NIX0c6CiAJCXJldHVybiBQT1dFUl9ET01BSU5fQVVYX0c7CiAJZGVmYXVsdDoKLQkJTUlTU0lO
R19DQVNFKGRpZ19wb3J0LT5hdXhfY2gpOworCQlNSVNTSU5HX0NBU0UoYXV4X2NoKTsKIAkJcmV0
dXJuIFBPV0VSX0RPTUFJTl9BVVhfQTsKIAl9CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5oCmluZGV4IGFkYjEyMjVhMzQ4MC4uYWQ1MDExOWMwNDUzIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaApAQCAtNTc5
LDYgKzU3OSw4IEBAIHZvaWQgaHN3X2Rpc2FibGVfaXBzKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKTsKIGVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4gaW50
ZWxfcG9ydF90b19wb3dlcl9kb21haW4oZW51bSBwb3J0IHBvcnQpOwogZW51bSBpbnRlbF9kaXNw
bGF5X3Bvd2VyX2RvbWFpbgogaW50ZWxfYXV4X3Bvd2VyX2RvbWFpbihzdHJ1Y3QgaW50ZWxfZGln
aXRhbF9wb3J0ICpkaWdfcG9ydCk7CitlbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluCitp
bnRlbF9hdXhfY2hfdG9fcG93ZXJfZG9tYWluKGVudW0gYXV4X2NoIGF1eF9jaCk7CiB2b2lkIGlu
dGVsX21vZGVfZnJvbV9waXBlX2NvbmZpZyhzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSwK
IAkJCQkgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnKTsKIHZvaWQgaW50ZWxf
Y3J0Y19hcm1fZmlmb191bmRlcnJ1bihzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKLS0gCjIuMjYu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
