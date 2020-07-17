Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AAE32245B6
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 23:15:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F8A76E239;
	Fri, 17 Jul 2020 21:14:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28BFF6E239
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 21:14:34 +0000 (UTC)
IronPort-SDR: zLP5aYjyis3MtkrssQnuY2o1cZOhNSA8dMEh3jAQYGaXh0iplOndN8wQXiDF2n+xxOmz+SSIRC
 keEHBXD6sk9Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9685"; a="137147873"
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="137147873"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 14:14:33 -0700
IronPort-SDR: mR8FCRnKBjyv27Aai099Szuy+jyu+BV4ZHCxVpgyutg2cDfDrV7y9A21N+GCgrsdc/n1pxRQbt
 3r6eJlbUn5Cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="317452903"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 17 Jul 2020 14:14:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 18 Jul 2020 00:14:30 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Jul 2020 00:13:41 +0300
Message-Id: <20200717211345.26851-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/20] drm/i915: Make ilk_read_luts() capable of
 degamma readout
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
c3QgbGlrZSBpdmIrLCBpbGsvc25iIGNhbiBzZWxlY3Qgd2hldGhlciB0aGUgaHcgbHV0IGFjdHMg
YXMKZ2FtbWEgb3IgZGVnYW1tYS4gTWFrZSB0aGUgcmVhZG91dCBjb2duaXphbnQgb2YgdGhhdCBm
YWN0LgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9y
LmMgfCAxMCArKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY29sb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwpp
bmRleCAxMmE0MWZiNGE5OGMuLjdmOWUyNjQxOWI1NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwpAQCAtMTk3NywxOSArMTk3NywxOSBAQCBzdGF0aWMgc3Ry
dWN0IGRybV9wcm9wZXJ0eV9ibG9iICppbGtfcmVhZF9sdXRfMTAoc3RydWN0IGludGVsX2NydGMg
KmNydGMpCiBzdGF0aWMgdm9pZCBpbGtfcmVhZF9sdXRzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKQogewogCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0
YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOworCXN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqKmJs
b2IgPQorCQljcnRjX3N0YXRlLT5jc2NfbW9kZSAmIENTQ19QT1NJVElPTl9CRUZPUkVfR0FNTUEg
PworCQkmY3J0Y19zdGF0ZS0+aHcuZ2FtbWFfbHV0IDogJmNydGNfc3RhdGUtPmh3LmRlZ2FtbWFf
bHV0OwogCiAJaWYgKCFjcnRjX3N0YXRlLT5nYW1tYV9lbmFibGUpCiAJCXJldHVybjsKIAotCWlm
ICgoY3J0Y19zdGF0ZS0+Y3NjX21vZGUgJiBDU0NfUE9TSVRJT05fQkVGT1JFX0dBTU1BKSA9PSAw
KQotCQlyZXR1cm47Ci0KIAlzd2l0Y2ggKGNydGNfc3RhdGUtPmdhbW1hX21vZGUpIHsKIAljYXNl
IEdBTU1BX01PREVfTU9ERV84QklUOgotCQljcnRjX3N0YXRlLT5ody5nYW1tYV9sdXQgPSBpbGtf
cmVhZF9sdXRfOChjcnRjKTsKKwkJKmJsb2IgPSBpbGtfcmVhZF9sdXRfOChjcnRjKTsKIAkJYnJl
YWs7CiAJY2FzZSBHQU1NQV9NT0RFX01PREVfMTBCSVQ6Ci0JCWNydGNfc3RhdGUtPmh3LmdhbW1h
X2x1dCA9IGlsa19yZWFkX2x1dF8xMChjcnRjKTsKKwkJKmJsb2IgPSBpbGtfcmVhZF9sdXRfMTAo
Y3J0Yyk7CiAJCWJyZWFrOwogCWRlZmF1bHQ6CiAJCU1JU1NJTkdfQ0FTRShjcnRjX3N0YXRlLT5n
YW1tYV9tb2RlKTsKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
