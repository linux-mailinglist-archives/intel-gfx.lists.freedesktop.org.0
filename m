Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E18F2B0DB1
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 20:17:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C01546E3F2;
	Thu, 12 Nov 2020 19:17:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F2786E3F2
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 19:17:30 +0000 (UTC)
IronPort-SDR: /POyGMFx3g+ySQ62dZ6cCzzXDe6bYxrypViVHb1J3YJ5V7QmqD3MzmA7CiZTkonbL5yioIs4ie
 WVEnrVHBGa/A==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="255075818"
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="255075818"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 11:17:30 -0800
IronPort-SDR: Z2NAtoE1tC2ADMrZpVu4BCWdkaXxTxmbAJSRo8//sjWdJeVkB3dFizZoBtNplyZ7TEbC4GFwsv
 q0KJbOJlzuzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="339513395"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 12 Nov 2020 11:17:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Nov 2020 21:17:27 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Nov 2020 21:17:15 +0200
Message-Id: <20201112191718.16683-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201112191718.16683-1-ville.syrjala@linux.intel.com>
References: <20201112191718.16683-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/6] drm/i915: Move hw.active assignment into
 intel_crtc_get_pipe_config()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk5v
IHJlYXNvbiB0byBtYWtlIHRoZSBjYWxsZXJzIG9mIGludGVsX2NydGNfZ2V0X3BpcGVfY29uZmln
KCkKcG9wdWxhdGUgaHcuYWN0aXZlLiBMZXQncyBkbyBpdCBpbiBpbnRlbF9jcnRjX2dldF9waXBl
X2NvbmZpZygpCml0c2VsZi4gaHcuZW5hYmxlIHdlIGxlYXZlIHVwIHRvIHRoZSBjYWxsZXJzIHNp
bmNlIGl0J3Mgc2xpZ2h0bHkKZGlmZmVyZW50IGZvciByZWFkb3V0IHZzLiBzdGF0ZSBjaGVjay4K
ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
fCAxNCArKysrKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDQg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYwppbmRleCBhODI4NzQxNDkzN2MuLjg4OTY0MmJlZjE5MiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTExNDEyLDcgKzExNDEyLDEyIEBA
IHN0YXRpYyBib29sIGludGVsX2NydGNfZ2V0X3BpcGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKQogCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxf
Y3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOwogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7CiAKLQlyZXR1cm4gaTkxNS0+ZGlzcGxheS5n
ZXRfcGlwZV9jb25maWcoY3J0YywgY3J0Y19zdGF0ZSk7CisJaWYgKCFpOTE1LT5kaXNwbGF5Lmdl
dF9waXBlX2NvbmZpZyhjcnRjLCBjcnRjX3N0YXRlKSkKKwkJcmV0dXJuIGZhbHNlOworCisJY3J0
Y19zdGF0ZS0+aHcuYWN0aXZlID0gdHJ1ZTsKKworCXJldHVybiB0cnVlOwogfQogCiBzdGF0aWMg
dTMyIGludGVsX2N1cnNvcl9iYXNlKGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxh
bmVfc3RhdGUpCkBAIC0xNDQzMCw3ICsxNDQzNSw3IEBAIHZlcmlmeV9jcnRjX3N0YXRlKHN0cnVj
dCBpbnRlbF9jcnRjICpjcnRjLAogCiAJcGlwZV9jb25maWctPmh3LmVuYWJsZSA9IG5ld19jcnRj
X3N0YXRlLT5ody5lbmFibGU7CiAKLQlwaXBlX2NvbmZpZy0+aHcuYWN0aXZlID0gaW50ZWxfY3J0
Y19nZXRfcGlwZV9jb25maWcocGlwZV9jb25maWcpOworCWludGVsX2NydGNfZ2V0X3BpcGVfY29u
ZmlnKHBpcGVfY29uZmlnKTsKIAogCS8qIHdlIGtlZXAgYm90aCBwaXBlcyBlbmFibGVkIG9uIDgz
MCAqLwogCWlmIChJU19JODMwKGRldl9wcml2KSAmJiBwaXBlX2NvbmZpZy0+aHcuYWN0aXZlKQpA
QCAtMTg3NDIsOCArMTg3NDcsOSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9tb2Rlc2V0X3JlYWRvdXRf
aHdfc3RhdGUoc3RydWN0IGRybV9kZXZpY2UgKmRldikKIAkJaW50ZWxfY3J0Y19mcmVlX2h3X3N0
YXRlKGNydGNfc3RhdGUpOwogCQlpbnRlbF9jcnRjX3N0YXRlX3Jlc2V0KGNydGNfc3RhdGUsIGNy
dGMpOwogCi0JCWNydGNfc3RhdGUtPmh3LmFjdGl2ZSA9IGNydGNfc3RhdGUtPmh3LmVuYWJsZSA9
Ci0JCQlpbnRlbF9jcnRjX2dldF9waXBlX2NvbmZpZyhjcnRjX3N0YXRlKTsKKwkJaW50ZWxfY3J0
Y19nZXRfcGlwZV9jb25maWcoY3J0Y19zdGF0ZSk7CisKKwkJY3J0Y19zdGF0ZS0+aHcuZW5hYmxl
ID0gY3J0Y19zdGF0ZS0+aHcuYWN0aXZlOwogCiAJCWNydGMtPmJhc2UuZW5hYmxlZCA9IGNydGNf
c3RhdGUtPmh3LmVuYWJsZTsKIAkJY3J0Yy0+YWN0aXZlID0gY3J0Y19zdGF0ZS0+aHcuYWN0aXZl
OwotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
