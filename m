Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BD62245AC
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 23:14:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C36C66E1BE;
	Fri, 17 Jul 2020 21:14:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 694AD6E1BE
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 21:14:00 +0000 (UTC)
IronPort-SDR: n5L5dmU0+jN+Bo0mpSxCATTWVWIXy8VGBN6POt6J3sSwx0RlUPSfqu7+pJ/eKac4KvTT+mJTwp
 5YPBwFbhlbkQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9685"; a="137147793"
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="137147793"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 14:13:59 -0700
IronPort-SDR: uR4LCbbwZbkXyaG7NATmOs/8a2vpwnsEx2AWeisEv/C/X2eB2ZNvEzJ1HghC00eq6ztEDr9p1A
 k1Qb+P5poLFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="318893564"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 17 Jul 2020 14:13:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 18 Jul 2020 00:13:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Jul 2020 00:13:29 +0300
Message-Id: <20200717211345.26851-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/20] drm/i915:
 s/glk_read_lut_10/bdw_read_lut_10/
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
a19yZWFkX2x1dF8xMCgpIHdvcmtzIGp1c3QgZmluZCBmb3IgYWxsIGJkdysgcGxhdGZvcm1zLCBz
bwpyZW5hbWUgaXQuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY29sb3IuYyB8IDcgKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwg
MyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2NvbG9yLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9y
LmMKaW5kZXggOTQ1YmIwM2JkZDRkLi43N2MxMDNhODZhMzAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKQEAgLTE5MTksNyArMTkxOSw4IEBAIHN0YXRpYyB2
b2lkIGlsa19yZWFkX2x1dHMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJ
CWNydGNfc3RhdGUtPmh3LmdhbW1hX2x1dCA9IGlsa19yZWFkX2x1dF8xMChjcnRjKTsKIH0KIAot
c3RhdGljIHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqZ2xrX3JlYWRfbHV0XzEwKHN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjLAorLyogT24gQkRXKyB0aGUgaW5kZXggYXV0byBpbmNyZW1lbnQgbW9k
ZSBhY3R1YWxseSB3b3JrcyAqLworc3RhdGljIHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqYmR3
X3JlYWRfbHV0XzEwKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCQkJCQkJIHUzMiBwcmVjX2lu
ZGV4KQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0
Yy0+YmFzZS5kZXYpOwpAQCAtMTk2MCw3ICsxOTYxLDcgQEAgc3RhdGljIHZvaWQgZ2xrX3JlYWRf
bHV0cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAlpZiAoY3J0Y19zdGF0
ZS0+Z2FtbWFfbW9kZSA9PSBHQU1NQV9NT0RFX01PREVfOEJJVCkKIAkJY3J0Y19zdGF0ZS0+aHcu
Z2FtbWFfbHV0ID0gaWxrX3JlYWRfbHV0XzgoY3J0Yyk7CiAJZWxzZQotCQljcnRjX3N0YXRlLT5o
dy5nYW1tYV9sdXQgPSBnbGtfcmVhZF9sdXRfMTAoY3J0YywgUEFMX1BSRUNfSU5ERVhfVkFMVUUo
MCkpOworCQljcnRjX3N0YXRlLT5ody5nYW1tYV9sdXQgPSBiZHdfcmVhZF9sdXRfMTAoY3J0Yywg
UEFMX1BSRUNfSU5ERVhfVkFMVUUoMCkpOwogfQogCiBzdGF0aWMgc3RydWN0IGRybV9wcm9wZXJ0
eV9ibG9iICoKQEAgLTIwMTYsNyArMjAxNyw3IEBAIHN0YXRpYyB2b2lkIGljbF9yZWFkX2x1dHMo
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJCWNydGNfc3RhdGUtPmh3Lmdh
bW1hX2x1dCA9IGljbF9yZWFkX2x1dF9tdWx0aV9zZWdtZW50KGNydGMpOwogCQlicmVhazsKIAlk
ZWZhdWx0OgotCQljcnRjX3N0YXRlLT5ody5nYW1tYV9sdXQgPSBnbGtfcmVhZF9sdXRfMTAoY3J0
YywgUEFMX1BSRUNfSU5ERVhfVkFMVUUoMCkpOworCQljcnRjX3N0YXRlLT5ody5nYW1tYV9sdXQg
PSBiZHdfcmVhZF9sdXRfMTAoY3J0YywgUEFMX1BSRUNfSU5ERVhfVkFMVUUoMCkpOwogCX0KIH0K
IAotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
