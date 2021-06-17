Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF9B3AAB29
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 07:44:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D07F89708;
	Thu, 17 Jun 2021 05:44:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 431B289708
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 05:44:46 +0000 (UTC)
IronPort-SDR: H3PbiHscR+l6nMGNYx3cvvKK51OoFvgYrDt4vAWXTlXDmFpn5bYu8/qFMhW8fv+Vqmp5fwmrH3
 /NyL1em0u1gg==
X-IronPort-AV: E=McAfee;i="6200,9189,10017"; a="291939801"
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; d="scan'208";a="291939801"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2021 22:44:31 -0700
IronPort-SDR: 15VYB5/AOg8Ae3CY88Zka7zcxLqa0OhJq/Uq1EYh1/BF3nvSBEnm333UVluYBIU4pn6xQ7xVIU
 vIj/AKudq0nw==
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; d="scan'208";a="485169416"
Received: from kmatusie-mobl.ger.corp.intel.com (HELO
 zkempczy-mobl2.ger.corp.intel.com) ([10.213.30.210])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2021 22:44:26 -0700
From: =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Jun 2021 07:44:18 +0200
Message-Id: <20210617054418.6094-1-zbigniew.kempczynski@intel.com>
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
LUNJIGJyYW5jaCBvbmx5Cgp2NjogY2hhbmdlIGNvbW1lbnQgKFJvZHJpZ28pCgpTaWduZWQtb2Zm
LWJ5OiBaYmlnbmlldyBLZW1wY3p5xYRza2kgPHpiaWduaWV3LmtlbXBjenluc2tpQGludGVsLmNv
bT4KQ2M6IERhdmUgQWlybGllIDxhaXJsaWVkQHJlZGhhdC5jb20+CkNjOiBEYW5pZWwgVmV0dGVy
IDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVr
c3RyYW5kLm5ldD4KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KQWNr
ZWQtYnk6IERhdmUgQWlybGllIDxhaXJsaWVkQHJlZGhhdC5jb20+CkFja2VkLWJ5OiBSb2RyaWdv
IFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Ci0tLQogLi4uL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fZXhlY2J1ZmZlci5jICAgIHwgMjEgKysrKysrKysrKysrKystLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKaW5kZXggNzYwYzhhZWZlYTNh
Li44ZjE1ZmE4OGNhYzYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9leGVjYnVmZmVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X2V4ZWNidWZmZXIuYwpAQCAtNDkxLDE2ICs0OTEsMjcgQEAgZWJfdW5yZXNlcnZlX3ZtYShzdHJ1
Y3QgZWJfdm1hICpldikKIAlldi0+ZmxhZ3MgJj0gfl9fRVhFQ19PQkpFQ1RfUkVTRVJWRUQ7CiB9
CiAKK3N0YXRpYyBib29sIHBsYXRmb3JtX2hhc19yZWxvY3NfZW5hYmxlZChjb25zdCBzdHJ1Y3Qg
aTkxNV9leGVjYnVmZmVyICplYikKK3sKKwkvKgorCSAqIFJlbG9jYXRpb25zIGFyZSBkaXNhbGxv
d2VkIHN0YXJ0aW5nIGZyb20gZ2VuMTIgd2l0aCBUaWdlcmxha2UKKwkgKiBhcyBhbiBleGNlcHRp
b24uIFRvIHVuYmxvY2sgQ0ksIHdlIGFyZSB0ZW1wb3JhcmlseSBhbGxvd2luZyBpdAorCSAqIGZv
ciBSb2NrZXRsYWtlIGFuZCBBbGRlcmxha2UuCisJICovCisJaWYgKEdSQVBISUNTX1ZFUihlYi0+
aTkxNSkgPCAxMiB8fCBJU19USUdFUkxBS0UoZWItPmk5MTUpIHx8CisJICAgIElTX1JPQ0tFVExB
S0UoZWItPmk5MTUpIHx8IElTX0FMREVSTEFLRV9TKGViLT5pOTE1KSB8fAorCSAgICBJU19BTERF
UkxBS0VfUChlYi0+aTkxNSkpCisJCXJldHVybiB0cnVlOworCisJcmV0dXJuIGZhbHNlOworfQor
CiBzdGF0aWMgaW50CiBlYl92YWxpZGF0ZV92bWEoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIs
CiAJCXN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19vYmplY3QyICplbnRyeSwKIAkJc3RydWN0IGk5
MTVfdm1hICp2bWEpCiB7Ci0JLyogUmVsb2NhdGlvbnMgYXJlIGRpc2FsbG93ZWQgZm9yIGFsbCBw
bGF0Zm9ybXMgYWZ0ZXIgVEdMLUxQLiAgVGhpcwotCSAqIGFsc28gY292ZXJzIGFsbCBwbGF0Zm9y
bXMgd2l0aCBsb2NhbCBtZW1vcnkuCi0JICovCi0JaWYgKGVudHJ5LT5yZWxvY2F0aW9uX2NvdW50
ICYmCi0JICAgIEdSQVBISUNTX1ZFUihlYi0+aTkxNSkgPj0gMTIgJiYgIUlTX1RJR0VSTEFLRShl
Yi0+aTkxNSkpCisJaWYgKGVudHJ5LT5yZWxvY2F0aW9uX2NvdW50ICYmICFwbGF0Zm9ybV9oYXNf
cmVsb2NzX2VuYWJsZWQoZWIpKQogCQlyZXR1cm4gLUVJTlZBTDsKIAogCWlmICh1bmxpa2VseShl
bnRyeS0+ZmxhZ3MgJiBlYi0+aW52YWxpZF9mbGFncykpCi0tIAoyLjI2LjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
