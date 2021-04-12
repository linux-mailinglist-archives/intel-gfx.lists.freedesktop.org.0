Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E92B335B9EA
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 07:46:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F0AE6E041;
	Mon, 12 Apr 2021 05:46:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 633816E041
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 05:46:26 +0000 (UTC)
IronPort-SDR: wdaASbNO14y6hvfxUBmlcR6+58/3F+jKKc8LYOfVyq8HbbBaDpby9HYy0pwiZXd5IRz/buYJAy
 9QFot5/vjN/Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9951"; a="193677486"
X-IronPort-AV: E=Sophos;i="5.82,214,1613462400"; d="scan'208";a="193677486"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2021 22:46:23 -0700
IronPort-SDR: ZZ9o96AruOkY5tp9ZL+es+6evYYKCq15afrrYExve3K21OeBIZN/fr6p77NGcsJji5+VDXTqCQ
 JWypQyl+mBtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,214,1613462400"; d="scan'208";a="449867538"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 11 Apr 2021 22:46:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 Apr 2021 08:46:21 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Apr 2021 08:46:06 +0300
Message-Id: <20210412054607.18133-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210412054607.18133-1-ville.syrjala@linux.intel.com>
References: <20210412054607.18133-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915: Don't use {skl,
 cnl}_hpd_pin() for bxt/glk
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
c3QgbGV0IGJ4dC9nbGsgZmFsbCBiYWNrIHRvIGludGVsX2hwZF9waW5fZGVmYXVsdCgpIGluc3Rl
YWQKb2YgdXNpbmcgc2tsX2hwZF9waW4oKSBvciBjbmxfaHBkX3BpbigpLiBEb2Vzbid0IHJlYWxs
eSBtYXR0ZXIKc2luY2UgYm90aCBmdW5jdGlvbnMgd2lsbCBlbmQgdXAgcmV0dXJuaW5nIHRoZSBj
b3JyZWN0IGhwZCBwaW4KYW55d2F5LCBidXQgSSBmaW5kIGl0IGEgYml0IGxlc3MgY29uZnVzaW5n
IHdoZW4gYnh0L2dsayBhcmUKZnVsbHkgc2VwYXJhdGVkIGZyb20gdGhlIGxvZ2ljIGZvciB0aGUg
b3RoZXIgcGxhdGZvcm1zLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmlu
ZGV4IGRlZWYyNGRhMDBiNS4uZTIwOGRlZDlhNjg4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMKQEAgLTQ2MTIsOSArNDYxMiw5IEBAIHZvaWQgaW50ZWxfZGRpX2lu
aXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBvcnQgcG9ydCkKIAkJ
ZW5jb2Rlci0+aHBkX3BpbiA9IGVobF9ocGRfcGluKGRldl9wcml2LCBwb3J0KTsKIAllbHNlIGlm
IChJU19ESVNQTEFZX1ZFUihkZXZfcHJpdiwgMTEpKQogCQllbmNvZGVyLT5ocGRfcGluID0gaWNs
X2hwZF9waW4oZGV2X3ByaXYsIHBvcnQpOwotCWVsc2UgaWYgKElTX0RJU1BMQVlfVkVSKGRldl9w
cml2LCAxMCkpCisJZWxzZSBpZiAoSVNfQ0FOTk9OTEFLRShkZXZfcHJpdikpCiAJCWVuY29kZXIt
PmhwZF9waW4gPSBjbmxfaHBkX3BpbihkZXZfcHJpdiwgcG9ydCk7Ci0JZWxzZSBpZiAoSVNfRElT
UExBWV9WRVIoZGV2X3ByaXYsIDkpKQorCWVsc2UgaWYgKElTX0RJU1BMQVlfVkVSKGRldl9wcml2
LCA5KSAmJiAhSVNfQlJPWFRPTihkZXZfcHJpdikpCiAJCWVuY29kZXItPmhwZF9waW4gPSBza2xf
aHBkX3BpbihkZXZfcHJpdiwgcG9ydCk7CiAJZWxzZQogCQllbmNvZGVyLT5ocGRfcGluID0gaW50
ZWxfaHBkX3Bpbl9kZWZhdWx0KGRldl9wcml2LCBwb3J0KTsKLS0gCjIuMjYuMwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
