Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8248913630C
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 23:08:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBE3F6E972;
	Thu,  9 Jan 2020 22:08:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E2CE6E972
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 22:08:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 14:08:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,414,1571727600"; d="scan'208";a="423390827"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by fmsmga006.fm.intel.com with ESMTP; 09 Jan 2020 14:08:06 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jan 2020 00:05:47 +0200
Message-Id: <20200109220547.23817-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915: Bump up CDCLK to eliminate
 underruns on TGL
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

VGhlcmUgc2VlbXMgdG8gYmUgc29tZSB1bmRvY3VtZW50ZWQgYmFuZHdpZHRoCmJvdHRsZW5lY2sv
ZGVwZW5kZW5jeSB3aGljaCBzY2FsZXMgd2l0aCBDRENMSywKY2F1c2luZyBGSUZPIHVuZGVycnVu
cyB3aGVuIENEQ0xLIGlzIHRvbyBsb3csCmV2ZW4gd2hlbiBpdCdzIGNvcnJlY3QgZnJvbSBCU3Bl
YyBwb2ludCBvZiB2aWV3LgoKQ3VycmVudGx5IGZvciBUR0wgcGxhdGZvcm1zIHdlIGNhbGN1bGF0
ZQptaW5fY2RjbGsgaW5pdGlhbGx5IGJhc2VkIG9uIHBpeGVsX3JhdGUgZGl2aWRlZApieSAyLCBh
Y2NvdW50aW5nIGZvciBhbHNvIHBsYW5lIHJlcXVpcmVtZW50cywKaG93ZXZlciBpbiBzb21lIGNh
c2VzIHRoZSBsb3dlc3QgcG9zc2libGUgQ0RDTEsKZG9lc24ndCB3b3JrIGFuZCBjYXVzaW5nIHRo
ZSB1bmRlcnJ1bnMuCldlJ3ZlIGZvdW5kIGV4cGVyaW1lbnRhbGx5IHRoYXQgcmFpc2luZyBjZGNs
ayB0bwphdCBsZWFzdCAgcGl4ZWxfcmF0ZSAocmF0aGVyIHRoYW4gcGl4ZWxfcmF0ZS8yKQplbGlt
aW5hdGVzIHRoZXNlIHVuZGVycnVucywgc28gbGV0J3MgdXNlIHRoaXMgYXMgYQp0ZW1wb3Jhcnkg
d29ya2Fyb3VuZCB1bnRpbCB0aGUgaGFyZHdhcmUgdGVhbQpjYW4gc3VnZ2VzdCBhIG1vcmUgcHJl
Y2lzZSByZW1lZHkuCgpFeHBsaWNpdGx5IHN0YXRpbmcgaGVyZSB0aGF0IHRoaXMgc2VlbXMgdG8g
YmUgY3VycmVudGx5CnJhdGhlciBhIEhhY2ssIHRoYW4gZmluYWwgc29sdXRpb24uCgp2MjogVXNl
IGNsYW1wIG9wZXJhdGlvbiBpbnN0ZWFkIG9mIG1pbihNYXR0IFJvcGVyKQoKdjM6IC0gRml4ZWQg
Y29tbWl0IG1lc3NhZ2UoTWF0dCBSb3BlcikKICAgIC0gTm93IHVzaW5nIHBpeGVsX3JhdGUgaW5z
dGVhZCBvZiBtYXhfY2RjbGsoSmFuaSBOaWt1bGEpCiAgICAtIFN3aXRjaGVkIHRvIG1heCBmcm9t
IGNsYW1wKFZpbGxlIFN5cmrDpGzDpCkKICAgIEhvcGVmdWxseSB0aGlzIGh5YnJpZCBzYXRpc2Zp
ZXMgZXZlcnlvbmUgOikKClJldmlld2VkLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJA
aW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYu
bGlzb3Zza2l5QGludGVsLmNvbT4KQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5v
cmcvZHJtL2ludGVsL2lzc3Vlcy80MDIKLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2NkY2xrLmMgfCAxMiArKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jZGNsay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCmlu
ZGV4IDdkMWFiMWU1YjdjMy4uMGNlNTkyNjAwNmNhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jZGNsay5jCkBAIC0yMDA0LDYgKzIwMDQsMTggQEAgaW50IGludGVsX2Ny
dGNfY29tcHV0ZV9taW5fY2RjbGsoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpCiAJLyogQWNjb3VudCBmb3IgYWRkaXRpb25hbCBuZWVkcyBmcm9tIHRoZSBwbGFuZXMg
Ki8KIAltaW5fY2RjbGsgPSBtYXgoaW50ZWxfcGxhbmVzX21pbl9jZGNsayhjcnRjX3N0YXRlKSwg
bWluX2NkY2xrKTsKIAorCS8qCisJICogSEFDSy4gQ3VycmVudGx5IGZvciBUR0wgcGxhdGZvcm1z
IHdlIGNhbGN1bGF0ZQorCSAqIG1pbl9jZGNsayBpbml0aWFsbHkgYmFzZWQgb24gcGl4ZWxfcmF0
ZSBkaXZpZGVkCisJICogYnkgMiwgYWNjb3VudGluZyBmb3IgYWxzbyBwbGFuZSByZXF1aXJlbWVu
dHMsCisJICogaG93ZXZlciBpbiBzb21lIGNhc2VzIHRoZSBsb3dlc3QgcG9zc2libGUgQ0RDTEsK
KwkgKiBkb2Vzbid0IHdvcmsgYW5kIGNhdXNpbmcgdGhlIHVuZGVycnVucy4KKwkgKiBFeHBsaWNp
dGx5IHN0YXRpbmcgaGVyZSB0aGF0IHRoaXMgc2VlbXMgdG8gYmUgY3VycmVudGx5CisJICogcmF0
aGVyIGEgSGFjaywgdGhhbiBmaW5hbCBzb2x1dGlvbi4KKwkgKi8KKwlpZiAoSVNfVElHRVJMQUtF
KGRldl9wcml2KSkKKwkJbWluX2NkY2xrID0gbWF4KG1pbl9jZGNsaywgKGludCljcnRjX3N0YXRl
LT5waXhlbF9yYXRlKTsKKwogCWlmIChtaW5fY2RjbGsgPiBkZXZfcHJpdi0+bWF4X2NkY2xrX2Zy
ZXEpIHsKIAkJRFJNX0RFQlVHX0tNUygicmVxdWlyZWQgY2RjbGsgKCVkIGtIeikgZXhjZWVkcyBt
YXggKCVkIGtIeilcbiIsCiAJCQkgICAgICBtaW5fY2RjbGssIGRldl9wcml2LT5tYXhfY2RjbGtf
ZnJlcSk7Ci0tIAoyLjI0LjEuNDg1LmdhZDA1YTNkOGU1CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
