Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B4884CB5
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 15:19:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B04FC6E6DA;
	Wed,  7 Aug 2019 13:19:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 89B7389AA7;
 Wed,  7 Aug 2019 13:19:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AECB0A47DF;
 Wed,  7 Aug 2019 13:19:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 07 Aug 2019 13:19:32 -0000
Message-ID: <20190807131932.24671.51019@emeril.freedesktop.org>
References: <20190807120415.17917-1-jani.nikula@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190807120415.17917-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_split_out_intel=5Fpch=2E=5Bch=5D_from_i915=5Fdrv?=
 =?utf-8?b?LltjaF0=?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IHNwbGl0IG91dCBpbnRlbF9w
Y2guW2NoXSBmcm9tIGk5MTVfZHJ2LltjaF0KVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVl
ZGVza3RvcC5vcmcvc2VyaWVzLzY0ODMzLwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0K
CiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKMDcyNDEzOTJmMjhlIGRybS9pOTE1OiBz
cGxpdCBvdXQgaW50ZWxfcGNoLltjaF0gZnJvbSBpOTE1X2Rydi5bY2hdCi06MzE5OiBXQVJOSU5H
OkZJTEVfUEFUSF9DSEFOR0VTOiBhZGRlZCwgbW92ZWQgb3IgZGVsZXRlZCBmaWxlKHMpLCBkb2Vz
IE1BSU5UQUlORVJTIG5lZWQgdXBkYXRpbmc/CiMzMTk6IApuZXcgZmlsZSBtb2RlIDEwMDY0NAoK
LTo1OTA6IENIRUNLOk1BQ1JPX0FSR19SRVVTRTogTWFjcm8gYXJndW1lbnQgcmV1c2UgJ2Rldl9w
cml2JyAtIHBvc3NpYmxlIHNpZGUtZWZmZWN0cz8KIzU5MDogRklMRTogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcGNoLmg6NjA6CisjZGVmaW5lIEhBU19QQ0hfTFBUX0xQKGRldl9wcml2KSBc
CisJKElOVEVMX1BDSF9JRChkZXZfcHJpdikgPT0gSU5URUxfUENIX0xQVF9MUF9ERVZJQ0VfSURf
VFlQRSB8fCBcCisJIElOVEVMX1BDSF9JRChkZXZfcHJpdikgPT0gSU5URUxfUENIX1dQVF9MUF9E
RVZJQ0VfSURfVFlQRSkKCi06NTkzOiBDSEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3Vt
ZW50IHJldXNlICdkZXZfcHJpdicgLSBwb3NzaWJsZSBzaWRlLWVmZmVjdHM/CiM1OTM6IEZJTEU6
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5oOjYzOgorI2RlZmluZSBIQVNfUENIX0xQ
VF9IKGRldl9wcml2KSBcCisJKElOVEVMX1BDSF9JRChkZXZfcHJpdikgPT0gSU5URUxfUENIX0xQ
VF9ERVZJQ0VfSURfVFlQRSB8fCBcCisJIElOVEVMX1BDSF9JRChkZXZfcHJpdikgPT0gSU5URUxf
UENIX1dQVF9ERVZJQ0VfSURfVFlQRSkKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMiBj
aGVja3MsIDU1OSBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
