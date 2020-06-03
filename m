Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD4E1ED7EC
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 23:15:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAB7389ECB;
	Wed,  3 Jun 2020 21:15:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2414789EBD
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jun 2020 21:15:49 +0000 (UTC)
IronPort-SDR: euZQC8cl+ixAiT66rXECY9U7X0Jg5m9UromqdEltKhC2NfD6Kx8QIi7o0kV1qqK7DeXEA4oJ3n
 Uc4Qwa9E0P8w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2020 14:15:48 -0700
IronPort-SDR: 1dI/bCgALNM5T2MJSr63GS4VhsgG4LlQqFTK50qswHhUGJPyCDWwwHlB5e8+NdKOqUyrDKO4yb
 MUS4RMmFgiOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,469,1583222400"; d="scan'208";a="258715101"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga008.fm.intel.com with ESMTP; 03 Jun 2020 14:15:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jun 2020 14:15:23 -0700
Message-Id: <20200603211529.3005059-10-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200603211529.3005059-1-matthew.d.roper@intel.com>
References: <20200603211529.3005059-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 09/15] drm/i915/rkl: Don't try to access
 transcoder D
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

VGhlcmUgYXJlIGEgY291cGxlIHBsYWNlcyBpbiBvdXIgZHJpdmVyIHRoYXQgbG9vcCBvdmVyIHRy
YW5zY29kZXJzIEEuLkQKZm9yIGdlbjExKzsgc2luY2UgUktMIG9ubHkgaGFzIHRocmVlIHBpcGVz
L3RyYW5zY29kZXJzLCB0aGlzIGNhbiBsZWFkIHRvCnVuY2xhaW1lZCByZWdpc3RlciByZWFkcy93
cml0ZXMuICBXZSBzaG91bGQgYWRkIGNoZWNrcyBmb3IgdHJhbnNjb2RlcgpleGlzdGVuY2Ugd2hl
cmUgYXBwcm9wcmlhdGUuCgp2MjogTW92ZSBvbmUgdHJhbnNjb2RlciBjaGVjayB0aGF0IHdvdW5k
IHVwIGluIHRoZSB3cm9uZyBmdW5jdGlvbiBhZnRlcgogICAgY29uZmxpY3QgcmVzb2x1dGlvbi4g
IEl0IGJlbG9uZ3MgaW4gYmR3X2dldF90cmFuc19wb3J0X3N5bmNfY29uZmlnCiAgICByYXRoZXIg
dGhhbiBieHRfZ2V0X2RzaV90cmFuc2NvZGVyX3N0YXRlLgoKdjM6IFN3aXRjaCBsb29wcyB0byB1
c2UgZm9yX2VhY2hfY3B1X3RyYW5zY29kZXJfbWFza2VkKCkgc2luY2UgdGhpcwogICAgaXRlcmF0
b3IgYWxyZWFkeSBjaGVja3MgdGhlIHBsYXRmb3JtJ3MgdHJhbnNjb2RlciBtYXNrIGZvciB1cy4K
ICAgIChWaWxsZSkKCkNjOiBBZGl0eWEgU3dhcnVwIDxhZGl0eWEuc3dhcnVwQGludGVsLmNvbT4K
Q2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyB8IDggKysrKysrLS0KIDEgZmlsZSBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMK
aW5kZXggZjNlYTgxYTE3MzUyLi40MGE3MWM0YTFlZjUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfaXJxLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEu
YwpAQCAtMjg4NSwxMyArMjg4NSwxNSBAQCBzdGF0aWMgdm9pZCBnZW4xMV9kaXNwbGF5X2lycV9y
ZXNldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CiAJc3RydWN0IGludGVs
X3VuY29yZSAqdW5jb3JlID0gJmRldl9wcml2LT51bmNvcmU7CiAJZW51bSBwaXBlIHBpcGU7CisJ
dTMyIHRyYW5zX21hc2sgPSBCSVQoVFJBTlNDT0RFUl9BKSB8IEJJVChUUkFOU0NPREVSX0IpIHwK
KwkJQklUKFRSQU5TQ09ERVJfQykgfCBCSVQoVFJBTlNDT0RFUl9EKTsKIAogCWludGVsX3VuY29y
ZV93cml0ZSh1bmNvcmUsIEdFTjExX0RJU1BMQVlfSU5UX0NUTCwgMCk7CiAKIAlpZiAoSU5URUxf
R0VOKGRldl9wcml2KSA+PSAxMikgewogCQllbnVtIHRyYW5zY29kZXIgdHJhbnM7CiAKLQkJZm9y
ICh0cmFucyA9IFRSQU5TQ09ERVJfQTsgdHJhbnMgPD0gVFJBTlNDT0RFUl9EOyB0cmFucysrKSB7
CisJCWZvcl9lYWNoX2NwdV90cmFuc2NvZGVyX21hc2tlZChkZXZfcHJpdiwgdHJhbnMsIHRyYW5z
X21hc2spIHsKIAkJCWVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4gZG9tYWluOwogCiAJ
CQlkb21haW4gPSBQT1dFUl9ET01BSU5fVFJBTlNDT0RFUih0cmFucyk7CkBAIC0zNDEzLDYgKzM0
MTUsOCBAQCBzdGF0aWMgdm9pZCBnZW44X2RlX2lycV9wb3N0aW5zdGFsbChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJdTMyIGRlX3BvcnRfbWFza2VkID0gZ2VuOF9kZV9wb3J0
X2F1eF9tYXNrKGRldl9wcml2KTsKIAl1MzIgZGVfcG9ydF9lbmFibGVzOwogCXUzMiBkZV9taXNj
X21hc2tlZCA9IEdFTjhfREVfRURQX1BTUjsKKwl1MzIgdHJhbnNfbWFzayA9IEJJVChUUkFOU0NP
REVSX0EpIHwgQklUKFRSQU5TQ09ERVJfQikgfAorCQlCSVQoVFJBTlNDT0RFUl9DKSB8IEJJVChU
UkFOU0NPREVSX0QpOwogCWVudW0gcGlwZSBwaXBlOwogCiAJaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPD0gMTApCkBAIC0zNDMzLDcgKzM0MzcsNyBAQCBzdGF0aWMgdm9pZCBnZW44X2RlX2lycV9w
b3N0aW5zdGFsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJaWYgKElOVEVM
X0dFTihkZXZfcHJpdikgPj0gMTIpIHsKIAkJZW51bSB0cmFuc2NvZGVyIHRyYW5zOwogCi0JCWZv
ciAodHJhbnMgPSBUUkFOU0NPREVSX0E7IHRyYW5zIDw9IFRSQU5TQ09ERVJfRDsgdHJhbnMrKykg
eworCQlmb3JfZWFjaF9jcHVfdHJhbnNjb2Rlcl9tYXNrZWQoZGV2X3ByaXYsIHRyYW5zLCB0cmFu
c19tYXNrKSB7CiAJCQllbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluIGRvbWFpbjsKIAog
CQkJZG9tYWluID0gUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVIodHJhbnMpOwotLSAKMi4yNC4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
