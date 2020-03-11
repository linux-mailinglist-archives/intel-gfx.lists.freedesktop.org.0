Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9BE18149A
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 10:20:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E0B96E950;
	Wed, 11 Mar 2020 09:20:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D66A06E950
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 09:20:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 02:20:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,540,1574150400"; d="scan'208";a="245979428"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga006.jf.intel.com with ESMTP; 11 Mar 2020 02:20:22 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Mar 2020 11:16:29 +0200
Message-Id: <20200311091629.9394-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200309161204.17792-2-stanislav.lisovskiy@intel.com>
References: <20200309161204.17792-2-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v19 1/8] drm/i915: Start passing latency as
 parameter
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgbmVlZCB0byBzdGFydCBwYXNzaW5nIG1lbW9yeSBsYXRlbmN5IGFzIGEKcGFyYW1ldGVyIHdo
ZW4gY2FsY3VsYXRpbmcgcGxhbmUgd20gbGV2ZWxzLAphcyBsYXRlbmN5IGNhbiBnZXQgY2hhbmdl
ZCBpbiBkaWZmZXJlbnQKY2lyY3Vtc3RhbmNlcyhmb3IgZXhhbXBsZSB3aXRoIG9yIHdpdGhvdXQg
U0FHVikuClNvIHdlIG5lZWQgdG8gYmUgbW9yZSBmbGV4aWJsZSBvbiB0aGF0IG1hdHRlci4KCnYy
OiBDaGFuZ2VkIGxhdGVuY3kgdHlwZSBmcm9tIHUzMiB0byB1bnNpZ25lZCBpbnQoVmlsbGUgU3ly
asOkbMOkKQoKUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xh
di5saXNvdnNraXlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bt
LmMgfCAxMiArKysrKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDQg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0u
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKaW5kZXggODM3NTA1NGJhMjdkLi5i
NjMyYjZiYjljM2UgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpAQCAtNDAxNiw2ICs0MDE2LDcg
QEAgc3RhdGljIGludCBza2xfY29tcHV0ZV93bV9wYXJhbXMoY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJCQkJIGludCBjb2xvcl9wbGFuZSk7CiBzdGF0aWMgdm9p
ZCBza2xfY29tcHV0ZV9wbGFuZV93bShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSwKIAkJCQkgaW50IGxldmVsLAorCQkJCSB1bnNpZ25lZCBpbnQgbGF0ZW5jeSwKIAkJ
CQkgY29uc3Qgc3RydWN0IHNrbF93bV9wYXJhbXMgKndwLAogCQkJCSBjb25zdCBzdHJ1Y3Qgc2ts
X3dtX2xldmVsICpyZXN1bHRfcHJldiwKIAkJCQkgc3RydWN0IHNrbF93bV9sZXZlbCAqcmVzdWx0
IC8qIG91dCAqLyk7CkBAIC00MDM4LDcgKzQwMzksOSBAQCBza2xfY3Vyc29yX2FsbG9jYXRpb24o
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJZHJtX1dBUk5fT04o
JmRldl9wcml2LT5kcm0sIHJldCk7CiAKIAlmb3IgKGxldmVsID0gMDsgbGV2ZWwgPD0gbWF4X2xl
dmVsOyBsZXZlbCsrKSB7Ci0JCXNrbF9jb21wdXRlX3BsYW5lX3dtKGNydGNfc3RhdGUsIGxldmVs
LCAmd3AsICZ3bSwgJndtKTsKKwkJdW5zaWduZWQgaW50IGxhdGVuY3kgPSBkZXZfcHJpdi0+d20u
c2tsX2xhdGVuY3lbbGV2ZWxdOworCisJCXNrbF9jb21wdXRlX3BsYW5lX3dtKGNydGNfc3RhdGUs
IGxldmVsLCBsYXRlbmN5LCAmd3AsICZ3bSwgJndtKTsKIAkJaWYgKHdtLm1pbl9kZGJfYWxsb2Mg
PT0gVTE2X01BWCkKIAkJCWJyZWFrOwogCkBAIC00OTcyLDEyICs0OTc1LDEyIEBAIHN0YXRpYyBi
b29sIHNrbF93bV9oYXNfbGluZXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBp
bnQgbGV2ZWwpCiAKIHN0YXRpYyB2b2lkIHNrbF9jb21wdXRlX3BsYW5lX3dtKGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQkJCSBpbnQgbGV2ZWwsCisJCQkJIHVu
c2lnbmVkIGludCBsYXRlbmN5LAogCQkJCSBjb25zdCBzdHJ1Y3Qgc2tsX3dtX3BhcmFtcyAqd3As
CiAJCQkJIGNvbnN0IHN0cnVjdCBza2xfd21fbGV2ZWwgKnJlc3VsdF9wcmV2LAogCQkJCSBzdHJ1
Y3Qgc2tsX3dtX2xldmVsICpyZXN1bHQgLyogb3V0ICovKQogewogCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjLT5kZXYpOwot
CXUzMiBsYXRlbmN5ID0gZGV2X3ByaXYtPndtLnNrbF9sYXRlbmN5W2xldmVsXTsKIAl1aW50X2Zp
eGVkXzE2XzE2X3QgbWV0aG9kMSwgbWV0aG9kMjsKIAl1aW50X2ZpeGVkXzE2XzE2X3Qgc2VsZWN0
ZWRfcmVzdWx0OwogCXUzMiByZXNfYmxvY2tzLCByZXNfbGluZXMsIG1pbl9kZGJfYWxsb2MgPSAw
OwpAQCAtNTEwNiw5ICs1MTA5LDEwIEBAIHNrbF9jb21wdXRlX3dtX2xldmVscyhjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAogCWZvciAobGV2ZWwgPSAwOyBsZXZl
bCA8PSBtYXhfbGV2ZWw7IGxldmVsKyspIHsKIAkJc3RydWN0IHNrbF93bV9sZXZlbCAqcmVzdWx0
ID0gJmxldmVsc1tsZXZlbF07CisJCXVuc2lnbmVkIGludCBsYXRlbmN5ID0gZGV2X3ByaXYtPndt
LnNrbF9sYXRlbmN5W2xldmVsXTsKIAotCQlza2xfY29tcHV0ZV9wbGFuZV93bShjcnRjX3N0YXRl
LCBsZXZlbCwgd21fcGFyYW1zLAotCQkJCSAgICAgcmVzdWx0X3ByZXYsIHJlc3VsdCk7CisJCXNr
bF9jb21wdXRlX3BsYW5lX3dtKGNydGNfc3RhdGUsIGxldmVsLCBsYXRlbmN5LAorCQkJCSAgICAg
d21fcGFyYW1zLCByZXN1bHRfcHJldiwgcmVzdWx0KTsKIAogCQlyZXN1bHRfcHJldiA9IHJlc3Vs
dDsKIAl9Ci0tIAoyLjI0LjEuNDg1LmdhZDA1YTNkOGU1CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
