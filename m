Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 962C0A34AE
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 12:16:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B92926E28C;
	Fri, 30 Aug 2019 10:16:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 973146E299
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 10:16:49 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2019 12:16:44 +0200
Message-Id: <20190830101644.8740-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix regression with crtc disable
 ordering
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

V2hlbiB3ZSBtb3ZlZCB0aGUgY29kZSB0byBkaXNhYmxlIGNydGMncyB0byBhIHNlcGFyYXRlIHBh
dGNoLAp3ZSBmb3Jnb3QgdG8gZW5zdXJlIHRoYXQgZm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNf
aW5fc3RhdGVfcmV2ZXJzZSgpCndhcyBtb3ZlZCBhcyB3ZWxsLgoKU2lnbmVkLW9mZi1ieTogTWFh
cnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KRml4ZXM6
IDY2ZDljZWM4YTZjOSAoImRybS9pOTE1L2Rpc3BsYXk6IE1vdmUgdGhlIGNvbW1pdF90YWlsKCkg
ZGlzYWJsZSBzZXF1ZW5jZSB0byBzZXBhcmF0ZSBmdW5jdGlvbiIpCkNjOiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogTWFuYXNpIE5hdmFyZSA8bWFu
YXNpLmQubmF2YXJlQGludGVsLmNvbT4KQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jIHwgMjEgKysrKysrKysrKy0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMSBp
bnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGIzOGQ4NDJmZjZlYy4uZTY2MWUyMDk5MTE4IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTM3
ODQsNyArMTM3ODQsMTUgQEAgc3RhdGljIHZvaWQgaW50ZWxfY29tbWl0X21vZGVzZXRfZGlzYWJs
ZXMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJc3RydWN0IGludGVsX2NydGMg
KmNydGM7CiAJaW50IGk7CiAKLQlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShz
dGF0ZSwgY3J0Yywgb2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRlLCBpKSB7CisJLyoKKwkg
KiBEaXNhYmxlIENSVEMvcGlwZXMgaW4gcmV2ZXJzZSBvcmRlciBiZWNhdXNlIHNvbWUgZmVhdHVy
ZXMoTVNUIGluCisJICogVEdMKykgcmVxdWlyZXMgbWFzdGVyIGFuZCBzbGF2ZSByZWxhdGlvbnNo
aXAgYmV0d2VlbiBwaXBlcywgc28gaXQKKwkgKiBzaG91bGQgYWx3YXlzIHBpY2sgdGhlIGxvd2Vz
dCBwaXBlIGFzIG1hc3RlciBhcyBpdCB3aWxsIGJlIGVuYWJsZWQKKwkgKiBmaXJzdCBhbmQgZGlz
YWJsZSBpbiB0aGUgcmV2ZXJzZSBvcmRlciBzbyB0aGUgbWFzdGVyIHdpbGwgYmUgdGhlCisJICog
bGFzdCBvbmUgdG8gYmUgZGlzYWJsZWQuCisJICovCisJZm9yX2VhY2hfb2xkbmV3X2ludGVsX2Ny
dGNfaW5fc3RhdGVfcmV2ZXJzZShzdGF0ZSwgY3J0Yywgb2xkX2NydGNfc3RhdGUsCisJCQkJCQkg
ICAgbmV3X2NydGNfc3RhdGUsIGkpIHsKIAkJaWYgKCFuZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0
YXRlKSkKIAkJCWNvbnRpbnVlOwogCkBAIC0xMzk2MywxNSArMTM5NzEsOCBAQCBzdGF0aWMgdm9p
ZCBpbnRlbF9hdG9taWNfY29tbWl0X3RhaWwoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUpCiAJaWYgKHN0YXRlLT5tb2Rlc2V0KQogCQl3YWtlcmVmID0gaW50ZWxfZGlzcGxheV9wb3dl
cl9nZXQoZGV2X3ByaXYsIFBPV0VSX0RPTUFJTl9NT0RFU0VUKTsKIAotCS8qCi0JICogRGlzYWJs
ZSBDUlRDL3BpcGVzIGluIHJldmVyc2Ugb3JkZXIgYmVjYXVzZSBzb21lIGZlYXR1cmVzKE1TVCBp
bgotCSAqIFRHTCspIHJlcXVpcmVzIG1hc3RlciBhbmQgc2xhdmUgcmVsYXRpb25zaGlwIGJldHdl
ZW4gcGlwZXMsIHNvIGl0Ci0JICogc2hvdWxkIGFsd2F5cyBwaWNrIHRoZSBsb3dlc3QgcGlwZSBh
cyBtYXN0ZXIgYXMgaXQgd2lsbCBiZSBlbmFibGVkCi0JICogZmlyc3QgYW5kIGRpc2FibGUgaW4g
dGhlIHJldmVyc2Ugb3JkZXIgc28gdGhlIG1hc3RlciB3aWxsIGJlIHRoZQotCSAqIGxhc3Qgb25l
IHRvIGJlIGRpc2FibGVkLgotCSAqLwotCWZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0
YXRlX3JldmVyc2Uoc3RhdGUsIGNydGMsIG9sZF9jcnRjX3N0YXRlLAotCQkJCQkJICAgIG5ld19j
cnRjX3N0YXRlLCBpKSB7CisJZm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3Rh
dGUsIGNydGMsIG9sZF9jcnRjX3N0YXRlLAorCQkJCQkgICAgbmV3X2NydGNfc3RhdGUsIGkpIHsK
IAkJaWYgKG5lZWRzX21vZGVzZXQobmV3X2NydGNfc3RhdGUpIHx8CiAJCSAgICBuZXdfY3J0Y19z
dGF0ZS0+dXBkYXRlX3BpcGUpIHsKIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
