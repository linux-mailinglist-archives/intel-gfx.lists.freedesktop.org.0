Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 627A43D19B9
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 00:31:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 338116EB71;
	Wed, 21 Jul 2021 22:30:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B71B6EB29
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 22:30:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="211528002"
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="211528002"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 15:30:48 -0700
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="658464197"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 15:30:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Jul 2021 15:30:36 -0700
Message-Id: <20210721223043.834562-12-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210721223043.834562-1-matthew.d.roper@intel.com>
References: <20210721223043.834562-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 11/18] drm/i915/dg2: Add cdclk table and reference
 clock
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

Tm90ZSB0aGF0IERHMiBvbmx5IGhhcyBhIHNpbmdsZSBwb3NzaWJsZSByZWZjbGsgZnJlcXVlbmN5
ICgzOC40IE1IeikuCgp2MjoKIC0gRHJvcCB0d28gbm93LXVudXNlZCBjZGNsayBlbnRyaWVzCgpC
c3BlYzogNTQwMzQKQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29t
PgpTaWduZWQtb2ZmLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5j
b20+ClNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+
ClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCAyMiAr
KysrKysrKysrKysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xr
LmMKaW5kZXggOTQ0ZmIxM2I5ZDk4Li5mZjM1YzI5NTA4ZDUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKQEAgLTEyOTAsNiArMTI5MCwxNiBAQCBzdGF0aWMg
Y29uc3Qgc3RydWN0IGludGVsX2NkY2xrX3ZhbHMgYWRscF9jZGNsa190YWJsZVtdID0gewogCXt9
CiB9OwogCitzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2NkY2xrX3ZhbHMgZGcyX2NkY2xrX3Rh
YmxlW10gPSB7CisJeyAucmVmY2xrID0gMzg0MDAsIC5jZGNsayA9IDE3MjgwMCwgLmRpdmlkZXIg
PSAyLCAucmF0aW8gPSAgOSB9LAorCXsgLnJlZmNsayA9IDM4NDAwLCAuY2RjbGsgPSAxOTIwMDAs
IC5kaXZpZGVyID0gMiwgLnJhdGlvID0gMTAgfSwKKwl7IC5yZWZjbGsgPSAzODQwMCwgLmNkY2xr
ID0gMzA3MjAwLCAuZGl2aWRlciA9IDIsIC5yYXRpbyA9IDE2IH0sCisJeyAucmVmY2xrID0gMzg0
MDAsIC5jZGNsayA9IDMyNjQwMCwgLmRpdmlkZXIgPSA0LCAucmF0aW8gPSAzNCB9LAorCXsgLnJl
ZmNsayA9IDM4NDAwLCAuY2RjbGsgPSA1NTY4MDAsIC5kaXZpZGVyID0gMiwgLnJhdGlvID0gMjkg
fSwKKwl7IC5yZWZjbGsgPSAzODQwMCwgLmNkY2xrID0gNjUyODAwLCAuZGl2aWRlciA9IDIsIC5y
YXRpbyA9IDM0IH0sCisJe30KK307CisKIHN0YXRpYyBpbnQgYnh0X2NhbGNfY2RjbGsoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBpbnQgbWluX2NkY2xrKQogewogCWNvbnN0IHN0
cnVjdCBpbnRlbF9jZGNsa192YWxzICp0YWJsZSA9IGRldl9wcml2LT5jZGNsay50YWJsZTsKQEAg
LTE0MDgsNyArMTQxOCw5IEBAIHN0YXRpYyB2b2lkIGJ4dF9kZV9wbGxfcmVhZG91dChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiB7CiAJdTMyIHZhbCwgcmF0aW87CiAKLQlpZiAo
RElTUExBWV9WRVIoZGV2X3ByaXYpID49IDExKQorCWlmIChJU19ERzIoZGV2X3ByaXYpKQorCQlj
ZGNsa19jb25maWctPnJlZiA9IDM4NDAwOworCWVsc2UgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2
KSA+PSAxMSkKIAkJaWNsX3JlYWRvdXRfcmVmY2xrKGRldl9wcml2LCBjZGNsa19jb25maWcpOwog
CWVsc2UgaWYgKElTX0NBTk5PTkxBS0UoZGV2X3ByaXYpKQogCQljbmxfcmVhZG91dF9yZWZjbGso
ZGV2X3ByaXYsIGNkY2xrX2NvbmZpZyk7CkBAIC0yODczLDcgKzI4ODUsMTMgQEAgdTMyIGludGVs
X3JlYWRfcmF3Y2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKICAqLwogdm9p
ZCBpbnRlbF9pbml0X2NkY2xrX2hvb2tzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKIHsKLQlpZiAoSVNfQUxERVJMQUtFX1AoZGV2X3ByaXYpKSB7CisJaWYgKElTX0RHMihkZXZf
cHJpdikpIHsKKwkJZGV2X3ByaXYtPmRpc3BsYXkuc2V0X2NkY2xrID0gYnh0X3NldF9jZGNsazsK
KwkJZGV2X3ByaXYtPmRpc3BsYXkuYndfY2FsY19taW5fY2RjbGsgPSBza2xfYndfY2FsY19taW5f
Y2RjbGs7CisJCWRldl9wcml2LT5kaXNwbGF5Lm1vZGVzZXRfY2FsY19jZGNsayA9IGJ4dF9tb2Rl
c2V0X2NhbGNfY2RjbGs7CisJCWRldl9wcml2LT5kaXNwbGF5LmNhbGNfdm9sdGFnZV9sZXZlbCA9
IHRnbF9jYWxjX3ZvbHRhZ2VfbGV2ZWw7CisJCWRldl9wcml2LT5jZGNsay50YWJsZSA9IGRnMl9j
ZGNsa190YWJsZTsKKwl9IGVsc2UgaWYgKElTX0FMREVSTEFLRV9QKGRldl9wcml2KSkgewogCQlk
ZXZfcHJpdi0+ZGlzcGxheS5zZXRfY2RjbGsgPSBieHRfc2V0X2NkY2xrOwogCQlkZXZfcHJpdi0+
ZGlzcGxheS5id19jYWxjX21pbl9jZGNsayA9IHNrbF9id19jYWxjX21pbl9jZGNsazsKIAkJZGV2
X3ByaXYtPmRpc3BsYXkubW9kZXNldF9jYWxjX2NkY2xrID0gYnh0X21vZGVzZXRfY2FsY19jZGNs
azsKLS0gCjIuMjUuNAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
