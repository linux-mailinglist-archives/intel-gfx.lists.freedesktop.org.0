Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B4ED46C3
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 19:38:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EC9A6E41A;
	Fri, 11 Oct 2019 17:38:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D8506E41A
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 17:38:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18807860-1500050 
 for multiple; Fri, 11 Oct 2019 18:38:25 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Oct 2019 18:38:23 +0100
Message-Id: <20191011173823.20432-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Add an rcu_barrier option to
 i915_drop_caches
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

U29tZXRpbWVzIGEgdGVzdCBoYXMgdG8gd2FpdCBmb3IgUkNVIHRvIGNvbXBsZXRlIGEgZ3JhY2Ug
cGVyaW9kIGFuZApwZXJmb3JtIGl0cyBjYWxsYmFja3MsIGZvciBleGFtcGxlIHdhaXRpbmcgZm9y
IGEgY2xvc2UoZmQpIHRvIGFjdHVhbGx5CnBlcmZvcm0gdGhlIGZwdXQoZmlscCkgYW5kIHNvIHRy
aWdnZXIgYWxsIHRoZSBjYWxsYmFja3Mgc3VjaCBhcyBjbG9zaW5nCkdFTSBjb250ZXh0cy4gVGhl
cmUgaXMgbm8gdHJpdmlhbCBtZWFucyBvZiB0cmlnZ2VyaW5nIGFuIFJDVSBiYXJyaWVyCmZyb20g
dXNlcnNwYWNlLCBzbyBhZGQgb25lIGZvciBvdXIgY29udmVuaWVuY2UgaW4KZGVidWdmcy9pOTE1
X2Ryb3BfY2FjaGVzCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy53aWxsaWFtLmF1bGRAZ21haWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIHwgNyArKysrKyst
CiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2RlYnVnZnMuYwppbmRleCAyOWM5MThhMTU4MGUuLmM3ZmM0MDJiZDhmMyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKQEAgLTM1MTMsNiArMzUxMyw3IEBAIERF
RklORV9TSU1QTEVfQVRUUklCVVRFKGk5MTVfd2VkZ2VkX2ZvcHMsCiAjZGVmaW5lIERST1BfSURM
RQlCSVQoNikKICNkZWZpbmUgRFJPUF9SRVNFVF9BQ1RJVkUJQklUKDcpCiAjZGVmaW5lIERST1Bf
UkVTRVRfU0VRTk8JQklUKDgpCisjZGVmaW5lIERST1BfUkNVCUJJVCg5KQogI2RlZmluZSBEUk9Q
X0FMTCAoRFJPUF9VTkJPVU5ECXwgXAogCQkgIERST1BfQk9VTkQJfCBcCiAJCSAgRFJPUF9SRVRJ
UkUJfCBcCkBAIC0zNTIxLDcgKzM1MjIsOCBAQCBERUZJTkVfU0lNUExFX0FUVFJJQlVURShpOTE1
X3dlZGdlZF9mb3BzLAogCQkgIERST1BfU0hSSU5LX0FMTCB8XAogCQkgIERST1BfSURMRQl8IFwK
IAkJICBEUk9QX1JFU0VUX0FDVElWRSB8IFwKLQkJICBEUk9QX1JFU0VUX1NFUU5PKQorCQkgIERS
T1BfUkVTRVRfU0VRTk8gfCBcCisJCSAgRFJPUF9SQ1UpCiBzdGF0aWMgaW50CiBpOTE1X2Ryb3Bf
Y2FjaGVzX2dldCh2b2lkICpkYXRhLCB1NjQgKnZhbCkKIHsKQEAgLTM1NzMsNiArMzU3NSw5IEBA
IGk5MTVfZHJvcF9jYWNoZXNfc2V0KHZvaWQgKmRhdGEsIHU2NCB2YWwpCiAJCWk5MTVfZ2VtX3No
cmlua19hbGwoaTkxNSk7CiAJZnNfcmVjbGFpbV9yZWxlYXNlKEdGUF9LRVJORUwpOwogCisJaWYg
KHZhbCAmIERST1BfUkNVKQorCQlyY3VfYmFycmllcigpOworCiAJaWYgKHZhbCAmIERST1BfRlJF
RUQpCiAJCWk5MTVfZ2VtX2RyYWluX2ZyZWVkX29iamVjdHMoaTkxNSk7CiAKLS0gCjIuMjMuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
