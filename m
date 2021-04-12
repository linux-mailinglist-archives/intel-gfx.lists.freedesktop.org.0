Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 137F835B9E8
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 07:46:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 741AF89FF7;
	Mon, 12 Apr 2021 05:46:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAC3489FF7
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 05:46:19 +0000 (UTC)
IronPort-SDR: pxawBn4Ulp3G+stNlBYyU/94T/lVd7lILxcdTbEeYaq8LzYCGjuF8jgNnj7nAlONFOVapXccRz
 HFlRFvufXPow==
X-IronPort-AV: E=McAfee;i="6000,8403,9951"; a="174210870"
X-IronPort-AV: E=Sophos;i="5.82,214,1613462400"; d="scan'208";a="174210870"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2021 22:46:17 -0700
IronPort-SDR: OJivCeZn84p5wSyejLyDu/8dnz+zbsO6i0fzAbbUMMfXH1SzLj6jVAscU02ewS3o7o67HVAG3X
 Vf+z4RkS+acQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,214,1613462400"; d="scan'208";a="521051916"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 11 Apr 2021 22:46:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 Apr 2021 08:46:15 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Apr 2021 08:46:04 +0300
Message-Id: <20210412054607.18133-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210412054607.18133-1-ville.syrjala@linux.intel.com>
References: <20210412054607.18133-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: Restore lost glk ccs w/a
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IGxvc3QgYSBDQ1MgcmVsYXRlZCB3L2Egb24gZ2xrIHdoZW4gdGhlIGRpc3BsYXkgdmVyc2lvbgpi
ZWNhbWUgMTAgaW5zdGVhZCBvZiA5LiBSZXN0b3JlIHRoZSBjb3JyZWN0IGNoZWNrLgoKQ2M6IE1h
dHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+CkZpeGVzOiAyYjVhNDU2MmVkZDAg
KCJkcm0vaTkxNS9kaXNwbGF5OiBTaW1wbGlmeSBHTEsgZGlzcGxheSB2ZXJzaW9uIHRlc3RzIikK
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8
IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA0MTFi
NDZjMDEyZjguLjdlYWM4OTNiNGY5NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKQEAgLTE0MDYsNyArMTQwNiw4IEBAIGludGVsX2ZiX3N0cmlkZV9h
bGlnbm1lbnQoY29uc3Qgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIsIGludCBjb2xvcl9wbGFu
ZSkKIAkJICogcmVxdWlyZSB0aGUgZW50aXJlIGZiIHRvIGFjY29tbW9kYXRlIHRoYXQgdG8gYXZv
aWQKIAkJICogcG90ZW50aWFsIHJ1bnRpbWUgZXJyb3JzIGF0IHBsYW5lIGNvbmZpZ3VyYXRpb24g
dGltZS4KIAkJICovCi0JCWlmIChJU19ESVNQTEFZX1ZFUihkZXZfcHJpdiwgOSkgJiYgY29sb3Jf
cGxhbmUgPT0gMCAmJiBmYi0+d2lkdGggPiAzODQwKQorCQlpZiAoKElTX0RJU1BMQVlfVkVSKGRl
dl9wcml2LCA5KSB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkgJiYKKwkJICAgIGNvbG9yX3Bs
YW5lID09IDAgJiYgZmItPndpZHRoID4gMzg0MCkKIAkJCXRpbGVfd2lkdGggKj0gNDsKIAkJLyoK
IAkJICogVGhlIG1haW4gc3VyZmFjZSBwaXRjaCBtdXN0IGJlIHBhZGRlZCB0byBhIG11bHRpcGxl
IG9mIGZvdXIKLS0gCjIuMjYuMwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
