Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B112B0DB0
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 20:17:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAFFA6E3EF;
	Thu, 12 Nov 2020 19:17:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CEFA6E3EF
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 19:17:28 +0000 (UTC)
IronPort-SDR: RTFhKBqc1kfN21xbpJUTTsKY4eEpBYj4uSbJMsF1ZhYFEbT6a58CO7EIbpXy6zWtqcmafCnKAg
 7iuG+zWeQFhg==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="234525926"
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="234525926"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 11:17:27 -0800
IronPort-SDR: rU4UiVgrnHTQgfmuPIDQiZHW+ee3GVtMYlPKxao8Gooz4bA+NIfsK4Lu6O/2ZvhQn8CW/sXLpm
 2zx8fw6+E7iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="366699389"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 12 Nov 2020 11:17:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Nov 2020 21:17:24 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Nov 2020 21:17:14 +0200
Message-Id: <20201112191718.16683-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201112191718.16683-1-ville.syrjala@linux.intel.com>
References: <20201112191718.16683-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: Add a wrapper function around
 get_pipe_config
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

RnJvbTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KCkNyZWF0ZSBh
IG5ldyBmdW5jdGlvbiBpbnRlbF9jcnRjX2dldF9waXBlX2NvbmZpZygpCnRoYXQgY2FsbHMgcGxh
dGZvcm0gc3BlY2lmaWMgaG9va3MgZm9yIGdldF9waXBlX2NvbmZpZygpCk5vIGZ1bmN0aW9uYWwg
Y2hhbmdlIGhlcmUuCgpTdWdnZXN0ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5k
Lm5hdmFyZUBpbnRlbC5jb20+Clt2c3lyamFsYTogQ29uZm9ybSB0byBtb2Rlcm4gaTkxNSBjb2Rp
bmcgc3R5bGUsIGZpeCBwYXRjaCBzdWJqZWN0XQpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTUgKysrKysrKysrKystLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDExMGQwOGYyYTVjNS4uYTgy
ODc0MTQ5MzdjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYwpAQCAtMTE0MDcsNiArMTE0MDcsMTQgQEAgc3RhdGljIGJvb2wgaHN3X2dldF9waXBlX2Nv
bmZpZyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAlyZXR1cm4gYWN0aXZlOwogfQogCitzdGF0
aWMgYm9vbCBpbnRlbF9jcnRjX2dldF9waXBlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkKK3sKKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2Ny
dGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOworCisJcmV0dXJuIGk5MTUtPmRpc3BsYXkuZ2V0
X3BpcGVfY29uZmlnKGNydGMsIGNydGNfc3RhdGUpOworfQorCiBzdGF0aWMgdTMyIGludGVsX2N1
cnNvcl9iYXNlKGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCiB7
CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0KQEAgLTEyNDAzLDcgKzEyNDEx
LDcgQEAgaW50ZWxfZW5jb2Rlcl9jdXJyZW50X21vZGUoc3RydWN0IGludGVsX2VuY29kZXIgKmVu
Y29kZXIpCiAJCXJldHVybiBOVUxMOwogCX0KIAotCWlmICghZGV2X3ByaXYtPmRpc3BsYXkuZ2V0
X3BpcGVfY29uZmlnKGNydGMsIGNydGNfc3RhdGUpKSB7CisJaWYgKCFpbnRlbF9jcnRjX2dldF9w
aXBlX2NvbmZpZyhjcnRjX3N0YXRlKSkgewogCQlrZnJlZShjcnRjX3N0YXRlKTsKIAkJa2ZyZWUo
bW9kZSk7CiAJCXJldHVybiBOVUxMOwpAQCAtMTQ0MjIsOCArMTQ0MzAsNyBAQCB2ZXJpZnlfY3J0
Y19zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAogCXBpcGVfY29uZmlnLT5ody5lbmFi
bGUgPSBuZXdfY3J0Y19zdGF0ZS0+aHcuZW5hYmxlOwogCi0JcGlwZV9jb25maWctPmh3LmFjdGl2
ZSA9Ci0JCWRldl9wcml2LT5kaXNwbGF5LmdldF9waXBlX2NvbmZpZyhjcnRjLCBwaXBlX2NvbmZp
Zyk7CisJcGlwZV9jb25maWctPmh3LmFjdGl2ZSA9IGludGVsX2NydGNfZ2V0X3BpcGVfY29uZmln
KHBpcGVfY29uZmlnKTsKIAogCS8qIHdlIGtlZXAgYm90aCBwaXBlcyBlbmFibGVkIG9uIDgzMCAq
LwogCWlmIChJU19JODMwKGRldl9wcml2KSAmJiBwaXBlX2NvbmZpZy0+aHcuYWN0aXZlKQpAQCAt
MTg3MzYsNyArMTg3NDMsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9tb2Rlc2V0X3JlYWRvdXRfaHdf
c3RhdGUoc3RydWN0IGRybV9kZXZpY2UgKmRldikKIAkJaW50ZWxfY3J0Y19zdGF0ZV9yZXNldChj
cnRjX3N0YXRlLCBjcnRjKTsKIAogCQljcnRjX3N0YXRlLT5ody5hY3RpdmUgPSBjcnRjX3N0YXRl
LT5ody5lbmFibGUgPQotCQkJZGV2X3ByaXYtPmRpc3BsYXkuZ2V0X3BpcGVfY29uZmlnKGNydGMs
IGNydGNfc3RhdGUpOworCQkJaW50ZWxfY3J0Y19nZXRfcGlwZV9jb25maWcoY3J0Y19zdGF0ZSk7
CiAKIAkJY3J0Yy0+YmFzZS5lbmFibGVkID0gY3J0Y19zdGF0ZS0+aHcuZW5hYmxlOwogCQljcnRj
LT5hY3RpdmUgPSBjcnRjX3N0YXRlLT5ody5hY3RpdmU7Ci0tIAoyLjI2LjIKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
