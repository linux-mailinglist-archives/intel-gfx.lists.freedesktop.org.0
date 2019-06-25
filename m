Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F6D55676
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 19:55:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F4986E202;
	Tue, 25 Jun 2019 17:55:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 212016E1D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 17:55:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 10:55:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="360469273"
Received: from mvaitla-mobl.amr.corp.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.251.139.12])
 by fmsmga006.fm.intel.com with ESMTP; 25 Jun 2019 10:55:01 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 10:54:22 -0700
Message-Id: <20190625175437.14840-14-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625175437.14840-1-lucas.demarchi@intel.com>
References: <20190625175437.14840-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/28] drm/i915/tgl: Add new pll ids
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+CgpBZGQg
MiBuZXcgUExMcyBmb3IgYWRkaXRpb25hbCBUQyBwb3J0cy4gVGhlIG5hbWVzIGZvciB0aGUgUExM
cyBvbiBUR0wKY2hhbmdlZCwgYnV0IG1vc3QgcmVnaXN0ZXJzIHJlbWFpbmVkIHRoZSBzYW1lLCBs
aWtlIE1HUExMNV9FTkFCTEUsCk1HUExMNl9FTkFCTEUuIFNvIGNvbnRpbnVlIHRvIHVzZSB0aGUg
bmFtZSBmcm9tIElDTC4KCkNjOiBNYWRoYXYgQ2hhdWhhbiA8bWFkaGF2LmNoYXVoYW5AaW50ZWwu
Y29tPgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpTaWduZWQtb2Zm
LWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4KU2lnbmVk
LW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5oIHwgMjMgKysrKysr
KysrKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDUgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cGxsX21nci5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5o
CmluZGV4IGQwNTcwNDE0ZjNkMS4uYjk0M2Y1ZTNmMTQzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5oCkBAIC0xMTAsMzUgKzExMCw0OCBAQCBlbnVt
IGludGVsX2RwbGxfaWQgewogCiAKIAkvKioKLQkgKiBARFBMTF9JRF9JQ0xfRFBMTDA6IElDTCBj
b21ibyBQSFkgRFBMTDAKKwkgKiBARFBMTF9JRF9JQ0xfRFBMTDA6IElDTC9UR0wgY29tYm8gUEhZ
IERQTEwwCiAJICovCiAJRFBMTF9JRF9JQ0xfRFBMTDAgPSAwLAogCS8qKgotCSAqIEBEUExMX0lE
X0lDTF9EUExMMTogSUNMIGNvbWJvIFBIWSBEUExMMQorCSAqIEBEUExMX0lEX0lDTF9EUExMMTog
SUNML1RHTCBjb21ibyBQSFkgRFBMTDEKIAkgKi8KIAlEUExMX0lEX0lDTF9EUExMMSA9IDEsCiAJ
LyoqCi0JICogQERQTExfSURfSUNMX1RCVFBMTDogSUNMIFRCVCBQTEwKKwkgKiBARFBMTF9JRF9J
Q0xfVEJUUExMOiBJQ0wvVEdMIFRCVCBQTEwKIAkgKi8KIAlEUExMX0lEX0lDTF9UQlRQTEwgPSAy
LAogCS8qKgotCSAqIEBEUExMX0lEX0lDTF9NR1BMTDE6IElDTCBNRyBQTEwgMSBwb3J0IDEgKEMp
CisJICogQERQTExfSURfSUNMX01HUExMMTogSUNMIE1HIFBMTCAxIHBvcnQgMSAoQyksCisJICog
ICAgICAgICAgICAgICAgICAgICAgVEdMIFRDIFBMTCAxIHBvcnQgMSAoVEMxKQogCSAqLwogCURQ
TExfSURfSUNMX01HUExMMSA9IDMsCiAJLyoqCiAJICogQERQTExfSURfSUNMX01HUExMMjogSUNM
IE1HIFBMTCAxIHBvcnQgMiAoRCkKKwkgKiAgICAgICAgICAgICAgICAgICAgICBUR0wgVEMgUExM
IDEgcG9ydCAyIChUQzIpCiAJICovCiAJRFBMTF9JRF9JQ0xfTUdQTEwyID0gNCwKIAkvKioKIAkg
KiBARFBMTF9JRF9JQ0xfTUdQTEwzOiBJQ0wgTUcgUExMIDEgcG9ydCAzIChFKQorCSAqICAgICAg
ICAgICAgICAgICAgICAgIFRHTCBUQyBQTEwgMSBwb3J0IDMgKFRDMykKIAkgKi8KIAlEUExMX0lE
X0lDTF9NR1BMTDMgPSA1LAogCS8qKgogCSAqIEBEUExMX0lEX0lDTF9NR1BMTDQ6IElDTCBNRyBQ
TEwgMSBwb3J0IDQgKEYpCisJICogICAgICAgICAgICAgICAgICAgICAgVEdMIFRDIFBMTCAxIHBv
cnQgNCAoVEM0KQogCSAqLwogCURQTExfSURfSUNMX01HUExMNCA9IDYsCisJLyoqCisJICogQERQ
TExfSURfVEdMX1RDUExMNTogVEdMIFRDIFBMTCBwb3J0IDUgKFRDNSkKKwkgKi8KKwlEUExMX0lE
X1RHTF9NR1BMTDUgPSA3LAorCS8qKgorCSAqIEBEUExMX0lEX1RHTF9UQ1BMTDY6IFRHTCBUQyBQ
TEwgcG9ydCA2IChUQzYpCisJICovCisJRFBMTF9JRF9UR0xfTUdQTEw2ID0gOCwKIH07Ci0jZGVm
aW5lIEk5MTVfTlVNX1BMTFMgNworCisjZGVmaW5lIEk5MTVfTlVNX1BMTFMgOQogCiBzdHJ1Y3Qg
aW50ZWxfZHBsbF9od19zdGF0ZSB7CiAJLyogaTl4eCwgcGNoIHBsbHMgKi8KLS0gCjIuMjEuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
