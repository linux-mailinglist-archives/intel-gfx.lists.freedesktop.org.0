Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ADE736709A
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Apr 2021 18:49:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB6FA6E9E2;
	Wed, 21 Apr 2021 16:49:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E744B6E9E5
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Apr 2021 16:49:35 +0000 (UTC)
IronPort-SDR: O6vUQIjgVF1zBUZTvVSP+bzSjLG1CHZciCcjWV71JXhp9P3+x5WuLWjqh1CaiTG4pjlBSoSb5y
 H8aiRt0maH7w==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="192544789"
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="192544789"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 09:49:35 -0700
IronPort-SDR: pWn5rcPPU6NWQmf5PlyJIJ7XHABLSALn5QOaZVknnGaDDtJnJzK5A5MOqHP5vqnvOejpRsFwJ5
 POvKt5har3hQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="421052418"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 21 Apr 2021 09:49:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 Apr 2021 19:49:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Apr 2021 19:48:46 +0300
Message-Id: <20210421164849.12806-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210421164849.12806-1-ville.syrjala@linux.intel.com>
References: <20210421164849.12806-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/17] drm/i915: Fix ehl edp hbr2 vswing table
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkVI
TCBpcyBzdXBwb3NlZCB0byB1c2Ugc3BlY2lhbCBidWYgdHJhbnMgdmFsdWVzIGZvciBlRFAgSEJS
MisuCkFkZCBzdWNoIGEgdGFibGUuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaV9idWZfdHJhbnMuYyAgICB8IDI4ICsrKysrKysrKysrKysrKysrLS0KIDEgZmlsZSBj
aGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMKaW5kZXggMGZhY2Jm
NTU2NjM0Li44NWRiMzA5ZWM1N2QgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5jCkBAIC02NzEsNiArNjcxLDI1IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyBlaGxfY29tYm9fcGh5X2RkaV90cmFuc2xh
dGlvbnNfZHAgPSB7CiAJLm51bV9lbnRyaWVzID0gQVJSQVlfU0laRShfZWhsX2NvbWJvX3BoeV9k
ZGlfdHJhbnNsYXRpb25zX2RwKSwKIH07CiAKK3N0YXRpYyBjb25zdCB1bmlvbiBpbnRlbF9kZGlf
YnVmX3RyYW5zX2VudHJ5IF9laGxfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZWRwX2hicjJb
XSA9IHsKKwkJCQkJCQkvKiBOVCBtViBUcmFucyBtViBkYiAgICAqLworCXsgLmNubCA9IHsgMHg4
LCAweDdGLCAweDNGLCAweDAwLCAweDAwIH0gfSwJLyogMjAwICAgMjAwICAgICAgMC4wICAgKi8K
Kwl7IC5jbmwgPSB7IDB4OCwgMHg3RiwgMHgzRiwgMHgwMCwgMHgwMCB9IH0sCS8qIDIwMCAgIDI1
MCAgICAgIDEuOSAgICovCisJeyAuY25sID0geyAweDEsIDB4N0YsIDB4M0QsIDB4MDAsIDB4MDIg
fSB9LAkvKiAyMDAgICAzMDAgICAgICAzLjUgICAqLworCXsgLmNubCA9IHsgMHhBLCAweDM1LCAw
eDM5LCAweDAwLCAweDA2IH0gfSwJLyogMjAwICAgMzUwICAgICAgNC45ICAgKi8KKwl7IC5jbmwg
PSB7IDB4OCwgMHg3RiwgMHgzRiwgMHgwMCwgMHgwMCB9IH0sCS8qIDI1MCAgIDI1MCAgICAgIDAu
MCAgICovCisJeyAuY25sID0geyAweDEsIDB4N0YsIDB4M0MsIDB4MDAsIDB4MDMgfSB9LAkvKiAy
NTAgICAzMDAgICAgICAxLjYgICAqLworCXsgLmNubCA9IHsgMHhBLCAweDM1LCAweDM5LCAweDAw
LCAweDA2IH0gfSwJLyogMjUwICAgMzUwICAgICAgMi45ICAgKi8KKwl7IC5jbmwgPSB7IDB4MSwg
MHg3RiwgMHgzRiwgMHgwMCwgMHgwMCB9IH0sCS8qIDMwMCAgIDMwMCAgICAgIDAuMCAgICovCisJ
eyAuY25sID0geyAweEEsIDB4MzUsIDB4MzgsIDB4MDAsIDB4MDcgfSB9LAkvKiAzMDAgICAzNTAg
ICAgICAxLjMgICAqLworCXsgLmNubCA9IHsgMHhBLCAweDM1LCAweDNGLCAweDAwLCAweDAwIH0g
fSwJLyogMzUwICAgMzUwICAgICAgMC4wICAgKi8KK307CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3Qg
aW50ZWxfZGRpX2J1Zl90cmFucyBlaGxfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZWRwX2hi
cjIgPSB7CisJLmVudHJpZXMgPSBfZWhsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2VkcF9o
YnIyLAorCS5udW1fZW50cmllcyA9IEFSUkFZX1NJWkUoX2VobF9jb21ib19waHlfZGRpX3RyYW5z
bGF0aW9uc19lZHBfaGJyMiksCit9OworCiBzdGF0aWMgY29uc3QgdW5pb24gaW50ZWxfZGRpX2J1
Zl90cmFuc19lbnRyeSBfanNsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2VkcF9oYnJbXSA9
IHsKIAkJCQkJCQkvKiBOVCBtViBUcmFucyBtViBkYiAgICAqLwogCXsgLmNubCA9IHsgMHg4LCAw
eDdGLCAweDNGLCAweDAwLCAweDAwIH0gfSwJLyogMjAwICAgMjAwICAgICAgMC4wICAgKi8KQEAg
LTEzNDUsOCArMTM2NCwxMyBAQCBlaGxfZ2V0X2NvbWJvX2J1Zl90cmFuc19lZHAoc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIsCiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7CiAKIAlpZiAoZGV2X3ByaXYtPnZidC5lZHAu
bG93X3Zzd2luZykgewotCQlyZXR1cm4gaW50ZWxfZ2V0X2J1Zl90cmFucygmaWNsX2NvbWJvX3Bo
eV9kZGlfdHJhbnNsYXRpb25zX2VkcF9oYnIyLAotCQkJCQkgICBuX2VudHJpZXMpOworCQlpZiAo
Y3J0Y19zdGF0ZS0+cG9ydF9jbG9jayA+IDI3MDAwMCkgeworCQkJcmV0dXJuIGludGVsX2dldF9i
dWZfdHJhbnMoJmVobF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19lZHBfaGJyMiwKKwkJCQkJ
CSAgIG5fZW50cmllcyk7CisJCX0gZWxzZSB7CisJCQlyZXR1cm4gaW50ZWxfZ2V0X2J1Zl90cmFu
cygmaWNsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2VkcF9oYnIyLAorCQkJCQkJICAgbl9l
bnRyaWVzKTsKKwkJfQogCX0KIAogCXJldHVybiBlaGxfZ2V0X2NvbWJvX2J1Zl90cmFuc19kcChl
bmNvZGVyLCBjcnRjX3N0YXRlLCBuX2VudHJpZXMpOwotLSAKMi4yNi4zCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
