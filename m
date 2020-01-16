Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10BDA13D947
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 12:45:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DB026E210;
	Thu, 16 Jan 2020 11:45:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C1066E210
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 11:45:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 03:45:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,326,1574150400"; d="scan'208";a="219650400"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 16 Jan 2020 03:45:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jan 2020 13:45:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jan 2020 13:45:44 +0200
Message-Id: <20200116114544.16118-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Set num_qgv_points to zero if we
 can't query the actual points
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCklm
IHRoZSBwY29kZSBmYWlscyB0byBnaXZlIHVzIHRoZSBnb29kcyBvbiBhbnkgb2YgdGhlIFFHViBw
b2ludHMganVzdApkZWNsYXJlIHRoYXQgd2UgaGF2ZSBub25lIHNvIHRoYXQgd2UnbGwgcHJvcGVy
bHkgaWdub3JlIHRoZSBidyBsaW1pdHMuCgpDYzogQ2xpbnRvbiBBIFRheWxvciA8Y2xpbnRvbi5h
LnRheWxvckBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9idy5jIHwgNCArKystCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9idy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jCmluZGV4
IGIyMjg2NzFkNWE1ZC4uZWI5MjgxZTE4MzFjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2J3LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9idy5jCkBAIC0xMjksOCArMTI5LDEwIEBAIHN0YXRpYyBpbnQgaWNsX2dldF9xZ3Zf
cG9pbnRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJc3RydWN0IGludGVs
X3Fndl9wb2ludCAqc3AgPSAmcWktPnBvaW50c1tpXTsKIAogCQlyZXQgPSBpY2xfcGNvZGVfcmVh
ZF9xZ3ZfcG9pbnRfaW5mbyhkZXZfcHJpdiwgc3AsIGkpOwotCQlpZiAocmV0KQorCQlpZiAocmV0
KSB7CisJCQlxaS0+bnVtX3BvaW50cyA9IDA7CiAJCQlyZXR1cm4gcmV0OworCQl9CiAKIAkJRFJN
X0RFQlVHX0tNUygiUUdWICVkOiBEQ0xLPSVkIHRSUD0lZCB0UkRQUkU9JWQgdFJBUz0lZCB0UkNE
PSVkIHRSQz0lZFxuIiwKIAkJCSAgICAgIGksIHNwLT5kY2xrLCBzcC0+dF9ycCwgc3AtPnRfcmRw
cmUsIHNwLT50X3JhcywKLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
