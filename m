Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E29B22F5A3
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jul 2020 18:45:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C43B89CC9;
	Mon, 27 Jul 2020 16:45:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1A7D89CC9
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jul 2020 16:45:24 +0000 (UTC)
IronPort-SDR: You0OnZy3QCDL4bUJsxhAq2R+AV1gctjUUesd1md4A40jzXouolR/jPn0zrbjTxdVFj158PCXo
 JcC6I7n5DUrw==
X-IronPort-AV: E=McAfee;i="6000,8403,9694"; a="150237755"
X-IronPort-AV: E=Sophos;i="5.75,402,1589266800"; d="scan'208";a="150237755"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2020 09:45:24 -0700
IronPort-SDR: 4A/bX1svfa+AJLmQ/f8V433ZqrwGUp4NBCUiyWc3kZC1uWkN0L/8DUrOxV6EQDira5tZDZyh9c
 WZ0F4dF1/vzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,402,1589266800"; d="scan'208";a="312273946"
Received: from jlmaslow-mobl2.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.254.183.193])
 by fmsmga004.fm.intel.com with ESMTP; 27 Jul 2020 09:45:24 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Jul 2020 09:47:29 -0700
Message-Id: <20200727164729.28836-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI] drm/i915: Implement WA 14011294188
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

QWx0aG91Z2ggdGhlIFdBIGRlc2NyaXB0aW9uIHRhcmdldHMgdGhlIHBsYXRmb3JtcyBpdCBpcyBh
IHdvcmthcm91bmQKZm9yIHRoZSBhZmZlY3RlZCBQQ0hzLCB0aGF0IGlzIHdoeSBpdCBpcyBiZWlu
ZyBjaGVja2VkLgoKdjI6IGV4Y2x1ZGluZyBERzEgZmFrZSBQQ0ggZnJvbSBXQQoKQlNwZWM6IDUy
ODkwCkJTcGVjOiA1MzI3MwpCU3BlYzogNTI4ODgKUmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIgPG1h
dHRoZXcuZC5yb3BlckBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUg
U291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIHwgNiArKysrKysKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICAgICAgIHwgMSArCiAyIGZpbGVzIGNoYW5nZWQs
IDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3Bvd2VyLmMKaW5kZXggMGM3MTNlODMyNzRkLi43ODhiZDQ1MTYzNjUgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dl
ci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dl
ci5jCkBAIC01MzAyLDYgKzUzMDIsMTIgQEAgc3RhdGljIHZvaWQgaWNsX2Rpc3BsYXlfY29yZV9p
bml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAogCWdlbjlfc2V0X2RjX3N0
YXRlKGRldl9wcml2LCBEQ19TVEFURV9ESVNBQkxFKTsKIAorCS8qIFdhXzE0MDExMjk0MTg4OmVo
bCxqc2wsdGdsLHJrbCAqLworCWlmIChJTlRFTF9QQ0hfVFlQRShkZXZfcHJpdikgPj0gUENIX0pT
UCAmJgorCSAgICBJTlRFTF9QQ0hfVFlQRShkZXZfcHJpdikgPCBQQ0hfREcxKQorCQlpbnRlbF9k
ZV9ybXcoZGV2X3ByaXYsIFNPVVRIX0RTUENMS19HQVRFX0QsIDAsCisJCQkgICAgIFBDSF9EUE1H
VU5JVF9DTE9DS19HQVRFX0RJU0FCTEUpOworCiAJLyogMS4gRW5hYmxlIFBDSCByZXNldCBoYW5k
c2hha2UuICovCiAJaW50ZWxfcGNoX3Jlc2V0X2hhbmRzaGFrZShkZXZfcHJpdiwgIUhBU19QQ0hf
Tk9QKGRldl9wcml2KSk7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IGEwZDMxZjNiZjYz
NC4uNWVhZTU5M2VlNzg0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTg3MzAsNiArODcz
MCw3IEBAIGVudW0gewogI2RlZmluZSAgUENIX0dNQlVTVU5JVF9DTE9DS19HQVRFX0RJU0FCTEUg
KDEgPDwgMzEpCiAjZGVmaW5lICBQQ0hfRFBMVU5JVF9DTE9DS19HQVRFX0RJU0FCTEUgKDEgPDwg
MzApCiAjZGVmaW5lICBQQ0hfRFBMU1VOSVRfQ0xPQ0tfR0FURV9ESVNBQkxFICgxIDw8IDI5KQor
I2RlZmluZSAgUENIX0RQTUdVTklUX0NMT0NLX0dBVEVfRElTQUJMRSAoMSA8PCAxNSkKICNkZWZp
bmUgIFBDSF9DUFVOSVRfQ0xPQ0tfR0FURV9ESVNBQkxFICgxIDw8IDE0KQogI2RlZmluZSAgQ05Q
X1BXTV9DR0VfR0FUSU5HX0RJU0FCTEUgKDEgPDwgMTMpCiAjZGVmaW5lICBQQ0hfTFBfUEFSVElU
SU9OX0xFVkVMX0RJU0FCTEUgICgxIDw8IDEyKQotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
