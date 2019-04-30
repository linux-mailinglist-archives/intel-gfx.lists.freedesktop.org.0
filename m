Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4315B10312
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 01:06:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C94589244;
	Tue, 30 Apr 2019 23:06:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 030E6890A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 23:06:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 16:06:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,415,1549958400"; d="scan'208";a="320394789"
Received: from jssummer-desk.ra.intel.com ([10.54.134.159])
 by orsmga005.jf.intel.com with ESMTP; 30 Apr 2019 16:06:06 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Apr 2019 16:06:02 -0700
Message-Id: <20190430230606.8421-3-stuart.summers@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20190430230606.8421-1-stuart.summers@intel.com>
References: <20190430230606.8421-1-stuart.summers@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: Add macro for SSEU stride
 calculation
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

U3Vic2xpY2Ugc3RyaWRlIGFuZCBFVSBzdHJpZGUgYXJlIGNhbGN1bGF0ZWQgbXVsdGlwbGUgdGlt
ZXMgaW4KaTkxNV9xdWVyeS4gTW92ZSB0aGlzIGNhbGN1bGF0aW9uIHRvIGEgbWFjcm8gdG8gcmVk
dWNlIGNvZGUgZHVwbGljYXRpb24uCgp2MjogdXBkYXRlIGhlYWRlcnMgaW4gaW50ZWxfc3NldS5o
CgpDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogU3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5zdW1tZXJzQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmggfCAgMiArKwog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9xdWVyeS5jICAgIHwgMTcgKysrKysrKystLS0tLS0t
LS0KIDIgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmgKaW5kZXggNzNiYzgyNDA5NGU4Li5jMGIxNmIy
NDhkNGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmgKQEAgLTgsMTEgKzgsMTMg
QEAKICNkZWZpbmUgX19JTlRFTF9TU0VVX0hfXwogCiAjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4K
KyNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4KIAogc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7CiAK
ICNkZWZpbmUgR0VOX01BWF9TTElDRVMJCSg2KSAvKiBDTkwgdXBwZXIgYm91bmQgKi8KICNkZWZp
bmUgR0VOX01BWF9TVUJTTElDRVMJKDgpIC8qIElDTCB1cHBlciBib3VuZCAqLworI2RlZmluZSBH
RU5fU1NFVV9TVFJJREUoYml0cykgRElWX1JPVU5EX1VQKGJpdHMsIEJJVFNfUEVSX0JZVEUpCiAK
IHN0cnVjdCBzc2V1X2Rldl9pbmZvIHsKIAl1OCBzbGljZV9tYXNrOwpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9xdWVyeS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9xdWVyeS5jCmluZGV4IDc4MjE4M2I3OGY0OS4uN2MxNzA4YzIyODExIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3F1ZXJ5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9xdWVyeS5jCkBAIC0zNyw2ICszNyw4IEBAIHN0YXRpYyBpbnQgcXVlcnlfdG9wb2xv
Z3lfaW5mbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJY29uc3Qgc3RydWN0
IHNzZXVfZGV2X2luZm8gKnNzZXUgPSAmUlVOVElNRV9JTkZPKGRldl9wcml2KS0+c3NldTsKIAlz
dHJ1Y3QgZHJtX2k5MTVfcXVlcnlfdG9wb2xvZ3lfaW5mbyB0b3BvOwogCXUzMiBzbGljZV9sZW5n
dGgsIHN1YnNsaWNlX2xlbmd0aCwgZXVfbGVuZ3RoLCB0b3RhbF9sZW5ndGg7CisJdTggc3Vic2xp
Y2Vfc3RyaWRlID0gR0VOX1NTRVVfU1RSSURFKHNzZXUtPm1heF9zdWJzbGljZXMpOworCXU4IGV1
X3N0cmlkZSA9IEdFTl9TU0VVX1NUUklERShzc2V1LT5tYXhfZXVzX3Blcl9zdWJzbGljZSk7CiAJ
aW50IHJldDsKIAogCWlmIChxdWVyeV9pdGVtLT5mbGFncyAhPSAwKQpAQCAtNDgsMTIgKzUwLDEw
IEBAIHN0YXRpYyBpbnQgcXVlcnlfdG9wb2xvZ3lfaW5mbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsCiAJQlVJTERfQlVHX09OKHNpemVvZih1OCkgIT0gc2l6ZW9mKHNzZXUtPnNs
aWNlX21hc2spKTsKIAogCXNsaWNlX2xlbmd0aCA9IHNpemVvZihzc2V1LT5zbGljZV9tYXNrKTsK
LQlzdWJzbGljZV9sZW5ndGggPSBzc2V1LT5tYXhfc2xpY2VzICoKLQkJRElWX1JPVU5EX1VQKHNz
ZXUtPm1heF9zdWJzbGljZXMsIEJJVFNfUEVSX0JZVEUpOwotCWV1X2xlbmd0aCA9IHNzZXUtPm1h
eF9zbGljZXMgKiBzc2V1LT5tYXhfc3Vic2xpY2VzICoKLQkJRElWX1JPVU5EX1VQKHNzZXUtPm1h
eF9ldXNfcGVyX3N1YnNsaWNlLCBCSVRTX1BFUl9CWVRFKTsKLQotCXRvdGFsX2xlbmd0aCA9IHNp
emVvZih0b3BvKSArIHNsaWNlX2xlbmd0aCArIHN1YnNsaWNlX2xlbmd0aCArIGV1X2xlbmd0aDsK
KwlzdWJzbGljZV9sZW5ndGggPSBzc2V1LT5tYXhfc2xpY2VzICogc3Vic2xpY2Vfc3RyaWRlOwor
CWV1X2xlbmd0aCA9IHNzZXUtPm1heF9zbGljZXMgKiBzc2V1LT5tYXhfc3Vic2xpY2VzICogZXVf
c3RyaWRlOworCXRvdGFsX2xlbmd0aCA9IHNpemVvZih0b3BvKSArIHNsaWNlX2xlbmd0aCArIHN1
YnNsaWNlX2xlbmd0aCArCisJCSAgICAgICBldV9sZW5ndGg7CiAKIAlyZXQgPSBjb3B5X3F1ZXJ5
X2l0ZW0oJnRvcG8sIHNpemVvZih0b3BvKSwgdG90YWxfbGVuZ3RoLAogCQkJICAgICAgcXVlcnlf
aXRlbSk7CkBAIC02OSwxMCArNjksOSBAQCBzdGF0aWMgaW50IHF1ZXJ5X3RvcG9sb2d5X2luZm8o
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCXRvcG8ubWF4X2V1c19wZXJfc3Vi
c2xpY2UgPSBzc2V1LT5tYXhfZXVzX3Blcl9zdWJzbGljZTsKIAogCXRvcG8uc3Vic2xpY2Vfb2Zm
c2V0ID0gc2xpY2VfbGVuZ3RoOwotCXRvcG8uc3Vic2xpY2Vfc3RyaWRlID0gRElWX1JPVU5EX1VQ
KHNzZXUtPm1heF9zdWJzbGljZXMsIEJJVFNfUEVSX0JZVEUpOworCXRvcG8uc3Vic2xpY2Vfc3Ry
aWRlID0gc3Vic2xpY2Vfc3RyaWRlOwogCXRvcG8uZXVfb2Zmc2V0ID0gc2xpY2VfbGVuZ3RoICsg
c3Vic2xpY2VfbGVuZ3RoOwotCXRvcG8uZXVfc3RyaWRlID0KLQkJRElWX1JPVU5EX1VQKHNzZXUt
Pm1heF9ldXNfcGVyX3N1YnNsaWNlLCBCSVRTX1BFUl9CWVRFKTsKKwl0b3BvLmV1X3N0cmlkZSA9
IGV1X3N0cmlkZTsKIAogCWlmIChfX2NvcHlfdG9fdXNlcih1NjRfdG9fdXNlcl9wdHIocXVlcnlf
aXRlbS0+ZGF0YV9wdHIpLAogCQkJICAgJnRvcG8sIHNpemVvZih0b3BvKSkpCi0tIAoyLjIxLjAu
NS5nYWViNTgyYTk4MwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
