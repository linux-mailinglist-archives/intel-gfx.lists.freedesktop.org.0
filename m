Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5A527893B
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Sep 2020 15:17:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAB8A6ECEC;
	Fri, 25 Sep 2020 13:17:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC7746ECF2
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Sep 2020 13:17:22 +0000 (UTC)
IronPort-SDR: Mf0KFmMEVYF7ZPA6/yyUe0HjA2UbT7s08b//P+A0XyVUHqP8HG9nDjqZfgiiuRn6qBTrZsr2K1
 KvQjjdSRIUww==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="158867168"
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="158867168"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 06:17:21 -0700
IronPort-SDR: zfFCuGUylXOBPoI53VtvfW2dTOcKrC52bgTA+tCLT+KZEezIJc+Kkt3RoWn7Nspo7VuRJwwiqU
 vkRaNNttvdOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="413803320"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 25 Sep 2020 06:17:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Sep 2020 16:17:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Sep 2020 16:16:54 +0300
Message-Id: <20200925131656.10022-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200925131656.10022-1-ville.syrjala@linux.intel.com>
References: <20200925131656.10022-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/9] drm/i915: Relocate CHV CGM gamma masks
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkNH
TV9QSVBFX0dBTU1BX1JFRF9NQVNLICYgY28uIGFyZSBtaXNwbGFjZWQuIE1vdmUgdGhlbiBiZWxv
dyB0aGUKcmVsZXZhbnQgcmVnaXN0ZXIuIEFuZCB3aGlsZSBhdCBpdCBhZGQgdGhlIGRlZ2FtbWEg
Y291bnRlcnBhcnRzLgoKUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRl
bC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8IDkgKysr
KysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IGQ4MDVkNGRhNjE4MS4uZjYyOWNkZjhkYzE2IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTExMDAzLDE0ICsxMTAwMywxNyBAQCBlbnVtIHNr
bF9wb3dlcl9nYXRlIHsKICNkZWZpbmUgX0NHTV9QSVBFX0FfQ1NDX0NPRUZGNjcJKFZMVl9ESVNQ
TEFZX0JBU0UgKyAweDY3OTBDKQogI2RlZmluZSBfQ0dNX1BJUEVfQV9DU0NfQ09FRkY4CShWTFZf
RElTUExBWV9CQVNFICsgMHg2NzkxMCkKICNkZWZpbmUgX0NHTV9QSVBFX0FfREVHQU1NQQkoVkxW
X0RJU1BMQVlfQkFTRSArIDB4NjYwMDApCisjZGVmaW5lICAgQ0dNX1BJUEVfREVHQU1NQV9SRURf
TUFTSwlSRUdfR0VOTUFTSygxMywgMCkKKyNkZWZpbmUgICBDR01fUElQRV9ERUdBTU1BX0dSRUVO
X01BU0sJUkVHX0dFTk1BU0soMjksIDE2KQorI2RlZmluZSAgIENHTV9QSVBFX0RFR0FNTUFfQkxV
RV9NQVNLCVJFR19HRU5NQVNLKDEzLCAwKQogI2RlZmluZSBfQ0dNX1BJUEVfQV9HQU1NQQkoVkxW
X0RJU1BMQVlfQkFTRSArIDB4NjcwMDApCisjZGVmaW5lICAgQ0dNX1BJUEVfR0FNTUFfUkVEX01B
U0sJUkVHX0dFTk1BU0soOSwgMCkKKyNkZWZpbmUgICBDR01fUElQRV9HQU1NQV9HUkVFTl9NQVNL
CVJFR19HRU5NQVNLKDI1LCAxNikKKyNkZWZpbmUgICBDR01fUElQRV9HQU1NQV9CTFVFX01BU0sJ
UkVHX0dFTk1BU0soOSwgMCkKICNkZWZpbmUgX0NHTV9QSVBFX0FfTU9ERQkoVkxWX0RJU1BMQVlf
QkFTRSArIDB4NjdBMDApCiAjZGVmaW5lICAgQ0dNX1BJUEVfTU9ERV9HQU1NQQkoMSA8PCAyKQog
I2RlZmluZSAgIENHTV9QSVBFX01PREVfQ1NDCSgxIDw8IDEpCiAjZGVmaW5lICAgQ0dNX1BJUEVf
TU9ERV9ERUdBTU1BCSgxIDw8IDApCi0jZGVmaW5lICAgQ0dNX1BJUEVfR0FNTUFfUkVEX01BU0sg
ICBSRUdfR0VOTUFTSyg5LCAwKQotI2RlZmluZSAgIENHTV9QSVBFX0dBTU1BX0dSRUVOX01BU0sg
UkVHX0dFTk1BU0soMjUsIDE2KQotI2RlZmluZSAgIENHTV9QSVBFX0dBTU1BX0JMVUVfTUFTSyAg
UkVHX0dFTk1BU0soOSwgMCkKIAogI2RlZmluZSBfQ0dNX1BJUEVfQl9DU0NfQ09FRkYwMQkoVkxW
X0RJU1BMQVlfQkFTRSArIDB4Njk5MDApCiAjZGVmaW5lIF9DR01fUElQRV9CX0NTQ19DT0VGRjIz
CShWTFZfRElTUExBWV9CQVNFICsgMHg2OTkwNCkKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
