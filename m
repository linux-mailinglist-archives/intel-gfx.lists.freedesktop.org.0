Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B53D3FCB4
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 17:23:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3724E891FF;
	Tue, 30 Apr 2019 15:23:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8766891FF
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 15:23:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 08:23:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,414,1549958400"; d="scan'208";a="140129991"
Received: from shashanks-u1804-dt.iind.intel.com ([10.223.74.135])
 by orsmga006.jf.intel.com with ESMTP; 30 Apr 2019 08:23:53 -0700
From: Shashank Sharma <shashank.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Apr 2019 20:51:06 +0530
Message-Id: <20190430152108.31814-3-shashank.sharma@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190430152108.31814-1-shashank.sharma@intel.com>
References: <20190430152108.31814-1-shashank.sharma@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915/icl: Add register definitions
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
QklUKCkKCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IE1hYXJ0
ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1v
ZmYtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6
IFNoYXNoYW5rIFNoYXJtYSA8c2hhc2hhbmsuc2hhcm1hQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIHwgMTkgKysrKysrKysrKysrKysrKysrKwogMSBmaWxl
IGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCA2
ZjBhMDg2NmM4MDIuLjdkMTBiOGQwMGQ2NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC03
MTk4LDcgKzcxOTgsMTAgQEAgZW51bSB7CiAjZGVmaW5lICBHQU1NQV9NT0RFX01PREVfOEJJVAko
MCA8PCAwKQogI2RlZmluZSAgR0FNTUFfTU9ERV9NT0RFXzEwQklUCSgxIDw8IDApCiAjZGVmaW5l
ICBHQU1NQV9NT0RFX01PREVfMTJCSVQJKDIgPDwgMCkKKy8qIGl2Yi1iZHcgKi8KICNkZWZpbmUg
IEdBTU1BX01PREVfTU9ERV9TUExJVAkoMyA8PCAwKQorLyogaWNsICsgKi8KKyNkZWZpbmUgIEdB
TU1BX01PREVfTU9ERV8xMkJJVF9NVUxUSV9TRUdNRU5URUQJKDMgPDwgMCkKIAogLyogRE1DL0NT
UiAqLwogI2RlZmluZSBDU1JfUFJPR1JBTShpKQkJX01NSU8oMHg4MDAwMCArIChpKSAqIDQpCkBA
IC0xMDE0NSw2ICsxMDE0OCwyMiBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsKICNkZWZpbmUgUFJF
X0NTQ19HQU1DX0lOREVYKHBpcGUpCV9NTUlPX1BJUEUocGlwZSwgX1BSRV9DU0NfR0FNQ19JTkRF
WF9BLCBfUFJFX0NTQ19HQU1DX0lOREVYX0IpCiAjZGVmaW5lIFBSRV9DU0NfR0FNQ19EQVRBKHBp
cGUpCQlfTU1JT19QSVBFKHBpcGUsIF9QUkVfQ1NDX0dBTUNfREFUQV9BLCBfUFJFX0NTQ19HQU1D
X0RBVEFfQikKIAorLyogQWRkIHJlZ2lzdGVycyBmb3IgR2VuMTEgTXVsdGkgU2VnbWVudGVkIEdh
bW1hIE1vZGUgKi8KKyNkZWZpbmUgX1BBTF9QUkVDX01VTFRJX1NFR19JTkRFWF9BCTB4NEE0MDgK
KyNkZWZpbmUgX1BBTF9QUkVDX01VTFRJX1NFR19JTkRFWF9CCTB4NEFDMDgKKyNkZWZpbmUgIFBB
TF9QUkVDX01VTFRJX1NFR01FTlRfQVVUT19JTkNSRU1FTlQJCVJFR19CSVQoMTUpCisjZGVmaW5l
ICBQQUxfUFJFQ19NVUxUSV9TRUdNRU5UX0lOREVYX1ZBTFVFX01BU0sJUkVHX0dFTk1BU0soNCwg
MCkKKworI2RlZmluZSBfUEFMX1BSRUNfTVVMVElfU0VHX0RBVEFfQQkweDRBNDBDCisjZGVmaW5l
IF9QQUxfUFJFQ19NVUxUSV9TRUdfREFUQV9CCTB4NEFDMEMKKworI2RlZmluZSBQUkVDX1BBTF9N
VUxUSV9TRUdfSU5ERVgocGlwZSkJX01NSU9fUElQRShwaXBlLCBcCisJCQkJCV9QQUxfUFJFQ19N
VUxUSV9TRUdfSU5ERVhfQSwgXAorCQkJCQlfUEFMX1BSRUNfTVVMVElfU0VHX0lOREVYX0IpCisj
ZGVmaW5lIFBSRUNfUEFMX01VTFRJX1NFR19EQVRBKHBpcGUpCV9NTUlPX1BJUEUocGlwZSwgXAor
CQkJCQlfUEFMX1BSRUNfTVVMVElfU0VHX0RBVEFfQSwgXAorCQkJCQlfUEFMX1BSRUNfTVVMVElf
U0VHX0RBVEFfQikKKwogLyogcGlwZSBDU0MgJiBkZWdhbW1hL2dhbW1hIExVVHMgb24gQ0hWICov
CiAjZGVmaW5lIF9DR01fUElQRV9BX0NTQ19DT0VGRjAxCShWTFZfRElTUExBWV9CQVNFICsgMHg2
NzkwMCkKICNkZWZpbmUgX0NHTV9QSVBFX0FfQ1NDX0NPRUZGMjMJKFZMVl9ESVNQTEFZX0JBU0Ug
KyAweDY3OTA0KQotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
