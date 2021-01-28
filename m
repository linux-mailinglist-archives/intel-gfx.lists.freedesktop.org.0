Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1787D307A29
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 16:59:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBEC96E1DE;
	Thu, 28 Jan 2021 15:59:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 303586E1DE
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 15:59:53 +0000 (UTC)
IronPort-SDR: +fZqru8ZMBDwjPa7qye6xCGir0zMEM69UVW8liuQ5+BvLTPhjWLtCxK4OvFkMDGhzIwyrtgEJn
 D9UvoVfhfOSA==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="241781070"
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="241781070"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 07:59:52 -0800
IronPort-SDR: 4JR5+uxG10lAThBUWYr3Xr0P17KUjyEANVgtYHnap6gZKVVL+2UeYWLjv4gxTrJ18Op9klMQgL
 C/St54nZGi8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="430563176"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 28 Jan 2021 07:59:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 28 Jan 2021 17:59:48 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jan 2021 17:59:44 +0200
Message-Id: <20210128155948.13678-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm/i915: Skip vswing programming for TBT
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCklu
IHRodW5kZXJib2x0IG1vZGUgdGhlIFBIWSBpcyBvd25lZCBieSB0aGUgdGh1bmRlcmJvbHQgY29u
dHJvbGxlci4KV2UgYXJlIG5vdCBzdXBwb3NlZCB0byB0b3VjaCBpdC4gU28gc2tpcCB0aGUgdnN3
aW5nIHByb2dyYW1taW5nCmFzIHdlbGwgKHdlIGFscmVhZHkgc2tpcHBlZCB0aGUgb3RoZXIgc3Rl
cHMgbm90IGFwcGxpY2FibGUgdG8gVEJUKS4KClRvdWNoaW5nIHRoaXMgc3R1ZmYgY291bGQgc3Vw
cG9zZWRseSBpbnRlcmZlcmUgd2l0aCB0aGUgUEhZCnByb2dyYW1taW5nIGRvbmUgYnkgdGhlIHRo
dW5kZXJib2x0IGNvbnRyb2xsZXIuCgpDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwpTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCA2ICsrKysrKwog
MSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jCmluZGV4IDk1MDZiODA0ODUzMC4uYzk0NjUwNDg4ZGMxIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTI4MjcsNiArMjgyNyw5IEBA
IHN0YXRpYyB2b2lkIGljbF9tZ19waHlfZGRpX3Zzd2luZ19zZXF1ZW5jZShzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqZW5jb2RlciwKIAlpbnQgbl9lbnRyaWVzLCBsbjsKIAl1MzIgdmFsOwogCisJaWYg
KGVuY190b19kaWdfcG9ydChlbmNvZGVyKS0+dGNfbW9kZSA9PSBUQ19QT1JUX1RCVF9BTFQpCisJ
CXJldHVybjsKKwogCWRkaV90cmFuc2xhdGlvbnMgPSBpY2xfZ2V0X21nX2J1Zl90cmFucyhlbmNv
ZGVyLCBjcnRjX3N0YXRlLCAmbl9lbnRyaWVzKTsKIAogCWlmIChkcm1fV0FSTl9PTl9PTkNFKCZk
ZXZfcHJpdi0+ZHJtLCAhZGRpX3RyYW5zbGF0aW9ucykpCkBAIC0yOTYyLDYgKzI5NjUsOSBAQCB0
Z2xfZGtsX3BoeV9kZGlfdnN3aW5nX3NlcXVlbmNlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyLAogCXUzMiB2YWwsIGRwY250X21hc2ssIGRwY250X3ZhbDsKIAlpbnQgbl9lbnRyaWVzLCBs
bjsKIAorCWlmIChlbmNfdG9fZGlnX3BvcnQoZW5jb2RlciktPnRjX21vZGUgPT0gVENfUE9SVF9U
QlRfQUxUKQorCQlyZXR1cm47CisKIAlkZGlfdHJhbnNsYXRpb25zID0gdGdsX2dldF9ka2xfYnVm
X3RyYW5zKGVuY29kZXIsIGNydGNfc3RhdGUsICZuX2VudHJpZXMpOwogCiAJaWYgKGRybV9XQVJO
X09OX09OQ0UoJmRldl9wcml2LT5kcm0sICFkZGlfdHJhbnNsYXRpb25zKSkKLS0gCjIuMjYuMgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
