Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 868D0B449A
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 01:33:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68A136EAAB;
	Mon, 16 Sep 2019 23:33:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D7E56EAAB
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2019 23:33:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Sep 2019 16:33:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,514,1559545200"; d="scan'208";a="201706803"
Received: from mdroper-desk1.amr.corp.intel.com ([10.1.27.135])
 by fmsmga001.fm.intel.com with ESMTP; 16 Sep 2019 16:33:12 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Sep 2019 16:32:51 -0700
Message-Id: <20190916233251.387-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/cml: Add second PCH ID for CMP
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

VGhlIENNUCBQQ0ggSUQgd2UgaGF2ZSBpbiB0aGUgZHJpdmVyIGlzIGNvcnJlY3QgZm9yIHRoZSBD
TUwtVSBtYWNoaW5lcyB3ZSBoYXZlCmluIG91ciBDSSBzeXN0ZW0sIGJ1dCB0aGUgQ01MLVMgYW5k
IENNTC1IIENJIG1hY2hpbmVzIGFwcGVhciB0byB1c2UgYQpkaWZmZXJlbnQgUENIIElELCBsZWFk
aW5nIG91ciBkcml2ZXIgdG8gZGV0ZWN0IG5vIFBDSCBmb3IgdGhlbS4KCkNjOiBSb2RyaWdvIFZp
dmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+CkNjOiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5z
cml2YXRzYUBpbnRlbC5jb20+ClJlZmVyZW5jZXM6IDcyOWFlMzMwYTBmMmUyICgiZHJtL2k5MTUv
Y21sOiBJbnRyb2R1Y2UgQ29tZXQgTGFrZSBQQ0giKQpCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNDYxClNpZ25lZC1vZmYtYnk6IE1hdHQg
Um9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcGNoLmMgfCAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5oIHwg
MSArCiAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cGNoLmMKaW5kZXggZmE4NjRkOGYyYjczLi4xNWY4YmZmMTQxZjkgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BjaC5jCkBAIC02OSw2ICs2OSw3IEBAIGludGVsX3BjaF90eXBlKGNvbnN0IHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdW5zaWduZWQgc2hvcnQgaWQpCiAJCVdBUk5fT04o
IUlTX0NBTk5PTkxBS0UoZGV2X3ByaXYpICYmICFJU19DT0ZGRUVMQUtFKGRldl9wcml2KSk7CiAJ
CXJldHVybiBQQ0hfQ05QOwogCWNhc2UgSU5URUxfUENIX0NNUF9ERVZJQ0VfSURfVFlQRToKKwlj
YXNlIElOVEVMX1BDSF9DTVAyX0RFVklDRV9JRF9UWVBFOgogCQlEUk1fREVCVUdfS01TKCJGb3Vu
ZCBDb21ldCBMYWtlIFBDSCAoQ01QKVxuIik7CiAJCVdBUk5fT04oIUlTX0NPRkZFRUxBS0UoZGV2
X3ByaXYpKTsKIAkJLyogQ29tZXRQb2ludCBpcyBDTlAgQ29tcGF0aWJsZSAqLwpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9wY2guaAppbmRleCBlNmEyZDY1ZjE5YzYuLmMyOWM4MWVjNzk3MSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcGNoLmgKQEAgLTQxLDYgKzQxLDcgQEAgZW51bSBpbnRlbF9wY2ggewogI2Rl
ZmluZSBJTlRFTF9QQ0hfQ05QX0RFVklDRV9JRF9UWVBFCQkweEEzMDAKICNkZWZpbmUgSU5URUxf
UENIX0NOUF9MUF9ERVZJQ0VfSURfVFlQRQkJMHg5RDgwCiAjZGVmaW5lIElOVEVMX1BDSF9DTVBf
REVWSUNFX0lEX1RZUEUJCTB4MDI4MAorI2RlZmluZSBJTlRFTF9QQ0hfQ01QMl9ERVZJQ0VfSURf
VFlQRQkJMHgwNjgwCiAjZGVmaW5lIElOVEVMX1BDSF9JQ1BfREVWSUNFX0lEX1RZUEUJCTB4MzQ4
MAogI2RlZmluZSBJTlRFTF9QQ0hfTUNDX0RFVklDRV9JRF9UWVBFCQkweDRCMDAKICNkZWZpbmUg
SU5URUxfUENIX01DQzJfREVWSUNFX0lEX1RZUEUJCTB4Mzg4MAotLSAKMi4yMS4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
