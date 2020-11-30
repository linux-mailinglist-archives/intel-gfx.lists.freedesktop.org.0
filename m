Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB94B2C8EDA
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 21:14:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 308816E866;
	Mon, 30 Nov 2020 20:14:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8FCD6E838
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 20:14:29 +0000 (UTC)
IronPort-SDR: 2CD3Dj9Wwzf5Ue9YpUmc7LdD2M/21NTeouErRZBNqH96BUgcUinqMjBl1rz/lU7PGVJ2FeoWGj
 rMPCNGb+tqBg==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="190892986"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="190892986"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 12:14:24 -0800
IronPort-SDR: oVHltzORHy4uAyn8dVtVqggzEwWXjtjPZXHCRDRv1YX4b0YbVvtrD4u/URWyYw2VNj7hhtJDWA
 JjqIfrkmT84A==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="372472366"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 12:14:22 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 02:17:35 +0530
Message-Id: <20201130204738.2443-13-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201130204738.2443-1-uma.shankar@intel.com>
References: <20201130204738.2443-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v14 12/15] drm/i915/display: Implement infoframes
 readback for LSPCON
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

SW1wbGVtZW50ZWQgSW5mb2ZyYW1lcyBlbmFibGVkIHJlYWRiYWNrIGZvciBMU1BDT04gZGV2aWNl
cy4KVGhpcyB3aWxsIGhlbHAgYWxpZ24gdGhlIGltcGxlbWVudGF0aW9uIHdpdGggc3RhdGUgcmVh
ZGJhY2sKaW5mcmFzdHJ1Y3R1cmUuCgp2MjogQWRkZWQgcHJvcGVyIGJpdG1hc2sgb2YgZW5hYmxl
ZCBpbmZvZnJhbWVzIGFzIHBlciBWaWxsZSdzCnJlY29tbWVuZGF0aW9uLgoKdjM6IEFkZGVkIHBj
b24gc3BlY2lmaWMgaW5mb2ZyYW1lIHR5cGVzIGluc3RlYWQgb2YgdXNpbmcgdGhlIEhTVwpvbmUn
cywgYXMgcmVjb21tZW5kZWQgYnkgVmlsbGUuCgp2NDogQWRkcmVzc2VkIFZpbGxlJ3MgcmV2aWV3
IGNvbW1lbnQgYnkgYWRkaW5nIEhETUkgaW5mb2ZyYW1lCnZlcnNpb25zIGRpcmVjdGx5IGluc3Rl
YWQgb2YgRElQIHdyYXBwZXJzLgoKdjU6IFJlLW9yZGVyZWQgdGhlIHBhdGNoZXMgdG8gYXZvaWQg
cG90ZW50aWFsIGJyZWFrIGluIHVzYWdlLAphcyBzdWdnZXN0ZWQgYnkgVmlsbGUuCgpTaWduZWQt
b2ZmLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5jIHwgNTcgKysrKysrKysrKysr
KysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgNTUgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNv
bi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYwppbmRleCAz
MDNmMjNkMzUwMjAuLjc3NjhjZjM0ZjRlOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2xzcGNvbi5jCkBAIC01NjAsMTEgKzU2MCw2NCBAQCB2b2lkIGxzcGNvbl9zZXRf
aW5mb2ZyYW1lcyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJCQkgIGJ1ZiwgcmV0
KTsKIH0KIAorc3RhdGljIGJvb2wgX2xzcGNvbl9yZWFkX2F2aV9pbmZvZnJhbWVfZW5hYmxlZF9t
Y2Eoc3RydWN0IGRybV9kcF9hdXggKmF1eCkKK3sKKwlpbnQgcmV0OworCXUzMiB2YWwgPSAwOwor
CXUxNiByZWcgPSBMU1BDT05fTUNBX0FWSV9JRl9DVFJMOworCisJcmV0ID0gZHJtX2RwX2RwY2Rf
cmVhZChhdXgsIHJlZywgJnZhbCwgMSk7CisJaWYgKHJldCA8IDApIHsKKwkJRFJNX0VSUk9SKCJE
UENEIHJlYWQgZmFpbGVkLCBhZGRyZXNzIDB4JXhcbiIsIHJlZyk7CisJCXJldHVybiBmYWxzZTsK
Kwl9CisKKwlyZXR1cm4gdmFsICYgTFNQQ09OX01DQV9BVklfSUZfS0lDS09GRjsKK30KKworc3Rh
dGljIGJvb2wgX2xzcGNvbl9yZWFkX2F2aV9pbmZvZnJhbWVfZW5hYmxlZF9wYXJhZGUoc3RydWN0
IGRybV9kcF9hdXggKmF1eCkKK3sKKwlpbnQgcmV0OworCXUzMiB2YWwgPSAwOworCXUxNiByZWcg
PSBMU1BDT05fUEFSQURFX0FWSV9JRl9DVFJMOworCisJcmV0ID0gZHJtX2RwX2RwY2RfcmVhZChh
dXgsIHJlZywgJnZhbCwgMSk7CisJaWYgKHJldCA8IDApIHsKKwkJRFJNX0VSUk9SKCJEUENEIHJl
YWQgZmFpbGVkLCBhZGRyZXNzIDB4JXhcbiIsIHJlZyk7CisJCXJldHVybiBmYWxzZTsKKwl9CisK
KwlyZXR1cm4gdmFsICYgTFNQQ09OX1BBUkFERV9BVklfSUZfS0lDS09GRjsKK30KKwogdTMyIGxz
cGNvbl9pbmZvZnJhbWVzX2VuYWJsZWQoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJ
CQkgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcpCiB7Ci0J
LyogRklYTUUgYWN0dWFsbHkgcmVhZCB0aGlzIGZyb20gdGhlIGh3ICovCi0JcmV0dXJuIDA7CisJ
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsKKwlz
dHJ1Y3QgaW50ZWxfbHNwY29uICpsc3Bjb24gPSBlbmNfdG9faW50ZWxfbHNwY29uKGVuY29kZXIp
OworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+
YmFzZS5kZXYpOworCWJvb2wgaW5mb2ZyYW1lc19lbmFibGVkOworCXUzMiB2YWwgPSAwOworCXUz
MiBtYXNrLCB0bXA7CisKKwlpZiAobHNwY29uLT52ZW5kb3IgPT0gTFNQQ09OX1ZFTkRPUl9NQ0Ep
CisJCWluZm9mcmFtZXNfZW5hYmxlZCA9IF9sc3Bjb25fcmVhZF9hdmlfaW5mb2ZyYW1lX2VuYWJs
ZWRfbWNhKCZpbnRlbF9kcC0+YXV4KTsKKwllbHNlCisJCWluZm9mcmFtZXNfZW5hYmxlZCA9IF9s
c3Bjb25fcmVhZF9hdmlfaW5mb2ZyYW1lX2VuYWJsZWRfcGFyYWRlKCZpbnRlbF9kcC0+YXV4KTsK
KworCWlmIChpbmZvZnJhbWVzX2VuYWJsZWQpCisJCXZhbCB8PSBpbnRlbF9oZG1pX2luZm9mcmFt
ZV9lbmFibGUoSERNSV9JTkZPRlJBTUVfVFlQRV9BVkkpOworCisJaWYgKGxzcGNvbi0+aGRyX3N1
cHBvcnRlZCkgeworCQl0bXAgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LAorCQkJCSAgICBIU1df
VFZJREVPX0RJUF9DVEwocGlwZV9jb25maWctPmNwdV90cmFuc2NvZGVyKSk7CisJCW1hc2sgPSBW
SURFT19ESVBfRU5BQkxFX0dNUF9IU1c7CisKKwkJaWYgKHRtcCAmIG1hc2spCisJCQl2YWwgfD0g
aW50ZWxfaGRtaV9pbmZvZnJhbWVfZW5hYmxlKEhETUlfUEFDS0VUX1RZUEVfR0FNVVRfTUVUQURB
VEEpOworCX0KKworCXJldHVybiB2YWw7CiB9CiAKIHZvaWQgbHNwY29uX3dhaXRfcGNvbl9tb2Rl
KHN0cnVjdCBpbnRlbF9sc3Bjb24gKmxzcGNvbikKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
