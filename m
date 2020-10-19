Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE3D2930B0
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 23:43:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8341D6EB2E;
	Mon, 19 Oct 2020 21:43:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3EB16EB2E
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 21:43:44 +0000 (UTC)
IronPort-SDR: 48YYuuJ3OC2CPl4OS4y630Vue11oUQ5GoULfOnb93umtlPZgAm6SxJgNRIyAU21fPvVa7d48TL
 pyDRLVcDSfDQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="146964378"
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="146964378"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 14:43:40 -0700
IronPort-SDR: UGBtAFNdKDwoL4NQphj+I/iWMbumV7ZhyraFsE6yd3zgkB8ss08OSmAiCE7vjngMWQ6rSlCSDa
 oCyAmDgPFWjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="320420692"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 19 Oct 2020 14:43:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 20 Oct 2020 00:43:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Oct 2020 00:43:31 +0300
Message-Id: <20201019214337.19330-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/7] drm/i915: Drop one more usless
 master_transcoder assignment
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IGRyb3BwZWQgdGhlIG90aGVyIHJlZHVuZGFudCBtYXN0ZXJfdHJhbnNjb2RlciBhc3NpZ25tZW50
cwplYXJsaWVyLCBidXQgdGhpcyBvbmUgc2xpcHBlZCB0aHJvdWdoLiBHZXQgcmlkIG9mIGl0IGFz
IHdlbGwuClRoZSBjcnRjIHN0YXRlIGdldHMgZnVsbHkgcmVzZXQgYmVmb3JlIHJlYWRvdXQgc28g
dGhlcmUgaXMKbm8gcG9pbnQgaW4gZG9pbmcgdGhpcy4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAyIC0tCiAxIGZpbGUgY2hhbmdlZCwg
MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCmluZGV4IDI0ZDg1YjI2ODlkNS4uMzAzMDMwODhhMzQ0IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTEyNTAsOCArMTEyNTAsNiBA
QCBzdGF0aWMgYm9vbCBoc3dfZ2V0X3BpcGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
LAogCWJvb2wgYWN0aXZlOwogCXUzMiB0bXA7CiAKLQlwaXBlX2NvbmZpZy0+bWFzdGVyX3RyYW5z
Y29kZXIgPSBJTlZBTElEX1RSQU5TQ09ERVI7Ci0KIAlwb3dlcl9kb21haW4gPSBQT1dFUl9ET01B
SU5fUElQRShjcnRjLT5waXBlKTsKIAl3ZiA9IGludGVsX2Rpc3BsYXlfcG93ZXJfZ2V0X2lmX2Vu
YWJsZWQoZGV2X3ByaXYsIHBvd2VyX2RvbWFpbik7CiAJaWYgKCF3ZikKLS0gCjIuMjYuMgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
