Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F31AFDB8
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 15:31:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C292B6E930;
	Wed, 11 Sep 2019 13:31:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EEFA6E930
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 13:31:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 06:31:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="189674952"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 11 Sep 2019 06:31:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Sep 2019 16:31:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Sep 2019 16:31:26 +0300
Message-Id: <20190911133129.27466-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Fix cdclk bypass freq readout for
 tgl/bxt/glk
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk9u
IHRnbC9ieHQvZ2xrIHRoZSBjZGNsayBieXBhc3MgZnJlcXVlbmN5IGRlcGVuZHMgb24gdGhlIFBM
TApyZWZlcmVuY2UgY2xvY2suIFNvIGxldCdzIHJlYWQgb3V0IHRoZSByZWYgY2xvY2sgYmVmb3Jl
IHdlCnRyeSB0byBjb21wdXRlIHRoZSBieXBhc3MgY2xvY2suCgpDYzogTWF0dCBSb3BlciA8bWF0
dGhldy5kLnJvcGVyQGludGVsLmNvbT4KRml4ZXM6IDcxZGMzNjdlMmJjMyAoImRybS9pOTE1OiBD
b25zb2xpZGF0ZSBieHQvY25sL2ljbCBjZGNsayByZWFkb3V0IikKU2lnbmVkLW9mZi1ieTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCAzICsrLQogMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwppbmRleCA2MThhOTNiYWQwYTguLjZiNzVkMmE5MWNkOSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwpAQCAtMTM1MSw2
ICsxMzUxLDggQEAgc3RhdGljIHZvaWQgYnh0X2dldF9jZGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsCiAJdTMyIGRpdmlkZXI7CiAJaW50IGRpdjsKIAorCWJ4dF9kZV9wbGxf
cmVhZG91dChkZXZfcHJpdiwgY2RjbGtfc3RhdGUpOworCiAJaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPj0gMTIpCiAJCWNkY2xrX3N0YXRlLT5ieXBhc3MgPSBjZGNsa19zdGF0ZS0+cmVmIC8gMjsK
IAllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQpAQCAtMTM1OCw3ICsxMzYwLDYg
QEAgc3RhdGljIHZvaWQgYnh0X2dldF9jZGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsCiAJZWxzZQogCQljZGNsa19zdGF0ZS0+YnlwYXNzID0gY2RjbGtfc3RhdGUtPnJlZjsK
IAotCWJ4dF9kZV9wbGxfcmVhZG91dChkZXZfcHJpdiwgY2RjbGtfc3RhdGUpOwogCWlmIChjZGNs
a19zdGF0ZS0+dmNvID09IDApIHsKIAkJY2RjbGtfc3RhdGUtPmNkY2xrID0gY2RjbGtfc3RhdGUt
PmJ5cGFzczsKIAkJZ290byBvdXQ7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
