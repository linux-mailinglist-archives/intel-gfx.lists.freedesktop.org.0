Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E436F3B03E
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 10:11:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C031D8910C;
	Mon, 10 Jun 2019 08:11:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8557A8910C
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 08:11:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 01:11:26 -0700
X-ExtLoop1: 1
Received: from shawnle1-cm6330.itwn.intel.com ([10.5.253.127])
 by orsmga007.jf.intel.com with ESMTP; 10 Jun 2019 01:11:21 -0700
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 01:40:55 -0700
Message-Id: <1560156055-10451-1-git-send-email-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [Intel-gfx] [PATCH] drm/i915: Backlight control via VESA eDP aux
 interface
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
Cc: Jani Nikula <jani.nikula@intel.com>,
	Cooper Chiou <cooper.chiou@intel.com>, Lee@freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGxhdGVzdCBWQlQgc3VwcG9ydCBiYWNrbGlnaHQgY29udHJvbCB2aWEgYXV4LiBXZSBoYXZl
IHRvCmNoZWNrIFZCVCdzIHNldHRpbmcgYmVmb3JlIGRvaW5nIGJhY2tsaWdodCBpbml0aWFsaXph
dGlvbi4KVGhlbiBEcml2ZXIgd2lsbCBhc3NpZ24gY29ycmVjdCBjYWxsYmFjayBmdW5jdGlvbiBm
b3IgZURQCmJhY2tsaWdodCBjb250cm9sLgoKQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBp
bnRlbC5jb20+CkNjOiBKb3NlIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
PgpDYzogQ29vcGVyIENoaW91IDxjb29wZXIuY2hpb3VAaW50ZWwuY29tPgoKU2lnbmVkLW9mZi1i
eTogTGVlLCBTaGF3biBDIDxzaGF3bi5jLmxlZUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfYmlvcy5jICAgICB8IDMgKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF92YnRfZGVmcy5oIHwgNiArKysrLS0KIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25z
KCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2Jpb3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Jpb3MuYwppbmRleCAxYzAz
N2RmYTgzZjUuLjI3YmRhNDU1MjBlYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfYmlvcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Jpb3MuYwpAQCAt
MzE3LDcgKzMxNyw4IEBAIHBhcnNlX2xmcF9iYWNrbGlnaHQoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LAogCiAJZW50cnkgPSAmYmFja2xpZ2h0X2RhdGEtPmRhdGFbcGFuZWxfdHlw
ZV07CiAKLQlkZXZfcHJpdi0+dmJ0LmJhY2tsaWdodC5wcmVzZW50ID0gZW50cnktPnR5cGUgPT0g
QkRCX0JBQ0tMSUdIVF9UWVBFX1BXTTsKKwlkZXZfcHJpdi0+dmJ0LmJhY2tsaWdodC5wcmVzZW50
ID0gKGVudHJ5LT50eXBlID09IEJEQl9CQUNLTElHSFRfVFlQRV9QV01fU09DIHx8CisJCQkJCSAg
IGVudHJ5LT50eXBlID09IEJEQl9CQUNLTElHSFRfVFlQRV9QV01fVkVTQV9FRFBfQVVYKTsKIAlp
ZiAoIWRldl9wcml2LT52YnQuYmFja2xpZ2h0LnByZXNlbnQpIHsKIAkJRFJNX0RFQlVHX0tNUygi
UFdNIGJhY2tsaWdodCBub3QgcHJlc2VudCBpbiBWQlQgKHR5cGUgJXUpXG4iLAogCQkJICAgICAg
ZW50cnktPnR5cGUpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdmJ0
X2RlZnMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3ZidF9kZWZzLmgKaW5kZXggODll
ZjE0Y2FmYjZiLi43MTBmNTM5ZjE3ZGUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3ZidF9kZWZzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdmJ0X2Rl
ZnMuaApAQCAtNzYwLDggKzc2MCwxMCBAQCBzdHJ1Y3QgYmRiX2x2ZHNfbGZwX2RhdGEgewogICog
QmxvY2sgNDMgLSBMRlAgQmFja2xpZ2h0IENvbnRyb2wgRGF0YSBCbG9jawogICovCiAKLSNkZWZp
bmUgQkRCX0JBQ0tMSUdIVF9UWVBFX05PTkUJMAotI2RlZmluZSBCREJfQkFDS0xJR0hUX1RZUEVf
UFdNCTIKKyNkZWZpbmUgQkRCX0JBQ0tMSUdIVF9UWVBFX05PTkUJCQkJMAorI2RlZmluZSBCREJf
QkFDS0xJR0hUX1RZUEVfUFdNX1NPQwkJCTIKKyNkZWZpbmUgQkRCX0JBQ0tMSUdIVF9UWVBFX1BX
TV9QQU5FTF9EUklWRVJfT0xFRAk0CisjZGVmaW5lIEJEQl9CQUNLTElHSFRfVFlQRV9QV01fVkVT
QV9FRFBfQVVYCQk1CiAKIHN0cnVjdCBsZnBfYmFja2xpZ2h0X2RhdGFfZW50cnkgewogCXU4IHR5
cGU6MjsKLS0gCjIuNy40CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
