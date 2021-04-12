Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D6635B9EB
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 07:46:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 955066E075;
	Mon, 12 Apr 2021 05:46:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 049486E041
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 05:46:26 +0000 (UTC)
IronPort-SDR: +GwVlcB+RqSsXTl0np9aT+a1/o/Rf4Poz5KH3RYPIwaV4F5bvJAKpfK0+VUnqdCTjpSez6HURT
 hBpqKnrX0INg==
X-IronPort-AV: E=McAfee;i="6000,8403,9951"; a="194146713"
X-IronPort-AV: E=Sophos;i="5.82,214,1613462400"; d="scan'208";a="194146713"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2021 22:46:26 -0700
IronPort-SDR: /igjF8jtivBWn7sAHDKCfNNRhnUzJh9bGVDAZXqOcJTmCjVHvNi7HK715EVa1lw4Tm/g5uJGDs
 dWAEYpl3jRog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,214,1613462400"; d="scan'208";a="382822271"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 11 Apr 2021 22:46:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 Apr 2021 08:46:23 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Apr 2021 08:46:07 +0300
Message-Id: <20210412054607.18133-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210412054607.18133-1-ville.syrjala@linux.intel.com>
References: <20210412054607.18133-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5] drm/i915: Remove a few redundant glk checks
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
dyB0aGF0IGdsayBkaXNwbGF5IHZlcnNpb24gaXMgMTAgd2UgY2FuIGRyb3AgYSBmZXcgbW9yZSBn
bGsgY2hlY2tzLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaS5jICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2ts
X3VuaXZlcnNhbF9wbGFuZS5jIHwgMiArLQogMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMKaW5kZXggZTIwOGRlZDlhNjg4Li43OWVjZTllNDVkNjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtMTc2LDcgKzE3Niw3IEBAIHN0YXRpYyB2b2lkIGlu
dGVsX3dhaXRfZGRpX2J1Zl9hY3RpdmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LAogCQkJCSAgICAgIGVudW0gcG9ydCBwb3J0KQogewogCS8qIFdhaXQgPiA1MTggdXNlY3MgZm9y
IERESV9CVUZfQ1RMIHRvIGJlIG5vbiBpZGxlICovCi0JaWYgKERJU1BMQVlfVkVSKGRldl9wcml2
KSA8IDEwICYmICFJU19HRU1JTklMQUtFKGRldl9wcml2KSkgeworCWlmIChESVNQTEFZX1ZFUihk
ZXZfcHJpdikgPCAxMCkgewogCQl1c2xlZXBfcmFuZ2UoNTE4LCAxMDAwKTsKIAkJcmV0dXJuOwog
CX0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNh
bF9wbGFuZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3Bs
YW5lLmMKaW5kZXggMDk4NjM2YzgxMWE4Li41OTI2ZWQxMDk0YTQgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jCkBAIC04NTMsNyAr
ODUzLDcgQEAgc3RhdGljIHUzMiBza2xfcGxhbmVfY3RsKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlLAogCiAJcGxhbmVfY3RsID0gUExBTkVfQ1RMX0VOQUJMRTsKIAot
CWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPCAxMCAmJiAhSVNfR0VNSU5JTEFLRShkZXZfcHJp
dikpIHsKKwlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpIDwgMTApIHsKIAkJcGxhbmVfY3RsIHw9
IHNrbF9wbGFuZV9jdGxfYWxwaGEocGxhbmVfc3RhdGUpOwogCQlwbGFuZV9jdGwgfD0gUExBTkVf
Q1RMX1BMQU5FX0dBTU1BX0RJU0FCTEU7CiAKLS0gCjIuMjYuMwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
