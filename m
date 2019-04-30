Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02030F945
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 14:51:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 645B0891C2;
	Tue, 30 Apr 2019 12:51:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE1C2891C2
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 12:51:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 05:51:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,413,1549958400"; d="scan'208";a="169283449"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com
 ([10.237.66.154])
 by fmsmga001.fm.intel.com with ESMTP; 30 Apr 2019 05:51:46 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Apr 2019 15:51:19 +0300
Message-Id: <20190430125119.7478-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4] drm/i915: Corrupt DSI picture fix for
 GeminiLake
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
Cc: martin.peres@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q3VycmVudGx5IGR1ZSB0byByZWdyZXNzaW9uIENJIG1hY2hpbmUKZGlzcGxheXMgc2hvdyBjb3Jy
dXB0IHBpY3R1cmUuClByb2JsZW0gaXMgd2hlbiBDRENMSyBpcyBhcyBsb3cgYXMgNzkyMDAsIHBp
Y3R1cmUgZ2V0cwp1bnN0YWJsZSwgd2hpbGUgRFNJIGFuZCBERSBwbGwgdmFsdWVzIHdlcmUKY29u
ZmlybWVkIHRvIGJlIGNvcnJlY3QuCkxpbWl0aW5nIHRvIDE1ODQwMCBhcyBhZ3JlZWQgd2l0aCBW
aWxsZS4KCldlIGNvdWxkIG5vdCBjb21lIHVwIHdpdGggYW55IGJldHRlciBzb2x1dGlvbgp5ZXQs
IGFzIFBMTCBkaXZpZGVyIHZhbHVlcyBib3RoIGZvciBNSVBJKERTSSBQTEwpIGFuZApDRENMSyhE
RSBQTEwpIGFyZSBjb3JyZWN0LCBob3dldmVyIHNlZW1zIHRoYXQgZHVlIHRvIHNvbWUKYm91bmRh
cnkgY29uZGl0aW9ucywgd2hlbiBjbG9ja2luZyBpcyB0b28gbG93IHdlIGdldAp3cm9uZyB0aW1p
bmdzIGZvciBEU0kgZGlzcGxheS4KU2ltaWxhciB3b3JrYXJvdW5kIGV4aXN0cyBmb3IgVkxWIHRo
b3VnaCwgc28ganVzdAp0b29rIHNpbWlsYXIgY29uZGl0aW9uIGludG8gdXNlLiBBdCBsZWFzdCB0
aGF0IHdheQpHTEsgcGxhdGZvcm0gd2lsbCBzdGFydCB0byBiZSB1c2FibGUgYWdhaW4sIHdpdGgK
Y3VycmVudCBkcm0tdGlwLgoKdjI6IEZpeGVkIGNvbW1pdCBzdWJqZWN0IGFzIHN1Z2dlc3RlZC4K
CnYzOiBBZGRlZCBnZW5lcmljIGJ1Z3MoY3JjIGZhaWx1cmVzLCBzY3JlZW4gbm90IGluaXQKZm9y
IEdMSyBEU0kgd2hpY2ggbWlnaHQgYmUgYWZmZWN0ZWQpLgoKdjQ6IEFkZGVkIHJlZmVyZW5jZXMg
dGFnIGZvciBidWdzIGFmZmVjdGVkLgoKU2lnbmVkLW9mZi1ieTogU3RhbmlzbGF2IExpc292c2tp
eSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+CkFja2VkLWJ5OiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpSZWZlcmVuY2VzOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkyNjcKUmVmZXJlbmNlczogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMTg0Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY2RjbGsuYyB8IDkgKysrKysrKysrCiAxIGZpbGUgY2hh
bmdlZCwgOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfY2RjbGsuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NkY2xrLmMKaW5kZXgg
YWU0MGE4Njc5MzE0Li4yYjIzZjg1MDAzNjIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2NkY2xrLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY2RjbGsu
YwpAQCAtMjI3Nyw2ICsyMjc3LDE1IEBAIGludCBpbnRlbF9jcnRjX2NvbXB1dGVfbWluX2NkY2xr
KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCSAgICBJU19WQUxM
RVlWSUVXKGRldl9wcml2KSkKIAkJbWluX2NkY2xrID0gbWF4KDMyMDAwMCwgbWluX2NkY2xrKTsK
IAorCS8qCisJICogT24gR2VtaW5pbGFrZSBvbmNlIHRoZSBDRENMSyBnZXRzIGFzIGxvdyBhcyA3
OTIwMAorCSAqIHBpY3R1cmUgZ2V0cyB1bnN0YWJsZSwgZGVzcGl0ZSB0aGF0IHZhbHVlcyBhcmUK
KwkgKiBjb3JyZWN0IGZvciBEU0kgUExMIGFuZCBERSBQTEwuCisJICovCisJaWYgKGludGVsX2Ny
dGNfaGFzX3R5cGUoY3J0Y19zdGF0ZSwgSU5URUxfT1VUUFVUX0RTSSkgJiYKKwkgICAgSVNfR0VN
SU5JTEFLRShkZXZfcHJpdikpCisJCW1pbl9jZGNsayA9IG1heCgxNTg0MDAsIG1pbl9jZGNsayk7
CisKIAlpZiAobWluX2NkY2xrID4gZGV2X3ByaXYtPm1heF9jZGNsa19mcmVxKSB7CiAJCURSTV9E
RUJVR19LTVMoInJlcXVpcmVkIGNkY2xrICglZCBrSHopIGV4Y2VlZHMgbWF4ICglZCBrSHopXG4i
LAogCQkJICAgICAgbWluX2NkY2xrLCBkZXZfcHJpdi0+bWF4X2NkY2xrX2ZyZXEpOwotLSAKMi4x
Ny4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
