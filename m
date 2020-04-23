Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1951B56DC
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 10:02:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EEDE6E3F5;
	Thu, 23 Apr 2020 08:02:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B98106E35D
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 08:02:27 +0000 (UTC)
IronPort-SDR: StbJFyhAl3rg6G7HlGt2SeeFIO6DMhDLpBPtkynCGAF6Vqin0nP8wgfLlAjVeGUDL6P53wTAM4
 qDjflOWBi7tQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 01:02:27 -0700
IronPort-SDR: SP8bGcR2EQM4whXI4hlh00s3ebKUdbXvKHGHJez32dStHis5H1TwscPkPjrG11fmhNDy3NsmMq
 d81cXDQzBWkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,306,1583222400"; d="scan'208";a="259344455"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga006.jf.intel.com with ESMTP; 23 Apr 2020 01:02:26 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Apr 2020 10:58:59 +0300
Message-Id: <20200423075902.21892-7-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200423075902.21892-1-stanislav.lisovskiy@intel.com>
References: <20200423075902.21892-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v26 6/9] drm/i915: Added required new PCode
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
bGxlKQoKU2lnbmVkLW9mZi1ieTogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292
c2tpeUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAg
ICB8IDUgKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3NpZGViYW5kLmMgfCAyICsr
CiAyIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
CmluZGV4IDRhMTk2NTQ2NzM3NC4uNWEwNzdhOTIxNTY4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgKQEAgLTkwODYsNiArOTA4Niw3IEBAIGVudW0gewogI2RlZmluZSAgICAgR0VON19QQ09ERV9J
TExFR0FMX0RBVEEJCTB4MwogI2RlZmluZSAgICAgR0VOMTFfUENPREVfSUxMRUdBTF9TVUJDT01N
QU5ECTB4NAogI2RlZmluZSAgICAgR0VOMTFfUENPREVfTE9DS0VECQkJMHg2CisjZGVmaW5lICAg
ICBHRU4xMV9QQ09ERV9SRUpFQ1RFRAkJMHgxMQogI2RlZmluZSAgICAgR0VON19QQ09ERV9NSU5f
RlJFUV9UQUJMRV9HVF9SQVRJT19PVVRfT0ZfUkFOR0UgMHgxMAogI2RlZmluZSAgIEdFTjZfUENP
REVfV1JJVEVfUkM2VklEUwkJMHg0CiAjZGVmaW5lICAgR0VONl9QQ09ERV9SRUFEX1JDNlZJRFMJ
CTB4NQpAQCAtOTEwNyw2ICs5MTA4LDcgQEAgZW51bSB7CiAjZGVmaW5lICAgSUNMX1BDT0RFX01F
TV9TVUJTWVNZU1RFTV9JTkZPCTB4ZAogI2RlZmluZSAgICAgSUNMX1BDT0RFX01FTV9TU19SRUFE
X0dMT0JBTF9JTkZPCSgweDAgPDwgOCkKICNkZWZpbmUgICAgIElDTF9QQ09ERV9NRU1fU1NfUkVB
RF9RR1ZfUE9JTlRfSU5GTyhwb2ludCkJKCgocG9pbnQpIDw8IDE2KSB8ICgweDEgPDwgOCkpCisj
ZGVmaW5lICAgSUNMX1BDT0RFX1NBR1ZfREVfTUVNX1NTX0NPTkZJRwkweGUKICNkZWZpbmUgICBH
RU42X1BDT0RFX1JFQURfRF9DT01QCQkweDEwCiAjZGVmaW5lICAgR0VONl9QQ09ERV9XUklURV9E
X0NPTVAJCTB4MTEKICNkZWZpbmUgICBJQ0xfUENPREVfRVhJVF9UQ0NPTEQJCQkweDEyCkBAIC05
MTQwLDYgKzkxNDIsOSBAQCBlbnVtIHsKICNkZWZpbmUgR0VOOF9HVF9TTElDRV9JTkZPCQlfTU1J
TygweDEzODA2NCkKICNkZWZpbmUgICBHRU44X0xTTElDRVNUQVRfTUFTSwkJMHg3CiAKKyNkZWZp
bmUgR0VOMTFfUENPREVfUE9JTlRTX1JFU1RSSUNURUQJCTB4MAorI2RlZmluZSBHRU4xMV9QQ09E
RV9QT0lOVFNfUkVTVFJJQ1RFRF9NQVNLCTB4MQorCiAjZGVmaW5lIENIVl9QT1dFUl9TUzBfU0lH
MQkJX01NSU8oMHhhNzIwKQogI2RlZmluZSBDSFZfUE9XRVJfU1MxX1NJRzEJCV9NTUlPKDB4YTcy
OCkKICNkZWZpbmUgICBDSFZfU1NfUEdfRU5BQkxFCQkoMSA8PCAxKQpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc2lkZWJhbmQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3NpZGViYW5kLmMKaW5kZXggMTRkYWY2YWY2ODU0Li41OWVmMzY0NTQ5Y2YgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3NpZGViYW5kLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfc2lkZWJhbmQuYwpAQCAtMzcxLDYgKzM3MSw4IEBAIHN0YXRp
YyBpbnQgZ2VuN19jaGVja19tYWlsYm94X3N0YXR1cyh1MzIgbWJveCkKIAkJcmV0dXJuIC1FTlhJ
TzsKIAljYXNlIEdFTjExX1BDT0RFX0xPQ0tFRDoKIAkJcmV0dXJuIC1FQlVTWTsKKwljYXNlIEdF
TjExX1BDT0RFX1JFSkVDVEVEOgorCQlyZXR1cm4gLUVBQ0NFUzsKIAljYXNlIEdFTjdfUENPREVf
TUlOX0ZSRVFfVEFCTEVfR1RfUkFUSU9fT1VUX09GX1JBTkdFOgogCQlyZXR1cm4gLUVPVkVSRkxP
VzsKIAlkZWZhdWx0OgotLSAKMi4yNC4xLjQ4NS5nYWQwNWEzZDhlNQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
