Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 620B5397563
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 16:25:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 823366EA79;
	Tue,  1 Jun 2021 14:25:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB7DC6E04B;
 Tue,  1 Jun 2021 14:24:58 +0000 (UTC)
IronPort-SDR: twwUHNl65zvYI1ynIEEcD4BNZY8DL3sHPT5h9fz3eaAJAonnLwDsjFCibKqTR9QDS2RorLW79H
 /yWbTxYq+n5A==
X-IronPort-AV: E=McAfee;i="6200,9189,10002"; a="183916918"
X-IronPort-AV: E=Sophos;i="5.83,240,1616482800"; d="scan'208";a="183916918"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 07:24:57 -0700
IronPort-SDR: KUsqdJ+lCObmz8/PjzA9oVX+nAtEcyZ0F+ioM+CUvZSdy9DjStaowjBDRZsJ9lV0WhV2wis0nf
 A1Xfxc3JoBfw==
X-IronPort-AV: E=Sophos;i="5.83,240,1616482800"; d="scan'208";a="479299490"
Received: from slockwoo-mobl.ger.corp.intel.com (HELO
 zkempczy-mobl2.ger.corp.intel.com) ([10.213.8.163])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 07:24:54 -0700
From: =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue,  1 Jun 2021 16:24:42 +0200
Message-Id: <20210601142442.100754-1-zbigniew.kempczynski@intel.com>
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
IGJlIHJld3JpdHRlbiB0byB1c2Ugc29mdHBpbi4KCnYyOiAtIHJlbW92ZSBpbmxpbmUgZnJvbSBm
dW5jdGlvbiBkZWZpbml0aW9uIChKYW5pKQogICAgLSBmaXggaW5kZW50YXRpb24KClNpZ25lZC1v
ZmYtYnk6IFpiaWduaWV3IEtlbXBjennFhHNraSA8emJpZ25pZXcua2VtcGN6eW5za2lAaW50ZWwu
Y29tPgpDYzogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KQ2M6IERhbmllbCBWZXR0
ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogSmFzb24gRWtzdHJhbmQgPGphc29uQGps
ZWtzdHJhbmQubmV0PgotLS0KIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZm
ZXIuYyAgICB8IDI0ICsrKysrKysrKysrKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNl
cnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fZXhlY2J1ZmZlci5jCmluZGV4IDI5NzE0MzUxMWY5OS4uNzhiODZhN2JjMzlhIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKQEAg
LTQ5MSwxNiArNDkxLDMwIEBAIGViX3VucmVzZXJ2ZV92bWEoc3RydWN0IGViX3ZtYSAqZXYpCiAJ
ZXYtPmZsYWdzICY9IH5fX0VYRUNfT0JKRUNUX1JFU0VSVkVEOwogfQogCitzdGF0aWMgYm9vbCBw
bGF0Zm9ybV9oYXNfcmVsb2NzX2VuYWJsZWQoY29uc3Qgc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAq
ZWIpCit7CisJLyoKKwkgKiBSZWxvY2F0aW9ucyBhcmUgZGlzYWxsb3dlZCBzdGFydGluZyBmcm9t
IGdlbjEyIHdpdGggVGlnZXJsYWtlCisJICogYXMgYW4gZXhjZXB0aW9uLiBXZSBhbGxvdyB0ZW1w
b3JhcmlseSB1c2UgcmVsb2NhdGlvbnMgZm9yIFJvY2tldGxha2UKKwkgKiBhbmQgQWxkZXJsYWtl
IHdoZW4gcmVxdWlyZV9mb3JjZV9wcm9iZSBmbGFnIGlzIHNldC4KKwkgKi8KKwlpZiAoSU5URUxf
R0VOKGViLT5pOTE1KSA8IDEyIHx8IElTX1RJR0VSTEFLRShlYi0+aTkxNSkpCisJCXJldHVybiB0
cnVlOworCisJaWYgKElOVEVMX0lORk8oZWItPmk5MTUpLT5yZXF1aXJlX2ZvcmNlX3Byb2JlICYm
CisJICAgIChJU19ST0NLRVRMQUtFKGViLT5pOTE1KSB8fCBJU19BTERFUkxBS0VfUyhlYi0+aTkx
NSkgfHwKKwkgICAgIElTX0FMREVSTEFLRV9QKGViLT5pOTE1KSkpCisJCXJldHVybiB0cnVlOwor
CisJcmV0dXJuIGZhbHNlOworfQorCiBzdGF0aWMgaW50CiBlYl92YWxpZGF0ZV92bWEoc3RydWN0
IGk5MTVfZXhlY2J1ZmZlciAqZWIsCiAJCXN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19vYmplY3Qy
ICplbnRyeSwKIAkJc3RydWN0IGk5MTVfdm1hICp2bWEpCiB7Ci0JLyogUmVsb2NhdGlvbnMgYXJl
IGRpc2FsbG93ZWQgZm9yIGFsbCBwbGF0Zm9ybXMgYWZ0ZXIgVEdMLUxQLiAgVGhpcwotCSAqIGFs
c28gY292ZXJzIGFsbCBwbGF0Zm9ybXMgd2l0aCBsb2NhbCBtZW1vcnkuCi0JICovCi0JaWYgKGVu
dHJ5LT5yZWxvY2F0aW9uX2NvdW50ICYmCi0JICAgIElOVEVMX0dFTihlYi0+aTkxNSkgPj0gMTIg
JiYgIUlTX1RJR0VSTEFLRShlYi0+aTkxNSkpCisJaWYgKGVudHJ5LT5yZWxvY2F0aW9uX2NvdW50
ICYmICFwbGF0Zm9ybV9oYXNfcmVsb2NzX2VuYWJsZWQoZWIpKQogCQlyZXR1cm4gLUVJTlZBTDsK
IAogCWlmICh1bmxpa2VseShlbnRyeS0+ZmxhZ3MgJiBlYi0+aW52YWxpZF9mbGFncykpCi0tIAoy
LjI2LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
