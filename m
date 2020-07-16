Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9332229B1
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 19:21:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D87356EC99;
	Thu, 16 Jul 2020 17:21:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 569116EC99
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 17:21:44 +0000 (UTC)
IronPort-SDR: o281HddPAfXEL2QFwdD7ln9yqZa+NGHbUNDVueNJhSypgl2fvS+vZMKXPEMktK//UL3eYMo0+p
 4Yo7r5APmVnA==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="167580914"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="167580914"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:21:38 -0700
IronPort-SDR: os7MDxHoOd5eabrfbWIu8XX/sz9tr+//ku0nEOet1LzgoHJHdvtglAZCj+NN247RyjyDg+sY39
 AZe4S5CoPqUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="325204884"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 16 Jul 2020 10:21:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jul 2020 20:21:35 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 20:21:02 +0300
Message-Id: <20200716172106.2656-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
References: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/14] drm/i915: Sort CML PCI IDs
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNv
cnQgdGhlIENNTCBQQ0kgSURzIG51bWVyaWNhbGx5LiBTb21lIG9yZGVyIHNlZW1zIGJldHRlciB0
aGFuCnJhbmRvbW5lc3MuCgpDYzogQWxleGVpIFBvZHRlbGV6aG5pa292IDxhcG9kdGVsZUBnbWFp
bC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Ci0tLQogaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCB8IDEyICsrKysrKy0t
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oIGIvaW5jbHVkZS9kcm0vaTkxNV9w
Y2lpZHMuaAppbmRleCBkYjQwOTE3MWQ5YzMuLjJkMzZjYmNlMGFjMCAxMDA2NDQKLS0tIGEvaW5j
bHVkZS9kcm0vaTkxNV9wY2lpZHMuaAorKysgYi9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oCkBA
IC00NDcsMTAgKzQ0NywxMCBAQAogCiAvKiBDTUwgR1QxICovCiAjZGVmaW5lIElOVEVMX0NNTF9H
VDFfSURTKGluZm8pCVwKLQlJTlRFTF9WR0FfREVWSUNFKDB4OUJBNSwgaW5mbyksIFwKLQlJTlRF
TF9WR0FfREVWSUNFKDB4OUJBOCwgaW5mbyksIFwKKwlJTlRFTF9WR0FfREVWSUNFKDB4OUJBMiwg
aW5mbyksIFwKIAlJTlRFTF9WR0FfREVWSUNFKDB4OUJBNCwgaW5mbyksIFwKLQlJTlRFTF9WR0Ff
REVWSUNFKDB4OUJBMiwgaW5mbykKKwlJTlRFTF9WR0FfREVWSUNFKDB4OUJBNSwgaW5mbyksIFwK
KwlJTlRFTF9WR0FfREVWSUNFKDB4OUJBOCwgaW5mbykKIAogI2RlZmluZSBJTlRFTF9DTUxfVV9H
VDFfSURTKGluZm8pIFwKIAlJTlRFTF9WR0FfREVWSUNFKDB4OUIyMSwgaW5mbyksIFwKQEAgLTQ1
OSwxMSArNDU5LDExIEBACiAKIC8qIENNTCBHVDIgKi8KICNkZWZpbmUgSU5URUxfQ01MX0dUMl9J
RFMoaW5mbykJXAotCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkM1LCBpbmZvKSwgXAotCUlOVEVMX1ZH
QV9ERVZJQ0UoMHg5QkM4LCBpbmZvKSwgXAotCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkM0LCBpbmZv
KSwgXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkMyLCBpbmZvKSwgXAorCUlOVEVMX1ZHQV9ERVZJ
Q0UoMHg5QkM0LCBpbmZvKSwgXAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkM1LCBpbmZvKSwgXAog
CUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkM2LCBpbmZvKSwgXAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5
QkM4LCBpbmZvKSwgXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkU2LCBpbmZvKSwgXAogCUlOVEVM
X1ZHQV9ERVZJQ0UoMHg5QkY2LCBpbmZvKQogCi0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
