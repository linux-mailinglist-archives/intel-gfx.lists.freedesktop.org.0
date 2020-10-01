Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC7828025A
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Oct 2020 17:17:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A31F06E8BA;
	Thu,  1 Oct 2020 15:17:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA8A36E8BA
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Oct 2020 15:17:12 +0000 (UTC)
IronPort-SDR: mioXsatd5zLeME82urXJWY0PUiNlirUZiR5maQaq7jtt1bqUnT715EE/c7jSzbSscD/qYcfz+u
 NhrMwJetPXIQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9761"; a="142151355"
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="142151355"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2020 08:16:56 -0700
IronPort-SDR: Iz4jLlzTcFuOhf7/t7cciE27zisDxzIjs3K68zBeWGlFq7HL/IxZyrSCk9S9GBbSdSO+fcYEjs
 zfsTUUywhDtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="351164142"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 01 Oct 2020 08:16:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 01 Oct 2020 18:16:53 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Oct 2020 18:16:39 +0300
Message-Id: <20201001151640.14590-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201001151640.14590-1-ville.syrjala@linux.intel.com>
References: <20201001151640.14590-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 5/6] drm/i915: Wait for LVDS panel power
 cycle delay on reboot
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkp1
c3QgbGlrZSB3aXRoIGVEUCBsZXQncyB3YWl0IGZvciB0aGUgcG93ZXIgc2VxdWVuY2VyIHBvd2Vy
CmN5Y2xlIGRlbGF5IGJlZm9yZSB3ZSByZWJvb3QgdGhlIG1hY2hpbmUsIGFzIG90aGVyd2lzZSB3
ZQpjYW4ndCBndWFyYW50ZWUgdGhlIHBhbmVsJ3MgbWluaW11bSBwb3dlciBjeWNsZSBkZWxheSB3
aWxsCmJlIHJlc3BlY3RlZC4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9sdmRzLmMgfCAxMCArKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
bHZkcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sdmRzLmMKaW5kZXgg
ZTY1YzJkZTUyMmMzLi5jNmM3YzBiOTk4OWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfbHZkcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfbHZkcy5jCkBAIC0zNzEsNiArMzcxLDE1IEBAIHN0YXRpYyB2b2lkIHBjaF9wb3N0
X2Rpc2FibGVfbHZkcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAlpbnRlbF9k
aXNhYmxlX2x2ZHMoc3RhdGUsIGVuY29kZXIsIG9sZF9jcnRjX3N0YXRlLCBvbGRfY29ubl9zdGF0
ZSk7CiB9CiAKK3N0YXRpYyB2b2lkIGludGVsX2x2ZHNfc2h1dGRvd24oc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIpCit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0g
dG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7CisKKwlpZiAoaW50ZWxfZGVfd2FpdF9mb3JfY2xl
YXIoZGV2X3ByaXYsIFBQX1NUQVRVUygwKSwgUFBfQ1lDTEVfREVMQVlfQUNUSVZFLCA1MDAwKSkK
KwkJZHJtX2VycigmZGV2X3ByaXYtPmRybSwKKwkJCSJ0aW1lZCBvdXQgd2FpdGluZyBmb3IgcGFu
ZWwgcG93ZXIgY3ljbGUgZGVsYXlcbiIpOworfQorCiBzdGF0aWMgZW51bSBkcm1fbW9kZV9zdGF0
dXMKIGludGVsX2x2ZHNfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9y
LAogCQkgICAgICBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSkKQEAgLTg5Nyw2ICs5MDYs
NyBAQCB2b2lkIGludGVsX2x2ZHNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCiAJaW50ZWxfZW5jb2Rlci0+Z2V0X2h3X3N0YXRlID0gaW50ZWxfbHZkc19nZXRfaHdfc3Rh
dGU7CiAJaW50ZWxfZW5jb2Rlci0+Z2V0X2NvbmZpZyA9IGludGVsX2x2ZHNfZ2V0X2NvbmZpZzsK
IAlpbnRlbF9lbmNvZGVyLT51cGRhdGVfcGlwZSA9IGludGVsX3BhbmVsX3VwZGF0ZV9iYWNrbGln
aHQ7CisJaW50ZWxfZW5jb2Rlci0+c2h1dGRvd24gPSBpbnRlbF9sdmRzX3NodXRkb3duOwogCWlu
dGVsX2Nvbm5lY3Rvci0+Z2V0X2h3X3N0YXRlID0gaW50ZWxfY29ubmVjdG9yX2dldF9od19zdGF0
ZTsKIAogCWludGVsX2Nvbm5lY3Rvcl9hdHRhY2hfZW5jb2RlcihpbnRlbF9jb25uZWN0b3IsIGlu
dGVsX2VuY29kZXIpOwotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
