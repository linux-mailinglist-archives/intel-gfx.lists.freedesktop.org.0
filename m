Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 618C329D29C
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 22:33:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35EA56E59F;
	Wed, 28 Oct 2020 21:33:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9FC16E595
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Oct 2020 21:33:41 +0000 (UTC)
IronPort-SDR: Q9QNnrtctOfojICBYayB/o/P90JIEI3VGOaIAG5X2eAknFYLNi5olxYnppTSmJS1EDiXmwlN6O
 TOJNVIdEe/lw==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="232521383"
X-IronPort-AV: E=Sophos;i="5.77,428,1596524400"; d="scan'208";a="232521383"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 14:33:40 -0700
IronPort-SDR: 5l5C2g61+0CZEKe5FQOC7rCHoMVEGdGmS7lI43xJCAJOXo9l8QzEbrXbw6JMMnV4QsOXnkat3v
 zV3QiMVbYH3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,428,1596524400"; d="scan'208";a="334888996"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 28 Oct 2020 14:33:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 28 Oct 2020 23:33:37 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Oct 2020 23:33:09 +0200
Message-Id: <20201028213323.5423-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201028213323.5423-1-ville.syrjala@linux.intel.com>
References: <20201028213323.5423-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 05/19] drm/i915: Pimp AUX CH names
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkxl
dCdzIG1ha2UgdGhlIEFVWCBDSCBuYW1lcyBtYXRjaCB0aGUgc3BlYyAoQVVYIEEtRiBmb3IgcHJl
LXRnbCwKQVVYIEEtQyBvciBBVVggVVNCQzEtNiBmb3IgdGdsKykuIEFuZCB3aGlsZSBhdCBpdCBs
ZXQncyBpbmNsdWRlCnRoZSBmdWxsIGVuY29kZXIgbmFtZSBpbiB0aGUgQVVYIENIIG5hbWUgYXMg
d2VsbCAoYXMgb3Bwb3NlZCB0bwpqdXN0IHVzaW5nIHBvcnRfbmFtZSgpIHdoaWNoIHdvdWxkbid0
IGdpdmUgdXMgdGhlIHJpZ2h0IHRoaW5nIG9uCnRnbCspLgoKUmV2aWV3ZWQtYnk6IEx1Y2FzIERl
IE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDEzICsrKysrKysrKystLS0KIDEgZmlsZSBj
aGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwppbmRleCBiNGY4MjQzODNmZTAuLmNmMDlhY2E3NjA3YiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwpAQCAtMTg1OSw2ICsxODU5
LDcgQEAgaW50ZWxfZHBfYXV4X2luaXQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsKIAlz
dHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCA9IGRwX3RvX2RpZ19wb3J0KGludGVs
X2RwKTsKIAlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciA9ICZkaWdfcG9ydC0+YmFzZTsK
KwllbnVtIGF1eF9jaCBhdXhfY2ggPSBkaWdfcG9ydC0+YXV4X2NoOwogCiAJaWYgKElOVEVMX0dF
TihkZXZfcHJpdikgPj0gMTIpIHsKIAkJaW50ZWxfZHAtPmF1eF9jaF9jdGxfcmVnID0gdGdsX2F1
eF9jdGxfcmVnOwpAQCAtMTg5MSw5ICsxODkyLDE1IEBAIGludGVsX2RwX2F1eF9pbml0KHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApCiAJZHJtX2RwX2F1eF9pbml0KCZpbnRlbF9kcC0+YXV4KTsK
IAogCS8qIEZhaWx1cmUgdG8gYWxsb2NhdGUgb3VyIHByZWZlcnJlZCBuYW1lIGlzIG5vdCBjcml0
aWNhbCAqLwotCWludGVsX2RwLT5hdXgubmFtZSA9IGthc3ByaW50ZihHRlBfS0VSTkVMLCAiQVVY
ICVjL3BvcnQgJWMiLAotCQkJCSAgICAgICBhdXhfY2hfbmFtZShkaWdfcG9ydC0+YXV4X2NoKSwK
LQkJCQkgICAgICAgcG9ydF9uYW1lKGVuY29kZXItPnBvcnQpKTsKKwlpZiAoSU5URUxfR0VOKGRl
dl9wcml2KSA+PSAxMiAmJiBhdXhfY2ggPj0gQVVYX0NIX1VTQkMxKQorCQlpbnRlbF9kcC0+YXV4
Lm5hbWUgPSBrYXNwcmludGYoR0ZQX0tFUk5FTCwgIkFVWCBVU0JDJWMvJXMiLAorCQkJCQkgICAg
ICAgYXV4X2NoIC0gQVVYX0NIX1VTQkMxICsgJzEnLAorCQkJCQkgICAgICAgZW5jb2Rlci0+YmFz
ZS5uYW1lKTsKKwllbHNlCisJCWludGVsX2RwLT5hdXgubmFtZSA9IGthc3ByaW50ZihHRlBfS0VS
TkVMLCAiQVVYICVjLyVzIiwKKwkJCQkJICAgICAgIGF1eF9jaF9uYW1lKGF1eF9jaCksCisJCQkJ
CSAgICAgICBlbmNvZGVyLT5iYXNlLm5hbWUpOworCiAJaW50ZWxfZHAtPmF1eC50cmFuc2ZlciA9
IGludGVsX2RwX2F1eF90cmFuc2ZlcjsKIH0KIAotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
