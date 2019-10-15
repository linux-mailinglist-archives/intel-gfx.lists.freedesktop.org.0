Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EED1D72B6
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 12:02:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22F5D6E7AB;
	Tue, 15 Oct 2019 10:02:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 136916E7A3
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 10:02:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18841837-1500050 
 for multiple; Tue, 15 Oct 2019 11:01:57 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 11:01:55 +0100
Message-Id: <20191015100155.10376-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Remove leftover
 vma->obj->pages_pin_count on insert/remove
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2Ugbm93IGRvIHRoZSBwYWdlIHBpbiBjb3VudCB1cGZyb250IGluIHZtYV9nZXRfcGFnZXMvdm1h
X3B1dF9wYWdlcywgc28KdGhhdCB3ZSBkbyB0aGUgYWxsb2NhdGlvbnMgYmVmb3JlIHdlIGVudGVy
IHRoZSB2bS0+bXV0ZXguIFRoZW4gb3VyIHZtYQpwYWdlIHJlZmVyZW5jZXMgYXJlIHRyYWNraW5n
IGluIHZtYS0+cGFnZXNfY291bnQgYW5kIHRoZSBleHRyYQpvYmotPnBhZ2VzX3Bpbl9jb3VudCBi
ZWluZyBwZXJmb3JtZWQgaW4gaTkxNV92bWFfaW5zZXJ0L2k5MTVfdm1hX3JlbW92ZQppcyByZWR1
bmRhbnQsIGFuZCB3b3JzZSB0aHJvd3Mgb2ZmIHRoZSBzaHJpbmtlcidzIGxvZ2ljIG9uIHdoZW4g
aXQgY2FuCmZyZWUgYW4gb2JqZWN0IGJ5IHVuYmluZGluZyBpdC4KClJlcG9ydGVkLWJ5OiBNYXR0
aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3
LmF1bGRAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMgfCA1
ICstLS0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDQgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfdm1hLmMKaW5kZXggN2Q5MzYyNTRiZGU3Li5lOTBjNGQwYWY4ZmQgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV92bWEuYwpAQCAtNzAzLDcgKzcwMyw2IEBAIGk5MTVfdm1hX2luc2Vy
dChzdHJ1Y3QgaTkxNV92bWEgKnZtYSwgdTY0IHNpemUsIHU2NCBhbGlnbm1lbnQsIHU2NCBmbGFn
cykKIAlsaXN0X2FkZF90YWlsKCZ2bWEtPnZtX2xpbmssICZ2bWEtPnZtLT5ib3VuZF9saXN0KTsK
IAogCWlmICh2bWEtPm9iaikgewotCQlhdG9taWNfaW5jKCZ2bWEtPm9iai0+bW0ucGFnZXNfcGlu
X2NvdW50KTsKIAkJYXRvbWljX2luYygmdm1hLT5vYmotPmJpbmRfY291bnQpOwogCQlhc3NlcnRf
YmluZF9jb3VudCh2bWEtPm9iaik7CiAJfQpAQCAtNzI2LDE0ICs3MjUsMTIgQEAgaTkxNV92bWFf
cmVtb3ZlKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQogCWlmICh2bWEtPm9iaikgewogCQlzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqID0gdm1hLT5vYmo7CiAKLQkJYXRvbWljX2RlYygmb2Jq
LT5iaW5kX2NvdW50KTsKLQogCQkvKgogCQkgKiBBbmQgZmluYWxseSBub3cgdGhlIG9iamVjdCBp
cyBjb21wbGV0ZWx5IGRlY291cGxlZCBmcm9tIHRoaXMKIAkJICogdm1hLCB3ZSBjYW4gZHJvcCBp
dHMgaG9sZCBvbiB0aGUgYmFja2luZyBzdG9yYWdlIGFuZCBhbGxvdwogCQkgKiBpdCB0byBiZSBy
ZWFwZWQgYnkgdGhlIHNocmlua2VyLgogCQkgKi8KLQkJaTkxNV9nZW1fb2JqZWN0X3VucGluX3Bh
Z2VzKG9iaik7CisJCWF0b21pY19kZWMoJm9iai0+YmluZF9jb3VudCk7CiAJCWFzc2VydF9iaW5k
X2NvdW50KG9iaik7CiAJfQogCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
