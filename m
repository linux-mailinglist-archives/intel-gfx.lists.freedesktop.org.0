Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B686B98B6
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 22:58:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 506156FDF0;
	Fri, 20 Sep 2019 20:58:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A9736FDEE
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 20:58:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 13:58:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,530,1559545200"; d="scan'208";a="181908274"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by orsmga008.jf.intel.com with ESMTP; 20 Sep 2019 13:58:35 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Sep 2019 13:58:10 -0700
Message-Id: <20190920205810.211048-7-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190920205810.211048-1-jose.souza@intel.com>
References: <20190920205810.211048-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 6/6] drm/i915/tgl: Check the UC health of tc
 controllers after power on
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TmV3IHN0ZXAgYWRkZWQgZm9yIFRHTCwgcmVxdWlyZWQgZm9yIHVzIHRvIGNoZWNrIHRoZSBUQwpt
aWNyb2NvbnRyb2xsZXIgaGVhbHRoIGFmdGVyIHBvd2VyIG9uIFRDIGF1eC4KCkJTcGVjOiA0OTI5
NAoKUmV2aWV3ZWQtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KU2lnbmVkLW9m
Zi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgfCAxMyAr
KysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKaW5kZXgg
Y2U4OGEyNzIyOWVmLi5mMTE4NmJjMjM1NDIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCkBAIC01NjIsNiArNTYyLDggQEAgc3Rh
dGljIHZvaWQgaWNsX3RjX3BvcnRfYXNzZXJ0X3JlZl9oZWxkKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKIAogI2VuZGlmCiAKKyNkZWZpbmUgVEdMX0FVWF9QV19UT19UQ19QT1JU
KHB3X2lkeCkJKChwd19pZHgpIC0gVEdMX1BXX0NUTF9JRFhfQVVYX1RDMSkKKwogc3RhdGljIHZv
aWQKIGljbF90Y19waHlfYXV4X3Bvd2VyX3dlbGxfZW5hYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKIAkJCQkgc3RydWN0IGk5MTVfcG93ZXJfd2VsbCAqcG93ZXJfd2VsbCkK
QEAgLTU3OCw2ICs1ODAsMTcgQEAgaWNsX3RjX3BoeV9hdXhfcG93ZXJfd2VsbF9lbmFibGUoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCUk5MTVfV1JJVEUoRFBfQVVYX0NIX0NU
TChhdXhfY2gpLCB2YWwpOwogCiAJaHN3X3Bvd2VyX3dlbGxfZW5hYmxlKGRldl9wcml2LCBwb3dl
cl93ZWxsKTsKKworCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyICYmICFwb3dlcl93ZWxs
LT5kZXNjLT5oc3cuaXNfdGNfdGJ0KSB7CisJCWVudW0gdGNfcG9ydCB0Y19wb3J0OworCisJCXRj
X3BvcnQgPSBUR0xfQVVYX1BXX1RPX1RDX1BPUlQocG93ZXJfd2VsbC0+ZGVzYy0+aHN3LmlkeCk7
CisJCUk5MTVfV1JJVEUoSElQX0lOREVYX1JFRyh0Y19wb3J0KSwgSElQX0lOREVYX1ZBTCh0Y19w
b3J0LCAweDIpKTsKKworCQlpZiAoaW50ZWxfZGVfd2FpdF9mb3Jfc2V0KGRldl9wcml2LCBES0xf
Q01OX1VDX0RXXzI3KHRjX3BvcnQpLAorCQkJCQkgIERLTF9DTU5fVUNfRFcyN19VQ19IRUFMVEgs
IDEpKQorCQkJRFJNX1dBUk4oIlRpbWVvdXQgd2FpdGluZyBUQyB1QyBoZWFsdGhcbiIpOworCX0K
IH0KIAogc3RhdGljIHZvaWQKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
