Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6032245A6
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 23:14:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8AE66E1E5;
	Fri, 17 Jul 2020 21:14:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A256C6E1E5
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 21:14:02 +0000 (UTC)
IronPort-SDR: ir87E/0HQs4kEhCu4jeEoMn8RD/T2WirsGsN3kfk4UGHb7R1d6owbcjYhDFPBfF1bE2FssSOpn
 vWAZqBuzThgA==
X-IronPort-AV: E=McAfee;i="6000,8403,9685"; a="211225337"
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="211225337"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 14:14:02 -0700
IronPort-SDR: 0dEOqz3lTWqfS9KtyufrvEF5wZoezWMANaO1KLUwiscva3mYM5TiAar/AE63UTDszuubbi7wzf
 QeF9z45lUxew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="361457006"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 17 Jul 2020 14:14:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 18 Jul 2020 00:13:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Jul 2020 00:13:30 +0300
Message-Id: <20200717211345.26851-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/20] drm/i915: Reset glk degamma index after
 programming/readout
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkp1
c3QgZm9yIHNvbWUgZXh0cmEgY29uc2lzdGVuY3kgbGV0J3MgcmVzZXQgdGhlIGdsayBkZWdhbW1h
IExVVAppbmRleCBiYWNrIHRvIDAgYWZ0ZXIgd2UncmUgZG9uZyB0cmF3bGluZyB0aGUgTFVULgoK
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgfCA2
ICsrKysrLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwppbmRleCA3N2MxMDNh
ODZhMzAuLjM3YTRmZWRlN2JjMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jb2xvci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY29sb3IuYwpAQCAtODE4LDEyICs4MTgsMTQgQEAgc3RhdGljIHZvaWQgZ2xrX2xvYWRfZGVn
YW1tYV9sdXQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJCSAq
IGFzIGNvbXBhcmVkIHRvIGp1c3QgMTYgdG8gYWNoaWV2ZSB0aGlzLgogCQkgKi8KIAkJaW50ZWxf
ZGVfd3JpdGUoZGV2X3ByaXYsIFBSRV9DU0NfR0FNQ19EQVRBKHBpcGUpLAotCQkgICAgICAgICAg
ICAgICBsdXRbaV0uZ3JlZW4pOworCQkJICAgICAgIGx1dFtpXS5ncmVlbik7CiAJfQogCiAJLyog
Q2xhbXAgdmFsdWVzID4gMS4wLiAqLwogCXdoaWxlIChpKysgPCAzNSkKIAkJaW50ZWxfZGVfd3Jp
dGUoZGV2X3ByaXYsIFBSRV9DU0NfR0FNQ19EQVRBKHBpcGUpLCAxIDw8IDE2KTsKKworCWludGVs
X2RlX3dyaXRlKGRldl9wcml2LCBQUkVfQ1NDX0dBTUNfSU5ERVgocGlwZSksIDApOwogfQogCiBz
dGF0aWMgdm9pZCBnbGtfbG9hZF9kZWdhbW1hX2x1dF9saW5lYXIoY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCkBAIC04NTEsNiArODUzLDggQEAgc3RhdGljIHZvaWQg
Z2xrX2xvYWRfZGVnYW1tYV9sdXRfbGluZWFyKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXQKIAkvKiBDbGFtcCB2YWx1ZXMgPiAxLjAuICovCiAJd2hpbGUgKGkrKyA8IDM1
KQogCQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgUFJFX0NTQ19HQU1DX0RBVEEocGlwZSksIDEg
PDwgMTYpOworCisJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFBSRV9DU0NfR0FNQ19JTkRFWChw
aXBlKSwgMCk7CiB9CiAKIHN0YXRpYyB2b2lkIGdsa19sb2FkX2x1dHMoY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCi0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
