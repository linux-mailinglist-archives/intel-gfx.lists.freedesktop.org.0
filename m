Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4431911322D
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 19:07:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C9156F491;
	Wed,  4 Dec 2019 18:07:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88AC46F491
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2019 18:07:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Dec 2019 10:06:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,278,1571727600"; d="scan'208";a="294263597"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 04 Dec 2019 10:06:12 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Dec 2019 20:06:11 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Dec 2019 20:05:46 +0200
Message-Id: <20191204180549.1267-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191204180549.1267-1-ville.syrjala@linux.intel.com>
References: <20191204180549.1267-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/9] drm/i915: Relocate intel_attached_dp()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IGhhdmUgdXNlcyBmb3IgaW50ZWxfYXR0YWNoZWRfZHAoKSBvdXRzaWRlIG9mIGludGVsX2RwLmMu
IE1vdmUKaXQgdG8gYSBoZWFkZXIuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIHwgNSArKysrKwogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAgICAgICAgfCA1IC0tLS0tCiAyIGZpbGVzIGNoYW5n
ZWQsIDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCmluZGV4IDc5Yzc0NTRmZjUx
MC4uOTJiZDNkMDRhZDgwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfdHlwZXMuaApAQCAtMTQ4Myw2ICsxNDgzLDExIEBAIHN0YXRpYyBpbmxp
bmUgc3RydWN0IGludGVsX2RwICplbmNfdG9faW50ZWxfZHAoc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXIpCiAJcmV0dXJuICZlbmNfdG9fZGlnX3BvcnQoZW5jb2RlciktPmRwOwogfQogCitz
dGF0aWMgaW5saW5lIHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfYXR0YWNoZWRfZHAoc3RydWN0IGlu
dGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQoreworCXJldHVybiBlbmNfdG9faW50ZWxfZHAoaW50
ZWxfYXR0YWNoZWRfZW5jb2Rlcihjb25uZWN0b3IpKTsKK30KKwogc3RhdGljIGlubGluZSBib29s
IGludGVsX2VuY29kZXJfaXNfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCiB7CiAJ
c3dpdGNoIChlbmNvZGVyLT50eXBlKSB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMKaW5kZXggOTNmM2QyMzJmY2I1Li41MGI5YjgxZDM3ZGIgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKQEAgLTE0NiwxMSArMTQ2LDYgQEAgYm9vbCBpbnRlbF9k
cF9pc19lZHAoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAlyZXR1cm4gaW50ZWxfZGlnX3Bv
cnQtPmJhc2UudHlwZSA9PSBJTlRFTF9PVVRQVVRfRURQOwogfQogCi1zdGF0aWMgc3RydWN0IGlu
dGVsX2RwICppbnRlbF9hdHRhY2hlZF9kcChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0
b3IpCi17Ci0JcmV0dXJuIGVuY190b19pbnRlbF9kcChpbnRlbF9hdHRhY2hlZF9lbmNvZGVyKGNv
bm5lY3RvcikpOwotfQotCiBzdGF0aWMgdm9pZCBpbnRlbF9kcF9saW5rX2Rvd24oc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCQkgICAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKm9sZF9jcnRjX3N0YXRlKTsKIHN0YXRpYyBib29sIGVkcF9wYW5lbF92ZGRfb24oc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCk7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
