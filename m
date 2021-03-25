Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA73349913
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 19:08:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 851176EE1F;
	Thu, 25 Mar 2021 18:07:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91FF86EE22
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 18:07:32 +0000 (UTC)
IronPort-SDR: mJVM6PJv4f1OPx9KjKC0nODcOrv5JS2Q2sHe+ZF77PJIIIL+tJ+Riao7BuDE0/kb4qbPOmR8KE
 wRd7L+YNA+PA==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="178112544"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="178112544"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:32 -0700
IronPort-SDR: yi0l8pYVnQbOD1DwsU0Vuju/nPuq9SSLQPkwH2DTuf+5IQzwJxq60Fl3W9OaYQkb1BcuOjDD4Y
 avZeuUSSU1rQ==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="453176638"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:31 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 11:06:55 -0700
Message-Id: <20210325180720.401410-26-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210325180720.401410-1-matthew.d.roper@intel.com>
References: <20210325180720.401410-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 25/50] drm/i915/adl_p: Add cdclk support for
 ADL-P
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
Cc: me@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgoKQURMLVAg
aGFzIDMgcG9zc2libGUgcmVmY2xrIGZyZXF1ZW5jaWVzOiAxOS4yTUh6LAoyNE1IeiBhbmQgMzgu
NE1IegoKQlNwZWM6IDU1NDA5LCA0OTIwOApDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVy
QGludGVsLmNvbT4KQ2M6IENsaW50b24gVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNv
bT4KQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+ClNp
Z25lZC1vZmYtYnk6IENsaW50b24gVGF5bG9yIDxDbGludG9uLkEuVGF5bG9yQGludGVsLmNvbT4K
U2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCAyOSArKysrKysr
KysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y2RjbGsuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwppbmRl
eCAzZjQzYWQ0ZDczNjIuLjg1ZGE4YzQzZDVkNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY2RjbGsuYwpAQCAtMTI1Nyw2ICsxMjU3LDI3IEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgaW50ZWxfY2RjbGtfdmFscyBya2xfY2RjbGtfdGFibGVbXSA9IHsKIAl7fQogfTsKIAor
c3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9jZGNsa192YWxzIGFkbHBfY2RjbGtfdGFibGVbXSA9
IHsKKwl7IC5yZWZjbGsgPSAxOTIwMCwgLmNkY2xrID0gMTcyODAwLCAuZGl2aWRlciA9IDMsIC5y
YXRpbyA9IDI3IH0sCisJeyAucmVmY2xrID0gMTkyMDAsIC5jZGNsayA9IDE5MjAwMCwgLmRpdmlk
ZXIgPSAyLCAucmF0aW8gPSAyMCB9LAorCXsgLnJlZmNsayA9IDE5MjAwLCAuY2RjbGsgPSAzMDcy
MDAsIC5kaXZpZGVyID0gMiwgLnJhdGlvID0gMzIgfSwKKwl7IC5yZWZjbGsgPSAxOTIwMCwgLmNk
Y2xrID0gNTU2ODAwLCAuZGl2aWRlciA9IDIsIC5yYXRpbyA9IDU4IH0sCisJeyAucmVmY2xrID0g
MTkyMDAsIC5jZGNsayA9IDY1MjgwMCwgLmRpdmlkZXIgPSAyLCAucmF0aW8gPSA2OCB9LAorCisJ
eyAucmVmY2xrID0gMjQwMDAsIC5jZGNsayA9IDE3NjAwMCwgLmRpdmlkZXIgPSAzLCAucmF0aW8g
PSAyMiB9LAorCXsgLnJlZmNsayA9IDI0MDAwLCAuY2RjbGsgPSAxOTIwMDAsIC5kaXZpZGVyID0g
MiwgLnJhdGlvID0gMTYgfSwKKwl7IC5yZWZjbGsgPSAyNDAwMCwgLmNkY2xrID0gMzEyMDAwLCAu
ZGl2aWRlciA9IDIsIC5yYXRpbyA9IDI2IH0sCisJeyAucmVmY2xrID0gMjQwMDAsIC5jZGNsayA9
IDU1MjAwMCwgLmRpdmlkZXIgPSAyLCAucmF0aW8gPSA0NiB9LAorCXsgLnJlZmNsayA9IDI0NDAw
LCAuY2RjbGsgPSA2NDgwMDAsIC5kaXZpZGVyID0gMiwgLnJhdGlvID0gNTQgfSwKKworCXsgLnJl
ZmNsayA9IDM4NDAwLCAuY2RjbGsgPSAxNzkyMDAsIC5kaXZpZGVyID0gMywgLnJhdGlvID0gMTQg
fSwKKwl7IC5yZWZjbGsgPSAzODQwMCwgLmNkY2xrID0gMTkyMDAwLCAuZGl2aWRlciA9IDIsIC5y
YXRpbyA9IDEwIH0sCisJeyAucmVmY2xrID0gMzg0MDAsIC5jZGNsayA9IDMwNzIwMCwgLmRpdmlk
ZXIgPSAyLCAucmF0aW8gPSAxNiB9LAorCXsgLnJlZmNsayA9IDM4NDAwLCAuY2RjbGsgPSA1NTY4
MDAsIC5kaXZpZGVyID0gMiwgLnJhdGlvID0gMjkgfSwKKwl7IC5yZWZjbGsgPSAzODQwMCwgLmNk
Y2xrID0gNjUyODAwLCAuZGl2aWRlciA9IDIsIC5yYXRpbyA9IDM0IH0sCisJe30KK307CisKIHN0
YXRpYyBpbnQgYnh0X2NhbGNfY2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LCBpbnQgbWluX2NkY2xrKQogewogCWNvbnN0IHN0cnVjdCBpbnRlbF9jZGNsa192YWxzICp0YWJs
ZSA9IGRldl9wcml2LT5jZGNsay50YWJsZTsKQEAgLTI4NDgsNyArMjg2OSwxMyBAQCB1MzIgaW50
ZWxfcmVhZF9yYXdjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogICovCiB2
b2lkIGludGVsX2luaXRfY2RjbGtfaG9va3Moc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQogewotCWlmIChJU19ST0NLRVRMQUtFKGRldl9wcml2KSkgeworCWlmIChJU19BTERFUkxB
S0VfUChkZXZfcHJpdikpIHsKKwkJZGV2X3ByaXYtPmRpc3BsYXkuc2V0X2NkY2xrID0gYnh0X3Nl
dF9jZGNsazsKKwkJZGV2X3ByaXYtPmRpc3BsYXkuYndfY2FsY19taW5fY2RjbGsgPSBza2xfYndf
Y2FsY19taW5fY2RjbGs7CisJCWRldl9wcml2LT5kaXNwbGF5Lm1vZGVzZXRfY2FsY19jZGNsayA9
IGJ4dF9tb2Rlc2V0X2NhbGNfY2RjbGs7CisJCWRldl9wcml2LT5kaXNwbGF5LmNhbGNfdm9sdGFn
ZV9sZXZlbCA9IHRnbF9jYWxjX3ZvbHRhZ2VfbGV2ZWw7CisJCWRldl9wcml2LT5jZGNsay50YWJs
ZSA9IGFkbHBfY2RjbGtfdGFibGU7CisJfSBlbHNlIGlmIChJU19ST0NLRVRMQUtFKGRldl9wcml2
KSkgewogCQlkZXZfcHJpdi0+ZGlzcGxheS5zZXRfY2RjbGsgPSBieHRfc2V0X2NkY2xrOwogCQlk
ZXZfcHJpdi0+ZGlzcGxheS5id19jYWxjX21pbl9jZGNsayA9IHNrbF9id19jYWxjX21pbl9jZGNs
azsKIAkJZGV2X3ByaXYtPmRpc3BsYXkubW9kZXNldF9jYWxjX2NkY2xrID0gYnh0X21vZGVzZXRf
Y2FsY19jZGNsazsKLS0gCjIuMjUuNAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
