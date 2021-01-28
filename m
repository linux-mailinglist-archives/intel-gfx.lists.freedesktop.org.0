Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 135A2307AD9
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 17:27:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14EDA6E9B5;
	Thu, 28 Jan 2021 16:27:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21A0D6E99F
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 16:26:25 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jan 2021 17:25:37 +0100
Message-Id: <20210128162612.927917-29-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210128162612.927917-1-maarten.lankhorst@linux.intel.com>
References: <20210128162612.927917-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 28/63] drm/i915: Take obj lock around
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
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYwppbmRleCAxYTc4OGQx
ZjFmMWIuLmEzZDVhNDZlODE1ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2RvbWFpbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9kb21haW4uYwpAQCAtNTI3LDYgKzUyNywxMCBAQCBpOTE1X2dlbV9zZXRfZG9tYWluX2lvY3Rs
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJCWdvdG8gb3V0OwogCX0KIAor
CWVyciA9IGk5MTVfZ2VtX29iamVjdF9sb2NrX2ludGVycnVwdGlibGUob2JqLCBOVUxMKTsKKwlp
ZiAoZXJyKQorCQlnb3RvIG91dDsKKwogCS8qCiAJICogRmx1c2ggYW5kIGFjcXVpcmUgb2JqLT5w
YWdlcyBzbyB0aGF0IHdlIGFyZSBjb2hlcmVudCB0aHJvdWdoCiAJICogZGlyZWN0IGFjY2VzcyBp
biBtZW1vcnkgd2l0aCBwcmV2aW91cyBjYWNoZWQgd3JpdGVzIHRocm91Z2gKQEAgLTUzOCw3ICs1
NDIsNyBAQCBpOTE1X2dlbV9zZXRfZG9tYWluX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYs
IHZvaWQgKmRhdGEsCiAJICovCiAJZXJyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdlcyhvYmop
OwogCWlmIChlcnIpCi0JCWdvdG8gb3V0OworCQlnb3RvIG91dF91bmxvY2s7CiAKIAkvKgogCSAq
IEFscmVhZHkgaW4gdGhlIGRlc2lyZWQgd3JpdGUgZG9tYWluPyBOb3RoaW5nIGZvciB1cyB0byBk
byEKQEAgLTU1MywxMCArNTU3LDYgQEAgaTkxNV9nZW1fc2V0X2RvbWFpbl9pb2N0bChzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAogCWlmIChSRUFEX09OQ0Uob2JqLT53cml0ZV9k
b21haW4pID09IHJlYWRfZG9tYWlucykKIAkJZ290byBvdXRfdW5waW47CiAKLQllcnIgPSBpOTE1
X2dlbV9vYmplY3RfbG9ja19pbnRlcnJ1cHRpYmxlKG9iaiwgTlVMTCk7Ci0JaWYgKGVycikKLQkJ
Z290byBvdXRfdW5waW47Ci0KIAlpZiAocmVhZF9kb21haW5zICYgSTkxNV9HRU1fRE9NQUlOX1dD
KQogCQllcnIgPSBpOTE1X2dlbV9vYmplY3Rfc2V0X3RvX3djX2RvbWFpbihvYmosIHdyaXRlX2Rv
bWFpbik7CiAJZWxzZSBpZiAocmVhZF9kb21haW5zICYgSTkxNV9HRU1fRE9NQUlOX0dUVCkKQEAg
LTU2NCwxMyArNTY0LDE1IEBAIGk5MTVfZ2VtX3NldF9kb21haW5faW9jdGwoc3RydWN0IGRybV9k
ZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAllbHNlCiAJCWVyciA9IGk5MTVfZ2VtX29iamVjdF9z
ZXRfdG9fY3B1X2RvbWFpbihvYmosIHdyaXRlX2RvbWFpbik7CiAKK291dF91bnBpbjoKKwlpOTE1
X2dlbV9vYmplY3RfdW5waW5fcGFnZXMob2JqKTsKKworb3V0X3VubG9jazoKIAlpOTE1X2dlbV9v
YmplY3RfdW5sb2NrKG9iaik7CiAKLQlpZiAod3JpdGVfZG9tYWluKQorCWlmICghZXJyICYmIHdy
aXRlX2RvbWFpbikKIAkJaTkxNV9nZW1fb2JqZWN0X2ludmFsaWRhdGVfZnJvbnRidWZmZXIob2Jq
LCBPUklHSU5fQ1BVKTsKIAotb3V0X3VucGluOgotCWk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdl
cyhvYmopOwogb3V0OgogCWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKIAlyZXR1cm4gZXJyOwot
LSAKMi4zMC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
