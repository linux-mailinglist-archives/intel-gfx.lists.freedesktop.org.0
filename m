Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE4786360
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 15:44:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBE556E843;
	Thu,  8 Aug 2019 13:44:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A3136E83D
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 13:44:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 06:38:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,361,1559545200"; d="scan'208";a="193158147"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 08 Aug 2019 06:38:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Aug 2019 16:42:44 +0300
Message-Id: <d7826e365695f691a3ac69a69ff6f2bbdb62700d.1565271681.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1565271681.git.jani.nikula@intel.com>
References: <cover.1565271681.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 05/10] drm/i915: extract i915_perf.h from
 i915_drv.h
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQgdXNlZCB0byBiZSBoYW5keSB0aGF0IHdlIG9ubHkgaGFkIGEgY291cGxlIG9mIGhlYWRlcnMs
IGJ1dCBvdmVyIHRpbWUKaTkxNV9kcnYuaCBoYXMgYmVjb21lIHVud2llbGR5LiBFeHRyYWN0IGRl
Y2xhcmF0aW9ucyB0byBhIHNlcGFyYXRlCmhlYWRlciBmaWxlIGNvcnJlc3BvbmRpbmcgdG8gdGhl
IGltcGxlbWVudGF0aW9uIG1vZHVsZSwgY2xhcmlmeWluZyB0aGUKbW9kdWxhcml0eSBvZiB0aGUg
ZHJpdmVyLgoKRW5zdXJlIHRoZSBuZXcgaGVhZGVyIGlzIHNlbGYtY29udGFpbmVkLCBhbmQgZG8g
c28gd2l0aCBtaW5pbWFsIGZ1cnRoZXIKaW5jbHVkZXMsIHVzaW5nIGZvcndhcmQgZGVjbGFyYXRp
b25zIGFzIG5lZWRlZC4gSW5jbHVkZSB0aGUgbmV3IGhlYWRlcgpvbmx5IHdoZXJlIG5lZWRlZCwg
YW5kIHNvcnQgdGhlIG1vZGlmaWVkIGluY2x1ZGUgZGlyZWN0aXZlcyB3aGlsZSBhdCBpdAphbmQg
YXMgbmVlZGVkLgoKTm8gZnVuY3Rpb25hbCBjaGFuZ2VzLgoKU2lnbmVkLW9mZi1ieTogSmFuaSBO
aWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYyB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAg
IHwgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgfCAxNiAtLS0tLS0t
LS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jICAgIHwgIDEgKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmggICAgfCAzMiArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKwogNSBmaWxlcyBjaGFuZ2VkLCAzNSBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlv
bnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYu
aAoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggMmI5NzY0MWZlYWMzLi44ODVi
ODcyNDUxOGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC0xMzYsNiArMTM2
LDcgQEAKICNpbmNsdWRlICJnZW0vaTkxNV9nZW1fY29udGV4dC5oIgogCiAjaW5jbHVkZSAiaTkx
NV9kcnYuaCIKKyNpbmNsdWRlICJpOTE1X3BlcmYuaCIKICNpbmNsdWRlICJpOTE1X3RyYWNlLmgi
CiAjaW5jbHVkZSAiaTkxNV92Z3B1LmgiCiAjaW5jbHVkZSAiaW50ZWxfZW5naW5lX3BtLmgiCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuYwppbmRleCA5Y2Q3NWM3NmMyNTcuLmMwZmVlNzQ0NmNlMCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5jCkBAIC02OCw2ICs2OCw3IEBACiAjaW5jbHVkZSAiaTkxNV9k
ZWJ1Z2ZzLmgiCiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKICNpbmNsdWRlICJpOTE1X2lycS5oIgor
I2luY2x1ZGUgImk5MTVfcGVyZi5oIgogI2luY2x1ZGUgImk5MTVfcXVlcnkuaCIKICNpbmNsdWRl
ICJpOTE1X3RyYWNlLmgiCiAjaW5jbHVkZSAiaTkxNV92Z3B1LmgiCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaAppbmRleCA1YWZjOWRhMTMzYzMuLjMyZmViNWQ2NDg1OSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oCkBAIC0yNDE3LDE2ICsyNDE3LDYgQEAgaTkxNV9nZW1fY29udGV4dF9sb29rdXAoc3Ry
dWN0IGRybV9pOTE1X2ZpbGVfcHJpdmF0ZSAqZmlsZV9wcml2LCB1MzIgaWQpCiAJcmV0dXJuIGN0
eDsKIH0KIAotaW50IGk5MTVfcGVyZl9vcGVuX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYs
IHZvaWQgKmRhdGEsCi0JCQkgc3RydWN0IGRybV9maWxlICpmaWxlKTsKLWludCBpOTE1X3BlcmZf
YWRkX2NvbmZpZ19pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAotCQkJ
ICAgICAgIHN0cnVjdCBkcm1fZmlsZSAqZmlsZSk7Ci1pbnQgaTkxNV9wZXJmX3JlbW92ZV9jb25m
aWdfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKLQkJCQkgIHN0cnVj
dCBkcm1fZmlsZSAqZmlsZSk7Ci12b2lkIGk5MTVfb2FfaW5pdF9yZWdfc3RhdGUoc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lLAotCQkJICAgIHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwK
LQkJCSAgICB1MzIgKnJlZ19zdGF0ZSk7Ci0KIC8qIGk5MTVfZ2VtX2V2aWN0LmMgKi8KIGludCBf
X211c3RfY2hlY2sgaTkxNV9nZW1fZXZpY3Rfc29tZXRoaW5nKHN0cnVjdCBpOTE1X2FkZHJlc3Nf
c3BhY2UgKnZtLAogCQkJCQkgIHU2NCBtaW5fc2l6ZSwgdTY0IGFsaWdubWVudCwKQEAgLTI1MDgs
MTIgKzI0OTgsNiBAQCBpbnQgaW50ZWxfZW5naW5lX2NtZF9wYXJzZXIoc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lLAogCQkJICAgIHUzMiBiYXRjaF9sZW4sCiAJCQkgICAgYm9vbCBpc19t
YXN0ZXIpOwogCi0vKiBpOTE1X3BlcmYuYyAqLwotdm9pZCBpOTE1X3BlcmZfaW5pdChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwotdm9pZCBpOTE1X3BlcmZfZmluaShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwotdm9pZCBpOTE1X3BlcmZfcmVnaXN0ZXIoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKLXZvaWQgaTkxNV9wZXJmX3VucmVnaXN0
ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKLQogLyogaTkxNV9zdXNwZW5k
LmMgKi8KIGludCBpOTE1X3NhdmVfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KTsKIGludCBpOTE1X3Jlc3RvcmVfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKaW5kZXggN2I1OWE3MDM4NTU2Li5lNDJi
ODY4MjdkNmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCkBAIC0yMDAsNiArMjAwLDcgQEAK
ICNpbmNsdWRlICJndC9pbnRlbF9scmNfcmVnLmgiCiAKICNpbmNsdWRlICJpOTE1X2Rydi5oIgor
I2luY2x1ZGUgImk5MTVfcGVyZi5oIgogI2luY2x1ZGUgIm9hL2k5MTVfb2FfaHN3LmgiCiAjaW5j
bHVkZSAib2EvaTkxNV9vYV9iZHcuaCIKICNpbmNsdWRlICJvYS9pOTE1X29hX2Nodi5oIgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BlcmYuaApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAw
MDAuLmE0MTJiMTZkOWZmYwotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcGVyZi5oCkBAIC0wLDAgKzEsMzIgQEAKKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiBNSVQgKi8KKy8qCisgKiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3JhdGlvbgorICov
CisKKyNpZm5kZWYgX19JOTE1X1BFUkZfSF9fCisjZGVmaW5lIF9fSTkxNV9QRVJGX0hfXworCisj
aW5jbHVkZSA8bGludXgvdHlwZXMuaD4KKworc3RydWN0IGRybV9kZXZpY2U7CitzdHJ1Y3QgZHJt
X2ZpbGU7CitzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsKK3N0cnVjdCBpbnRlbF9jb250ZXh0Owor
c3RydWN0IGludGVsX2VuZ2luZV9jczsKKwordm9pZCBpOTE1X3BlcmZfaW5pdChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSk7Cit2b2lkIGk5MTVfcGVyZl9maW5pKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1KTsKK3ZvaWQgaTkxNV9wZXJmX3JlZ2lzdGVyKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1KTsKK3ZvaWQgaTkxNV9wZXJmX3VucmVnaXN0ZXIoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpOworCitpbnQgaTkxNV9wZXJmX29wZW5faW9jdGwoc3RydWN0IGRy
bV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKKwkJCSBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUpOwor
aW50IGk5MTVfcGVyZl9hZGRfY29uZmlnX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZv
aWQgKmRhdGEsCisJCQkgICAgICAgc3RydWN0IGRybV9maWxlICpmaWxlKTsKK2ludCBpOTE1X3Bl
cmZfcmVtb3ZlX2NvbmZpZ19pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRh
LAorCQkJCSAgc3RydWN0IGRybV9maWxlICpmaWxlKTsKK3ZvaWQgaTkxNV9vYV9pbml0X3JlZ19z
dGF0ZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCisJCQkgICAgc3RydWN0IGludGVs
X2NvbnRleHQgKmNlLAorCQkJICAgIHUzMiAqcmVnX3N0YXRlKTsKKworI2VuZGlmIC8qIF9fSTkx
NV9QRVJGX0hfXyAqLwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
