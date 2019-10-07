Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26319CDE50
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 11:39:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74C6D6E506;
	Mon,  7 Oct 2019 09:39:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F0576E506
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 09:39:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18748805-1500050 
 for multiple; Mon, 07 Oct 2019 10:38:40 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Oct 2019 10:38:39 +0100
Message-Id: <20191007093839.25660-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Note the addition of timeslicing to
 the pretend scheduler
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

U2luY2Ugd3JpdGluZyB0aGUgY29tbWVudCB0aGF0IHRoZSBzY2hlZHVsZXIgaXMgZW50aXJlbHkg
cGFzc2l2ZSwgd2UndmUKYWRkZWQgbWluaW1hbCB0aW1lc2xpY2luZyB3aGljaCBhZGRzIHRoZSBt
b3N0IHByaW1pdGl2ZSBvZiBhY3RpdmUKZWxlbWVudHMgKGEgdGltZW91dCBhbmQgcmVzY2hlZHVs
ZSkuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+CkNj
OiBSYW1hbGluZ2FtIEMgPHJhbWFsaW5nYW0uY0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXJfdHlwZXMuaCB8IDkgKysrKysrKysrCiAxIGZpbGUgY2hh
bmdlZCwgOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9zY2hlZHVsZXJfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1
bGVyX3R5cGVzLmgKaW5kZXggYWFkODFhY2JhOWRjLi5kMThlNzA1NTAwNTQgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1bGVyX3R5cGVzLmgKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXJfdHlwZXMuaApAQCAtNDksNiArNDksMTUgQEAg
c3RydWN0IGk5MTVfc2NoZWRfYXR0ciB7CiAgKiBEQUcgb2YgZWFjaCByZXF1ZXN0LCB3ZSBhcmUg
YWJsZSB0byBpbnNlcnQgaXQgaW50byBhIHNvcnRlZCBxdWV1ZSB3aGVuIGl0CiAgKiBpcyByZWFk
eSwgYW5kIGFyZSBhYmxlIHRvIHJlb3JkZXIgaXRzIHBvcnRpb24gb2YgdGhlIGdyYXBoIHRvIGFj
Y29tbW9kYXRlCiAgKiBkeW5hbWljIHByaW9yaXR5IGNoYW5nZXMuCisgKgorICogT2ssIHRoZXJl
IGlzIG5vdyBvbmUgYWN0aXZlIGVsZW1lbnQgdG8gdGhlICJzY2hlZHVsZXIiIGluIHRoZSBiYWNr
ZW5kcy4KKyAqIFdlIGxldCBhIG5ldyBjb250ZXh0IHJ1biBmb3IgYSBzbWFsbCBhbW91bnQgb2Yg
dGltZSBiZWZvcmUgcmUtZXZhbHVhdGluZworICogdGhlIHJ1biBvcmRlci4gQXMgd2UgcmUtZXZh
bHVhdGUsIHdlIG1haW50YWluIHRoZSBzdHJpY3Qgb3JkZXJpbmcgb2YKKyAqIGRlcGVuZGVuY2ll
cywgYnV0IGF0dGVtcHQgdG8gcm90YXRlIHRoZSBhY3RpdmUgY29udGV4dHMgKHRoZSBjdXJyZW50
IGNvbnRleHQKKyAqIGlzIHB1dCB0byB0aGUgYmFjayBvZiBpdHMgcHJpb3JpdHkgcXVldWUsIHRo
ZW4gcmVzaHVmZmxpbmcgaXRzIGRlcGVuZGVudHMpLgorICogVGhpcyBwcm92aWRlcyBtaW5pbWFs
IHRpbWVzbGljaW5nIGFuZCBwcmV2ZW50cyBhIHVzZXJzcGFjZSBob2cgKGUuZy4KKyAqIHNvbWV0
aGluZyB3YWl0aW5nIG9uIGEgdXNlciBzZW1hcGhvcmUgW1ZrRXZlbnRdKSBmcm9tIGRlbnlpbmcg
c2VydmljZSB0bworICogb3RoZXJzLgogICovCiBzdHJ1Y3QgaTkxNV9zY2hlZF9ub2RlIHsKIAlz
dHJ1Y3QgbGlzdF9oZWFkIHNpZ25hbGVyc19saXN0OyAvKiB0aG9zZSBiZWZvcmUgdXMsIHdlIGRl
cGVuZCB1cG9uICovCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
