Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5E686349
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 15:38:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4BF16E835;
	Thu,  8 Aug 2019 13:38:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 791CB6E835
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 13:38:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 06:38:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,361,1559545200"; d="scan'208";a="177316079"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga003.jf.intel.com with ESMTP; 08 Aug 2019 06:38:24 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Aug 2019 16:37:41 +0300
Message-Id: <20190808133741.10113-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix HW readout for crtc_clock in HDMI
 mode
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
c28gZml4IHRoYXQuCgpGaXhlczogY2Q5ZTExYThiZjI1ICgiZHJtL2k5MTUvaWNsOiBBZGQgMTAt
Yml0IHN1cHBvcnQgZm9yIGhkbWkiKQpCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5NTkzCkNjOiBSYWRoYWtyaXNobmEgU3JpcGFkYSA8cmFk
aGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRl
YWtAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMgICAgICAgICAgIHwgOSArKysrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV90eXBlcy5oIHwgMiArLQogMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlv
bnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMKaW5kZXggYWE1YjI0NDA1MTNjLi42NTM5NmY5MTNmNTYgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtMTQ2NywxMCArMTQ2NywxMSBAQCBzdGF0aWMg
dm9pZCBkZGlfZG90Y2xvY2tfZ2V0KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZp
ZykKIAllbHNlIGlmIChpbnRlbF9jcnRjX2hhc19kcF9lbmNvZGVyKHBpcGVfY29uZmlnKSkKIAkJ
ZG90Y2xvY2sgPSBpbnRlbF9kb3RjbG9ja19jYWxjdWxhdGUocGlwZV9jb25maWctPnBvcnRfY2xv
Y2ssCiAJCQkJCQkgICAgJnBpcGVfY29uZmlnLT5kcF9tX24pOwotCWVsc2UgaWYgKHBpcGVfY29u
ZmlnLT5oYXNfaGRtaV9zaW5rICYmIHBpcGVfY29uZmlnLT5waXBlX2JwcCA9PSAzNikKLQkJZG90
Y2xvY2sgPSBwaXBlX2NvbmZpZy0+cG9ydF9jbG9jayAqIDIgLyAzOwotCWVsc2UKLQkJZG90Y2xv
Y2sgPSBwaXBlX2NvbmZpZy0+cG9ydF9jbG9jazsKKwllbHNlIGlmIChwaXBlX2NvbmZpZy0+aGFz
X2hkbWlfc2luaykgeworCQlpbnQgYnBwID0gbWF4KDI0LCBwaXBlX2NvbmZpZy0+cGlwZV9icHAp
OworCisJCWRvdGNsb2NrID0gcGlwZV9jb25maWctPnBvcnRfY2xvY2sgKiAyNCAvIGJwcDsKKwl9
CiAKIAlpZiAocGlwZV9jb25maWctPm91dHB1dF9mb3JtYXQgPT0gSU5URUxfT1VUUFVUX0ZPUk1B
VF9ZQ0JDUjQyMCAmJgogCSAgICAhaW50ZWxfY3J0Y19oYXNfZHBfZW5jb2RlcihwaXBlX2NvbmZp
ZykpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90
eXBlcy5oCmluZGV4IGE4OGVjOWFhOWNhMC4uMjFjYjdlZTM0ZDQ1IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaApAQCAtODY2LDcg
Kzg2Niw3IEBAIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlIHsKIAogCS8qCiAJICogRnJlcXVlbmNl
IHRoZSBkcGxsIGZvciB0aGUgcG9ydCBzaG91bGQgcnVuIGF0LiBEaWZmZXJzIGZyb20gdGhlCi0J
ICogYWRqdXN0ZWQgZG90Y2xvY2sgZS5nLiBmb3IgRFAgb3IgMTJicGMgaGRtaSBtb2RlLiBUaGlz
IGlzIGFsc28KKwkgKiBhZGp1c3RlZCBkb3RjbG9jayBlLmcuIGZvciBEUCBvciAxMC8xMmJwYyBo
ZG1pIG1vZGUuIFRoaXMgaXMgYWxzbwogCSAqIGFscmVhZHkgbXVsdGlwbGllZCBieSBwaXhlbF9t
dWx0aXBsaWVyLgogCSAqLwogCWludCBwb3J0X2Nsb2NrOwotLSAKMi4xNy4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
