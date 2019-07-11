Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1188D65F2B
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 19:56:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 957F76E286;
	Thu, 11 Jul 2019 17:56:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC2DE6E27F
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 17:55:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 10:55:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,479,1557212400"; d="scan'208";a="156894681"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga007.jf.intel.com with ESMTP; 11 Jul 2019 10:55:52 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2019 10:31:04 -0700
Message-Id: <20190711173115.28296-11-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711173115.28296-1-lucas.demarchi@intel.com>
References: <20190711173115.28296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 10/21] drm/i915/tgl: Add new pll ids
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

RnJvbTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+CgpBZGQg
MiBuZXcgUExMcyBmb3IgYWRkaXRpb25hbCBUQyBwb3J0cy4gVGhlIG5hbWVzIGZvciB0aGUgUExM
cyBvbiBUR0wKY2hhbmdlZCwgYnV0IG1vc3QgcmVnaXN0ZXJzIHJlbWFpbmVkIHRoZSBzYW1lLCBs
aWtlIE1HUExMNV9FTkFCTEUsCk1HUExMNl9FTkFCTEUuIFNvIGNvbnRpbnVlIHRvIHVzZSB0aGUg
bmFtZSBmcm9tIElDTC4KCkNjOiBNYWRoYXYgQ2hhdWhhbiA8bWFkaGF2LmNoYXVoYW5AaW50ZWwu
Y29tPgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpTaWduZWQtb2Zm
LWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4KU2lnbmVk
LW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClJldmll
d2VkLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5oIHwgMjMgKysrKysr
KysrKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDUgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cGxsX21nci5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5o
CmluZGV4IDRjMmM1ZTkzYWZmMy4uZDBlMTRlZDZlNWY4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5oCkBAIC0xMTIsMTEgKzExMiwxMSBAQCBlbnVt
IGludGVsX2RwbGxfaWQgewogCiAKIAkvKioKLQkgKiBARFBMTF9JRF9JQ0xfRFBMTDA6IElDTCBj
b21ibyBQSFkgRFBMTDAKKwkgKiBARFBMTF9JRF9JQ0xfRFBMTDA6IElDTC9UR0wgY29tYm8gUEhZ
IERQTEwwCiAJICovCiAJRFBMTF9JRF9JQ0xfRFBMTDAgPSAwLAogCS8qKgotCSAqIEBEUExMX0lE
X0lDTF9EUExMMTogSUNMIGNvbWJvIFBIWSBEUExMMQorCSAqIEBEUExMX0lEX0lDTF9EUExMMTog
SUNML1RHTCBjb21ibyBQSFkgRFBMTDEKIAkgKi8KIAlEUExMX0lEX0lDTF9EUExMMSA9IDEsCiAJ
LyoqCkBAIC0xMjQsMjcgKzEyNCw0MCBAQCBlbnVtIGludGVsX2RwbGxfaWQgewogCSAqLwogCURQ
TExfSURfRUhMX0RQTEw0ID0gMiwKIAkvKioKLQkgKiBARFBMTF9JRF9JQ0xfVEJUUExMOiBJQ0wg
VEJUIFBMTAorCSAqIEBEUExMX0lEX0lDTF9UQlRQTEw6IElDTC9UR0wgVEJUIFBMTAogCSAqLwog
CURQTExfSURfSUNMX1RCVFBMTCA9IDIsCiAJLyoqCi0JICogQERQTExfSURfSUNMX01HUExMMTog
SUNMIE1HIFBMTCAxIHBvcnQgMSAoQykKKwkgKiBARFBMTF9JRF9JQ0xfTUdQTEwxOiBJQ0wgTUcg
UExMIDEgcG9ydCAxIChDKSwKKwkgKiAgICAgICAgICAgICAgICAgICAgICBUR0wgVEMgUExMIDEg
cG9ydCAxIChUQzEpCiAJICovCiAJRFBMTF9JRF9JQ0xfTUdQTEwxID0gMywKIAkvKioKIAkgKiBA
RFBMTF9JRF9JQ0xfTUdQTEwyOiBJQ0wgTUcgUExMIDEgcG9ydCAyIChEKQorCSAqICAgICAgICAg
ICAgICAgICAgICAgIFRHTCBUQyBQTEwgMSBwb3J0IDIgKFRDMikKIAkgKi8KIAlEUExMX0lEX0lD
TF9NR1BMTDIgPSA0LAogCS8qKgogCSAqIEBEUExMX0lEX0lDTF9NR1BMTDM6IElDTCBNRyBQTEwg
MSBwb3J0IDMgKEUpCisJICogICAgICAgICAgICAgICAgICAgICAgVEdMIFRDIFBMTCAxIHBvcnQg
MyAoVEMzKQogCSAqLwogCURQTExfSURfSUNMX01HUExMMyA9IDUsCiAJLyoqCiAJICogQERQTExf
SURfSUNMX01HUExMNDogSUNMIE1HIFBMTCAxIHBvcnQgNCAoRikKKwkgKiAgICAgICAgICAgICAg
ICAgICAgICBUR0wgVEMgUExMIDEgcG9ydCA0IChUQzQpCiAJICovCiAJRFBMTF9JRF9JQ0xfTUdQ
TEw0ID0gNiwKKwkvKioKKwkgKiBARFBMTF9JRF9UR0xfVENQTEw1OiBUR0wgVEMgUExMIHBvcnQg
NSAoVEM1KQorCSAqLworCURQTExfSURfVEdMX01HUExMNSA9IDcsCisJLyoqCisJICogQERQTExf
SURfVEdMX1RDUExMNjogVEdMIFRDIFBMTCBwb3J0IDYgKFRDNikKKwkgKi8KKwlEUExMX0lEX1RH
TF9NR1BMTDYgPSA4LAogfTsKLSNkZWZpbmUgSTkxNV9OVU1fUExMUyA3CisKKyNkZWZpbmUgSTkx
NV9OVU1fUExMUyA5CiAKIGVudW0gaWNsX3BvcnRfZHBsbF9pZCB7CiAJSUNMX1BPUlRfRFBMTF9E
RUZBVUxULAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
