Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFD52EAF10
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 16:46:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5B416E11C;
	Tue,  5 Jan 2021 15:45:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5724C6E150
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 15:45:42 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jan 2021 16:35:22 +0100
Message-Id: <20210105153558.134272-29-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.0.rc1
In-Reply-To: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 28/64] drm/i915: Take obj lock around
 set_domain ioctl
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

V2UgbmVlZCB0byBsb2NrIHRoZSBvYmplY3QgdG8gbW92ZSBpdCB0byB0aGUgY29ycmVjdCBkb21h
aW4sCmFkZCB0aGUgbWlzc2luZyBsb2NrLgoKU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9y
c3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFRob21h
cyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMgfCAxOCArKysrKysrKysrLS0t
LS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYwppbmRleCA1MWEzM2M0
ZjYxZDAuLmU2MmY5ZThkZDMzOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2RvbWFpbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9kb21haW4uYwpAQCAtNTE2LDYgKzUxNiwxMCBAQCBpOTE1X2dlbV9zZXRfZG9tYWluX2lvY3Rs
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJCWdvdG8gb3V0OwogCX0KIAor
CWVyciA9IGk5MTVfZ2VtX29iamVjdF9sb2NrX2ludGVycnVwdGlibGUob2JqLCBOVUxMKTsKKwlp
ZiAoZXJyKQorCQlnb3RvIG91dDsKKwogCS8qCiAJICogRmx1c2ggYW5kIGFjcXVpcmUgb2JqLT5w
YWdlcyBzbyB0aGF0IHdlIGFyZSBjb2hlcmVudCB0aHJvdWdoCiAJICogZGlyZWN0IGFjY2VzcyBp
biBtZW1vcnkgd2l0aCBwcmV2aW91cyBjYWNoZWQgd3JpdGVzIHRocm91Z2gKQEAgLTUyNyw3ICs1
MzEsNyBAQCBpOTE1X2dlbV9zZXRfZG9tYWluX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYs
IHZvaWQgKmRhdGEsCiAJICovCiAJZXJyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdlcyhvYmop
OwogCWlmIChlcnIpCi0JCWdvdG8gb3V0OworCQlnb3RvIG91dF91bmxvY2s7CiAKIAkvKgogCSAq
IEFscmVhZHkgaW4gdGhlIGRlc2lyZWQgd3JpdGUgZG9tYWluPyBOb3RoaW5nIGZvciB1cyB0byBk
byEKQEAgLTU0MiwxMCArNTQ2LDYgQEAgaTkxNV9nZW1fc2V0X2RvbWFpbl9pb2N0bChzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAogCWlmIChSRUFEX09OQ0Uob2JqLT53cml0ZV9k
b21haW4pID09IHJlYWRfZG9tYWlucykKIAkJZ290byBvdXRfdW5waW47CiAKLQllcnIgPSBpOTE1
X2dlbV9vYmplY3RfbG9ja19pbnRlcnJ1cHRpYmxlKG9iaiwgTlVMTCk7Ci0JaWYgKGVycikKLQkJ
Z290byBvdXRfdW5waW47Ci0KIAlpZiAocmVhZF9kb21haW5zICYgSTkxNV9HRU1fRE9NQUlOX1dD
KQogCQllcnIgPSBpOTE1X2dlbV9vYmplY3Rfc2V0X3RvX3djX2RvbWFpbihvYmosIHdyaXRlX2Rv
bWFpbik7CiAJZWxzZSBpZiAocmVhZF9kb21haW5zICYgSTkxNV9HRU1fRE9NQUlOX0dUVCkKQEAg
LTU1NiwxMyArNTU2LDE1IEBAIGk5MTVfZ2VtX3NldF9kb21haW5faW9jdGwoc3RydWN0IGRybV9k
ZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAkvKiBBbmQgYnVtcCB0aGUgTFJVIGZvciB0aGlzIGFj
Y2VzcyAqLwogCWk5MTVfZ2VtX29iamVjdF9idW1wX2luYWN0aXZlX2dndHQob2JqKTsKIAorb3V0
X3VucGluOgorCWk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdlcyhvYmopOworCitvdXRfdW5sb2Nr
OgogCWk5MTVfZ2VtX29iamVjdF91bmxvY2sob2JqKTsKIAotCWlmICh3cml0ZV9kb21haW4pCisJ
aWYgKCFlcnIgJiYgd3JpdGVfZG9tYWluKQogCQlpOTE1X2dlbV9vYmplY3RfaW52YWxpZGF0ZV9m
cm9udGJ1ZmZlcihvYmosIE9SSUdJTl9DUFUpOwogCi1vdXRfdW5waW46Ci0JaTkxNV9nZW1fb2Jq
ZWN0X3VucGluX3BhZ2VzKG9iaik7CiBvdXQ6CiAJaTkxNV9nZW1fb2JqZWN0X3B1dChvYmopOwog
CXJldHVybiBlcnI7Ci0tIAoyLjMwLjAucmMxCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
