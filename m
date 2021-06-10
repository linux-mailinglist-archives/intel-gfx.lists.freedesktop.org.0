Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBFFD3A332D
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 20:33:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EDC06EDCF;
	Thu, 10 Jun 2021 18:33:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCD316EDCF
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 18:32:58 +0000 (UTC)
IronPort-SDR: N4SFcNyvV+YNvFx7LWUYn3dF0mKG8fWSxtpRiSKcyKCr2V2w3IUsjA30lRl9VweQC95O/H21/R
 YQ0tPaF3YDig==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="269219435"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="269219435"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 11:32:57 -0700
IronPort-SDR: RTvxfhkit1Do+VIlWfw856QHsU/OTij5IrfsmFkk/S6P9hDnnmBnl12sR0N1QrjsGPVwIvQ+Dd
 I0XTVPn253NA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="414208656"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 10 Jun 2021 11:32:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Jun 2021 21:32:54 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Jun 2021 21:32:33 +0300
Message-Id: <20210610183237.3920-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210610183237.3920-1-ville.syrjala@linux.intel.com>
References: <20210610183237.3920-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/9] drm/i915/fbc: Handle 16bpp compression
 limit better
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBsaW1pdCsrIGZvciB0aGUgMTZicHAgY2FzZSBpcyBub25zZW5zZSBzaW5jZSB0aGUKY29tcHJl
c3Npb24gbGltaXQgaXMgYWx3YXlzIHN1cHBvc2VkIHRvIGJlIHBvd2VyIG9mIHR3by4KUmVwbGFj
ZSBpdCB3aXRoIDw8PTEuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZmJjLmMgfCA2ICsrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
NCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwpp
bmRleCA1NWJjNzA4ZTg3MTIuLjFjMjIwY2VhODk3NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2ZiYy5jCkBAIC0yMzksMTEgKzIzOSwxMCBAQCBzdGF0aWMgdm9pZCBpbGtf
ZmJjX2FjdGl2YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAogCWRwZmNf
Y3RsID0gRFBGQ19DVExfUExBTkUocGFyYW1zLT5jcnRjLmk5eHhfcGxhbmUpOwogCWlmIChwYXJh
bXMtPmZiLmZvcm1hdC0+Y3BwWzBdID09IDIpCi0JCWxpbWl0Kys7CisJCWxpbWl0IDw8PSAxOwog
CiAJc3dpdGNoIChsaW1pdCkgewogCWNhc2UgNDoKLQljYXNlIDM6CiAJCWRwZmNfY3RsIHw9IERQ
RkNfQ1RMX0xJTUlUXzRYOwogCQlicmVhazsKIAljYXNlIDI6CkBAIC0zMTksMTEgKzMxOCwxMCBA
QCBzdGF0aWMgdm9pZCBnZW43X2ZiY19hY3RpdmF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpCiAJCWRwZmNfY3RsIHw9IElWQl9EUEZDX0NUTF9QTEFORShwYXJhbXMtPmNydGMu
aTl4eF9wbGFuZSk7CiAKIAlpZiAocGFyYW1zLT5mYi5mb3JtYXQtPmNwcFswXSA9PSAyKQotCQls
aW1pdCsrOworCQlsaW1pdCA8PD0gMTsKIAogCXN3aXRjaCAobGltaXQpIHsKIAljYXNlIDQ6Ci0J
Y2FzZSAzOgogCQlkcGZjX2N0bCB8PSBEUEZDX0NUTF9MSU1JVF80WDsKIAkJYnJlYWs7CiAJY2Fz
ZSAyOgotLSAKMi4zMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
