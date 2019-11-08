Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28316F3CEE
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 01:36:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF3A86F81A;
	Fri,  8 Nov 2019 00:36:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C98E6F817
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 00:36:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 16:36:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,279,1569308400"; d="scan'208";a="205843068"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.10.155])
 by orsmga003.jf.intel.com with ESMTP; 07 Nov 2019 16:36:18 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Nov 2019 16:36:00 -0800
Message-Id: <20191108003602.33526-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191108003602.33526-1-lucas.demarchi@intel.com>
References: <20191108003602.33526-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/bios: rename bios to oprom when
 mapping pci rom
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

b3Byb20gaXMgYWN0dWFsbHkgYSBiZXR0ZXIgbmFtZSB0byB1c2Ugd2hlbiB1c2luZwpwY2lfbWFw
X3JvbSgpLiAiYmlvcyIgIGlzIHdheSB0b28gZ2VuZXJpYyBhbmQgY29uZnVzaW5nLgoKU2lnbmVk
LW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgfCAxOCArKysrKysrKyst
LS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwppbmRleCBhMDNmNTZi
N2I0ZWYuLjFmODM2MTZjZmMzMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9iaW9zLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9iaW9zLmMKQEAgLTE4MDQsNyArMTgwNCw3IEBAIGJvb2wgaW50ZWxfYmlvc19pc192YWxpZF92
YnQoY29uc3Qgdm9pZCAqYnVmLCBzaXplX3Qgc2l6ZSkKIAlyZXR1cm4gdmJ0OwogfQogCi1zdGF0
aWMgY29uc3Qgc3RydWN0IHZidF9oZWFkZXIgKmZpbmRfdmJ0KHZvaWQgX19pb21lbSAqYmlvcywg
c2l6ZV90IHNpemUpCitzdGF0aWMgY29uc3Qgc3RydWN0IHZidF9oZWFkZXIgKmZpbmRfdmJ0KHZv
aWQgX19pb21lbSAqb3Byb20sIHNpemVfdCBzaXplKQogewogCXNpemVfdCBpOwogCkBAIC0xODEy
LDE0ICsxODEyLDE0IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgdmJ0X2hlYWRlciAqZmluZF92YnQo
dm9pZCBfX2lvbWVtICpiaW9zLCBzaXplX3Qgc2l6ZSkKIAlmb3IgKGkgPSAwOyBpICsgNCA8IHNp
emU7IGkrKykgewogCQl2b2lkICp2YnQ7CiAKLQkJaWYgKGlvcmVhZDMyKGJpb3MgKyBpKSAhPSAq
KChjb25zdCB1MzIgKikgIiRWQlQiKSkKKwkJaWYgKGlvcmVhZDMyKG9wcm9tICsgaSkgIT0gKigo
Y29uc3QgdTMyICopIiRWQlQiKSkKIAkJCWNvbnRpbnVlOwogCiAJCS8qCiAJCSAqIFRoaXMgaXMg
dGhlIG9uZSBwbGFjZSB3aGVyZSB3ZSBleHBsaWNpdGx5IGRpc2NhcmQgdGhlIGFkZHJlc3MKIAkJ
ICogc3BhY2UgKF9faW9tZW0pIG9mIHRoZSBCSU9TL1ZCVC4KIAkJICovCi0JCXZidCA9ICh2b2lk
IF9fZm9yY2UgKikgYmlvcyArIGk7CisJCXZidCA9ICh2b2lkIF9fZm9yY2UgKilvcHJvbSArIGk7
CiAJCWlmIChpbnRlbF9iaW9zX2lzX3ZhbGlkX3ZidCh2YnQsIHNpemUgLSBpKSkKIAkJCXJldHVy
biB2YnQ7CiAKQEAgLTE4NDIsNyArMTg0Miw3IEBAIHZvaWQgaW50ZWxfYmlvc19pbml0KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlzdHJ1Y3QgcGNpX2RldiAqcGRldiA9IGRl
dl9wcml2LT5kcm0ucGRldjsKIAljb25zdCBzdHJ1Y3QgdmJ0X2hlYWRlciAqdmJ0ID0gZGV2X3By
aXYtPm9wcmVnaW9uLnZidDsKIAljb25zdCBzdHJ1Y3QgYmRiX2hlYWRlciAqYmRiOwotCXU4IF9f
aW9tZW0gKmJpb3MgPSBOVUxMOworCXU4IF9faW9tZW0gKm9wcm9tID0gTlVMTDsKIAogCWlmICgh
SEFTX0RJU1BMQVkoZGV2X3ByaXYpIHx8ICFJTlRFTF9ESVNQTEFZX0VOQUJMRUQoZGV2X3ByaXYp
KSB7CiAJCURSTV9ERUJVR19LTVMoIlNraXBwaW5nIFZCVCBpbml0IGR1ZSB0byBkaXNhYmxlZCBk
aXNwbGF5LlxuIik7CkBAIC0xODU1LDExICsxODU1LDExIEBAIHZvaWQgaW50ZWxfYmlvc19pbml0
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlpZiAoIXZidCkgewogCQlzaXpl
X3Qgc2l6ZTsKIAotCQliaW9zID0gcGNpX21hcF9yb20ocGRldiwgJnNpemUpOwotCQlpZiAoIWJp
b3MpCisJCW9wcm9tID0gcGNpX21hcF9yb20ocGRldiwgJnNpemUpOworCQlpZiAoIW9wcm9tKQog
CQkJZ290byBvdXQ7CiAKLQkJdmJ0ID0gZmluZF92YnQoYmlvcywgc2l6ZSk7CisJCXZidCA9IGZp
bmRfdmJ0KG9wcm9tLCBzaXplKTsKIAkJaWYgKCF2YnQpCiAJCQlnb3RvIG91dDsKIApAQCAtMTg5
Myw4ICsxODkzLDggQEAgdm9pZCBpbnRlbF9iaW9zX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KQogCQlpbml0X3ZidF9taXNzaW5nX2RlZmF1bHRzKGRldl9wcml2KTsKIAl9
CiAKLQlpZiAoYmlvcykKLQkJcGNpX3VubWFwX3JvbShwZGV2LCBiaW9zKTsKKwlpZiAob3Byb20p
CisJCXBjaV91bm1hcF9yb20ocGRldiwgb3Byb20pOwogfQogCiAvKioKLS0gCjIuMjMuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
