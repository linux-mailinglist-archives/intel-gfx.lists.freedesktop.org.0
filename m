Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41CB667358
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 18:34:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4F6D6E2FF;
	Fri, 12 Jul 2019 16:34:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88D7F6E2FF
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 16:34:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 09:34:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,483,1557212400"; d="scan'208";a="186631573"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by fmsmga001.fm.intel.com with ESMTP; 12 Jul 2019 09:34:09 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jul 2019 21:59:44 +0530
Message-Id: <20190712162953.21042-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 00/10] DC3CO Support for TGL.
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyB1cGRhdGUgaXMgYSByZWJhc2VkIGFuZCBoYXMgYWRkcmVzc2VkIGZldyByZXZpZXcgY29t
bWVudCBwcm92aWRlZCBieSAKSW1yZSBvbiBJUkMuCgpEQzNDTyBETUMgZi93IGVudHJ5L2V4aXQg
c2VxdWVuY2U6CkhTRDogaHR0cHM6Ly9oc2Rlcy5pbnRlbC5jb20vYXBwc3RvcmUvYXJ0aWNsZS8j
LzE0MDU5MDY0ODcKaGFzIGF0dGFjaGVkIGEgREMzQ08gSEFTIGRvY3VtZW50LCBIQVMgZG9jdW1l
bnQgcGFnZSBuby44IGhhcwpkZXNjcmliZWQgdGhlIERDM0NPIERNQyBlbnRyeSBhbmQgZXhpdCBz
ZXF1ZW5jZS4KCkkgYW0gYWJsZSB0byB2YWxpZGF0ZSB0aGF0IERDM0NPIGNvdW50ZXIgaW5jcmVt
ZW50cyBvbiBwaXBlMmQgZW11bGF0b3IuCkRDNSBjb3VudGVyIGFsc28gaW5jcmVtZW50IHBvc3Qg
REMzQ08uCgpPbmUgcGF0Y2ggb2YgdGhpcyBzZXJpZXMgICIwMDA3LWRybS1pOTE1LXRnbC1EQzND
Ty1QU1IyLWhlbHBlci5wYXRjaCIKd2lsbCByZXF1aXJlIHJlYmFzZSBhZnRlciBodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYyNDE2LwpzZXJpZXMgd2lsbCBtZXJnZWQg
dG8gZHJtLXRpcC4gCgoqQXVkaW8gY29kZWMgaWRsZSBhbmQgZGlzYWJsZWQuCipFeHRlcm5hbCBk
aXNwbGF5cyBkaXNhYmxlZC4gV0QgdHJhbnNjb2RlcnMgYW5kIERQL0hETUkgdHJhbnNjb2RlcnMg
bXVzdCBiZSBkaXNhYmxlZC4KKkJhY2tsaWdodCBjYW5ub3QgYmUgZHJpdmVuIGZyb20gdGhlIGRp
c3BsYXkgdXRpbGl0eSBwaW4uIEl0IGNhbiBiZSBkcml2ZW4gZnJvbSB0aGUgc291dGggZGlzcGxh
eS4KKlRoaXMgZmVhdHVyZSBzaG91bGQgYmUgZW5hYmxlZCBvbmx5IGluIERpc3BsYXkgVmlkZW8g
cGxheWJhY2sgb24gZURQLgoqREM1IGFuZCBEQzYgbm90IGFsbG93ZWQgd2hlbiB0aGlzIGZlYXR1
cmUgaXMgZW5hYmxlZC4KKlBTUjIgZGVlcCBzbGVlcCBkaXNhYmxlZCAoUFNSMl9DVEwgSWRsZSBG
cmFtZXMgPSAwMDAwYikKKkRpc2FibGUgREMzY28gYmVmb3JlIG1vZGUgc2V0LCBvciBvdGhlciBB
dXgsIFBMTCwgYW5kIERCVUYgcHJvZ3JhbW1pbmcsCiBhbmQgZG8gbm90IHJlLWVuYWJsZSB1bnRp
bCBhZnRlciB0aGF0IHByb2dyYW1taW5nIGlzIGNvbXBsZXRlZC4KKkRDM2NvIG11c3Qgbm90IGJl
IGVuYWJsZWQgdW50aWwgYWZ0ZXIgUFNSMiBpcyBlbmFibGVkLgoqREMzY28gbXVzdCBiZSBkaXNh
YmxlZCBiZWZvcmUgUFNSMiBpcyBkaXNhYmxlZC4KCkIuU3BlY3M6IGh0dHBzOi8vZ2Z4c3BlY3Mu
aW50ZWwuY29tL1ByZWRhdG9yL0hvbWUvSW5kZXgvNDkxOTYKCkFuc2h1bWFuIEd1cHRhICgxMCk6
CiAgZHJtL2k5MTUvdGdsOkFkZGVkIERDM0NPIHJlcXVpcmVkIHJlZ2lzdGVyIGFuZCBiaXRzLgog
IGk5MTU6QWRkZWQgREMzQ08gbWFzayB0byBhbGxvd2VkX2RjX21hc2sgYW5kIGdlbjlfZGNfbWFz
ay4KICBpOTE1OkFkZGVkIERDM0NPIHBvd2VyIHdlbGwuCiAgZHJtL2k5MTUvdGdsOkFkZGVkIG11
dHVhbCBleGNsdXNpdmUgaGFuZGxpbmcgZm9yIERDM0NPIGFuZCBEQzUvNi4KICBkcm0vaTkxNS90
Z2w6QWRkZWQgaGVscGVyIGZ1bmN0aW9uIHRvIHByZWZlciBkYzNjbyBvdmVyIGRjNS4KICBkcm0v
aTkxNS90Z2w6QWRkZWQgVklERU8gcG93ZXIgZG9tYWluLgogIGRybS9pOTE1L3RnbDpEQzNDTyBQ
U1IyIGhlbHBlci4KICBkcm0vaTkxNS90Z2w6c3dpdGNoIGJldHdlZW4gZGMzY28gYW5kIGRjNSBi
YXNlZCBvbiBkaXNwbGF5IGlkbGVuZXNzLgogIGRybS9pOTE1L3RnbDpBZGRlZCBEQzNDTyBjb3Vu
dGVyIGluIGk5MTVfZG1jX2luZm8uCiAgZHJtL2k5MTUvdGdsOkFkZGVkIG5ldyBEQzUvREM2IGNv
dW50ZXIuCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwg
IDM5ICsrKwogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jICAgIHwg
MjI2ICsrKysrKysrKysrKysrKysrLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9wb3dlci5oICAgIHwgIDEwICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMgICAgICB8ICA0NCArKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5oICAgICAgfCAgIDIgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMg
ICAgICAgICAgIHwgIDE3ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAg
ICAgICAgICAgfCAgIDggKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuYyAgICAg
ICAgICAgIHwgICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAg
ICAgICAgfCAgMTMgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyAgICAgICAgICAg
ICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5oICAgICAgICAgICAg
ICAgfCAgIDIgKwogMTEgZmlsZXMgY2hhbmdlZCwgMzU3IGluc2VydGlvbnMoKyksIDkgZGVsZXRp
b25zKC0pCgotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
