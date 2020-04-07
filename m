Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4BF1A042B
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 03:10:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 567596E505;
	Tue,  7 Apr 2020 01:10:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 846E589BF4
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 01:10:23 +0000 (UTC)
IronPort-SDR: 4pi3VHbWrdSj/oxPXz/JlVrwKNYVP0/F9Ys2vp3zEQC5z+uw8lllGNrJiw75d74oFG5A5xBHc6
 mckVZr+z1aGQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 18:10:21 -0700
IronPort-SDR: bRzuy454/9XzMwPMIrJWHgph7gm4qxKhfB1td4jS/+64pPtBk416Lu+QBqpvOt7g9Cw5HmW9zV
 B8wcm2Udm/GQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,353,1580803200"; d="scan'208";a="254295620"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.15.8])
 by orsmga006.jf.intel.com with ESMTP; 06 Apr 2020 18:10:21 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Apr 2020 18:11:51 -0700
Message-Id: <20200407011157.362092-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200407011157.362092-1-jose.souza@intel.com>
References: <20200407011157.362092-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/8] drm/i915/display: Add
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
 Kai-Heng Feng <kai.heng.feng@canonical.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBpcyBhIHNpbWlsYXIgZnVuY3Rpb24gdG8gaW50ZWxfYXV4X3Bvd2VyX2RvbWFpbigpIGJ1
dCBpdCBkbyBub3QKY2FyZSBhYm91dCBUQlQgcG9ydHMsIHRoaXMgd2lsbCBiZSBuZWVkZWQgYnkg
SUNMIFRDIHNlcXVlbmNlcy4KCnYyOgotIHJlbmFtZWQgdG8gaW50ZWxfbGVnYWN5X2F1eF90b19w
b3dlcl9kb21haW4oKQoKQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KQ2M6IENv
b3BlciBDaGlvdSA8Y29vcGVyLmNoaW91QGludGVsLmNvbT4KQ2M6IEthaS1IZW5nIEZlbmcgPGth
aS5oZW5nLmZlbmdAY2Fub25pY2FsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxNCArKysrKysrKysrKystLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggfCAgMiArKwogMiBmaWxlcyBjaGFuZ2Vk
LCAxNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggNzBlYzMwMWZlNmUzLi5hOTU5NjBiNzEw
MDEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBA
IC03MjkxLDcgKzcyOTEsMTcgQEAgaW50ZWxfYXV4X3Bvd2VyX2RvbWFpbihzdHJ1Y3QgaW50ZWxf
ZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkKIAkJfQogCX0KIAotCXN3aXRjaCAoZGlnX3BvcnQtPmF1
eF9jaCkgeworCXJldHVybiBpbnRlbF9sZWdhY3lfYXV4X3RvX3Bvd2VyX2RvbWFpbihkaWdfcG9y
dC0+YXV4X2NoKTsKK30KKworLyoKKyAqIENvbnZlcnRzIGF1eF9jaCB0byBwb3dlcl9kb21haW4g
d2l0aG91dCBjYXJpbmcgYWJvdXQgVEJUIHBvcnRzIGZvciB0aGF0IHVzZQorICogaW50ZWxfYXV4
X3Bvd2VyX2RvbWFpbigpCisgKi8KK2VudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4KK2lu
dGVsX2xlZ2FjeV9hdXhfdG9fcG93ZXJfZG9tYWluKGVudW0gYXV4X2NoIGF1eF9jaCkKK3sKKwlz
d2l0Y2ggKGF1eF9jaCkgewogCWNhc2UgQVVYX0NIX0E6CiAJCXJldHVybiBQT1dFUl9ET01BSU5f
QVVYX0E7CiAJY2FzZSBBVVhfQ0hfQjoKQEAgLTczMDcsNyArNzMxNyw3IEBAIGludGVsX2F1eF9w
b3dlcl9kb21haW4oc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpCiAJY2FzZSBB
VVhfQ0hfRzoKIAkJcmV0dXJuIFBPV0VSX0RPTUFJTl9BVVhfRzsKIAlkZWZhdWx0OgotCQlNSVNT
SU5HX0NBU0UoZGlnX3BvcnQtPmF1eF9jaCk7CisJCU1JU1NJTkdfQ0FTRShhdXhfY2gpOwogCQly
ZXR1cm4gUE9XRVJfRE9NQUlOX0FVWF9BOwogCX0KIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKaW5kZXggY2M3ZjI4NzgwNGQ3Li44ZDg3MmVkMGRlMzYg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCkBAIC01
ODMsNiArNTgzLDggQEAgdm9pZCBoc3dfZGlzYWJsZV9pcHMoY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUpOwogZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiBp
bnRlbF9wb3J0X3RvX3Bvd2VyX2RvbWFpbihlbnVtIHBvcnQgcG9ydCk7CiBlbnVtIGludGVsX2Rp
c3BsYXlfcG93ZXJfZG9tYWluCiBpbnRlbF9hdXhfcG93ZXJfZG9tYWluKHN0cnVjdCBpbnRlbF9k
aWdpdGFsX3BvcnQgKmRpZ19wb3J0KTsKK2VudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4K
K2ludGVsX2xlZ2FjeV9hdXhfdG9fcG93ZXJfZG9tYWluKGVudW0gYXV4X2NoIGF1eF9jaCk7CiB2
b2lkIGludGVsX21vZGVfZnJvbV9waXBlX2NvbmZpZyhzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAq
bW9kZSwKIAkJCQkgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnKTsKIHZvaWQg
aW50ZWxfY3J0Y19hcm1fZmlmb191bmRlcnJ1bihzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKLS0g
CjIuMjYuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
