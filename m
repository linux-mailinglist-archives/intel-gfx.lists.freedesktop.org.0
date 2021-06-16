Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8EA3A967E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 11:48:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4134A6E550;
	Wed, 16 Jun 2021 09:48:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E732B6E550
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jun 2021 09:48:12 +0000 (UTC)
IronPort-SDR: afswBRAk0OMhfhzMrpOC/vFydeMTkfKiAgnRBaKd+K3fF/ULJorlnpeZ5ZXFu2bjk3ukHLUvYF
 vPARUwlkCF2g==
X-IronPort-AV: E=McAfee;i="6200,9189,10016"; a="206105587"
X-IronPort-AV: E=Sophos;i="5.83,277,1616482800"; d="scan'208";a="206105587"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2021 02:48:12 -0700
IronPort-SDR: 2+fhQ9jmLSvSo6G4ITAP8orZVGlC1AOfbuLnGUoWiKJqlYHexsU5qSSy0kuk1Tpjc6ZKwUqth/
 kdwFw2MmMsBQ==
X-IronPort-AV: E=Sophos;i="5.83,277,1616482800"; d="scan'208";a="452289392"
Received: from sstrehlk-mobl.ger.corp.intel.com (HELO
 zkempczy-mobl2.ger.corp.intel.com) ([10.213.3.95])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2021 02:48:10 -0700
From: =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Jun 2021 11:48:02 +0200
Message-Id: <20210616094802.63372-1-zbigniew.kempczynski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Add relocation exceptions for two
 other platforms
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
Cc: Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yIHRvcGljL2ludGVsLWZvci1DSSBicmFuY2ggb25seS4KCldlIGhhdmUgZXN0YWJsaXNoZWQg
cHJldmlvdXNseSB3ZSBzdG9wIHVzaW5nIHJlbG9jYXRpb25zIHN0YXJ0aW5nCmZyb20gZ2VuMTIg
cGxhdGZvcm1zIHdpdGggVGlnZXJsYWtlIGFzIGFuIGV4Y2VwdGlvbi4gV2Uga2VlcCB0aGlzCnN0
YXRlbWVudCBidXQgd2Ugd2FudCB0byBlbmFibGUgcmVsb2NhdGlvbnMgY29uZGl0aW9uYWxseSBm
b3IKQWxkZXJsYWtlIFMrUCB1bmRlciByZXF1aXJlX2ZvcmNlX3Byb2JlIGZsYWcgc2V0LgoKS2Vl
cGluZyByZWxvY2F0aW9ucyB1bmRlciByZXF1aXJlX2ZvcmNlX3Byb2JlIGZsYWcgaXMgaW50ZXJp
bSBzb2x1dGlvbgp1bnRpbCBJR1RzIHdpbGwgYmUgcmV3cml0dGVuIHRvIHVzZSBzb2Z0cGluLgoK
djI6IC0gcmVtb3ZlIGlubGluZSBmcm9tIGZ1bmN0aW9uIGRlZmluaXRpb24gKEphbmkpCiAgICAt
IGZpeCBpbmRlbnRhdGlvbgoKdjM6IGNoYW5nZSB0byBHUkFQSElDU19WRVIoKSAoWmJpZ25pZXcp
Cgp2NDogcmVtb3ZlIFJLTCBmcm9tIGZsYWcgYXMgaXQgaXMgYWxyZWFkeSBzaGlwcGVkIChSb2Ry
aWdvKQoKdjU6IHByZXBhcmUgcGF0Y2ggdG8gYmUgdXNlZCB3aXRoaW4gdG9waWMvaW50ZWwtZm9y
LUNJIGJyYW5jaCBvbmx5CgpTaWduZWQtb2ZmLWJ5OiBaYmlnbmlldyBLZW1wY3p5xYRza2kgPHpi
aWduaWV3LmtlbXBjenluc2tpQGludGVsLmNvbT4KQ2M6IERhdmUgQWlybGllIDxhaXJsaWVkQHJl
ZGhhdC5jb20+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6
IEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5kLm5ldD4KQ2M6IFJvZHJpZ28gVml2aSA8
cm9kcmlnby52aXZpQGludGVsLmNvbT4KQWNrZWQtYnk6IERhdmUgQWlybGllIDxhaXJsaWVkQHJl
ZGhhdC5jb20+CkFja2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+
Ci0tLQogLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jICAgIHwgMjEg
KysrKysrKysrKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDUg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2V4ZWNidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVj
YnVmZmVyLmMKaW5kZXggNzYwYzhhZWZlYTNhLi45MDZlZTAxMTY0NDMgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwpAQCAtNDkxLDE2ICs0OTEs
MjcgQEAgZWJfdW5yZXNlcnZlX3ZtYShzdHJ1Y3QgZWJfdm1hICpldikKIAlldi0+ZmxhZ3MgJj0g
fl9fRVhFQ19PQkpFQ1RfUkVTRVJWRUQ7CiB9CiAKK3N0YXRpYyBib29sIHBsYXRmb3JtX2hhc19y
ZWxvY3NfZW5hYmxlZChjb25zdCBzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYikKK3sKKwkvKgor
CSAqIFJlbG9jYXRpb25zIGFyZSBkaXNhbGxvd2VkIHN0YXJ0aW5nIGZyb20gZ2VuMTIgd2l0aCBU
aWdlcmxha2UKKwkgKiBhcyBhbiBleGNlcHRpb24uIFdlIGFsbG93IHRlbXBvcmFyaWx5IHVzZSBy
ZWxvY2F0aW9ucyBmb3IgQWxkZXJsYWtlCisJICogd2hlbiByZXF1aXJlX2ZvcmNlX3Byb2JlIGZs
YWcgaXMgc2V0LgorCSAqLworCWlmIChHUkFQSElDU19WRVIoZWItPmk5MTUpIDwgMTIgfHwgSVNf
VElHRVJMQUtFKGViLT5pOTE1KSB8fAorCSAgICBJU19ST0NLRVRMQUtFKGViLT5pOTE1KSB8fCBJ
U19BTERFUkxBS0VfUyhlYi0+aTkxNSkgfHwKKwkgICAgSVNfQUxERVJMQUtFX1AoZWItPmk5MTUp
KQorCQlyZXR1cm4gdHJ1ZTsKKworCXJldHVybiBmYWxzZTsKK30KKwogc3RhdGljIGludAogZWJf
dmFsaWRhdGVfdm1hKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLAogCQlzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX2V4ZWNfb2JqZWN0MiAqZW50cnksCiAJCXN0cnVjdCBpOTE1X3ZtYSAqdm1hKQogewot
CS8qIFJlbG9jYXRpb25zIGFyZSBkaXNhbGxvd2VkIGZvciBhbGwgcGxhdGZvcm1zIGFmdGVyIFRH
TC1MUC4gIFRoaXMKLQkgKiBhbHNvIGNvdmVycyBhbGwgcGxhdGZvcm1zIHdpdGggbG9jYWwgbWVt
b3J5LgotCSAqLwotCWlmIChlbnRyeS0+cmVsb2NhdGlvbl9jb3VudCAmJgotCSAgICBHUkFQSElD
U19WRVIoZWItPmk5MTUpID49IDEyICYmICFJU19USUdFUkxBS0UoZWItPmk5MTUpKQorCWlmIChl
bnRyeS0+cmVsb2NhdGlvbl9jb3VudCAmJiAhcGxhdGZvcm1faGFzX3JlbG9jc19lbmFibGVkKGVi
KSkKIAkJcmV0dXJuIC1FSU5WQUw7CiAKIAlpZiAodW5saWtlbHkoZW50cnktPmZsYWdzICYgZWIt
PmludmFsaWRfZmxhZ3MpKQotLSAKMi4yNi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
