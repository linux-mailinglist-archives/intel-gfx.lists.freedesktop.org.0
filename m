Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E288A62010
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 16:07:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FA6A89D8A;
	Mon,  8 Jul 2019 14:07:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2D7989D81
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 14:07:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 07:07:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,466,1557212400"; d="scan'208";a="167685861"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga003.jf.intel.com with ESMTP; 08 Jul 2019 07:07:49 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jul 2019 17:07:35 +0300
Message-Id: <20190708140735.20198-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190708140735.20198-1-imre.deak@intel.com>
References: <20190708140735.20198-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/icl: Clear the shared port PLLs
 from the new crtc state
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

Rm9yIGNvbnNpc3RlbmN5IGNsZWFyIHRoZSBpY2xfcG9ydF9kcGxscyBmcm9tIHRoZSBuZXcgY3J0
YyBzdGF0ZSwgd2hlbgpyZWxlYXNpbmcgdGhlIERQTExzIGZyb20gdGhlIG9sZCBjcnRjIHN0YXRl
LiBMZWF2aW5nIHRoZW0gc2V0IGNvdWxkCnJlc3VsdCBpbiByZWxlYXNpbmcgdGhlIHNhbWUgUExM
cyBtdWx0aXBsZSB0aW1lcyBmcm9tIHRoZSBzYW1lIENSVEMKc3RhdGUgaW5jb3JyZWN0bHkgKGlm
IHRoZSBzYW1lIENSVEMgd2FzIGZpcnN0IHVzZWQgZm9yIGEgVHlwZUMgcG9ydCB0aGVuCmZvciBh
IGNvbWJvIFBIWSBwb3J0KS4KCkxlYXZpbmcgdGhlIHN0YWxlIHBvaW50ZXJzIGJlaGluZCBoYXBw
ZW5zIG5vdCB0byBjYXVzZSBhIHByb2JsZW0gYXRtCihzaW5jZSB0aGUgaW5jb3JyZWN0IHJlbGVh
c2luZyB3aWxsIGJlIGEgTk9QKSwgYnV0IHdlIG5lZWQgdG8gZml4IHRoYXQKZm9yIGNvbnNpc3Rl
bmN5LgoKU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgpSZXZp
ZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMgfCAxMiAr
KysrKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxs
X21nci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCmlu
ZGV4IDVjMThmOTAxMjA2Mi4uMzBkNzUwMGViNjZjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCkBAIC0zMDI4LDE1ICszMDI4LDE3IEBAIHN0YXRp
YyB2b2lkIGljbF9wdXRfZHBsbHMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJ
bmV3X2NydGNfc3RhdGUtPnNoYXJlZF9kcGxsID0gTlVMTDsKIAogCWZvciAoaWQgPSBJQ0xfUE9S
VF9EUExMX0RFRkFVTFQ7IGlkIDwgSUNMX1BPUlRfRFBMTF9DT1VOVDsgaWQrKykgewotCQljb25z
dCBzdHJ1Y3QgaWNsX3BvcnRfZHBsbCAqcG9ydF9kcGxsID0KKwkJY29uc3Qgc3RydWN0IGljbF9w
b3J0X2RwbGwgKm9sZF9wb3J0X2RwbGwgPQogCQkJJm9sZF9jcnRjX3N0YXRlLT5pY2xfcG9ydF9k
cGxsc1tpZF07CisJCXN0cnVjdCBpY2xfcG9ydF9kcGxsICpuZXdfcG9ydF9kcGxsID0KKwkJCSZu
ZXdfY3J0Y19zdGF0ZS0+aWNsX3BvcnRfZHBsbHNbaWRdOwogCi0JCWlmICghcG9ydF9kcGxsLT5w
bGwpCi0JCQljb250aW51ZTsKKwkJbmV3X3BvcnRfZHBsbC0+cGxsID0gTlVMTDsKIAotCQlpbnRl
bF91bnJlZmVyZW5jZV9zaGFyZWRfZHBsbChzdGF0ZSwgY3J0YywgcG9ydF9kcGxsLT5wbGwpOwor
CQlpZiAoIW9sZF9wb3J0X2RwbGwtPnBsbCkKKwkJCWNvbnRpbnVlOwogCi0JCS8qIEZJWE1FOiBD
bGVhciB0aGUgaWNsX3BvcnRfZHBsbHMgZnJvbSB0aGUgbmV3IGNydGMgc3RhdGUgKi8KKwkJaW50
ZWxfdW5yZWZlcmVuY2Vfc2hhcmVkX2RwbGwoc3RhdGUsIGNydGMsIG9sZF9wb3J0X2RwbGwtPnBs
bCk7CiAJfQogfQogCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
