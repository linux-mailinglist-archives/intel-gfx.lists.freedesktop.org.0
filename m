Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5179C64FA8
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 02:39:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C6E889CBE;
	Thu, 11 Jul 2019 00:39:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49BEA89C1A
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 00:38:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 17:38:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,476,1557212400"; d="scan'208";a="193232368"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jul 2019 17:38:49 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 17:38:22 -0700
Message-Id: <20190711003833.17420-10-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711003833.17420-1-lucas.demarchi@intel.com>
References: <20190711003833.17420-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 10/21] drm/i915/tgl: Add new pll ids
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
d2VkLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+Ckxpbms6
IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDE5MDcwODIz
MTYyOS45Mjk2LTEyLWx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbQotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuaCB8IDIzICsrKysrKysrKysrKysrKy0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuaAppbmRleCA0YzJjNWU5
M2FmZjMuLmQwZTE0ZWQ2ZTVmOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcGxsX21nci5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBsbF9tZ3IuaApAQCAtMTEyLDExICsxMTIsMTEgQEAgZW51bSBpbnRlbF9kcGxsX2lk
IHsKIAogCiAJLyoqCi0JICogQERQTExfSURfSUNMX0RQTEwwOiBJQ0wgY29tYm8gUEhZIERQTEww
CisJICogQERQTExfSURfSUNMX0RQTEwwOiBJQ0wvVEdMIGNvbWJvIFBIWSBEUExMMAogCSAqLwog
CURQTExfSURfSUNMX0RQTEwwID0gMCwKIAkvKioKLQkgKiBARFBMTF9JRF9JQ0xfRFBMTDE6IElD
TCBjb21ibyBQSFkgRFBMTDEKKwkgKiBARFBMTF9JRF9JQ0xfRFBMTDE6IElDTC9UR0wgY29tYm8g
UEhZIERQTEwxCiAJICovCiAJRFBMTF9JRF9JQ0xfRFBMTDEgPSAxLAogCS8qKgpAQCAtMTI0LDI3
ICsxMjQsNDAgQEAgZW51bSBpbnRlbF9kcGxsX2lkIHsKIAkgKi8KIAlEUExMX0lEX0VITF9EUExM
NCA9IDIsCiAJLyoqCi0JICogQERQTExfSURfSUNMX1RCVFBMTDogSUNMIFRCVCBQTEwKKwkgKiBA
RFBMTF9JRF9JQ0xfVEJUUExMOiBJQ0wvVEdMIFRCVCBQTEwKIAkgKi8KIAlEUExMX0lEX0lDTF9U
QlRQTEwgPSAyLAogCS8qKgotCSAqIEBEUExMX0lEX0lDTF9NR1BMTDE6IElDTCBNRyBQTEwgMSBw
b3J0IDEgKEMpCisJICogQERQTExfSURfSUNMX01HUExMMTogSUNMIE1HIFBMTCAxIHBvcnQgMSAo
QyksCisJICogICAgICAgICAgICAgICAgICAgICAgVEdMIFRDIFBMTCAxIHBvcnQgMSAoVEMxKQog
CSAqLwogCURQTExfSURfSUNMX01HUExMMSA9IDMsCiAJLyoqCiAJICogQERQTExfSURfSUNMX01H
UExMMjogSUNMIE1HIFBMTCAxIHBvcnQgMiAoRCkKKwkgKiAgICAgICAgICAgICAgICAgICAgICBU
R0wgVEMgUExMIDEgcG9ydCAyIChUQzIpCiAJICovCiAJRFBMTF9JRF9JQ0xfTUdQTEwyID0gNCwK
IAkvKioKIAkgKiBARFBMTF9JRF9JQ0xfTUdQTEwzOiBJQ0wgTUcgUExMIDEgcG9ydCAzIChFKQor
CSAqICAgICAgICAgICAgICAgICAgICAgIFRHTCBUQyBQTEwgMSBwb3J0IDMgKFRDMykKIAkgKi8K
IAlEUExMX0lEX0lDTF9NR1BMTDMgPSA1LAogCS8qKgogCSAqIEBEUExMX0lEX0lDTF9NR1BMTDQ6
IElDTCBNRyBQTEwgMSBwb3J0IDQgKEYpCisJICogICAgICAgICAgICAgICAgICAgICAgVEdMIFRD
IFBMTCAxIHBvcnQgNCAoVEM0KQogCSAqLwogCURQTExfSURfSUNMX01HUExMNCA9IDYsCisJLyoq
CisJICogQERQTExfSURfVEdMX1RDUExMNTogVEdMIFRDIFBMTCBwb3J0IDUgKFRDNSkKKwkgKi8K
KwlEUExMX0lEX1RHTF9NR1BMTDUgPSA3LAorCS8qKgorCSAqIEBEUExMX0lEX1RHTF9UQ1BMTDY6
IFRHTCBUQyBQTEwgcG9ydCA2IChUQzYpCisJICovCisJRFBMTF9JRF9UR0xfTUdQTEw2ID0gOCwK
IH07Ci0jZGVmaW5lIEk5MTVfTlVNX1BMTFMgNworCisjZGVmaW5lIEk5MTVfTlVNX1BMTFMgOQog
CiBlbnVtIGljbF9wb3J0X2RwbGxfaWQgewogCUlDTF9QT1JUX0RQTExfREVGQVVMVCwKLS0gCjIu
MjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
