Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2260AA9533
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 23:34:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6C1189BFB;
	Wed,  4 Sep 2019 21:34:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 269BB89BFB
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 21:34:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 14:34:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,468,1559545200"; d="scan'208";a="199121716"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by fmsmga001.fm.intel.com with ESMTP; 04 Sep 2019 14:34:31 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Sep 2019 14:34:19 -0700
Message-Id: <20190904213419.27547-7-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190904213419.27547-1-jose.souza@intel.com>
References: <20190904213419.27547-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/tgl: add gen12 to stolen
 initialization
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CgpBZGQgY2Fz
ZSBmb3IgZ2VuID09IDEyIGFuZCBhZGQgTUlTU0lOR19DQVNFKCkgZm9yIGZ1dHVyZSBnZW5zLiBX
ZSB3ZXJlCmFscmVhZHkgaGFuZGxpbmcgZ2VuMTIgYXMgdGhlIGRlZmF1bHQsIHNvIHRoaXMgZG9l
c24ndCBjaGFuZ2UgdGhlCmN1cnJlbnQgYmVoYXZpb3IuCgpCU3BlYzogMTk0ODEgYW5kIDQ0OTgw
CgpDYzogQ1EgVGFuZyA8Y3EudGFuZ0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERl
IE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNYXR0IFJv
cGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9zdG9sZW4uYyB8IDUgKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fc3RvbGVuLmMKaW5kZXggYWE1MzNiNGFiNWY1Li43Y2U1MjU5ZDczZDYgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMKQEAgLTQyNSw4ICs0MjUsMTEgQEAg
aW50IGk5MTVfZ2VtX2luaXRfc3RvbGVuKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKIAkJCWJkd19nZXRfc3RvbGVuX3Jlc2VydmVkKGRldl9wcml2LAogCQkJCQkJJnJlc2VydmVk
X2Jhc2UsICZyZXNlcnZlZF9zaXplKTsKIAkJYnJlYWs7Ci0JY2FzZSAxMToKIAlkZWZhdWx0Ogor
CQlNSVNTSU5HX0NBU0UoSU5URUxfR0VOKGRldl9wcml2KSk7CisJCS8qIGZhbGwtdGhyb3VnaCAq
LworCWNhc2UgMTE6CisJY2FzZSAxMjoKIAkJaWNsX2dldF9zdG9sZW5fcmVzZXJ2ZWQoZGV2X3By
aXYsICZyZXNlcnZlZF9iYXNlLAogCQkJCQkmcmVzZXJ2ZWRfc2l6ZSk7CiAJCWJyZWFrOwotLSAK
Mi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
