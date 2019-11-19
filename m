Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2345B1021BA
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 11:10:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 124CC6E92D;
	Tue, 19 Nov 2019 10:10:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B040E6E96D
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 10:09:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19255155-1500050 
 for multiple; Tue, 19 Nov 2019 10:09:31 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Nov 2019 10:09:16 +0000
Message-Id: <20191119100929.2628356-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191119100929.2628356-1-chris@chris-wilson.co.uk>
References: <20191119100929.2628356-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/17] drm/i915/gt: Make intel_ring_unpin() safe
 for concurrent pint
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

SW4gb3JkZXIgdG8gYXZvaWQgc29tZSBuYXN0eSBtdXRleCBpbnZlcnNpb25zLCBjb21taXQgMDlj
NWFiMzg0ZjZmCigiZHJtL2k5MTU6IEtlZXAgcmluZ3MgcGlubmVkIHdoaWxlIHRoZSBjb250ZXh0
IGlzIGFjdGl2ZSIpIGFsbG93ZWQgdGhlCmludGVsX3JpbmcgdW5waW5uaW5nIHRvIGJlIHJ1biBj
b25jdXJyZW50bHkgd2l0aCB0aGUgbmV4dCBjb250ZXh0CnBpbm5pbmcgaXQuIFRodXMgZWFjaCBz
dGVwIGluIGludGVsX3JpbmdfdW5waW4oKSBuZWVkZWQgdG8gYmUgYXRvbWljIGFuZApvcmRlcmVk
IGluIGEgbmljZSBvbmlvbiB3aXRoIGludGVsX3JpbmdfcGluKCkgc28gdGhhdCB0aGUgbGlmZXRp
bWVzCm92ZXJsYXBwZWQgYW5kIHdlcmUgYWx3YXlzIHNhZmUuCgpTYWRseSwgYSBmZXcgc3RlcHMg
aW4gaW50ZWxfcmluZ191bnBpbigpIHdlcmUgb3Zlcmxvb2tlZCwgc3VjaCBhcwpjbG9zaW5nIHRo
ZSByZWFkL3dyaXRlIHBvaW50ZXJzIG9mIHRoZSByaW5nIGFuZCBkaXNjYXJkaW5nIHRoZQppbnRl
bF9yaW5nLnZhZGRyLCBhcyB0aGVzZSBzdGVwcyB3ZXJlIG5vdCBzZXJpYWxpc2VkIHdpdGgKaW50
ZWxfcmluZ19waW4oKSBhbmQgc28gY291bGQgbGVhdmUgdGhlIHJpbmcgaW4gZGlzYXJyYXkuCgpG
aXhlczogMDljNWFiMzg0ZjZmICgiZHJtL2k5MTU6IEtlZXAgcmluZ3MgcGlubmVkIHdoaWxlIHRo
ZSBjb250ZXh0IGlzIGFjdGl2ZSIpClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51
eC5pbnRlbC5jb20+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmcuYyB8IDEzICsrKystLS0t
LS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZy5jCmluZGV4IGVjZTIwNTA0ZDI0MC4uMzc0YjI4
ZjEzY2EwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZy5jCkBAIC01Nyw5ICs1Nywx
MCBAQCBpbnQgaW50ZWxfcmluZ19waW4oc3RydWN0IGludGVsX3JpbmcgKnJpbmcpCiAKIAlpOTE1
X3ZtYV9tYWtlX3Vuc2hyaW5rYWJsZSh2bWEpOwogCi0JR0VNX0JVR19PTihyaW5nLT52YWRkcik7
Ci0JcmluZy0+dmFkZHIgPSBhZGRyOworCS8qIERpc2NhcmQgYW55IHVudXNlZCBieXRlcyBiZXlv
bmQgdGhhdCBzdWJtaXR0ZWQgdG8gaHcuICovCisJaW50ZWxfcmluZ19yZXNldChyaW5nLCByaW5n
LT5lbWl0KTsKIAorCXJpbmctPnZhZGRyID0gYWRkcjsKIAlyZXR1cm4gMDsKIAogZXJyX3Jpbmc6
CkBAIC04NSwyMCArODYsMTQgQEAgdm9pZCBpbnRlbF9yaW5nX3VucGluKHN0cnVjdCBpbnRlbF9y
aW5nICpyaW5nKQogCWlmICghYXRvbWljX2RlY19hbmRfdGVzdCgmcmluZy0+cGluX2NvdW50KSkK
IAkJcmV0dXJuOwogCi0JLyogRGlzY2FyZCBhbnkgdW51c2VkIGJ5dGVzIGJleW9uZCB0aGF0IHN1
Ym1pdHRlZCB0byBody4gKi8KLQlpbnRlbF9yaW5nX3Jlc2V0KHJpbmcsIHJpbmctPmVtaXQpOwot
CiAJaTkxNV92bWFfdW5zZXRfZ2d0dF93cml0ZSh2bWEpOwogCWlmIChpOTE1X3ZtYV9pc19tYXBf
YW5kX2ZlbmNlYWJsZSh2bWEpKQogCQlpOTE1X3ZtYV91bnBpbl9pb21hcCh2bWEpOwogCWVsc2UK
IAkJaTkxNV9nZW1fb2JqZWN0X3VucGluX21hcCh2bWEtPm9iaik7CiAKLQlHRU1fQlVHX09OKCFy
aW5nLT52YWRkcik7Ci0JcmluZy0+dmFkZHIgPSBOVUxMOwotCi0JaTkxNV92bWFfdW5waW4odm1h
KTsKIAlpOTE1X3ZtYV9tYWtlX3B1cmdlYWJsZSh2bWEpOworCWk5MTVfdm1hX3VucGluKHZtYSk7
CiB9CiAKIHN0YXRpYyBzdHJ1Y3QgaTkxNV92bWEgKmNyZWF0ZV9yaW5nX3ZtYShzdHJ1Y3QgaTkx
NV9nZ3R0ICpnZ3R0LCBpbnQgc2l6ZSkKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
