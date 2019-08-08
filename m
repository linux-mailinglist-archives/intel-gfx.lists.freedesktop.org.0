Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FB38670A
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 18:26:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 921356E89C;
	Thu,  8 Aug 2019 16:26:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E29946E89C
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 16:26:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 09:26:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,362,1559545200"; d="scan'208";a="177364883"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga003.jf.intel.com with ESMTP; 08 Aug 2019 09:26:30 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Aug 2019 19:25:47 +0300
Message-Id: <20190808162547.7009-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190808133741.10113-1-imre.deak@intel.com>
References: <20190808133741.10113-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Fix HW readout for crtc_clock in
 HDMI mode
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

VGhlIGNvbnZlcnNpb24gZHVyaW5nIEhETUkgSFcgcmVhZG91dCBmcm9tIHBvcnRfY2xvY2sgdG8g
Y3J0Y19jbG9jayB3YXMKbWlzc2VkIHdoZW4gSERNSSAxMGJwYyBzdXBwb3J0IHdhcyBhZGRlZCwg
c28gZml4IHRoYXQuCgp2MjoKLSBVbnNjcmV3IHRoZSBub24tSERNSSBjYXNlLgoKRml4ZXM6IGNk
OWUxMWE4YmYyNSAoImRybS9pOTE1L2ljbDogQWRkIDEwLWJpdCBzdXBwb3J0IGZvciBoZG1pIikK
QnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEw
OTU5MwpDYzogUmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVs
LmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICAgICAgICB8IDQgKystLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggfCAyICst
CiAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwppbmRleCBhYTViMjQ0MDUxM2MuLjdj
NzNkMWY5NzRmYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBA
IC0xNDY3LDggKzE0NjcsOCBAQCBzdGF0aWMgdm9pZCBkZGlfZG90Y2xvY2tfZ2V0KHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZykKIAllbHNlIGlmIChpbnRlbF9jcnRjX2hhc19k
cF9lbmNvZGVyKHBpcGVfY29uZmlnKSkKIAkJZG90Y2xvY2sgPSBpbnRlbF9kb3RjbG9ja19jYWxj
dWxhdGUocGlwZV9jb25maWctPnBvcnRfY2xvY2ssCiAJCQkJCQkgICAgJnBpcGVfY29uZmlnLT5k
cF9tX24pOwotCWVsc2UgaWYgKHBpcGVfY29uZmlnLT5oYXNfaGRtaV9zaW5rICYmIHBpcGVfY29u
ZmlnLT5waXBlX2JwcCA9PSAzNikKLQkJZG90Y2xvY2sgPSBwaXBlX2NvbmZpZy0+cG9ydF9jbG9j
ayAqIDIgLyAzOworCWVsc2UgaWYgKHBpcGVfY29uZmlnLT5oYXNfaGRtaV9zaW5rICYmIHBpcGVf
Y29uZmlnLT5waXBlX2JwcCA+IDI0KQorCQlkb3RjbG9jayA9IHBpcGVfY29uZmlnLT5wb3J0X2Ns
b2NrICogMjQgLyBwaXBlX2NvbmZpZy0+cGlwZV9icHA7CiAJZWxzZQogCQlkb3RjbG9jayA9IHBp
cGVfY29uZmlnLT5wb3J0X2Nsb2NrOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCmluZGV4IGE4OGVjOWFhOWNhMC4uMjFjYjdlZTM0
ZDQ1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHlwZXMuaApAQCAtODY2LDcgKzg2Niw3IEBAIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlIHsK
IAogCS8qCiAJICogRnJlcXVlbmNlIHRoZSBkcGxsIGZvciB0aGUgcG9ydCBzaG91bGQgcnVuIGF0
LiBEaWZmZXJzIGZyb20gdGhlCi0JICogYWRqdXN0ZWQgZG90Y2xvY2sgZS5nLiBmb3IgRFAgb3Ig
MTJicGMgaGRtaSBtb2RlLiBUaGlzIGlzIGFsc28KKwkgKiBhZGp1c3RlZCBkb3RjbG9jayBlLmcu
IGZvciBEUCBvciAxMC8xMmJwYyBoZG1pIG1vZGUuIFRoaXMgaXMgYWxzbwogCSAqIGFscmVhZHkg
bXVsdGlwbGllZCBieSBwaXhlbF9tdWx0aXBsaWVyLgogCSAqLwogCWludCBwb3J0X2Nsb2NrOwot
LSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
