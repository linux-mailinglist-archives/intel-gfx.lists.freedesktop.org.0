Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A900F2970A2
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 15:34:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE5C36F878;
	Fri, 23 Oct 2020 13:34:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ACD76F878
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 13:34:41 +0000 (UTC)
IronPort-SDR: 1/bgz+IKaZEPnkfmbml9eM/eYZxNJJxJXnQm7Xj07N1EbFUkeqUQWDeifA5rs1C0BcMisWPRr3
 U9RoDs3fdiXg==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="167770042"
X-IronPort-AV: E=Sophos;i="5.77,408,1596524400"; d="scan'208";a="167770042"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 06:34:40 -0700
IronPort-SDR: UZxOWDGPynDE9zYV3XnNVqLZgoD4H+KqdF8Vu9NxIljHozDTM3qzttcXkZk7UyYkNJtdDbMFAX
 o2DYBCiu8djw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,408,1596524400"; d="scan'208";a="321740756"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 23 Oct 2020 06:34:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 23 Oct 2020 16:34:38 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Oct 2020 16:34:06 +0300
Message-Id: <20201023133420.12039-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201023133420.12039-1-ville.syrjala@linux.intel.com>
References: <20201023133420.12039-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 05/19] drm/i915: Pimp AUX CH names
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
