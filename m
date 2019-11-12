Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA675F91B6
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 15:15:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E1496E944;
	Tue, 12 Nov 2019 14:15:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4584E6E944
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 14:15:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 06:15:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,296,1569308400"; d="scan'208";a="198090886"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 12 Nov 2019 06:15:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 12 Nov 2019 16:15:24 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Nov 2019 16:15:00 +0200
Message-Id: <20191112141503.1116-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191112141503.1116-1-ville.syrjala@linux.intel.com>
References: <20191112141503.1116-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/10] drm/i915: Pass dev_priv to
 cpt_verify_modeset()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkdl
dCByaWQgb2YgdGhlIGxhc3QgJ2RldicgdXNhZ2UgaW4gaXJvbmxha2VfY3J0Y19lbmFibGUoKSBi
eQpwYXNzaW5nIGRldl9wcml2IHRvIGNwdF92ZXJpZnlfbW9kZXNldCgpLgoKU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDYgKysrLS0tCiAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggNzdiNzM5Y2RhMDUz
Li42YWZkYmZiYjMyNjQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jCkBAIC01NDYyLDkgKzU0NjIsOSBAQCBzdGF0aWMgdm9pZCBscHRfcGNoX2VuYWJs
ZShjb25zdCBzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAlscHRfZW5hYmxlX3Bj
aF90cmFuc2NvZGVyKGRldl9wcml2LCBjcHVfdHJhbnNjb2Rlcik7CiB9CiAKLXN0YXRpYyB2b2lk
IGNwdF92ZXJpZnlfbW9kZXNldChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBlbnVtIHBpcGUgcGlw
ZSkKK3N0YXRpYyB2b2lkIGNwdF92ZXJpZnlfbW9kZXNldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsCisJCQkgICAgICAgZW51bSBwaXBlIHBpcGUpCiB7Ci0Jc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShkZXYpOwogCWk5MTVfcmVnX3QgZHNscmVn
ID0gUElQRURTTChwaXBlKTsKIAl1MzIgdGVtcDsKIApAQCAtNjUzOCw3ICs2NTM4LDcgQEAgc3Rh
dGljIHZvaWQgaXJvbmxha2VfY3J0Y19lbmFibGUoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBp
cGVfY29uZmlnLAogCWludGVsX2VuY29kZXJzX2VuYWJsZShzdGF0ZSwgaW50ZWxfY3J0Yyk7CiAK
IAlpZiAoSEFTX1BDSF9DUFQoZGV2X3ByaXYpKQotCQljcHRfdmVyaWZ5X21vZGVzZXQoZGV2LCBp
bnRlbF9jcnRjLT5waXBlKTsKKwkJY3B0X3ZlcmlmeV9tb2Rlc2V0KGRldl9wcml2LCBwaXBlKTsK
IAogCS8qCiAJICogTXVzdCB3YWl0IGZvciB2YmxhbmsgdG8gYXZvaWQgc3B1cmlvdXMgUENIIEZJ
Rk8gdW5kZXJydW5zLgotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
