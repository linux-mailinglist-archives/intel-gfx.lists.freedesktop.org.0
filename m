Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BEF5226CD3
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 19:07:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F2D189CCE;
	Mon, 20 Jul 2020 17:07:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E732189CCE
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jul 2020 17:07:51 +0000 (UTC)
IronPort-SDR: sWt+maZM2PyOHUr2UJouR4x16E4+Vi70UeyEzF6bYunucBZp3qKuKpRrVdxPRKu+JjrTJAMxHa
 p84qC6zW1MuA==
X-IronPort-AV: E=McAfee;i="6000,8403,9688"; a="147916181"
X-IronPort-AV: E=Sophos;i="5.75,375,1589266800"; d="scan'208";a="147916181"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 10:07:51 -0700
IronPort-SDR: LphzGfcENn9xnvv6WZYVTb9aVV5K7Zfu4ylGGJDHz9LU/BxdyrTSLd5wJ7kLuId1fKf/S3JEok
 6T70BM4C22xQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,375,1589266800"; d="scan'208";a="431682322"
Received: from unknown (HELO josouza-MOBL2.amr.corp.intel.com)
 ([10.251.134.24])
 by orsmga004.jf.intel.com with ESMTP; 20 Jul 2020 10:07:50 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jul 2020 10:09:48 -0700
Message-Id: <20200720170948.28446-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200720170948.28446-1-jose.souza@intel.com>
References: <20200720170948.28446-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Add new voltage swing table
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

VGhpcyBuZXcgSEJSMiB0YWJsZSBmb3IgVEdMLVUgYW5kIFRHTC1ZIGlzIHJlcXVpcmVkIHRvIHBh
c3MKRGlzcGxheVBvcnQgY29tcGxpYW5jZS4KCkJTcGVjOiA0OTI5MQpDYzogS2hhbGVkIEFsbWFo
YWxsYXd5IDxraGFsZWQuYWxtYWhhbGxhd3lAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgMTkgKysrKysrKysrKysrKysrKysrKwog
MSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYwppbmRleCA3MTRiMmJjOTZmMjMuLmRlNWIyMTY1NjFkOCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC03MDYsNiArNzA2LDIwIEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgY25sX2RkaV9idWZfdHJhbnMgdGdsX2NvbWJvX3BoeV9kZGlf
dHJhbnNsYXRpb25zX2RwX2hicjJbXSA9CiAJeyAweDYsIDB4N0YsIDB4M0YsIDB4MDAsIDB4MDAg
fSwJLyogOTAwICAgOTAwICAgICAgMC4wICAgKi8KIH07CiAKK3N0YXRpYyBjb25zdCBzdHJ1Y3Qg
Y25sX2RkaV9idWZfdHJhbnMgdGdsX3V5X2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2RwX2hi
cjJbXSA9IHsKKwkJCQkJCS8qIE5UIG1WIFRyYW5zIG1WIGRiICAgICovCisJeyAweEEsIDB4MzUs
IDB4M0YsIDB4MDAsIDB4MDAgfSwJLyogMzUwICAgMzUwICAgICAgMC4wICAgKi8KKwl7IDB4QSwg
MHg0RiwgMHgzNiwgMHgwMCwgMHgwOSB9LAkvKiAzNTAgICA1MDAgICAgICAzLjEgICAqLworCXsg
MHhDLCAweDYwLCAweDMyLCAweDAwLCAweDBEIH0sCS8qIDM1MCAgIDcwMCAgICAgIDYuMCAgICov
CisJeyAweEMsIDB4N0YsIDB4MkQsIDB4MDAsIDB4MTIgfSwJLyogMzUwICAgOTAwICAgICAgOC4y
ICAgKi8KKwl7IDB4QywgMHg0NywgMHgzRiwgMHgwMCwgMHgwMCB9LAkvKiA1MDAgICA1MDAgICAg
ICAwLjAgICAqLworCXsgMHhDLCAweDZGLCAweDM2LCAweDAwLCAweDA5IH0sCS8qIDUwMCAgIDcw
MCAgICAgIDIuOSAgICovCisJeyAweDYsIDB4N0QsIDB4MzIsIDB4MDAsIDB4MEQgfSwJLyogNTAw
ICAgOTAwICAgICAgNS4xICAgKi8KKwl7IDB4NiwgMHg2MCwgMHgzQywgMHgwMCwgMHgwMyB9LAkv
KiA2NTAgICA3MDAgICAgICAwLjYgICAqLworCXsgMHg2LCAweDdGLCAweDM0LCAweDAwLCAweDBC
IH0sCS8qIDYwMCAgIDkwMCAgICAgIDMuNSAgICovCisJeyAweDYsIDB4N0YsIDB4M0YsIDB4MDAs
IDB4MDAgfSwJLyogOTAwICAgOTAwICAgICAgMC4wICAgKi8KK307CisKIC8qCiAgKiBDbG9uZWQg
dGhlIEhPQkwgZW50cnkgdG8gY29tcGx5IHdpdGggdGhlIHZvbHRhZ2UgYW5kIHByZS1lbXBoYXNp
cyBlbnRyaWVzCiAgKiB0aGF0IERpc3BsYXlQb3J0IHNwZWNpZmljYXRpb24gcmVxdWlyZXMKQEAg
LTEwODcsNiArMTEwMSwxMSBAQCB0Z2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqZW5jb2RlciwgaW50IHR5cGUsIGludCByYXRlLAogCWlmICh0eXBlID09IElOVEVM
X09VVFBVVF9IRE1JIHx8IHR5cGUgPT0gSU5URUxfT1VUUFVUX0VEUCkgewogCQlyZXR1cm4gaWNs
X2dldF9jb21ib19idWZfdHJhbnMoZW5jb2RlciwgdHlwZSwgcmF0ZSwgbl9lbnRyaWVzKTsKIAl9
IGVsc2UgaWYgKHJhdGUgPiAyNzAwMDApIHsKKwkJaWYgKElTX1RHTF9VKGRldl9wcml2KSB8fCBJ
U19UR0xfWShkZXZfcHJpdikpIHsKKwkJCSpuX2VudHJpZXMgPSBBUlJBWV9TSVpFKHRnbF91eV9j
b21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19kcF9oYnIyKTsKKwkJCXJldHVybiB0Z2xfdXlfY29t
Ym9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZHBfaGJyMjsKKwkJfQorCiAJCSpuX2VudHJpZXMgPSBB
UlJBWV9TSVpFKHRnbF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19kcF9oYnIyKTsKIAkJcmV0
dXJuIHRnbF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19kcF9oYnIyOwogCX0KLS0gCjIuMjcu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
