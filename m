Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1582EAF3F
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 16:46:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB30A6E1AA;
	Tue,  5 Jan 2021 15:46:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A86E06E156
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 15:45:44 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jan 2021 16:35:46 +0100
Message-Id: <20210105153558.134272-53-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.0.rc1
In-Reply-To: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 52/64] drm/i915/selftests: Prepare hangcheck
 for obj->mm.lock removal
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

Q29udmVydCBhIGZldyBjYWxscyB0byB1c2UgdGhlIHVubG9ja2VkIHZlcnNpb25zLgoKU2lnbmVk
LW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVs
LmNvbT4KUmV2aWV3ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxp
bnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9oYW5n
Y2hlY2suYyB8IDggKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRl
c3RfaGFuZ2NoZWNrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9oYW5nY2hl
Y2suYwppbmRleCBjMjhkMWZjYWQ2NzMuLjQwM2VkZjI2YTMzOCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfaGFuZ2NoZWNrLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfaGFuZ2NoZWNrLmMKQEAgLTgwLDE1ICs4MCwxNSBAQCBzdGF0
aWMgaW50IGhhbmdfaW5pdChzdHJ1Y3QgaGFuZyAqaCwgc3RydWN0IGludGVsX2d0ICpndCkKIAl9
CiAKIAlpOTE1X2dlbV9vYmplY3Rfc2V0X2NhY2hlX2NvaGVyZW5jeShoLT5od3MsIEk5MTVfQ0FD
SEVfTExDKTsKLQl2YWRkciA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwKGgtPmh3cywgSTkxNV9N
QVBfV0IpOworCXZhZGRyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXBfdW5sb2NrZWQoaC0+aHdz
LCBJOTE1X01BUF9XQik7CiAJaWYgKElTX0VSUih2YWRkcikpIHsKIAkJZXJyID0gUFRSX0VSUih2
YWRkcik7CiAJCWdvdG8gZXJyX29iajsKIAl9CiAJaC0+c2Vxbm8gPSBtZW1zZXQodmFkZHIsIDB4
ZmYsIFBBR0VfU0laRSk7CiAKLQl2YWRkciA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwKGgtPm9i
aiwKLQkJCQkJaTkxNV9jb2hlcmVudF9tYXBfdHlwZShndC0+aTkxNSkpOworCXZhZGRyID0gaTkx
NV9nZW1fb2JqZWN0X3Bpbl9tYXBfdW5sb2NrZWQoaC0+b2JqLAorCQkJCQkJIGk5MTVfY29oZXJl
bnRfbWFwX3R5cGUoZ3QtPmk5MTUpKTsKIAlpZiAoSVNfRVJSKHZhZGRyKSkgewogCQllcnIgPSBQ
VFJfRVJSKHZhZGRyKTsKIAkJZ290byBlcnJfdW5waW5faHdzOwpAQCAtMTQ5LDcgKzE0OSw3IEBA
IGhhbmdfY3JlYXRlX3JlcXVlc3Qoc3RydWN0IGhhbmcgKmgsIHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSkKIAkJcmV0dXJuIEVSUl9DQVNUKG9iaik7CiAJfQogCi0JdmFkZHIgPSBpOTE1
X2dlbV9vYmplY3RfcGluX21hcChvYmosIGk5MTVfY29oZXJlbnRfbWFwX3R5cGUoZ3QtPmk5MTUp
KTsKKwl2YWRkciA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwX3VubG9ja2VkKG9iaiwgaTkxNV9j
b2hlcmVudF9tYXBfdHlwZShndC0+aTkxNSkpOwogCWlmIChJU19FUlIodmFkZHIpKSB7CiAJCWk5
MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKIAkJaTkxNV92bV9wdXQodm0pOwotLSAKMi4zMC4wLnJj
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
