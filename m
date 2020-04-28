Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7641BC66C
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 19:20:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBDE16E881;
	Tue, 28 Apr 2020 17:20:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DF046E87E;
 Tue, 28 Apr 2020 17:20:24 +0000 (UTC)
IronPort-SDR: /Kx/3d2X3ItNcg10Dl/oVwlsKgZMiQOmTTPCjuYSEo9yBYEysDNvudD6AKihKdsZc/Ia05EEs6
 fePikacHWQpA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 10:20:23 -0700
IronPort-SDR: CgZl5bpfNa/QRPPzFNDGa1qVALaZc7vjo8a4adaRjni29bsaWisJvakIxK4TJemrlzjdm3VQdf
 b86CXNVKWjpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,328,1583222400"; d="scan'208";a="261168126"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 28 Apr 2020 10:20:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Apr 2020 20:20:19 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 28 Apr 2020 20:19:33 +0300
Message-Id: <20200428171940.19552-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200428171940.19552-1-ville.syrjala@linux.intel.com>
References: <20200428171940.19552-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 09/16] drm: Flatten drm_mode_vrefresh()
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
Cc: intel-gfx@lists.freedesktop.org, Sam Ravnborg <sam@ravnborg.org>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
bW92ZSB0aGUgcG9pbnRsZXNzIHdob2xlLWZ1bmN0aW9uIGluZGVudGF0aW9uLiBBbHNvIGRvbid0
Cm5lZWQgdG8gd29ycnkgYWJvdXQgbmVnYXRpdmUgdmFsdWVzIGFueW1vcmUgc2luY2Ugd2Ugc3dp
dGNoZWQKZXZlcnl0aGluZyB0byB1MTYuCgpSZXZpZXdlZC1ieTogU2FtIFJhdm5ib3JnIDxzYW1A
cmF2bmJvcmcub3JnPgpSZXZpZXdlZC1ieTogRW1pbCBWZWxpa292IDxlbWlsLnZlbGlrb3ZAY29s
bGFib3JhLmNvbT4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX21vZGVzLmMgfCAyNiAr
KysrKysrKysrKystLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMo
KyksIDE0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fbW9k
ZXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fbW9kZXMuYwppbmRleCA3N2Q2ODEyMDkzMWEuLmYy
ODY1Zjg4YmQ1NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9tb2Rlcy5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9kcm1fbW9kZXMuYwpAQCAtNzU3LDI0ICs3NTcsMjIgQEAgRVhQT1JU
X1NZTUJPTChkcm1fbW9kZV9zZXRfbmFtZSk7CiAgKi8KIGludCBkcm1fbW9kZV92cmVmcmVzaChj
b25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSkKIHsKLQlpbnQgcmVmcmVzaCA9IDA7
CisJdW5zaWduZWQgaW50IG51bSwgZGVuOwogCi0JaWYgKG1vZGUtPmh0b3RhbCA+IDAgJiYgbW9k
ZS0+dnRvdGFsID4gMCkgewotCQl1bnNpZ25lZCBpbnQgbnVtLCBkZW47CisJaWYgKG1vZGUtPmh0
b3RhbCA9PSAwIHx8IG1vZGUtPnZ0b3RhbCA9PSAwKQorCQlyZXR1cm4gMDsKIAotCQludW0gPSBt
b2RlLT5jbG9jayAqIDEwMDA7Ci0JCWRlbiA9IG1vZGUtPmh0b3RhbCAqIG1vZGUtPnZ0b3RhbDsK
KwludW0gPSBtb2RlLT5jbG9jayAqIDEwMDA7CisJZGVuID0gbW9kZS0+aHRvdGFsICogbW9kZS0+
dnRvdGFsOwogCi0JCWlmIChtb2RlLT5mbGFncyAmIERSTV9NT0RFX0ZMQUdfSU5URVJMQUNFKQot
CQkJbnVtICo9IDI7Ci0JCWlmIChtb2RlLT5mbGFncyAmIERSTV9NT0RFX0ZMQUdfREJMU0NBTikK
LQkJCWRlbiAqPSAyOwotCQlpZiAobW9kZS0+dnNjYW4gPiAxKQotCQkJZGVuICo9IG1vZGUtPnZz
Y2FuOworCWlmIChtb2RlLT5mbGFncyAmIERSTV9NT0RFX0ZMQUdfSU5URVJMQUNFKQorCQludW0g
Kj0gMjsKKwlpZiAobW9kZS0+ZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX0RCTFNDQU4pCisJCWRlbiAq
PSAyOworCWlmIChtb2RlLT52c2NhbiA+IDEpCisJCWRlbiAqPSBtb2RlLT52c2NhbjsKIAotCQly
ZWZyZXNoID0gRElWX1JPVU5EX0NMT1NFU1QobnVtLCBkZW4pOwotCX0KLQlyZXR1cm4gcmVmcmVz
aDsKKwlyZXR1cm4gRElWX1JPVU5EX0NMT1NFU1QobnVtLCBkZW4pOwogfQogRVhQT1JUX1NZTUJP
TChkcm1fbW9kZV92cmVmcmVzaCk7CiAKLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
