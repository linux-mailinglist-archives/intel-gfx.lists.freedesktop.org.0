Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22592A3964
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 16:40:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5EAA6E34D;
	Fri, 30 Aug 2019 14:40:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18CE16E34D
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 14:40:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18319176-1500050 
 for multiple; Fri, 30 Aug 2019 15:40:10 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2019 15:40:09 +0100
Message-Id: <20190830144009.8246-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/perf: Assert locking for
 i915_init_oa_perf_state()
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

V2UgdXNlIHRoZSBjb250ZXh0LT5waW5fbXV0ZXggdG8gc2VyaWFsaXNlIHVwZGF0ZXMgdG8gdGhl
IE9BIGNvbmZpZyBhbmQKdGhlIHJlZ2lzdGVycyB2YWx1ZXMgd3JpdHRlbiBpbnRvIGVhY2ggbmV3
IGNvbnRleHQuIERvY3VtZW50IHRoaXMKcmVsYXRpb25zaGlwIGFuZCBhc3NlcnQgd2UgZG8gaG9s
ZCB0aGUgY29udGV4dC0+cGluX211dGV4IGFzIHVzZWQgYnkKZ2VuOF9jb25maWd1cmVfYWxsX2Nv
bnRleHRzKCkgdG8gc2VyaWFsaXNlIHVwZGF0ZXMgdG8gdGhlIE9BIGNvbmZpZwppdHNlbGYuCgpT
aWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6
IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyB8IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwg
MyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9w
ZXJmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwppbmRleCAyYzlmNDZlMTI2
MjIuLmMxYjc2NDIzMzc2MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9w
ZXJmLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKQEAgLTIzMDUsNiAr
MjMwNSw5IEBAIHZvaWQgaTkxNV9vYV9pbml0X3JlZ19zdGF0ZShzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmUsCiB7CiAJc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbTsKIAorCS8q
IHBlcmYuZXhjbHVzaXZlX3N0cmVhbSBzZXJpYWxpc2VkIGJ5IGdlbjhfY29uZmlndXJlX2FsbF9j
b250ZXh0cygpICovCisJbG9ja2RlcF9hc3NlcnRfaGVsZCgmY2UtPnBpbl9tdXRleCk7CisKIAlp
ZiAoZW5naW5lLT5jbGFzcyAhPSBSRU5ERVJfQ0xBU1MpCiAJCXJldHVybjsKIAotLSAKMi4yMy4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
