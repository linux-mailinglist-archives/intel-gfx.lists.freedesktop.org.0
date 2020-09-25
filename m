Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDBE2786DB
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Sep 2020 14:17:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E065A6ECB2;
	Fri, 25 Sep 2020 12:17:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9235D6ECB2
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Sep 2020 12:17:55 +0000 (UTC)
IronPort-SDR: 6X6PSZ/6Xjk7jsaOXluHW0TOxKW3pen5QUHHaU1PV7SxOUM2pC/22RatvOT+IfD29rEKbZqzBx
 MKaTGShQChNA==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="149277148"
X-IronPort-AV: E=Sophos;i="5.77,301,1596524400"; d="scan'208";a="149277148"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 05:17:54 -0700
IronPort-SDR: iOQyouy1weduCaC7AdKsi5qdI51kxjJCTn51qJy6FSJgGuO5l7+co4DF7aa+vVL+RSJNSgkgKo
 TpNjkYVGzp3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,301,1596524400"; d="scan'208";a="348361599"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 25 Sep 2020 05:17:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Sep 2020 15:17:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Sep 2020 15:17:49 +0300
Message-Id: <20200925121749.708-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200925121749.708-1-ville.syrjala@linux.intel.com>
References: <20200925121749.708-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Don't hide the
 intel_crtc_atomic_check() call
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1v
dmUgdGhlIGludGVsX2NydGNfYXRvbWljX2NoZWNrKCkgY2FsbCBvdXQgZnJvbSB0aGUgdmFyaWFi
bGUKZGVjbGFyYXRpb25zIHRvIGEgcGxhY2Ugd2hlcmUgd2UgY2FuIGFjdHVhbGx5IHNlZSBpdC4K
ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
fCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDVh
OWQ5MzNlNDI1YS4uMTE4NjJkZTNkNzcyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTQ4NDQsOCArMTQ4NDQsMTAgQEAgc3RhdGljIGludCBp
bnRlbF9hdG9taWNfY2hlY2tfY3J0Y3Moc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUp
CiAJaW50IGk7CiAKIAlmb3JfZWFjaF9uZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0
YywgY3J0Y19zdGF0ZSwgaSkgewotCQlpbnQgcmV0ID0gaW50ZWxfY3J0Y19hdG9taWNfY2hlY2so
c3RhdGUsIGNydGMpOwogCQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUo
Y3J0Yy0+YmFzZS5kZXYpOworCQlpbnQgcmV0OworCisJCXJldCA9IGludGVsX2NydGNfYXRvbWlj
X2NoZWNrKHN0YXRlLCBjcnRjKTsKIAkJaWYgKHJldCkgewogCQkJZHJtX2RiZ19hdG9taWMoJmk5
MTUtPmRybSwKIAkJCQkgICAgICAgIltDUlRDOiVkOiVzXSBhdG9taWMgZHJpdmVyIGNoZWNrIGZh
aWxlZFxuIiwKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
