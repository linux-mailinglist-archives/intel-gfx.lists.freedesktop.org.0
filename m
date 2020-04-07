Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E771A176E
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 23:38:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E2C36E906;
	Tue,  7 Apr 2020 21:38:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D30A6E902
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 21:38:27 +0000 (UTC)
IronPort-SDR: YCuYNc6a34vk56PJ9sK2mr0gdO7aoJJ/7k3bbOpv10B2kjJrlY5D3rh/o+1e9y5E5e8d2cVd7T
 SswyF+lGPVlg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 14:38:25 -0700
IronPort-SDR: Mmq0o79fRelOP9xE5Y+cGZqMZev4FeHb9iaOyOL0X4qlQ0vVO2UgQ6mUc8JyLhlL1v/UhVRH+3
 vp6QN5y1pDAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,356,1580803200"; d="scan'208";a="240081642"
Received: from mtadigot-mobl2.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.135.56.68])
 by orsmga007.jf.intel.com with ESMTP; 07 Apr 2020 14:38:24 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Apr 2020 14:39:54 -0700
Message-Id: <20200407214000.342933-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200407214000.342933-1-jose.souza@intel.com>
References: <20200407214000.342933-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/8] drm/i915/display: Add
 intel_legacy_aux_to_power_domain()
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
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 You-Sheng Yang <vicamo.yang@canonical.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBpcyBhIHNpbWlsYXIgZnVuY3Rpb24gdG8gaW50ZWxfYXV4X3Bvd2VyX2RvbWFpbigpIGJ1
dCBpdCBkbyBub3QKY2FyZSBhYm91dCBUQlQgcG9ydHMsIHRoaXMgd2lsbCBiZSBuZWVkZWQgYnkg
SUNMIFRDIHNlcXVlbmNlcy4KCnYyOgotIHJlbmFtZWQgdG8gaW50ZWxfbGVnYWN5X2F1eF90b19w
b3dlcl9kb21haW4oKQoKQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KQ2M6IENv
b3BlciBDaGlvdSA8Y29vcGVyLmNoaW91QGludGVsLmNvbT4KQ2M6IEthaS1IZW5nIEZlbmcgPGth
aS5oZW5nLmZlbmdAY2Fub25pY2FsLmNvbT4KUmV2aWV3ZWQtYnk6IEltcmUgRGVhayA8aW1yZS5k
ZWFrQGludGVsLmNvbT4KVGVzdGVkLWJ5OiBZb3UtU2hlbmcgWWFuZyA8dmljYW1vLnlhbmdAY2Fu
b25pY2FsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgfCAxNCArKysrKysrKysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmggfCAgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCAxNCBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKaW5kZXggNzBlYzMwMWZlNmUzLi5hOTU5NjBiNzEwMDEgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC03MjkxLDcgKzcyOTEs
MTcgQEAgaW50ZWxfYXV4X3Bvd2VyX2RvbWFpbihzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpk
aWdfcG9ydCkKIAkJfQogCX0KIAotCXN3aXRjaCAoZGlnX3BvcnQtPmF1eF9jaCkgeworCXJldHVy
biBpbnRlbF9sZWdhY3lfYXV4X3RvX3Bvd2VyX2RvbWFpbihkaWdfcG9ydC0+YXV4X2NoKTsKK30K
KworLyoKKyAqIENvbnZlcnRzIGF1eF9jaCB0byBwb3dlcl9kb21haW4gd2l0aG91dCBjYXJpbmcg
YWJvdXQgVEJUIHBvcnRzIGZvciB0aGF0IHVzZQorICogaW50ZWxfYXV4X3Bvd2VyX2RvbWFpbigp
CisgKi8KK2VudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4KK2ludGVsX2xlZ2FjeV9hdXhf
dG9fcG93ZXJfZG9tYWluKGVudW0gYXV4X2NoIGF1eF9jaCkKK3sKKwlzd2l0Y2ggKGF1eF9jaCkg
ewogCWNhc2UgQVVYX0NIX0E6CiAJCXJldHVybiBQT1dFUl9ET01BSU5fQVVYX0E7CiAJY2FzZSBB
VVhfQ0hfQjoKQEAgLTczMDcsNyArNzMxNyw3IEBAIGludGVsX2F1eF9wb3dlcl9kb21haW4oc3Ry
dWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpCiAJY2FzZSBBVVhfQ0hfRzoKIAkJcmV0
dXJuIFBPV0VSX0RPTUFJTl9BVVhfRzsKIAlkZWZhdWx0OgotCQlNSVNTSU5HX0NBU0UoZGlnX3Bv
cnQtPmF1eF9jaCk7CisJCU1JU1NJTkdfQ0FTRShhdXhfY2gpOwogCQlyZXR1cm4gUE9XRVJfRE9N
QUlOX0FVWF9BOwogCX0KIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmgKaW5kZXggY2M3ZjI4NzgwNGQ3Li44ZDg3MmVkMGRlMzYgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCkBAIC01ODMsNiArNTgzLDggQEAg
dm9pZCBoc3dfZGlzYWJsZV9pcHMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpOwogZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiBpbnRlbF9wb3J0X3RvX3Bv
d2VyX2RvbWFpbihlbnVtIHBvcnQgcG9ydCk7CiBlbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9t
YWluCiBpbnRlbF9hdXhfcG93ZXJfZG9tYWluKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRp
Z19wb3J0KTsKK2VudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4KK2ludGVsX2xlZ2FjeV9h
dXhfdG9fcG93ZXJfZG9tYWluKGVudW0gYXV4X2NoIGF1eF9jaCk7CiB2b2lkIGludGVsX21vZGVf
ZnJvbV9waXBlX2NvbmZpZyhzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSwKIAkJCQkgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnKTsKIHZvaWQgaW50ZWxfY3J0Y19hcm1f
Zmlmb191bmRlcnJ1bihzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKLS0gCjIuMjYuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
