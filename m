Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E88D73C9C04
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jul 2021 11:36:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 464A46E7EF;
	Thu, 15 Jul 2021 09:36:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A36C96E7EF
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 09:36:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10045"; a="296155427"
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="296155427"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2021 02:36:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="495367899"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 15 Jul 2021 02:36:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 15 Jul 2021 12:36:04 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Jul 2021 12:35:29 +0300
Message-Id: <20210715093530.31711-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210715093530.31711-1-ville.syrjala@linux.intel.com>
References: <20210715093530.31711-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/13] drm/i915: Fold ibx_pch_dpll_prepare()
 into ibx_pch_dpll_enable()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1v
dmUgdGhlIEZQIGRpdmlkZXIgcHJvZ3JhbW1pbmcgaW50byBpYnhfcGNoX2RwbGxfZW5hYmxlKCku
IE5vIHJlYXNvbgp0aGF0IEkgY2FuIHNlZSB3aHkgdGhlc2Ugd291bGQgaGF2ZSB0byBiZSBwcm9n
cmFtbWVkIHRoaXMgZWFybHkuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBsbF9tZ3IuYyB8IDEzICsrKy0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYwppbmRleCBkZmMzMWI2ODI4NDguLjA0MTE3MWRlZGU4
NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21n
ci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYwpA
QCAtNDUxLDE1ICs0NTEsNiBAQCBzdGF0aWMgYm9vbCBpYnhfcGNoX2RwbGxfZ2V0X2h3X3N0YXRl
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAlyZXR1cm4gdmFsICYgRFBMTF9W
Q09fRU5BQkxFOwogfQogCi1zdGF0aWMgdm9pZCBpYnhfcGNoX2RwbGxfcHJlcGFyZShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCi0JCQkJIHN0cnVjdCBpbnRlbF9zaGFyZWRfZHBs
bCAqcGxsKQotewotCWNvbnN0IGVudW0gaW50ZWxfZHBsbF9pZCBpZCA9IHBsbC0+aW5mby0+aWQ7
Ci0KLQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgUENIX0ZQMChpZCksIHBsbC0+c3RhdGUuaHdf
c3RhdGUuZnAwKTsKLQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgUENIX0ZQMShpZCksIHBsbC0+
c3RhdGUuaHdfc3RhdGUuZnAxKTsKLX0KLQogc3RhdGljIHZvaWQgaWJ4X2Fzc2VydF9wY2hfcmVm
Y2xrX2VuYWJsZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCXUzMiB2
YWw7CkBAIC00ODEsNiArNDcyLDkgQEAgc3RhdGljIHZvaWQgaWJ4X3BjaF9kcGxsX2VuYWJsZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJLyogUENIIHJlZmNsb2NrIG11c3Qg
YmUgZW5hYmxlZCBmaXJzdCAqLwogCWlieF9hc3NlcnRfcGNoX3JlZmNsa19lbmFibGVkKGRldl9w
cml2KTsKIAorCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBQQ0hfRlAwKGlkKSwgcGxsLT5zdGF0
ZS5od19zdGF0ZS5mcDApOworCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBQQ0hfRlAxKGlkKSwg
cGxsLT5zdGF0ZS5od19zdGF0ZS5mcDEpOworCiAJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFBD
SF9EUExMKGlkKSwgcGxsLT5zdGF0ZS5od19zdGF0ZS5kcGxsKTsKIAogCS8qIFdhaXQgZm9yIHRo
ZSBjbG9ja3MgdG8gc3RhYmlsaXplLiAqLwpAQCAtNTU4LDcgKzU1Miw2IEBAIHN0YXRpYyB2b2lk
IGlieF9kdW1wX2h3X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIH0K
IAogc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9zaGFyZWRfZHBsbF9mdW5jcyBpYnhfcGNoX2Rw
bGxfZnVuY3MgPSB7Ci0JLnByZXBhcmUgPSBpYnhfcGNoX2RwbGxfcHJlcGFyZSwKIAkuZW5hYmxl
ID0gaWJ4X3BjaF9kcGxsX2VuYWJsZSwKIAkuZGlzYWJsZSA9IGlieF9wY2hfZHBsbF9kaXNhYmxl
LAogCS5nZXRfaHdfc3RhdGUgPSBpYnhfcGNoX2RwbGxfZ2V0X2h3X3N0YXRlLAotLSAKMi4zMS4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
