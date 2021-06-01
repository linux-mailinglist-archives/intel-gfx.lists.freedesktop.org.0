Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DDB396EFD
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 10:30:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D90E6E949;
	Tue,  1 Jun 2021 08:30:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EAB26E8B9;
 Tue,  1 Jun 2021 08:30:52 +0000 (UTC)
IronPort-SDR: BSbMcSrUqwupaYxiirTHv45+PoE3U4vNCyiD+bOx46lIOVp5B7g8kwP79flY6A782pgYIwmF8d
 mmrgPQNtlWHQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10001"; a="267378627"
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="267378627"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 01:30:51 -0700
IronPort-SDR: 6Ph7GmRJ2lz+nk4+urpSuBL4Tsb9o5ORM624pFmKqDLoq8O/JxC096WVbmMOZ2sKQjDp9hlp+s
 P1xmzua+BF0g==
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="479190756"
Received: from slockwoo-mobl.ger.corp.intel.com (HELO
 zkempczy-mobl2.ger.corp.intel.com) ([10.213.8.163])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 01:30:49 -0700
From: =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue,  1 Jun 2021 10:28:47 +0200
Message-Id: <20210601082847.78389-1-zbigniew.kempczynski@intel.com>
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
Cc: Dave Airlie <airlied@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgaGF2ZSBlc3RhYmxpc2hlZCBwcmV2aW91c2x5IHdlIHN0b3AgdXNpbmcgcmVsb2NhdGlvbnMg
c3RhcnRpbmcKZnJvbSBnZW4xMiBwbGF0Zm9ybXMgd2l0aCBUaWdlcmxha2UgYXMgYW4gZXhjZXB0
aW9uLiBXZSBrZWVwIHRoaXMKc3RhdGVtZW50IGJ1dCB3ZSB3YW50IHRvIGVuYWJsZSByZWxvY2F0
aW9ucyBjb25kaXRpb25hbGx5IGZvcgpSb2NrZXRsYWtlIGFuZCBBbGRlcmxha2UgdW5kZXIgcmVx
dWlyZV9mb3JjZV9wcm9iZSBmbGFnIHNldC4KCktlZXBpbmcgcmVsb2NhdGlvbnMgdW5kZXIgcmVx
dWlyZV9mb3JjZV9wcm9iZSBmbGFnIGlzIGludGVyaW0gc29sdXRpb24KdW50aWwgSUdUcyB3aWxs
IGJlIHJld3JpdHRlbiB0byB1c2Ugc29mdHBpbi4KClNpZ25lZC1vZmYtYnk6IFpiaWduaWV3IEtl
bXBjennFhHNraSA8emJpZ25pZXcua2VtcGN6eW5za2lAaW50ZWwuY29tPgpDYzogRGF2ZSBBaXJs
aWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJA
aW50ZWwuY29tPgpDYzogSmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtzdHJhbmQubmV0PgotLS0K
IC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyAgICB8IDI2ICsrKysr
KysrKysrKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCA1IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9l
eGVjYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZl
ci5jCmluZGV4IDI5NzE0MzUxMWY5OS4uYzA1NjJkZDE0ODM3IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKQEAgLTQ5MSwxNiArNDkxLDMyIEBA
IGViX3VucmVzZXJ2ZV92bWEoc3RydWN0IGViX3ZtYSAqZXYpCiAJZXYtPmZsYWdzICY9IH5fX0VY
RUNfT0JKRUNUX1JFU0VSVkVEOwogfQogCitzdGF0aWMgaW5saW5lIGJvb2wKK3BsYXRmb3JtX2hh
c19yZWxvY3NfZW5hYmxlZChjb25zdCBzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYikKK3sKKwkv
KgorCSAqIFJlbG9jYXRpb25zIGFyZSBkaXNhbGxvd2VkIHN0YXJ0aW5nIGZyb20gZ2VuMTIgd2l0
aCBUaWdlcmxha2UKKwkgKiBhcyBhbiBleGNlcHRpb24uIFdlIGFsbG93IHRlbXBvcmFyaWx5IHVz
ZSByZWxvY2F0aW9ucyBmb3IgUm9ja2V0bGFrZQorCSAqIGFuZCBBbGRlcmxha2Ugd2hlbiByZXF1
aXJlX2ZvcmNlX3Byb2JlIGZsYWcgaXMgc2V0LgorCSAqLworCisJaWYgKElOVEVMX0dFTihlYi0+
aTkxNSkgPCAxMiB8fCBJU19USUdFUkxBS0UoZWItPmk5MTUpKQorCQlyZXR1cm4gdHJ1ZTsKKwor
CWlmIChJTlRFTF9JTkZPKGViLT5pOTE1KS0+cmVxdWlyZV9mb3JjZV9wcm9iZSAmJgorCQkgKElT
X1JPQ0tFVExBS0UoZWItPmk5MTUpIHx8IElTX0FMREVSTEFLRV9TKGViLT5pOTE1KSB8fAorCQkg
IElTX0FMREVSTEFLRV9QKGViLT5pOTE1KSkpCisJCXJldHVybiB0cnVlOworCisJcmV0dXJuIGZh
bHNlOworfQorCiBzdGF0aWMgaW50CiBlYl92YWxpZGF0ZV92bWEoc3RydWN0IGk5MTVfZXhlY2J1
ZmZlciAqZWIsCiAJCXN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19vYmplY3QyICplbnRyeSwKIAkJ
c3RydWN0IGk5MTVfdm1hICp2bWEpCiB7Ci0JLyogUmVsb2NhdGlvbnMgYXJlIGRpc2FsbG93ZWQg
Zm9yIGFsbCBwbGF0Zm9ybXMgYWZ0ZXIgVEdMLUxQLiAgVGhpcwotCSAqIGFsc28gY292ZXJzIGFs
bCBwbGF0Zm9ybXMgd2l0aCBsb2NhbCBtZW1vcnkuCi0JICovCi0JaWYgKGVudHJ5LT5yZWxvY2F0
aW9uX2NvdW50ICYmCi0JICAgIElOVEVMX0dFTihlYi0+aTkxNSkgPj0gMTIgJiYgIUlTX1RJR0VS
TEFLRShlYi0+aTkxNSkpCisJaWYgKGVudHJ5LT5yZWxvY2F0aW9uX2NvdW50ICYmICFwbGF0Zm9y
bV9oYXNfcmVsb2NzX2VuYWJsZWQoZWIpKQogCQlyZXR1cm4gLUVJTlZBTDsKIAogCWlmICh1bmxp
a2VseShlbnRyeS0+ZmxhZ3MgJiBlYi0+aW52YWxpZF9mbGFncykpCi0tIAoyLjI2LjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
