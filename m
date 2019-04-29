Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EE8E5D4
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 17:10:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09EEA89316;
	Mon, 29 Apr 2019 15:10:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24DFF89316
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 15:10:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 08:10:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,409,1549958400"; d="scan'208";a="146703355"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com
 ([10.237.66.154])
 by orsmga003.jf.intel.com with ESMTP; 29 Apr 2019 08:10:50 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Apr 2019 18:10:23 +0300
Message-Id: <20190429151023.25892-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: Fix bug for GeminiLake
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
Cc: ville.syrjala@intel.com, martin.peres@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hlbiBDRENMSyBpcyBhcyBsb3cgYXMgNzkyMDAsIHBpY3R1cmUgZ2V0cwp1bnN0YWJsZSwgd2hp
bGUgRFNJIGFuZCBERSBwbGwgdmFsdWVzIHdlcmUKY29uZmlybWVkIHRvIGJlIGNvcnJlY3QuCkxp
bWl0aW5nIHRvIDE1ODQwMCBhcyBhZ3JlZWQgd2l0aCBWaWxsZS4KClNpZ25lZC1vZmYtYnk6IFN0
YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NkY2xrLmMgfCA5ICsrKysrKysrKwogMSBmaWxlIGNo
YW5nZWQsIDkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jZGNsay5jCmluZGV4
IGFlNDBhODY3OTMxNC4uMmIyM2Y4NTAwMzYyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9jZGNsay5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NkY2xr
LmMKQEAgLTIyNzcsNiArMjI3NywxNSBAQCBpbnQgaW50ZWxfY3J0Y19jb21wdXRlX21pbl9jZGNs
ayhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAkgICAgSVNfVkFM
TEVZVklFVyhkZXZfcHJpdikpCiAJCW1pbl9jZGNsayA9IG1heCgzMjAwMDAsIG1pbl9jZGNsayk7
CiAKKwkvKgorCSAqIE9uIEdlbWluaWxha2Ugb25jZSB0aGUgQ0RDTEsgZ2V0cyBhcyBsb3cgYXMg
NzkyMDAKKwkgKiBwaWN0dXJlIGdldHMgdW5zdGFibGUsIGRlc3BpdGUgdGhhdCB2YWx1ZXMgYXJl
CisJICogY29ycmVjdCBmb3IgRFNJIFBMTCBhbmQgREUgUExMLgorCSAqLworCWlmIChpbnRlbF9j
cnRjX2hhc190eXBlKGNydGNfc3RhdGUsIElOVEVMX09VVFBVVF9EU0kpICYmCisJICAgIElTX0dF
TUlOSUxBS0UoZGV2X3ByaXYpKQorCQltaW5fY2RjbGsgPSBtYXgoMTU4NDAwLCBtaW5fY2RjbGsp
OworCiAJaWYgKG1pbl9jZGNsayA+IGRldl9wcml2LT5tYXhfY2RjbGtfZnJlcSkgewogCQlEUk1f
REVCVUdfS01TKCJyZXF1aXJlZCBjZGNsayAoJWQga0h6KSBleGNlZWRzIG1heCAoJWQga0h6KVxu
IiwKIAkJCSAgICAgIG1pbl9jZGNsaywgZGV2X3ByaXYtPm1heF9jZGNsa19mcmVxKTsKLS0gCjIu
MTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
