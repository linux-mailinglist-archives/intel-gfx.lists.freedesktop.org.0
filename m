Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E0218090
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 21:38:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 839FA898A4;
	Wed,  8 May 2019 19:38:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5E9D898A4
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 19:38:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2019 12:38:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,447,1549958400"; d="scan'208";a="169740435"
Received: from shashanks-u1804-dt.iind.intel.com ([10.223.74.135])
 by fmsmga002.fm.intel.com with ESMTP; 08 May 2019 12:38:07 -0700
From: Shashank Sharma <shashank.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 May 2019 01:05:24 +0530
Message-Id: <20190508193526.28374-3-shashank.sharma@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190508193526.28374-1-shashank.sharma@intel.com>
References: <20190508193526.28374-1-shashank.sharma@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 2/4] drm/i915/icl: Add register definitions
 for Multi Segmented gamma
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

RnJvbTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KCkFkZCBtYWNyb3MgdG8g
ZGVmaW5lIG11bHRpIHNlZ21lbnRlZCBnYW1tYSByZWdpc3RlcnMKClYyOiBBZGRyZXNzZWQgVmls
bGUncyBjb21tZW50czoKICAgIAlBZGQgZ2VuLWxhYmxlIGJlZm9yZSBiaXQgZGVmaW5pdGlvbgog
ICAgQWRkcmVzc2VkIEphbmkncyBjb21tZW50CgktIFVzZSBSRUdfR0VOTUFTSygpIGFuZCBSRUdf
QklUKCkKVjM6IEFkZHJlc3NlZCBWaWxsZSdzIGNvbW1lbnRzOgogICAgLSBQdXQgY29tbWVudHMg
YXQgdGhlIGVuZCBvZiBsaW5lLgogICAgLSBDaGFuZ2UgdGhlIGNvbW1lbnQgYXQgc3RhcnQgb2Yg
SUNMIG11bHRpc2VnbWVudGVkIGdhbW1hIHJlZ2lzdGVycy4KICAgIEFkZGVkIFZpbGxlJ3Mgci1i
CgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBNYWFydGVuIExh
bmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1v
ZmYtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6
IFNoYXNoYW5rIFNoYXJtYSA8c2hhc2hhbmsuc2hhcm1hQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIHwgMTkgKysrKysrKysrKysrKysrKysrLQogMSBmaWxl
IGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaAppbmRleCBlOTdjNDdmY2E2NDUuLjhiNzdjMDY3ZTI2YiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oCkBAIC03MTk4LDcgKzcxOTgsOCBAQCBlbnVtIHsKICNkZWZpbmUgIEdBTU1BX01P
REVfTU9ERV84QklUCSgwIDw8IDApCiAjZGVmaW5lICBHQU1NQV9NT0RFX01PREVfMTBCSVQJKDEg
PDwgMCkKICNkZWZpbmUgIEdBTU1BX01PREVfTU9ERV8xMkJJVAkoMiA8PCAwKQotI2RlZmluZSAg
R0FNTUFfTU9ERV9NT0RFX1NQTElUCSgzIDw8IDApCisjZGVmaW5lICBHQU1NQV9NT0RFX01PREVf
U1BMSVQJKDMgPDwgMCkgLyogaXZiLWJkdyAqLworI2RlZmluZSAgR0FNTUFfTU9ERV9NT0RFXzEy
QklUX01VTFRJX1NFR01FTlRFRAkoMyA8PCAwKSAvKiBpY2wgKyAqLwogCiAvKiBETUMvQ1NSICov
CiAjZGVmaW5lIENTUl9QUk9HUkFNKGkpCQlfTU1JTygweDgwMDAwICsgKGkpICogNCkKQEAgLTEw
MTQ1LDYgKzEwMTQ2LDIyIEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgewogI2RlZmluZSBQUkVfQ1ND
X0dBTUNfSU5ERVgocGlwZSkJX01NSU9fUElQRShwaXBlLCBfUFJFX0NTQ19HQU1DX0lOREVYX0Es
IF9QUkVfQ1NDX0dBTUNfSU5ERVhfQikKICNkZWZpbmUgUFJFX0NTQ19HQU1DX0RBVEEocGlwZSkJ
CV9NTUlPX1BJUEUocGlwZSwgX1BSRV9DU0NfR0FNQ19EQVRBX0EsIF9QUkVfQ1NDX0dBTUNfREFU
QV9CKQogCisvKiBJQ0wgTXVsdGkgc2VnbWVudGVkIGdhbW1hICovCisjZGVmaW5lIF9QQUxfUFJF
Q19NVUxUSV9TRUdfSU5ERVhfQQkweDRBNDA4CisjZGVmaW5lIF9QQUxfUFJFQ19NVUxUSV9TRUdf
SU5ERVhfQgkweDRBQzA4CisjZGVmaW5lICBQQUxfUFJFQ19NVUxUSV9TRUdNRU5UX0FVVE9fSU5D
UkVNRU5UCQlSRUdfQklUKDE1KQorI2RlZmluZSAgUEFMX1BSRUNfTVVMVElfU0VHTUVOVF9JTkRF
WF9WQUxVRV9NQVNLCVJFR19HRU5NQVNLKDQsIDApCisKKyNkZWZpbmUgX1BBTF9QUkVDX01VTFRJ
X1NFR19EQVRBX0EJMHg0QTQwQworI2RlZmluZSBfUEFMX1BSRUNfTVVMVElfU0VHX0RBVEFfQgkw
eDRBQzBDCisKKyNkZWZpbmUgUFJFQ19QQUxfTVVMVElfU0VHX0lOREVYKHBpcGUpCV9NTUlPX1BJ
UEUocGlwZSwgXAorCQkJCQlfUEFMX1BSRUNfTVVMVElfU0VHX0lOREVYX0EsIFwKKwkJCQkJX1BB
TF9QUkVDX01VTFRJX1NFR19JTkRFWF9CKQorI2RlZmluZSBQUkVDX1BBTF9NVUxUSV9TRUdfREFU
QShwaXBlKQlfTU1JT19QSVBFKHBpcGUsIFwKKwkJCQkJX1BBTF9QUkVDX01VTFRJX1NFR19EQVRB
X0EsIFwKKwkJCQkJX1BBTF9QUkVDX01VTFRJX1NFR19EQVRBX0IpCisKIC8qIHBpcGUgQ1NDICYg
ZGVnYW1tYS9nYW1tYSBMVVRzIG9uIENIViAqLwogI2RlZmluZSBfQ0dNX1BJUEVfQV9DU0NfQ09F
RkYwMQkoVkxWX0RJU1BMQVlfQkFTRSArIDB4Njc5MDApCiAjZGVmaW5lIF9DR01fUElQRV9BX0NT
Q19DT0VGRjIzCShWTFZfRElTUExBWV9CQVNFICsgMHg2NzkwNCkKLS0gCjIuMTcuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
