Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F1837A77E
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 15:26:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC9026EA2F;
	Tue, 11 May 2021 13:26:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C06CF6EA32;
 Tue, 11 May 2021 13:26:10 +0000 (UTC)
IronPort-SDR: EqoYqQ/mA7uTwwjNHzYKlLtX+ggPe7xXMly4Depz0EOfG2ebA/SKHF5DVrkpejNB4QDWXGB6lW
 cEPgLFHj/DwQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9980"; a="196345388"
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="196345388"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 06:26:10 -0700
IronPort-SDR: WYNrDOq/ZiyGv6xADoSnHJwC2nh5C4QXPMj8Iwhn9fs2Zc/X5j+b2DwbxbmRtF8w8LreBL6nyZ
 rhGyAwANVyOw==
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="468905394"
Received: from kjeldbeg-mobl2.ger.corp.intel.com (HELO
 thellst-mobl1.intel.com) ([10.249.254.168])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 06:26:09 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 11 May 2021 15:25:20 +0200
Message-Id: <20210511132525.377190-3-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210511132525.377190-1-thomas.hellstrom@linux.intel.com>
References: <20210511132525.377190-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/7] drm/i915: Don't free shared locks while
 shared
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgYXJlIGN1cnJlbnRseSBzaGFyaW5nIHRoZSBWTSByZXNlcnZhdGlvbiBsb2NrcyBhY3Jvc3Mg
YSBudW1iZXIgb2YKZ2VtIG9iamVjdHMgd2l0aCBwYWdlLXRhYmxlIG1lbW9yeS4gU2luY2UgVFRN
IHdpbGwgaW5kaXZpZGl1YWxpemUgdGhlCnJlc2VydmF0aW9uIGxvY2tzIHdoZW4gZnJlZWluZyBv
YmplY3RzLCBpbmNsdWRpbmcgYWNjZXNzaW5nIHRoZSBzaGFyZWQKbG9ja3MsIG1ha2Ugc3VyZSB0
aGF0IHRoZSBzaGFyZWQgbG9ja3MgYXJlIG5vdCBmcmVlZCB1bnRpbCB0aGF0IGlzIGRvbmUuCkZv
ciBQUEdUVCB3ZSBhZGQgYW4gYWRkaXRpb25hbCByZWZjb3VudCwgZm9yIEdHVFQgd2UgZmx1c2gg
dGhlIG9iamVjdApmcmVlaW5nIHdvcmtxdWV1ZSBiZWZvcmUgZnJlZWluZyB0aGUgc2hhcmVkIGxv
Y2suCgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBs
aW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29i
amVjdC5jICAgIHwgIDMgKysKIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90
eXBlcy5oICB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHQuYyAgICAg
ICAgICB8IDEzICsrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3R0LmMgICAg
ICAgICAgIHwgNDUgKysrKysrKysrKysrKysrLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZ3R0LmggICAgICAgICAgIHwgMjkgKysrKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9wcGd0dC5jICAgICAgICAgfCAgMiArLQogNiBmaWxlcyBjaGFuZ2VkLCA4
MCBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fb2JqZWN0LmMKaW5kZXggMjgxNDQ0MTBkZjg2Li5hYmFkZjA5OTRhZDAgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKQEAgLTI1Miw2ICsy
NTIsOSBAQCBzdGF0aWMgdm9pZCBfX2k5MTVfZ2VtX2ZyZWVfb2JqZWN0cyhzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSwKIAkJaWYgKG9iai0+bW0ubl9wbGFjZW1lbnRzID4gMSkKIAkJCWtm
cmVlKG9iai0+bW0ucGxhY2VtZW50cyk7CiAKKwkJaWYgKG9iai0+cmVzdl9zaGFyZWRfZnJvbSkK
KwkJCWk5MTVfdm1fcmVzdl9wdXQob2JqLT5yZXN2X3NoYXJlZF9mcm9tKTsKKwogCQkvKiBCdXQg
a2VlcCB0aGUgcG9pbnRlciBhbGl2ZSBmb3IgUkNVLXByb3RlY3RlZCBsb29rdXBzICovCiAJCWNh
bGxfcmN1KCZvYmotPnJjdSwgX19pOTE1X2dlbV9mcmVlX29iamVjdF9yY3UpOwogCQljb25kX3Jl
c2NoZWQoKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9v
YmplY3RfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3Rf
dHlwZXMuaAppbmRleCAwNzI3ZDBjNzZhYTAuLjQ1MDM0MGE3MzE4NiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaApAQCAtMTQ5LDYgKzE0
OSw3IEBAIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0IHsKIAkgKiB3aGVuIGk5MTVfZ2VtX3d3
X2N0eF9iYWNrb2ZmKCkgb3IgaTkxNV9nZW1fd3dfY3R4X2ZpbmkoKSBhcmUgY2FsbGVkLgogCSAq
LwogCXN0cnVjdCBsaXN0X2hlYWQgb2JqX2xpbms7CisJc3RydWN0IGRtYV9yZXN2ICpyZXN2X3No
YXJlZF9mcm9tOwogCiAJdW5pb24gewogCQlzdHJ1Y3QgcmN1X2hlYWQgcmN1OwpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ2d0dC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ2d0dC5jCmluZGV4IDM1MDY5Y2E1ZDdkZS4uMTI4ZDc4MWU0MjlmIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9nZ3R0LmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ2d0dC5jCkBAIC03NDYsNyArNzQ2LDEzIEBAIHN0
YXRpYyB2b2lkIGdndHRfY2xlYW51cF9odyhzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQogCiAJbXV0
ZXhfdW5sb2NrKCZnZ3R0LT52bS5tdXRleCk7CiAJaTkxNV9hZGRyZXNzX3NwYWNlX2ZpbmkoJmdn
dHQtPnZtKTsKLQlkbWFfcmVzdl9maW5pKCZnZ3R0LT52bS5yZXN2KTsKKwkvKgorCSAqIE1ha2Ug
c3VyZSBvdXIgcGFnZXRhYmxlIGdlbSBvYmplY3RzIGhhdmUgYmVlbiBmcmVlZCwKKwkgKiBzbyB0
aGF0IG5vYm9keSBzaGFyZXMgb3VyIHJlc2VydmF0aW9uIG9iamVjdCBhbnltb3JlLgorCSAqLwor
CWk5MTVfZ2VtX2ZsdXNoX2ZyZWVfb2JqZWN0cyhnZ3R0LT52bS5pOTE1KTsKKwlHRU1fV0FSTl9P
TihrcmVmX3JlYWQoJmdndHQtPnZtLnJlc3ZfcmVmKSAhPSAxKTsKKwlkbWFfcmVzdl9maW5pKCZn
Z3R0LT52bS5fcmVzdik7CiAKIAlhcmNoX3BoeXNfd2NfZGVsKGdndHQtPm10cnIpOwogCkBAIC04
MjksNiArODM1LDcgQEAgc3RhdGljIGludCBnZ3R0X3Byb2JlX2NvbW1vbihzdHJ1Y3QgaTkxNV9n
Z3R0ICpnZ3R0LCB1NjQgc2l6ZSkKIAkJcmV0dXJuIC1FTk9NRU07CiAJfQogCisJa3JlZl9pbml0
KCZnZ3R0LT52bS5yZXN2X3JlZik7CiAJcmV0ID0gc2V0dXBfc2NyYXRjaF9wYWdlKCZnZ3R0LT52
bSk7CiAJaWYgKHJldCkgewogCQlkcm1fZXJyKCZpOTE1LT5kcm0sICJTY3JhdGNoIHNldHVwIGZh
aWxlZFxuIik7CkBAIC0xMTM1LDcgKzExNDIsNyBAQCBzdGF0aWMgaW50IGdndHRfcHJvYmVfaHco
c3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCwgc3RydWN0IGludGVsX2d0ICpndCkKIAlnZ3R0LT52bS5n
dCA9IGd0OwogCWdndHQtPnZtLmk5MTUgPSBpOTE1OwogCWdndHQtPnZtLmRtYSA9IGk5MTUtPmRy
bS5kZXY7Ci0JZG1hX3Jlc3ZfaW5pdCgmZ2d0dC0+dm0ucmVzdik7CisJZG1hX3Jlc3ZfaW5pdCgm
Z2d0dC0+dm0uX3Jlc3YpOwogCiAJaWYgKElOVEVMX0dFTihpOTE1KSA8PSA1KQogCQlyZXQgPSBp
OTE1X2dtY2hfcHJvYmUoZ2d0dCk7CkBAIC0xMTQ0LDcgKzExNTEsNyBAQCBzdGF0aWMgaW50IGdn
dHRfcHJvYmVfaHcoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCwgc3RydWN0IGludGVsX2d0ICpndCkK
IAllbHNlCiAJCXJldCA9IGdlbjhfZ21jaF9wcm9iZShnZ3R0KTsKIAlpZiAocmV0KSB7Ci0JCWRt
YV9yZXN2X2ZpbmkoJmdndHQtPnZtLnJlc3YpOworCQlkbWFfcmVzdl9maW5pKCZnZ3R0LT52bS5f
cmVzdik7CiAJCXJldHVybiByZXQ7CiAJfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0dC5j
CmluZGV4IDliOThmOWQ5ZmFhMy4uNjk1YjIyYjE3NjQ0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ndHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9ndHQuYwpAQCAtMjIsOCArMjIsMTEgQEAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
KmFsbG9jX3B0X2xtZW0oc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sIGludCBzeikKIAkg
KiBvYmplY3QgdW5kZXJuZWF0aCwgd2l0aCB0aGUgaWRlYSB0aGF0IG9uZSBvYmplY3RfbG9jaygp
IHdpbGwgbG9jawogCSAqIHRoZW0gYWxsIGF0IG9uY2UuCiAJICovCi0JaWYgKCFJU19FUlIob2Jq
KSkKLQkJb2JqLT5iYXNlLnJlc3YgPSAmdm0tPnJlc3Y7CisJaWYgKCFJU19FUlIob2JqKSkgewor
CQlvYmotPmJhc2UucmVzdiA9IGk5MTVfdm1fcmVzdl9nZXQodm0pOworCQlvYmotPnJlc3Zfc2hh
cmVkX2Zyb20gPSBvYmotPmJhc2UucmVzdjsKKwl9CisKIAlyZXR1cm4gb2JqOwogfQogCkBAIC00
MCw4ICs0MywxMSBAQCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqYWxsb2NfcHRfZG1hKHN0
cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLCBpbnQgc3opCiAJICogb2JqZWN0IHVuZGVybmVh
dGgsIHdpdGggdGhlIGlkZWEgdGhhdCBvbmUgb2JqZWN0X2xvY2soKSB3aWxsIGxvY2sKIAkgKiB0
aGVtIGFsbCBhdCBvbmNlLgogCSAqLwotCWlmICghSVNfRVJSKG9iaikpCi0JCW9iai0+YmFzZS5y
ZXN2ID0gJnZtLT5yZXN2OworCWlmICghSVNfRVJSKG9iaikpIHsKKwkJb2JqLT5iYXNlLnJlc3Yg
PSBpOTE1X3ZtX3Jlc3ZfZ2V0KHZtKTsKKwkJb2JqLT5yZXN2X3NoYXJlZF9mcm9tID0gb2JqLT5i
YXNlLnJlc3Y7CisJfQorCiAJcmV0dXJuIG9iajsKIH0KIApAQCAtMTAyLDcgKzEwOCw3IEBAIHZv
aWQgX19pOTE1X3ZtX2Nsb3NlKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtKQogaW50IGk5
MTVfdm1fbG9ja19vYmplY3RzKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAogCQkJIHN0
cnVjdCBpOTE1X2dlbV93d19jdHggKnd3KQogewotCWlmICh2bS0+c2NyYXRjaFswXS0+YmFzZS5y
ZXN2ID09ICZ2bS0+cmVzdikgeworCWlmICh2bS0+c2NyYXRjaFswXS0+YmFzZS5yZXN2ID09ICZ2
bS0+X3Jlc3YpIHsKIAkJcmV0dXJuIGk5MTVfZ2VtX29iamVjdF9sb2NrKHZtLT5zY3JhdGNoWzBd
LCB3dyk7CiAJfSBlbHNlIHsKIAkJc3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0ID0gaTkxNV92bV90
b19wcGd0dCh2bSk7CkBAIC0xMTgsNiArMTI0LDIyIEBAIHZvaWQgaTkxNV9hZGRyZXNzX3NwYWNl
X2Zpbmkoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0pCiAJbXV0ZXhfZGVzdHJveSgmdm0t
Pm11dGV4KTsKIH0KIAorLyoqCisgKiBpOTE1X3ZtX3Jlc3ZfcmVsZWFzZSAtIEZpbmFsIHN0cnVj
dCBpOTE1X2FkZHJlc3Nfc3BhY2UgZGVzdHJ1Y3RvcgorICogQGtyZWY6IFBvaW50ZXIgdG8gdGhl
ICZpOTE1X2FkZHJlc3Nfc3BhY2UucmVzdl9yZWYgbWVtYmVyLgorICoKKyAqIFRoaXMgZnVuY3Rp
b24gaXMgY2FsbGVkIHdoZW4gdGhlIGxhc3QgbG9jayBzaGFyZXIgbm8gbG9uZ2VyIHNoYXJlcyB0
aGUKKyAqICZpOTE1X2FkZHJlc3Nfc3BhY2UuX3Jlc3YgbG9jay4KKyAqLwordm9pZCBpOTE1X3Zt
X3Jlc3ZfcmVsZWFzZShzdHJ1Y3Qga3JlZiAqa3JlZikKK3sKKwlzdHJ1Y3QgaTkxNV9hZGRyZXNz
X3NwYWNlICp2bSA9CisJCWNvbnRhaW5lcl9vZihrcmVmLCB0eXBlb2YoKnZtKSwgcmVzdl9yZWYp
OworCisJZG1hX3Jlc3ZfZmluaSgmdm0tPl9yZXN2KTsKKwlrZnJlZSh2bSk7Cit9CisKIHN0YXRp
YyB2b2lkIF9faTkxNV92bV9yZWxlYXNlKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKIHsKIAlz
dHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSA9CkBAIC0xMjUsOSArMTQ3LDggQEAgc3RhdGlj
IHZvaWQgX19pOTE1X3ZtX3JlbGVhc2Uoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQogCiAJdm0t
PmNsZWFudXAodm0pOwogCWk5MTVfYWRkcmVzc19zcGFjZV9maW5pKHZtKTsKLQlkbWFfcmVzdl9m
aW5pKCZ2bS0+cmVzdik7CiAKLQlrZnJlZSh2bSk7CisJaTkxNV92bV9yZXN2X3B1dCgmdm0tPl9y
ZXN2KTsKIH0KIAogdm9pZCBpOTE1X3ZtX3JlbGVhc2Uoc3RydWN0IGtyZWYgKmtyZWYpCkBAIC0x
NDQsNiArMTY1LDE0IEBAIHZvaWQgaTkxNV92bV9yZWxlYXNlKHN0cnVjdCBrcmVmICprcmVmKQog
dm9pZCBpOTE1X2FkZHJlc3Nfc3BhY2VfaW5pdChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2
bSwgaW50IHN1YmNsYXNzKQogewogCWtyZWZfaW5pdCgmdm0tPnJlZik7CisKKwkvKgorCSAqIFNw
ZWNpYWwgY2FzZSBmb3IgR0dUVCB0aGF0IGhhcyBhbHJlYWR5IGRvbmUgYW4gZWFybHkKKwkgKiBr
cmVmX2luaXQgaGVyZS4KKwkgKi8KKwlpZiAoIWtyZWZfcmVhZCgmdm0tPnJlc3ZfcmVmKSkKKwkJ
a3JlZl9pbml0KCZ2bS0+cmVzdl9yZWYpOworCiAJSU5JVF9SQ1VfV09SSygmdm0tPnJjdSwgX19p
OTE1X3ZtX3JlbGVhc2UpOwogCWF0b21pY19zZXQoJnZtLT5vcGVuLCAxKTsKIApAQCAtMTcwLDcg
KzE5OSw3IEBAIHZvaWQgaTkxNV9hZGRyZXNzX3NwYWNlX2luaXQoc3RydWN0IGk5MTVfYWRkcmVz
c19zcGFjZSAqdm0sIGludCBzdWJjbGFzcykKIAkJbWlnaHRfYWxsb2MoR0ZQX0tFUk5FTCk7CiAJ
CW11dGV4X3JlbGVhc2UoJnZtLT5tdXRleC5kZXBfbWFwLCBfVEhJU19JUF8pOwogCX0KLQlkbWFf
cmVzdl9pbml0KCZ2bS0+cmVzdik7CisJZG1hX3Jlc3ZfaW5pdCgmdm0tPl9yZXN2KTsKIAogCUdF
TV9CVUdfT04oIXZtLT50b3RhbCk7CiAJZHJtX21tX2luaXQoJnZtLT5tbSwgMCwgdm0tPnRvdGFs
KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0dC5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3R0LmgKaW5kZXggY2EwMGI0NTgyN2I3Li5lNzYw
ZDRmYWRiNDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0dC5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0dC5oCkBAIC0yNDUsNyArMjQ1
LDkgQEAgc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSB7CiAJYXRvbWljX3Qgb3BlbjsKIAogCXN0
cnVjdCBtdXRleCBtdXRleDsgLyogcHJvdGVjdHMgdm1hIGFuZCBvdXIgbGlzdHMgKi8KLQlzdHJ1
Y3QgZG1hX3Jlc3YgcmVzdjsgLyogcmVzZXJ2YXRpb24gbG9jayBmb3IgYWxsIHBkIG9iamVjdHMs
IGFuZCBidWZmZXIgcG9vbCAqLworCisJc3RydWN0IGtyZWYgcmVzdl9yZWY7IC8qIGtyZWYgdG8g
a2VlcCB0aGUgcmVzZXJ2YXRpb24gbG9jayBhbGl2ZS4gKi8KKwlzdHJ1Y3QgZG1hX3Jlc3YgX3Jl
c3Y7IC8qIHJlc2VydmF0aW9uIGxvY2sgZm9yIGFsbCBwZCBvYmplY3RzLCBhbmQgYnVmZmVyIHBv
b2wgKi8KICNkZWZpbmUgVk1fQ0xBU1NfR0dUVCAwCiAjZGVmaW5lIFZNX0NMQVNTX1BQR1RUIDEK
ICNkZWZpbmUgVk1fQ0xBU1NfRFBUIDIKQEAgLTQwNCwxMyArNDA2LDM4IEBAIGk5MTVfdm1fZ2V0
KHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtKQogCXJldHVybiB2bTsKIH0KIAorLyoqCisg
KiBpOTE1X3ZtX3Jlc3ZfZ2V0IC0gT2J0YWluIGEgcmVmZXJlbmNlIG9uIHRoZSB2bSdzIHJlc2Vy
dmF0aW9uIGxvY2sKKyAqIEB2bTogVGhlIHZtIHdob3NlIHJlc2VydmF0aW9uIGxvY2sgd2Ugd2Fu
dCB0byBzaGFyZS4KKyAqCisgKiBSZXR1cm46IEEgcG9pbnRlciB0byB0aGUgdm0ncyByZXNlcnZh
dGlvbiBsb2NrLgorICovCitzdGF0aWMgaW5saW5lIHN0cnVjdCBkbWFfcmVzdiAqaTkxNV92bV9y
ZXN2X2dldChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKK3sKKwlrcmVmX2dldCgmdm0t
PnJlc3ZfcmVmKTsKKwlyZXR1cm4gJnZtLT5fcmVzdjsKK30KKwogdm9pZCBpOTE1X3ZtX3JlbGVh
c2Uoc3RydWN0IGtyZWYgKmtyZWYpOwogCit2b2lkIGk5MTVfdm1fcmVzdl9yZWxlYXNlKHN0cnVj
dCBrcmVmICprcmVmKTsKKwogc3RhdGljIGlubGluZSB2b2lkIGk5MTVfdm1fcHV0KHN0cnVjdCBp
OTE1X2FkZHJlc3Nfc3BhY2UgKnZtKQogewogCWtyZWZfcHV0KCZ2bS0+cmVmLCBpOTE1X3ZtX3Jl
bGVhc2UpOwogfQogCisvKioKKyAqIGk5MTVfdm1fcmVzdl9wdXQgLSBSZWxlYXNlIGEgcmVmZXJl
bmNlIG9uIHRoZSB2bSdzIHJlc2VydmF0aW9uIGxvY2sKKyAqIEByZXN2OiBQb2ludGVyIHRvIGEg
cmVzZXJ2YXRpb24gbG9jayBvYnRhaW5lZCBmcm9tIGk5MTVfdm1fcmVzdl9nZXQoKQorICovCitz
dGF0aWMgaW5saW5lIHZvaWQgaTkxNV92bV9yZXN2X3B1dChzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3Yp
Cit7CisJc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0gPSBjb250YWluZXJfb2YocmVzdiwg
dHlwZW9mKCp2bSksIF9yZXN2KTsKKworCWtyZWZfcHV0KCZ2bS0+cmVzdl9yZWYsIGk5MTVfdm1f
cmVzdl9yZWxlYXNlKTsKK30KKwogc3RhdGljIGlubGluZSBzdHJ1Y3QgaTkxNV9hZGRyZXNzX3Nw
YWNlICoKIGk5MTVfdm1fb3BlbihzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKIHsKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3BwZ3R0LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9wcGd0dC5jCmluZGV4IDRlM2Q4MGMyMjk1Yy4uYWVlM2E4
OTI5MjQ1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9wcGd0dC5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3BwZ3R0LmMKQEAgLTMwNyw3ICsz
MDcsNyBAQCB2b2lkIHBwZ3R0X2luaXQoc3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0LCBzdHJ1Y3Qg
aW50ZWxfZ3QgKmd0KQogCXBwZ3R0LT52bS5kbWEgPSBpOTE1LT5kcm0uZGV2OwogCXBwZ3R0LT52
bS50b3RhbCA9IEJJVF9VTEwoSU5URUxfSU5GTyhpOTE1KS0+cHBndHRfc2l6ZSk7CiAKLQlkbWFf
cmVzdl9pbml0KCZwcGd0dC0+dm0ucmVzdik7CisJZG1hX3Jlc3ZfaW5pdCgmcHBndHQtPnZtLl9y
ZXN2KTsKIAlpOTE1X2FkZHJlc3Nfc3BhY2VfaW5pdCgmcHBndHQtPnZtLCBWTV9DTEFTU19QUEdU
VCk7CiAKIAlwcGd0dC0+dm0udm1hX29wcy5iaW5kX3ZtYSAgICA9IHBwZ3R0X2JpbmRfdm1hOwot
LSAKMi4zMC4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
