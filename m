Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4271A278938
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Sep 2020 15:17:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A6046ECED;
	Fri, 25 Sep 2020 13:17:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 137F76ECED
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Sep 2020 13:17:12 +0000 (UTC)
IronPort-SDR: 2yny3Z1no0U+WgascbeIW6JPuVftXIgX3fCLZJnF7mm5Xi5booUbgqfVcdFHMoGmR/slLiEJtb
 GCMClXwVWwXw==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="162419530"
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="162419530"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 06:17:11 -0700
IronPort-SDR: tbjXbe1v0gQVYnA61w0gSvNSwUPkOSQKqx2p+z7+rQ++LxRdBYBhVeS0lGu8S85QtN8o7UmtEV
 k5NlD2V/lT7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="343588043"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 25 Sep 2020 06:17:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Sep 2020 16:17:08 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Sep 2020 16:16:51 +0300
Message-Id: <20200925131656.10022-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200925131656.10022-1-ville.syrjala@linux.intel.com>
References: <20200925131656.10022-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/9] drm/i915: s/glk_read_lut_10/bdw_read_lut_10/
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmds
a19yZWFkX2x1dF8xMCgpIHdvcmtzIGp1c3QgZmluZSBmb3IgYWxsIGJkdysgcGxhdGZvcm1zLCBz
bwpyZW5hbWUgaXQuCgpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9y
LmMgfCA3ICsrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDMgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
b2xvci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCmluZGV4
IDk0NWJiMDNiZGQ0ZC4uNzdjMTAzYTg2YTMwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jb2xvci5jCkBAIC0xOTE5LDcgKzE5MTksOCBAQCBzdGF0aWMgdm9pZCBpbGtf
cmVhZF9sdXRzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCQljcnRjX3N0
YXRlLT5ody5nYW1tYV9sdXQgPSBpbGtfcmVhZF9sdXRfMTAoY3J0Yyk7CiB9CiAKLXN0YXRpYyBz
dHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmdsa19yZWFkX2x1dF8xMChzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YywKKy8qIE9uIEJEVysgdGhlIGluZGV4IGF1dG8gaW5jcmVtZW50IG1vZGUgYWN0dWFs
bHkgd29ya3MgKi8KK3N0YXRpYyBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmJkd19yZWFkX2x1
dF8xMChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAkJCQkJCSB1MzIgcHJlY19pbmRleCkKIHsK
IAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2Uu
ZGV2KTsKQEAgLTE5NjAsNyArMTk2MSw3IEBAIHN0YXRpYyB2b2lkIGdsa19yZWFkX2x1dHMoc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJaWYgKGNydGNfc3RhdGUtPmdhbW1h
X21vZGUgPT0gR0FNTUFfTU9ERV9NT0RFXzhCSVQpCiAJCWNydGNfc3RhdGUtPmh3LmdhbW1hX2x1
dCA9IGlsa19yZWFkX2x1dF84KGNydGMpOwogCWVsc2UKLQkJY3J0Y19zdGF0ZS0+aHcuZ2FtbWFf
bHV0ID0gZ2xrX3JlYWRfbHV0XzEwKGNydGMsIFBBTF9QUkVDX0lOREVYX1ZBTFVFKDApKTsKKwkJ
Y3J0Y19zdGF0ZS0+aHcuZ2FtbWFfbHV0ID0gYmR3X3JlYWRfbHV0XzEwKGNydGMsIFBBTF9QUkVD
X0lOREVYX1ZBTFVFKDApKTsKIH0KIAogc3RhdGljIHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAq
CkBAIC0yMDE2LDcgKzIwMTcsNyBAQCBzdGF0aWMgdm9pZCBpY2xfcmVhZF9sdXRzKHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCQljcnRjX3N0YXRlLT5ody5nYW1tYV9sdXQg
PSBpY2xfcmVhZF9sdXRfbXVsdGlfc2VnbWVudChjcnRjKTsKIAkJYnJlYWs7CiAJZGVmYXVsdDoK
LQkJY3J0Y19zdGF0ZS0+aHcuZ2FtbWFfbHV0ID0gZ2xrX3JlYWRfbHV0XzEwKGNydGMsIFBBTF9Q
UkVDX0lOREVYX1ZBTFVFKDApKTsKKwkJY3J0Y19zdGF0ZS0+aHcuZ2FtbWFfbHV0ID0gYmR3X3Jl
YWRfbHV0XzEwKGNydGMsIFBBTF9QUkVDX0lOREVYX1ZBTFVFKDApKTsKIAl9CiB9CiAKLS0gCjIu
MjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
