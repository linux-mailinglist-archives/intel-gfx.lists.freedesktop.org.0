Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5136A28555E
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Oct 2020 02:22:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF8236E838;
	Wed,  7 Oct 2020 00:22:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 833426E838
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 00:22:30 +0000 (UTC)
IronPort-SDR: aFjtR7UusxXQFmL9kbgev/Mq2il4HXIVXk6WK4KlN3O9R+qt5ccHYVI3urIn8IuMNocIqbSbMR
 hcDjDRzUK/Mw==
X-IronPort-AV: E=McAfee;i="6000,8403,9766"; a="162142905"
X-IronPort-AV: E=Sophos;i="5.77,344,1596524400"; d="scan'208";a="162142905"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 17:22:28 -0700
IronPort-SDR: I8n1kAEB2wzswJgaRnlE0L6OED5lr0b68snCHfGIXeGnJ8GmXKEMd4lZ/t0V/L3+Xe86AOmtD4
 e+4bMuTEiI9Q==
X-IronPort-AV: E=Sophos;i="5.77,344,1596524400"; d="scan'208";a="527687755"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 17:22:27 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Oct 2020 17:22:04 -0700
Message-Id: <20201007002210.3678024-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201007002210.3678024-1-lucas.demarchi@intel.com>
References: <20201007002210.3678024-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/8] drm/i915/dg1: Initialize RAWCLK properly
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

RnJvbTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KCkRHMSBhbHdheXMg
dXNlcyBhIDM4LjQgTUh6IHJhd2NsayByYXRoZXIgdGhhbiB0aGUgMTkuMi8yNCBNSHoKZnJlcXVl
bmNpZXMgb24gQ05QKy4gIE5vdGUgdGhhdCByZWdpc3RlciBiaXRzIGFzc29jaWF0ZWQgd2l0aCB0
aGlzCmZyZXF1ZW5jeSBjb25mdXNpbmdseSB1c2UgMzcgZm9yIHRoZSBkaXZpZGVyIGZpZWxkIHJh
dGhlciB0aGFuIDM4IGFzIHlvdQptaWdodCBleHBlY3QuCgpGb3Igc2ltcGxpY2l0eSwgbGV0J3Mg
anVzdCBhc3N1bWUgdGhhdCB0aGlzIDM4LjQgTUh6IGZyZXF1ZW5jeSB3aWxsIGhvbGQKdHJ1ZSBm
b3Igb3RoZXIgZnV0dXJlIHBsYXRmb3JtcyB3aXRoICJmYWtlIiBQQ0ggc291dGggZGlzcGxheXMg
YW5kIHRoYXQKdGhlIENOUC1zdHlsZSBiZWhhdmlvciB3aWxsIHJlbWFpbiBmb3Igb3RoZXIgcGxh
dGZvcm1zIHdpdGggYSByZWFsIFBDSC4KCkJzcGVjOiA0OTk1MApCc3BlYzogNDkzMDkKQ2M6IEFk
aXR5YSBTd2FydXAgPGFkaXR5YS5zd2FydXBAaW50ZWwuY29tPgpDYzogQ2xpbnRvbiBUYXlsb3Ig
PENsaW50b24uQS5UYXlsb3JAaW50ZWwuY29tPgpDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5k
ZW1hcmNoaUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5y
b3BlckBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVt
YXJjaGlAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jZGNsay5jIHwgMTYgKysrKysrKysrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDE1IGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NkY2xrLmMKaW5kZXggY2I5M2Y2Y2Y2ZDM3Li43ZGJmMTUzMjc5ZmIgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKQEAgLTI2ODAsNiArMjY4MCwxOCBA
QCB2b2lkIGludGVsX3VwZGF0ZV9jZGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCiAJCQkgICAgICAgRElWX1JPVU5EX1VQKGRldl9wcml2LT5jZGNsay5ody5jZGNsaywgMTAw
MCkpOwogfQogCitzdGF0aWMgaW50IGRnMV9yYXdjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2KQoreworCS8qCisJICogREcxIGFsd2F5cyB1c2VzIGEgMzguNCBNSHogcmF3Y2xr
LiAgVGhlIGJzcGVjIHRlbGxzIHVzCisJICogIlByb2dyYW0gTnVtZXJhdG9yPTIsIERlbm9taW5h
dG9yPTQsIERpdmlkZXI9MzcgZGVjaW1hbC4iCisJICovCisJSTkxNV9XUklURShQQ0hfUkFXQ0xL
X0ZSRVEsCisJCSAgIENOUF9SQVdDTEtfREVOKDQpIHwgQ05QX1JBV0NMS19ESVYoMzcpIHwgSUNQ
X1JBV0NMS19OVU0oMikpOworCisJcmV0dXJuIDM4NDAwOworfQorCiBzdGF0aWMgaW50IGNucF9y
YXdjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCXUzMiByYXdjbGs7
CkBAIC0yNzg4LDcgKzI4MDAsOSBAQCB1MzIgaW50ZWxfcmVhZF9yYXdjbGsoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCXUzMiBmcmVxOwogCi0JaWYgKElOVEVMX1BDSF9U
WVBFKGRldl9wcml2KSA+PSBQQ0hfQ05QKQorCWlmIChJTlRFTF9QQ0hfVFlQRShkZXZfcHJpdikg
Pj0gUENIX0RHMSkKKwkJZnJlcSA9IGRnMV9yYXdjbGsoZGV2X3ByaXYpOworCWVsc2UgaWYgKElO
VEVMX1BDSF9UWVBFKGRldl9wcml2KSA+PSBQQ0hfQ05QKQogCQlmcmVxID0gY25wX3Jhd2Nsayhk
ZXZfcHJpdik7CiAJZWxzZSBpZiAoSEFTX1BDSF9TUExJVChkZXZfcHJpdikpCiAJCWZyZXEgPSBw
Y2hfcmF3Y2xrKGRldl9wcml2KTsKLS0gCjIuMjguMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
