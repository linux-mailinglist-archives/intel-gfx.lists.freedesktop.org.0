Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D29B62B27CA
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 23:05:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20BA66E86F;
	Fri, 13 Nov 2020 22:05:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D4D56E86F
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 22:05:06 +0000 (UTC)
IronPort-SDR: 5e9oDtNeCGaid2iAAI3mHFkAE8UY6cQm7jNNUIaNXn+R6Sy9bhd51NADp/L2gAKxtiXuZIZcKl
 c8RSU2WgsYqA==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="188559565"
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="188559565"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 14:05:05 -0800
IronPort-SDR: gr5xQgVIvuSBwhaI3g5vJvJv3TnHRnEV4CyRF7POb0F61rnLyH4RXw7/H73L+hZbsQRZ08EPVz
 rzWsHZ1FGXMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="309297143"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 13 Nov 2020 14:05:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 14 Nov 2020 00:05:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 14 Nov 2020 00:03:57 +0200
Message-Id: <20201113220358.24794-23-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
References: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 22/23] drm/i915: Add bigjoiner state dump
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFk
ZCBhIGJpZyBvZiBiaWdqb2luZXIgaW5mb3JtYXRpb24gdG8gdGhlIHN0YXRlIGR1bXAuCgpTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNCAr
KysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA3NjA3YmNkOWI3ZmUuLjhiNTFiYjA5
NmI0OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMK
QEAgLTEzMzQ1LDYgKzEzMzQ1LDEwIEBAIHN0YXRpYyB2b2lkIGludGVsX2R1bXBfcGlwZV9jb25m
aWcoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnLAogCQkgICAgdHJh
bnNjb2Rlcl9uYW1lKHBpcGVfY29uZmlnLT5tYXN0ZXJfdHJhbnNjb2RlciksCiAJCSAgICBwaXBl
X2NvbmZpZy0+c3luY19tb2RlX3NsYXZlc19tYXNrKTsKIAorCWRybV9kYmdfa21zKCZkZXZfcHJp
di0+ZHJtLCAiYmlnam9pbmVyOiAlc1xuIiwKKwkJICAgIHBpcGVfY29uZmlnLT5iaWdqb2luZXJf
c2xhdmUgPyAic2xhdmUiIDoKKwkJICAgIHBpcGVfY29uZmlnLT5iaWdqb2luZXIgPyAibWFzdGVy
IiA6ICJubyIpOworCiAJaWYgKHBpcGVfY29uZmlnLT5oYXNfcGNoX2VuY29kZXIpCiAJCWludGVs
X2R1bXBfbV9uX2NvbmZpZyhwaXBlX2NvbmZpZywgImZkaSIsCiAJCQkJICAgICAgcGlwZV9jb25m
aWctPmZkaV9sYW5lcywKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
