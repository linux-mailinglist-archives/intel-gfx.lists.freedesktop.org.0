Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4D9212C4C
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 20:25:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC2036E084;
	Thu,  2 Jul 2020 18:25:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4F966E084
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 18:25:04 +0000 (UTC)
IronPort-SDR: a3YQADLczyo/D5y0VqaNtaNwfZ7QQVnrxASccRrxvvceqkv6v6Sf+l6dL2CxKlVj5GehQc0lNl
 UfJPfrI1iaTw==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="231846215"
X-IronPort-AV: E=Sophos;i="5.75,305,1589266800"; d="scan'208";a="231846215"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 11:24:55 -0700
IronPort-SDR: TxnFyHOaw3168MTKk4HTviAT2TWsFAKv7i5AsaHTgUF8e76M8716icQu+Viy/Oa/xlm787LV8h
 ltHG3KBbXR3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,305,1589266800"; d="scan'208";a="295979267"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 02 Jul 2020 11:24:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Jul 2020 21:24:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jul 2020 21:24:50 +0300
Message-Id: <20200702182450.6804-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200702182450.6804-1-ville.syrjala@linux.intel.com>
References: <20200702182450.6804-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Fix the training pattern debug
 print
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkN1
cnJlbnRseSB3ZSBjbGFpbSB0byB1c2UgVFBTNyB3aGVuIHVzaW5nIFRQUzQuIFRoYXQgaXMganVz
dApjb25mdXNpbmcsIHNvIGxldCdzIGZpeCB0aGUgZGVidWcgcHJpbnQuCgpBbmQgd2hpbGUgd2Un
cmUgdG91Y2hpbmcgdGhpcyBsZXQncyBhZGQgdGhlIGN1c3RvbWFyeQplbmNvZGVyIGlkL25hbWUg
YXMgd2VsbC4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jIHwgMjYgKysrKysrKysrKysrKysrKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIxIGlu
c2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jCmluZGV4IDVhYzE4MjM1N2ZjOS4uZWJhOTdiMWY1ODM5IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC00MzUzLDE3ICs0MzUzLDMzIEBAIHZvaWQg
aW50ZWxfZHBfc2V0X3NpZ25hbF9sZXZlbHMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAlp
bnRlbF9kcC0+c2V0X3NpZ25hbF9sZXZlbHMoaW50ZWxfZHApOwogfQogCitzdGF0aWMgY2hhciBk
cF90cmFpbmluZ19wYXR0ZXJuX25hbWUodTggdHJhaW5fcGF0KQoreworCXN3aXRjaCAodHJhaW5f
cGF0KSB7CisJY2FzZSBEUF9UUkFJTklOR19QQVRURVJOXzE6CisJY2FzZSBEUF9UUkFJTklOR19Q
QVRURVJOXzI6CisJY2FzZSBEUF9UUkFJTklOR19QQVRURVJOXzM6CisJCXJldHVybiAnMCcgKyB0
cmFpbl9wYXQ7CisJY2FzZSBEUF9UUkFJTklOR19QQVRURVJOXzQ6CisJCXJldHVybiAnNCc7CisJ
ZGVmYXVsdDoKKwkJcmV0dXJuICc/JzsKKwl9Cit9CisKIHZvaWQKIGludGVsX2RwX3Byb2dyYW1f
bGlua190cmFpbmluZ19wYXR0ZXJuKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJCQkJICAg
ICAgIHU4IGRwX3RyYWluX3BhdCkKIHsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsKLQl1OCB0cmFpbl9wYXRfbWFzayA9IGRybV9kcF90
cmFpbmluZ19wYXR0ZXJuX21hc2soaW50ZWxfZHAtPmRwY2QpOworCXN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyID0gJmRwX3RvX2RpZ19wb3J0KGludGVsX2RwKS0+YmFzZTsKKwlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsK
Kwl1OCB0cmFpbl9wYXQgPSBkcF90cmFpbl9wYXQgJiBkcm1fZHBfdHJhaW5pbmdfcGF0dGVybl9t
YXNrKGludGVsX2RwLT5kcGNkKTsKIAotCWlmIChkcF90cmFpbl9wYXQgJiB0cmFpbl9wYXRfbWFz
aykKKwlpZiAodHJhaW5fcGF0KQogCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwKLQkJCSAg
ICAiVXNpbmcgRFAgdHJhaW5pbmcgcGF0dGVybiBUUFMlZFxuIiwKLQkJCSAgICBkcF90cmFpbl9w
YXQgJiB0cmFpbl9wYXRfbWFzayk7CisJCQkgICAgIltFTkNPREVSOiVkOiVzXSBVc2luZyBEUCB0
cmFpbmluZyBwYXR0ZXJuIFRQUyVjXG4iLAorCQkJICAgIGVuY29kZXItPmJhc2UuYmFzZS5pZCwg
ZW5jb2Rlci0+YmFzZS5uYW1lLAorCQkJICAgIGRwX3RyYWluaW5nX3BhdHRlcm5fbmFtZSh0cmFp
bl9wYXQpKTsKIAogCWludGVsX2RwLT5zZXRfbGlua190cmFpbihpbnRlbF9kcCwgZHBfdHJhaW5f
cGF0KTsKIH0KLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
