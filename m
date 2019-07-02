Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C53AE5C883
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 06:44:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BF5F89C1E;
	Tue,  2 Jul 2019 04:44:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC43E89BCD
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 04:44:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jul 2019 21:44:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,442,1557212400"; d="scan'208";a="157506414"
Received: from vandita-desktop.iind.intel.com ([10.223.74.126])
 by orsmga008.jf.intel.com with ESMTP; 01 Jul 2019 21:44:25 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Jul 2019 09:48:50 +0530
Message-Id: <20190702041850.4293-5-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20190702041850.4293-1-vandita.kulkarni@intel.com>
References: <20190702041850.4293-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/tgl/dsi: Gate the ddi clocks after
 pll mapping
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tm8gbmVlZCB0byBrZWVwIGl0IG9uIHRpbGwgSU8gZW5hYmxpbmcuCgpTaWduZWQtb2ZmLWJ5OiBW
YW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyB8IDExICsrKysrKysrKy0tCiAxIGZpbGUg
Y2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pY2xfZHNpLmMKaW5kZXggZDFjNTBhNDE4NmYwLi45OWNlOGM3MDgzNTMgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCkBAIC02MDksOCArNjA5LDEyIEBA
IHN0YXRpYyB2b2lkIGdlbjExX2RzaV9tYXBfcGxsKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyLAogCUk5MTVfV1JJVEUoRFBDTEtBX0NGR0NSMF9JQ0wsIHZhbCk7CiAKIAlmb3JfZWFjaF9k
c2lfcG9ydChwb3J0LCBpbnRlbF9kc2ktPnBvcnRzKSB7Ci0JCXZhbCAmPSB+RFBDTEtBX0NGR0NS
MF9ERElfQ0xLX09GRihwb3J0KTsKKwkJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCisJ
CQl2YWwgfD0gRFBDTEtBX0NGR0NSMF9ERElfQ0xLX09GRihwb3J0KTsKKwkJZWxzZQorCQkJdmFs
ICY9IH5EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfT0ZGKHBvcnQpOwogCX0KKwogCUk5MTVfV1JJVEUo
RFBDTEtBX0NGR0NSMF9JQ0wsIHZhbCk7CiAKIAlQT1NUSU5HX1JFQUQoRFBDTEtBX0NGR0NSMF9J
Q0wpOwpAQCAtOTU1LDYgKzk1OSw4IEBAIHN0YXRpYyB2b2lkCiBnZW4xMV9kc2lfZW5hYmxlX3Bv
cnRfYW5kX3BoeShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJCSAgICAgIGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZykKIHsKKwlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKKwogCS8q
IHN0ZXAgNGE6IHBvd2VyIHVwIGFsbCBsYW5lcyBvZiB0aGUgRERJIHVzZWQgYnkgRFNJICovCiAJ
Z2VuMTFfZHNpX3Bvd2VyX3VwX2xhbmVzKGVuY29kZXIpOwogCkBAIC05NzcsNyArOTgzLDggQEAg
Z2VuMTFfZHNpX2VuYWJsZV9wb3J0X2FuZF9waHkoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29k
ZXIsCiAJZ2VuMTFfZHNpX2NvbmZpZ3VyZV90cmFuc2NvZGVyKGVuY29kZXIsIHBpcGVfY29uZmln
KTsKIAogCS8qIFN0ZXAgNGw6IEdhdGUgRERJIGNsb2NrcyAqLwotCWdlbjExX2RzaV9nYXRlX2Ns
b2NrcyhlbmNvZGVyKTsKKwlpZiAoSVNfR0VOKGRldl9wcml2LCAxMSkpCisJCWdlbjExX2RzaV9n
YXRlX2Nsb2NrcyhlbmNvZGVyKTsKIH0KIAogc3RhdGljIHZvaWQgZ2VuMTFfZHNpX3Bvd2VydXBf
cGFuZWwoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCi0tIAoyLjIxLjAuNS5nYWViNTgy
YQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
