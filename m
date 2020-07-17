Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2675F2245B0
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 23:14:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 908546E216;
	Fri, 17 Jul 2020 21:14:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48E116E216
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 21:14:17 +0000 (UTC)
IronPort-SDR: iBt8quj7hgWRuZNKUMjDD43oOn6qulK38UWfGoAUTQhNpB0ojnvy+Vq3JH29221JFN71Ori72+
 hkYSRZrfbHvw==
X-IronPort-AV: E=McAfee;i="6000,8403,9685"; a="137147849"
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="137147849"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 14:14:16 -0700
IronPort-SDR: wFJdcf33WvsnMZQceH5KzRpUUcyBkoj5u9PTCaxtPZOfsOGN+bzAkVJeoL9mI/ITa1gK2PGCkA
 cAzknrNAm0ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="325532437"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 17 Jul 2020 14:14:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 18 Jul 2020 00:14:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Jul 2020 00:13:35 +0300
Message-Id: <20200717211345.26851-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/20] drm/i915: Add gamma/degamma readout for
 bdw+
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
YWQgb3V0IHRoZSBnYW1tZS9kZWdhbW1hIExVVCBvbiBiZHcrLiBOb3QgZW50aXJlbHkgY29tcGxl
dGUKYXMgd2UgbmVlZCBhIGJpdCBtb3JlIHNwZWNpYWwgc2F1Y2UgdG8gaGFuZGxlIHRoZSBzcGxp
dCBnYW1tYQptb2RlLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NvbG9yLmMgfCAyNyArKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwg
MjcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY29sb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29s
b3IuYwppbmRleCA2ODQyZjVjMDM1NmQuLjU3NDJhYzFhZjg2MiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwpAQCAtMTk5MSw2ICsxOTkxLDMyIEBAIHN0YXRp
YyBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmJkd19yZWFkX2x1dF8xMChzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YywKIAlyZXR1cm4gYmxvYjsKIH0KIAorc3RhdGljIHZvaWQgYmR3X3JlYWRfbHV0
cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKK3sKKwlzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsKKwlzdHJ1
Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKipibG9iID0KKwkJY3J0Y19zdGF0ZS0+Y3NjX21vZGUgJiBD
U0NfUE9TSVRJT05fQkVGT1JFX0dBTU1BID8KKwkJJmNydGNfc3RhdGUtPmh3LmdhbW1hX2x1dCA6
ICZjcnRjX3N0YXRlLT5ody5kZWdhbW1hX2x1dDsKKworCWlmICghY3J0Y19zdGF0ZS0+Z2FtbWFf
ZW5hYmxlKQorCQlyZXR1cm47CisKKwlzd2l0Y2ggKGNydGNfc3RhdGUtPmdhbW1hX21vZGUpIHsK
KwljYXNlIEdBTU1BX01PREVfTU9ERV84QklUOgorCQkqYmxvYiA9IGlsa19yZWFkX2x1dF84KGNy
dGMpOworCQlicmVhazsKKwljYXNlIEdBTU1BX01PREVfTU9ERV9TUExJVDoKKwkJLyogRklYTUUg
Ki8KKwkJYnJlYWs7CisJY2FzZSBHQU1NQV9NT0RFX01PREVfMTBCSVQ6CisJCSpibG9iID0gYmR3
X3JlYWRfbHV0XzEwKGNydGMsIFBBTF9QUkVDX0lOREVYX1ZBTFVFKDApKTsKKwkJYnJlYWs7CisJ
ZGVmYXVsdDoKKwkJTUlTU0lOR19DQVNFKGNydGNfc3RhdGUtPmdhbW1hX21vZGUpOworCQlicmVh
azsKKwl9Cit9CisKIHN0YXRpYyBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmdsa19yZWFkX2Rl
Z2FtbWFfbHV0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogewogCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwpAQCAtMjE1NCw2ICsy
MTgwLDcgQEAgdm9pZCBpbnRlbF9jb2xvcl9pbml0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQog
CQkJZGV2X3ByaXYtPmRpc3BsYXkucmVhZF9sdXRzID0gZ2xrX3JlYWRfbHV0czsKIAkJfSBlbHNl
IGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDgpIHsKIAkJCWRldl9wcml2LT5kaXNwbGF5Lmxv
YWRfbHV0cyA9IGJkd19sb2FkX2x1dHM7CisJCQlkZXZfcHJpdi0+ZGlzcGxheS5yZWFkX2x1dHMg
PSBiZHdfcmVhZF9sdXRzOwogCQl9IGVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gNykg
ewogCQkJZGV2X3ByaXYtPmRpc3BsYXkubG9hZF9sdXRzID0gaXZiX2xvYWRfbHV0czsKIAkJfSBl
bHNlIHsKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
