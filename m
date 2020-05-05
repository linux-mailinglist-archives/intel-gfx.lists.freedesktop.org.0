Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7141C532B
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 12:27:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 496A16E179;
	Tue,  5 May 2020 10:27:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 129BD6E178
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 10:27:07 +0000 (UTC)
IronPort-SDR: /Gs8HkSgwDxa4XcTYPXBvfaKdZNWPeTVM52ult48F4dpVcjTMDR1j8PdQ7NYiYhk4m1hEXaXRA
 KGkc9lPRcTMw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 03:27:06 -0700
IronPort-SDR: 9cIZIK+uxn5fRU+vj6CgnW9w7HwqwSyxgApT/Zdr3Elr0oW8F9hntQpAkTt6zx3I6MYQR329D7
 IZgnn9iKxg7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,354,1583222400"; d="scan'208";a="434432052"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga005.jf.intel.com with ESMTP; 05 May 2020 03:27:05 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 May 2020 13:22:45 +0300
Message-Id: <20200505102247.32452-5-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200505102247.32452-1-stanislav.lisovskiy@intel.com>
References: <20200505102247.32452-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v27 4/6] drm/i915: Added required new PCode
 commands
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

V2UgbmVlZCBhIG5ldyBQQ29kZSByZXF1ZXN0IGNvbW1hbmRzIGFuZCByZXBseSBjb2Rlcwp0byBi
ZSBhZGRlZCBhcyBhIHByZXBhcnRpb24gcGF0Y2ggZm9yIFFHViBwb2ludHMKcmVzdHJpY3Rpbmcg
Zm9yIG5ldyBTQUdWIHN1cHBvcnQuCgp2MjogLSBFeHRyYWN0ZWQgdGhvc2UgY2hhbmdlcyBpbnRv
IHNlcGFyYXRlIHBhdGNoCiAgICAgIChWaWxsZSBTeXJqw6Rsw6QpCgp2MzogLSBNb3ZlZCBuZXcg
UENvZGUgbWFza3MgdG8gYW5vdGhlciBwbGFjZSBmcm9tCiAgICAgIFBDb2RlIGNvbW1hbmRzKFZp
bGxlKQoKdjQ6IC0gTW92ZWQgbmV3IFBDb2RlIG1hc2tzIHRvIGNvcnJlc3BvbmRlbnQgUENvZGUK
ICAgICAgY29tbWFuZCwgd2l0aCBpZGVudGF0aW9uKFZpbGxlKQogICAgLSBDaGFuZ2VkIG5hbWlu
ZyB0byBJQ0xfIGluc3RlYWQgb2YgR0VOMTFfCiAgICAgIHRvIGZpdCBtb3JlIG5pY2VseSBpbnRv
IGV4aXN0aW5nIGRlZmluaXRpb24KICAgICAgc3R5bGUuCgpTaWduZWQtb2ZmLWJ5OiBTdGFuaXNs
YXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgIHwgNCArKysrCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9zaWRlYmFuZC5jIHwgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCBmZDlmMjkwNGQ5M2MuLmYyM2ExOGVl
MjhmOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC05MDY0LDYgKzkwNjQsNyBAQCBlbnVt
IHsKICNkZWZpbmUgICAgIEdFTjdfUENPREVfSUxMRUdBTF9EQVRBCQkweDMKICNkZWZpbmUgICAg
IEdFTjExX1BDT0RFX0lMTEVHQUxfU1VCQ09NTUFORAkweDQKICNkZWZpbmUgICAgIEdFTjExX1BD
T0RFX0xPQ0tFRAkJCTB4NgorI2RlZmluZSAgICAgR0VOMTFfUENPREVfUkVKRUNURUQJCTB4MTEK
ICNkZWZpbmUgICAgIEdFTjdfUENPREVfTUlOX0ZSRVFfVEFCTEVfR1RfUkFUSU9fT1VUX09GX1JB
TkdFIDB4MTAKICNkZWZpbmUgICBHRU42X1BDT0RFX1dSSVRFX1JDNlZJRFMJCTB4NAogI2RlZmlu
ZSAgIEdFTjZfUENPREVfUkVBRF9SQzZWSURTCQkweDUKQEAgLTkwODUsNiArOTA4Niw5IEBAIGVu
dW0gewogI2RlZmluZSAgIElDTF9QQ09ERV9NRU1fU1VCU1lTWVNURU1fSU5GTwkweGQKICNkZWZp
bmUgICAgIElDTF9QQ09ERV9NRU1fU1NfUkVBRF9HTE9CQUxfSU5GTwkoMHgwIDw8IDgpCiAjZGVm
aW5lICAgICBJQ0xfUENPREVfTUVNX1NTX1JFQURfUUdWX1BPSU5UX0lORk8ocG9pbnQpCSgoKHBv
aW50KSA8PCAxNikgfCAoMHgxIDw8IDgpKQorI2RlZmluZSAgIElDTF9QQ09ERV9TQUdWX0RFX01F
TV9TU19DT05GSUcJMHhlCisjZGVmaW5lICAgICBJQ0xfUENPREVfUE9JTlRTX1JFU1RSSUNURUQJ
CTB4MAorI2RlZmluZSAgICAgSUNMX1BDT0RFX1BPSU5UU19SRVNUUklDVEVEX01BU0sJMHgxCiAj
ZGVmaW5lICAgR0VONl9QQ09ERV9SRUFEX0RfQ09NUAkJMHgxMAogI2RlZmluZSAgIEdFTjZfUENP
REVfV1JJVEVfRF9DT01QCQkweDExCiAjZGVmaW5lICAgSUNMX1BDT0RFX0VYSVRfVENDT0xECQkJ
MHgxMgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc2lkZWJhbmQuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3NpZGViYW5kLmMKaW5kZXggZDUxMjljMWRkNDUy
Li45MTZjY2QxYzBlOTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Np
ZGViYW5kLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc2lkZWJhbmQuYwpAQCAt
MzcxLDYgKzM3MSw4IEBAIHN0YXRpYyBpbnQgZ2VuN19jaGVja19tYWlsYm94X3N0YXR1cyh1MzIg
bWJveCkKIAkJcmV0dXJuIC1FTlhJTzsKIAljYXNlIEdFTjExX1BDT0RFX0xPQ0tFRDoKIAkJcmV0
dXJuIC1FQlVTWTsKKwljYXNlIEdFTjExX1BDT0RFX1JFSkVDVEVEOgorCQlyZXR1cm4gLUVBQ0NF
UzsKIAljYXNlIEdFTjdfUENPREVfTUlOX0ZSRVFfVEFCTEVfR1RfUkFUSU9fT1VUX09GX1JBTkdF
OgogCQlyZXR1cm4gLUVPVkVSRkxPVzsKIAlkZWZhdWx0OgotLSAKMi4yNC4xLjQ4NS5nYWQwNWEz
ZDhlNQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
