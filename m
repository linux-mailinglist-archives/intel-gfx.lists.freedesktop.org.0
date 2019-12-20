Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DC1128409
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 22:42:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 600766ECB6;
	Fri, 20 Dec 2019 21:42:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 705D46ECAF
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 21:42:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 13:42:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,337,1571727600"; d="scan'208";a="213684256"
Received: from kitaracr-mobl.amr.corp.intel.com (HELO
 josouza-MOBL.amr.corp.intel.com) ([10.252.207.149])
 by fmsmga008.fm.intel.com with ESMTP; 20 Dec 2019 13:42:49 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Dec 2019 13:42:26 -0800
Message-Id: <20191220214228.262345-6-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191220214228.262345-1-jose.souza@intel.com>
References: <20191220214228.262345-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 6/8] drm/i915/display: Prepare for fastset
 external dependencies check
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TVNUIGFuZCBwb3J0IHN5bmMgaGF2ZSBtYXN0ZXIgYW5kIHNsYXZlcyBwaXBlcyBhbmQgaXQgYnJp
bmdzCmRlcGVuZGVuY2llcyBiZXR3ZWVuIHBpcGVzIHRvIGFsbG93IGZhc3RzZXQuCkZvciBleGFt
cGxlIGlmIG9ubHkgTVNUIG1hc3RlciBuZWVkcyBhIG1vZGVzZXQgYWxsIG9mIGl0cyBzbGF2ZXMg
YWxzbwpuZWVkcyB0byBkbyBhIG1vZGVzZXQuCgpUaGlzIHBhdGNoIGFkZHMgdGhlIGJhc2UgZm9y
IGV4dGVybmFsIGRlcGVuZGVuY2llcyBjaGVjaywgdGhlIE1TVCBhbmQKcG9ydCBzeW5jIGJpdHMg
d2lsbCBiZSBhZGRlZCBpbiBhbm90aGVyIHBhdGNoZXMuCgp2MzoKLSBtb3ZlZCBoYW5kbGluZyB0
byBpbnRlbF9hdG9taWNfY2hlY2soKSB0aGlzIHdheSBpcyBndWFyYW50ZWUgdGhhdAphbGwgcGlw
ZXMgd2lsbCBoYXZlIGl0cyBzdGF0ZSBjb21wdXRlZAoKdjQ6Ci0gYWRkZWQgYSBmdW5jdGlvbiB0
byByZXR1cm4gaWYgTVNUIG1hc3RlciBuZWVlZHMgbW9kZXNldCB0byBzaW1wbHkKY29kZSBpbiBp
bnRlbF9hdG9taWNfY2hlY2soKQoKdjU6Ci0gZml4ZWQgYW5kIG1vdmVkIGNvZGUgdG8gY2hlY2sg
aWYgTVNUIG1hc3RlciBuZWVkcyBhIG1vZGVzZXQKCnY2OgotIHByZXZpb25zIHZlcnNpb24gb2Yg
dGhpcyBwYXRjaCB3YXMgc3BsaXQgaW50byB0d28gcGF0Y2hlcwoKQ2M6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1
Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxh
bmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZh
cmVAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMgfCAxOCArKysrKysrKysrKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAx
NSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggMjQ4NDFkZGU0OTBiLi44MzkwYWQ0NjYyOWIg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0x
MzkwOSw3ICsxMzkwOSwxMSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jcnRjX2NoZWNrX2Zhc3RzZXQo
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YQogCiAJbmV3X2NydGNf
c3RhdGUtPnVhcGkubW9kZV9jaGFuZ2VkID0gZmFsc2U7CiAJbmV3X2NydGNfc3RhdGUtPnVwZGF0
ZV9waXBlID0gdHJ1ZTsKK30KIAorc3RhdGljIHZvaWQgaW50ZWxfY3J0Y19jb3B5X2Zhc3RzZXQo
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlLAorCQkJCSAgICBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUpCit7CiAJLyoKIAkgKiBJZiB3
ZSdyZSBub3QgZG9pbmcgdGhlIGZ1bGwgbW9kZXNldCB3ZSB3YW50IHRvCiAJICoga2VlcCB0aGUg
Y3VycmVudCBNL04gdmFsdWVzIGFzIHRoZXkgbWF5IGJlCkBAIC0xNDA3MCw4ICsxNDA3NCw2IEBA
IHN0YXRpYyBpbnQgaW50ZWxfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAK
IAkJaWYgKCFuZXdfY3J0Y19zdGF0ZS0+dWFwaS5lbmFibGUpIHsKIAkJCWludGVsX2NydGNfY29w
eV91YXBpX3RvX2h3X3N0YXRlKG5ld19jcnRjX3N0YXRlKTsKLQotCQkJYW55X21zID0gdHJ1ZTsK
IAkJCWNvbnRpbnVlOwogCQl9CiAKQEAgLTE0MDg0LDkgKzE0MDg2LDE5IEBAIHN0YXRpYyBpbnQg
aW50ZWxfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJCQlnb3RvIGZhaWw7
CiAKIAkJaW50ZWxfY3J0Y19jaGVja19mYXN0c2V0KG9sZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19z
dGF0ZSk7CisJfQogCi0JCWlmIChuZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKSkKKwlmb3Jf
ZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0Yywgb2xkX2NydGNfc3Rh
dGUsCisJCQkJCSAgICBuZXdfY3J0Y19zdGF0ZSwgaSkgeworCQlpZiAobmVlZHNfbW9kZXNldChu
ZXdfY3J0Y19zdGF0ZSkpIHsKIAkJCWFueV9tcyA9IHRydWU7CisJCQljb250aW51ZTsKKwkJfQor
CisJCWlmICghbmV3X2NydGNfc3RhdGUtPnVwZGF0ZV9waXBlKQorCQkJY29udGludWU7CisKKwkJ
aW50ZWxfY3J0Y19jb3B5X2Zhc3RzZXQob2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRlKTsK
IAl9CiAKIAlpZiAoYW55X21zICYmICFjaGVja19kaWdpdGFsX3BvcnRfY29uZmxpY3RzKHN0YXRl
KSkgewotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
