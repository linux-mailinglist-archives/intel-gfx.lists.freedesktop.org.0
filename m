Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D24218891
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 15:12:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A2BE6E8CB;
	Wed,  8 Jul 2020 13:12:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 911096E8CB
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 13:12:29 +0000 (UTC)
IronPort-SDR: U7Lkb373PCMbe0XQzVlGdKoAbihh74EkZesqpl70Z3jY+mG4ylPxb4vlrxlOBRJXAyYMzGSv9I
 08UwXNyjxKtQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="149300079"
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; d="scan'208";a="149300079"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 06:12:28 -0700
IronPort-SDR: LTF+1u71dWU9CEAfp559v4coBCg2xB5zlM9WOsSEiV/7GkYRQPe5LJ9dU+g4Kg3+X+votZKZtk
 JQOMMbW/xXtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; d="scan'208";a="297713302"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 08 Jul 2020 06:12:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Jul 2020 16:12:26 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jul 2020 16:12:21 +0300
Message-Id: <20200708131223.9519-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200708131223.9519-1-ville.syrjala@linux.intel.com>
References: <20200708131223.9519-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Don't do WaFbcTurnOffFbcWatermark
 for glk
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkdM
SyBzdXBwb3NlZGx5IGRvZXMgbm90IG5lZWQgV2FGYmNUdXJuT2ZmRmJjV2F0ZXJtYXJrLApzbyBs
ZXQncyBub3QgYXBwbHkgaXQuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3BtLmMgfCAxOCArKysrKysrKysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCmluZGV4IDYzZDFh
NDg4MjcyNy4uODc2MGUxYmExZWVlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKQEAgLTk0LDEw
ICs5NCw4IEBAIHN0YXRpYyB2b2lkIGdlbjlfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQogCUk5MTVfV1JJVEUoR0VOOF9DSElDS0VOX0RDUFJfMSwK
IAkJICAgSTkxNV9SRUFEKEdFTjhfQ0hJQ0tFTl9EQ1BSXzEpIHwgTUFTS19XQUtFTUVNKTsKIAot
CS8qIFdhRmJjVHVybk9mZkZiY1dhdGVybWFyazpza2wsYnh0LGtibCxjZmwgKi8KIAkvKiBXYUZi
Y1dha2VNZW1Pbjpza2wsYnh0LGtibCxnbGssY2ZsICovCiAJSTkxNV9XUklURShESVNQX0FSQl9D
VEwsIEk5MTVfUkVBRChESVNQX0FSQl9DVEwpIHwKLQkJICAgRElTUF9GQkNfV01fRElTIHwKIAkJ
ICAgRElTUF9GQkNfTUVNT1JZX1dBS0UpOwogCiAJLyogV2FGYmNIaWdoTWVtQndDb3JydXB0aW9u
QXZvaWRhbmNlOnNrbCxieHQsa2JsLGNmbCAqLwpAQCAtMTQwLDYgKzEzOCwxMCBAQCBzdGF0aWMg
dm9pZCBieHRfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQogCSAqIGFwcGxpY2F0aW9uLCB1c2luZyBiYXRjaCBidWZmZXJzIG9yIGFueSBvdGhlciBt
ZWFucy4KIAkgKi8KIAlJOTE1X1dSSVRFKFJNX1RJTUVPVVQsIE1NSU9fVElNRU9VVF9VUyg5NTAp
KTsKKworCS8qIFdhRmJjVHVybk9mZkZiY1dhdGVybWFyazpieHQgKi8KKwlJOTE1X1dSSVRFKERJ
U1BfQVJCX0NUTCwgSTkxNV9SRUFEKERJU1BfQVJCX0NUTCkgfAorCQkgICBESVNQX0ZCQ19XTV9E
SVMpOwogfQogCiBzdGF0aWMgdm9pZCBnbGtfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQpAQCAtNzE4OSw2ICs3MTkxLDEwIEBAIHN0YXRpYyB2b2lk
IGNmbF9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
CiAJY25wX2luaXRfY2xvY2tfZ2F0aW5nKGRldl9wcml2KTsKIAlnZW45X2luaXRfY2xvY2tfZ2F0
aW5nKGRldl9wcml2KTsKIAorCS8qIFdhRmJjVHVybk9mZkZiY1dhdGVybWFyazpjZmwgKi8KKwlJ
OTE1X1dSSVRFKERJU1BfQVJCX0NUTCwgSTkxNV9SRUFEKERJU1BfQVJCX0NUTCkgfAorCQkgICBE
SVNQX0ZCQ19XTV9ESVMpOworCiAJLyogV2FGYmNOdWtlT25Ib3N0TW9kaWZ5OmNmbCAqLwogCUk5
MTVfV1JJVEUoSUxLX0RQRkNfQ0hJQ0tFTiwgSTkxNV9SRUFEKElMS19EUEZDX0NISUNLRU4pIHwK
IAkJICAgSUxLX0RQRkNfTlVLRV9PTl9BTllfTU9ESUZJQ0FUSU9OKTsKQEAgLTcyMDgsNiArNzIx
NCwxMCBAQCBzdGF0aWMgdm9pZCBrYmxfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KQogCQlJOTE1X1dSSVRFKEdFTjZfVUNHQ1RMMSwgSTkxNV9SRUFE
KEdFTjZfVUNHQ1RMMSkgfAogCQkJICAgR0VONl9HQU1VTklUX0NMT0NLX0dBVEVfRElTQUJMRSk7
CiAKKwkvKiBXYUZiY1R1cm5PZmZGYmNXYXRlcm1hcms6a2JsICovCisJSTkxNV9XUklURShESVNQ
X0FSQl9DVEwsIEk5MTVfUkVBRChESVNQX0FSQl9DVEwpIHwKKwkJICAgRElTUF9GQkNfV01fRElT
KTsKKwogCS8qIFdhRmJjTnVrZU9uSG9zdE1vZGlmeTprYmwgKi8KIAlJOTE1X1dSSVRFKElMS19E
UEZDX0NISUNLRU4sIEk5MTVfUkVBRChJTEtfRFBGQ19DSElDS0VOKSB8CiAJCSAgIElMS19EUEZD
X05VS0VfT05fQU5ZX01PRElGSUNBVElPTik7CkBAIC03MjIxLDYgKzcyMzEsMTAgQEAgc3RhdGlj
IHZvaWQgc2tsX2luaXRfY2xvY2tfZ2F0aW5nKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKIAlJOTE1X1dSSVRFKEZCQ19MTENfUkVBRF9DVFJMLCBJOTE1X1JFQUQoRkJDX0xMQ19S
RUFEX0NUUkwpIHwKIAkJICAgRkJDX0xMQ19GVUxMWV9PUEVOKTsKIAorCS8qIFdhRmJjVHVybk9m
ZkZiY1dhdGVybWFyazpza2wgKi8KKwlJOTE1X1dSSVRFKERJU1BfQVJCX0NUTCwgSTkxNV9SRUFE
KERJU1BfQVJCX0NUTCkgfAorCQkgICBESVNQX0ZCQ19XTV9ESVMpOworCiAJLyogV2FGYmNOdWtl
T25Ib3N0TW9kaWZ5OnNrbCAqLwogCUk5MTVfV1JJVEUoSUxLX0RQRkNfQ0hJQ0tFTiwgSTkxNV9S
RUFEKElMS19EUEZDX0NISUNLRU4pIHwKIAkJICAgSUxLX0RQRkNfTlVLRV9PTl9BTllfTU9ESUZJ
Q0FUSU9OKTsKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
