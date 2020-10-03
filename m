Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C35281FAC
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Oct 2020 02:19:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62D3E6E9FD;
	Sat,  3 Oct 2020 00:18:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D0A36E9FA
 for <intel-gfx@lists.freedesktop.org>; Sat,  3 Oct 2020 00:18:53 +0000 (UTC)
IronPort-SDR: Q3PEjSfStDOs6hzcpPo1qp8bkoO0DSEh3uebkTOPf09mV4z5EAQSj36xk/NGEe50NDNN6Z+XIj
 aCTCQJwCT/Bg==
X-IronPort-AV: E=McAfee;i="6000,8403,9762"; a="143102212"
X-IronPort-AV: E=Sophos;i="5.77,329,1596524400"; d="scan'208";a="143102212"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2020 17:18:53 -0700
IronPort-SDR: KEaoLB1nq/nheGnCXZiWCYvy5QDiW3kehsWJn/lF+u72wpzwIBlGs7vzEf8hKqdqrZqx0iBBzT
 E/nrkyKiPXrQ==
X-IronPort-AV: E=Sophos;i="5.77,329,1596524400"; d="scan'208";a="511239460"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2020 17:18:52 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  3 Oct 2020 03:18:44 +0300
Message-Id: <20201003001846.1271151-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201003001846.1271151-1-imre.deak@intel.com>
References: <20201003001846.1271151-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915: Check for unsupported DP link
 rates during initial commit
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

U29tZSBCSU9TZXMgc2V0IGFuIHVuc3VwcG9ydGVkL2ltcHJlY2lzZSBEUCBsaW5rIHJhdGUgKGZv
ciBpbnN0YW5jZSBvbgpUR0wgQSBzdGVwcGluZykuIE1ha2Ugc3VyZSB0aGF0IHdlIGRvIGFuIGVu
Y29kZXIgcmVjb21wdXRlIGFuZCBhIG1vZGVzZXQKaW4gdGhpcyBjYXNlLgoKQ2M6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IElt
cmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMgfCAxMiArKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMiBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCmluZGV4
IGQzM2EzZDlmZGMzYS4uZGY1Mjc3YzJiOWJhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jCkBAIC0zNzA3LDYgKzM3MDcsMTggQEAgYm9vbCBpbnRlbF9kcF9pbml0aWFs
X2Zhc3RzZXRfY2hlY2soc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCQkJICAgIHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewogCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7CisJc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsKKworCS8qCisJICogSWYg
QklPUyBoYXMgc2V0IGFuIHVuc3VwcG9ydGVkIG9yIG5vbi1zdGFuZGFyZCBsaW5rIHJhdGUgZm9y
IHNvbWUKKwkgKiByZWFzb24gZm9yY2UgYW4gZW5jb2RlciByZWNvbXB1dGUgYW5kIGZ1bGwgbW9k
ZXNldC4KKwkgKi8KKwlpZiAoaW50ZWxfZHBfcmF0ZV9pbmRleChpbnRlbF9kcC0+c291cmNlX3Jh
dGVzLCBpbnRlbF9kcC0+bnVtX3NvdXJjZV9yYXRlcywKKwkJCQljcnRjX3N0YXRlLT5wb3J0X2Ns
b2NrKSA8IDApIHsKKwkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgIkZvcmNpbmcgZnVsbCBtb2Rl
c2V0IGR1ZSB0byB1bnN1cHBvcnRlZCBsaW5rIHJhdGVcbiIpOworCQljcnRjX3N0YXRlLT51YXBp
LmNvbm5lY3RvcnNfY2hhbmdlZCA9IHRydWU7CisJCXJldHVybiBmYWxzZTsKKwl9CiAKIAkvKgog
CSAqIEZJWE1FIGhhY2sgdG8gZm9yY2UgZnVsbCBtb2Rlc2V0IHdoZW4gRFNDIGlzIGJlaW5nIHVz
ZWQuCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
