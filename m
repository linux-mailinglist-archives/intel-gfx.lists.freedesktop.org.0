Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C68E6F5940
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 22:14:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4E766FA89;
	Fri,  8 Nov 2019 21:14:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10C196FA87
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 21:14:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 13:14:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,283,1569308400"; d="scan'208";a="213309414"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.10.155])
 by fmsmga001.fm.intel.com with ESMTP; 08 Nov 2019 13:14:37 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Nov 2019 13:13:53 -0800
Message-Id: <20191108211353.22288-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191108211353.22288-1-lucas.demarchi@intel.com>
References: <20191108211353.22288-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/bios: do not discard address space
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

V2hlbiB3ZSBtYXAgdGhlIFZCVCB0aHJvdWdoIHBjaV9tYXBfcm9tKCkgd2UgbWF5IG5vdCBiZSBh
bGxvd2VkCnRvIHNpbXBseSBkaXNjYXJkIHRoZSBhZGRyZXNzIHNwYWNlIGFuZCBnbyBvbiByZWFk
aW5nIHRoZSBtZW1vcnkuClRoYXQgZG9lc24ndCB3b3JrIG9uIG15IHRlc3Qgc3lzdGVtLCBidXQg
YnkgZHVtcGluZyB0aGUgcm9tIHZpYQpzeXNmcyBJIGNhbiBjYW4gZ2V0IHRoZSBjb3JyZWN0IHZi
dC4gU28gY2hhbmdlIG91ciBmaW5kX3ZidCgpIHRvIGRvCnRoZSBzYW1lIGFzIGRvbmUgYnkgcGNp
X3JlYWRfcm9tKCksIGkuZS4gdXNlIG1lbWNweV9mcm9taW8oKS4KCnYyOiB0aGUganVzdCB0aGUg
bWluaW1hbCBjaGFuZ2VzIGJ5IG5vdCBib3RoZXJpbmcgd2l0aCB0aGUgdW5hbGlnbmVkIGlvCnJl
YWRzOiB0aGlzIGNhbiBiZSBkb25lIG9uIHRvcCAoZnJvbSBWaWxsZSBhbmQgSmFuaSkKClNpZ25l
ZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIHwgNTEgKysrKysrKysr
KysrKysrKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzOSBpbnNlcnRpb25zKCspLCAxMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Jpb3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCmluZGV4
IGM3OTc4MWUxY2NiZi4uYzA3OWZlYmFlOWM4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Jpb3MuYwpAQCAtMTgxMSwyOCArMTgxMSw1MiBAQCBib29sIGludGVsX2Jpb3Nf
aXNfdmFsaWRfdmJ0KGNvbnN0IHZvaWQgKmJ1Ziwgc2l6ZV90IHNpemUpCiAJcmV0dXJuIHZidDsK
IH0KIAotc3RhdGljIGNvbnN0IHN0cnVjdCB2YnRfaGVhZGVyICpmaW5kX3ZidCh2b2lkIF9faW9t
ZW0gKm9wcm9tLCBzaXplX3Qgc2l6ZSkKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgdmJ0X2hlYWRlciAq
Y29weV92YnQodm9pZCBfX2lvbWVtICpvcHJvbSwgc2l6ZV90IHNpemUpCiB7CisJdm9pZCBfX2lv
bWVtICpwID0gTlVMTDsKKwlzdHJ1Y3QgdmJ0X2hlYWRlciAqdmJ0OworCXUxNiB2YnRfc2l6ZTsK
IAlzaXplX3QgaTsKIAogCS8qIFNjb3VyIG1lbW9yeSBsb29raW5nIGZvciB0aGUgVkJUIHNpZ25h
dHVyZS4gKi8KIAlmb3IgKGkgPSAwOyBpICsgNCA8IHNpemU7IGkrKykgewotCQl2b2lkICp2YnQ7
Ci0KIAkJaWYgKGlvcmVhZDMyKG9wcm9tICsgaSkgIT0gKigoY29uc3QgdTMyICopIiRWQlQiKSkK
IAkJCWNvbnRpbnVlOwogCi0JCS8qCi0JCSAqIFRoaXMgaXMgdGhlIG9uZSBwbGFjZSB3aGVyZSB3
ZSBleHBsaWNpdGx5IGRpc2NhcmQgdGhlIGFkZHJlc3MKLQkJICogc3BhY2UgKF9faW9tZW0pIG9m
IHRoZSBCSU9TL1ZCVC4KLQkJICovCi0JCXZidCA9ICh2b2lkIF9fZm9yY2UgKilvcHJvbSArIGk7
Ci0JCWlmIChpbnRlbF9iaW9zX2lzX3ZhbGlkX3ZidCh2YnQsIHNpemUgLSBpKSkKLQkJCXJldHVy
biB2YnQ7Ci0KKwkJcCA9IG9wcm9tICsgaTsKKwkJc2l6ZSAtPSBpOwogCQlicmVhazsKIAl9CiAK
KwlpZiAoIXApCisJCXJldHVybiBOVUxMOworCisJaWYgKHNpemVvZihzdHJ1Y3QgdmJ0X2hlYWRl
cikgPiBzaXplKSB7CisJCURSTV9ERUJVR19EUklWRVIoIlZCVCBoZWFkZXIgaW5jb21wbGV0ZVxu
Iik7CisJCXJldHVybiBOVUxMOworCX0KKworCXZidF9zaXplID0gaW9yZWFkMTYocCArIG9mZnNl
dG9mKHN0cnVjdCB2YnRfaGVhZGVyLCB2YnRfc2l6ZSkpOworCWlmICh2YnRfc2l6ZSA+IHNpemUp
IHsKKwkJRFJNX0RFQlVHX0RSSVZFUigiVkJUIGluY29tcGxldGUgKHZidF9zaXplIG92ZXJmbG93
cylcbiIpOworCQlyZXR1cm4gTlVMTDsKKwl9CisKKwkvKiBUaGUgcmVzdCB3aWxsIGJlIHZhbGlk
YXRlZCBieSBpbnRlbF9iaW9zX2lzX3ZhbGlkX3ZidCgpICovCisJdmJ0ID0ga21hbGxvYyh2YnRf
c2l6ZSwgR0ZQX0tFUk5FTCk7CisJaWYgKCF2YnQpCisJCXJldHVybiBOVUxMOworCisJbWVtY3B5
X2Zyb21pbyh2YnQsIHAsIHZidF9zaXplKTsKKworCWlmICghaW50ZWxfYmlvc19pc192YWxpZF92
YnQodmJ0LCB2YnRfc2l6ZSkpCisJCWdvdG8gZXJyX2ZyZWVfdmJ0OworCisJcmV0dXJuIHZidDsK
KworZXJyX2ZyZWVfdmJ0OgorCWtmcmVlKHZidCk7CisKIAlyZXR1cm4gTlVMTDsKIH0KIApAQCAt
MTg2Niw3ICsxODkwLDcgQEAgdm9pZCBpbnRlbF9iaW9zX2luaXQoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQogCQlpZiAoIW9wcm9tKQogCQkJZ290byBvdXQ7CiAKLQkJdmJ0ID0g
ZmluZF92YnQob3Byb20sIHNpemUpOworCQl2YnQgPSBjb3B5X3ZidChvcHJvbSwgc2l6ZSk7CiAJ
CWlmICghdmJ0KQogCQkJZ290byBvdXQ7CiAKQEAgLTE5MDIsNiArMTkyNiw5IEBAIHZvaWQgaW50
ZWxfYmlvc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAogCWlmIChv
cHJvbSkKIAkJcGNpX3VubWFwX3JvbShwZGV2LCBvcHJvbSk7CisKKwlpZiAodmJ0ICE9IGRldl9w
cml2LT5vcHJlZ2lvbi52YnQpCisJCWtmcmVlKHZidCk7CiB9CiAKIC8qKgotLSAKMi4yNC4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
