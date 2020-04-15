Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1581AAA60
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 16:42:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EA0F6E9F4;
	Wed, 15 Apr 2020 14:42:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C89A26E9F3
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 14:42:53 +0000 (UTC)
IronPort-SDR: Nyiow+rEaxBtqDi5/jWF3W2ca9BWOLOrz+8GFSalItsAK31WSQAwF/PrNPb6BQrfR+eYYQll8a
 DFzjdK3juckQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 07:42:53 -0700
IronPort-SDR: gPgEESMOYGanNTqbDjClpWfXloZSbjG49et2Hz5vdaxPjYNq4sGVSDj84Z1N4V3Nd2n5FohV1N
 cHHyEjH4+/1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,387,1580803200"; d="scan'208";a="427454539"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga005.jf.intel.com with ESMTP; 15 Apr 2020 07:42:51 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Apr 2020 17:39:08 +0300
Message-Id: <20200415143911.10244-9-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200415143911.10244-1-stanislav.lisovskiy@intel.com>
References: <20200415143911.10244-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v24 08/11] drm/i915: Added required new PCode
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
Cc: jani.nikula@intel.com
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
CmluZGV4IDBiMzliOWFiZjhhNC4uYTNjZGIyMjgyNmQ5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgKQEAgLTkwODUsNiArOTA4NSw3IEBAIGVudW0gewogI2RlZmluZSAgICAgR0VON19QQ09ERV9J
TExFR0FMX0RBVEEJCTB4MwogI2RlZmluZSAgICAgR0VOMTFfUENPREVfSUxMRUdBTF9TVUJDT01N
QU5ECTB4NAogI2RlZmluZSAgICAgR0VOMTFfUENPREVfTE9DS0VECQkJMHg2CisjZGVmaW5lICAg
ICBHRU4xMV9QQ09ERV9SRUpFQ1RFRAkJMHgxMQogI2RlZmluZSAgICAgR0VON19QQ09ERV9NSU5f
RlJFUV9UQUJMRV9HVF9SQVRJT19PVVRfT0ZfUkFOR0UgMHgxMAogI2RlZmluZSAgIEdFTjZfUENP
REVfV1JJVEVfUkM2VklEUwkJMHg0CiAjZGVmaW5lICAgR0VONl9QQ09ERV9SRUFEX1JDNlZJRFMJ
CTB4NQpAQCAtOTEwNiw2ICs5MTA3LDcgQEAgZW51bSB7CiAjZGVmaW5lICAgSUNMX1BDT0RFX01F
TV9TVUJTWVNZU1RFTV9JTkZPCTB4ZAogI2RlZmluZSAgICAgSUNMX1BDT0RFX01FTV9TU19SRUFE
X0dMT0JBTF9JTkZPCSgweDAgPDwgOCkKICNkZWZpbmUgICAgIElDTF9QQ09ERV9NRU1fU1NfUkVB
RF9RR1ZfUE9JTlRfSU5GTyhwb2ludCkJKCgocG9pbnQpIDw8IDE2KSB8ICgweDEgPDwgOCkpCisj
ZGVmaW5lICAgSUNMX1BDT0RFX1NBR1ZfREVfTUVNX1NTX0NPTkZJRwkweGUKICNkZWZpbmUgICBH
RU42X1BDT0RFX1JFQURfRF9DT01QCQkweDEwCiAjZGVmaW5lICAgR0VONl9QQ09ERV9XUklURV9E
X0NPTVAJCTB4MTEKICNkZWZpbmUgICBIU1dfUENPREVfREVfV1JJVEVfRlJFUV9SRVEJCTB4MTcK
QEAgLTkxMzQsNiArOTEzNiw5IEBAIGVudW0gewogI2RlZmluZSBHRU44X0dUX1NMSUNFX0lORk8J
CV9NTUlPKDB4MTM4MDY0KQogI2RlZmluZSAgIEdFTjhfTFNMSUNFU1RBVF9NQVNLCQkweDcKIAor
I2RlZmluZSBHRU4xMV9QQ09ERV9QT0lOVFNfUkVTVFJJQ1RFRAkJMHgwCisjZGVmaW5lIEdFTjEx
X1BDT0RFX1BPSU5UU19SRVNUUklDVEVEX01BU0sJMHgxCisKICNkZWZpbmUgQ0hWX1BPV0VSX1NT
MF9TSUcxCQlfTU1JTygweGE3MjApCiAjZGVmaW5lIENIVl9QT1dFUl9TUzFfU0lHMQkJX01NSU8o
MHhhNzI4KQogI2RlZmluZSAgIENIVl9TU19QR19FTkFCTEUJCSgxIDw8IDEpCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zaWRlYmFuZC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfc2lkZWJhbmQuYwppbmRleCAzZjEzYmFhZWYwNTguLmIwMWYxNTAxN2FlNCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc2lkZWJhbmQuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zaWRlYmFuZC5jCkBAIC0zNzEsNiArMzcxLDggQEAg
c3RhdGljIGlubGluZSBpbnQgZ2VuN19jaGVja19tYWlsYm94X3N0YXR1cyh1MzIgbWJveCkKIAkJ
cmV0dXJuIC1FTlhJTzsKIAljYXNlIEdFTjExX1BDT0RFX0xPQ0tFRDoKIAkJcmV0dXJuIC1FQlVT
WTsKKwljYXNlIEdFTjExX1BDT0RFX1JFSkVDVEVEOgorCQlyZXR1cm4gLUVBQ0NFUzsKIAljYXNl
IEdFTjdfUENPREVfTUlOX0ZSRVFfVEFCTEVfR1RfUkFUSU9fT1VUX09GX1JBTkdFOgogCQlyZXR1
cm4gLUVPVkVSRkxPVzsKIAlkZWZhdWx0OgotLSAKMi4yNC4xLjQ4NS5nYWQwNWEzZDhlNQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
