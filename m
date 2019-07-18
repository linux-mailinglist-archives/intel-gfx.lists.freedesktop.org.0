Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B016D084
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 16:54:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 819DE6E3EE;
	Thu, 18 Jul 2019 14:54:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6323C6E3EE
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 14:54:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17402282-1500050 
 for multiple; Thu, 18 Jul 2019 15:54:10 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Jul 2019 15:54:06 +0100
Message-Id: <20190718145407.21352-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190718145407.21352-1-chris@chris-wilson.co.uk>
References: <20190718145407.21352-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Flush all user surfaces prior to
 first use
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

U2luY2UgdXNlcnNwYWNlIGhhcyB0aGUgYWJpbGl0eSB0byBieXBhc3MgdGhlIENQVSBjYWNoZSBm
cm9tIHdpdGhpbiBpdHMKdW5wcml2aWxlZ2VkIGNvbW1hbmQgc3RyZWFtLCB3ZSBoYXZlIHRvIGZs
dXNoIHRoZSBDUFUgY2FjaGUgdG8gbWVtb3J5CmluIG9yZGVyIHRvIG92ZXJ3cml0ZSB0aGUgcHJl
dmlvdXMgY29udGVudHMgb24gY3JlYXRpb24uCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxh
aHRpbmVuQGxpbnV4LmludGVsLmNvbT4KQ2M6IHN0YWJsZXZnZXIua2VybmVsLm9yZwotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zaG1lbS5jIHwgMjYgKysrKysrLS0tLS0t
LS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDE5IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zaG1l
bS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3NobWVtLmMKaW5kZXggZDJh
MTE1ODg2OGU3Li5mNzUyYjMyNmQzOTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9zaG1lbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9zaG1lbS5jCkBAIC00NTksNyArNDU5LDYgQEAgaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9z
aG1lbShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdTY0IHNpemUpCiB7CiAJc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKIAlzdHJ1Y3QgYWRkcmVzc19zcGFjZSAqbWFwcGlu
ZzsKLQl1bnNpZ25lZCBpbnQgY2FjaGVfbGV2ZWw7CiAJZ2ZwX3QgbWFzazsKIAlpbnQgcmV0Owog
CkBAIC00OTgsMjQgKzQ5NywxMyBAQCBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3NobWVtKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1NjQgc2l6ZSkKIAlvYmotPndyaXRlX2RvbWFpbiA9
IEk5MTVfR0VNX0RPTUFJTl9DUFU7CiAJb2JqLT5yZWFkX2RvbWFpbnMgPSBJOTE1X0dFTV9ET01B
SU5fQ1BVOwogCi0JaWYgKEhBU19MTEMoaTkxNSkpCi0JCS8qIE9uIHNvbWUgZGV2aWNlcywgd2Ug
Y2FuIGhhdmUgdGhlIEdQVSB1c2UgdGhlIExMQyAodGhlIENQVQotCQkgKiBjYWNoZSkgZm9yIGFi
b3V0IGEgMTAlIHBlcmZvcm1hbmNlIGltcHJvdmVtZW50Ci0JCSAqIGNvbXBhcmVkIHRvIHVuY2Fj
aGVkLiAgR3JhcGhpY3MgcmVxdWVzdHMgb3RoZXIgdGhhbgotCQkgKiBkaXNwbGF5IHNjYW5vdXQg
YXJlIGNvaGVyZW50IHdpdGggdGhlIENQVSBpbgotCQkgKiBhY2Nlc3NpbmcgdGhpcyBjYWNoZS4g
IFRoaXMgbWVhbnMgaW4gdGhpcyBtb2RlIHdlCi0JCSAqIGRvbid0IG5lZWQgdG8gY2xmbHVzaCBv
biB0aGUgQ1BVIHNpZGUsIGFuZCBvbiB0aGUKLQkJICogR1BVIHNpZGUgd2Ugb25seSBuZWVkIHRv
IGZsdXNoIGludGVybmFsIGNhY2hlcyB0bwotCQkgKiBnZXQgZGF0YSB2aXNpYmxlIHRvIHRoZSBD
UFUuCi0JCSAqCi0JCSAqIEhvd2V2ZXIsIHdlIG1haW50YWluIHRoZSBkaXNwbGF5IHBsYW5lcyBh
cyBVQywgYW5kIHNvCi0JCSAqIG5lZWQgdG8gcmViaW5kIHdoZW4gZmlyc3QgdXNlZCBhcyBzdWNo
LgotCQkgKi8KLQkJY2FjaGVfbGV2ZWwgPSBJOTE1X0NBQ0hFX0xMQzsKLQllbHNlCi0JCWNhY2hl
X2xldmVsID0gSTkxNV9DQUNIRV9OT05FOwotCi0JaTkxNV9nZW1fb2JqZWN0X3NldF9jYWNoZV9j
b2hlcmVuY3kob2JqLCBjYWNoZV9sZXZlbCk7CisJLyoKKwkgKiBOb3RlIHRoYXQgdXNlcnNwYWNl
IGhhcyBjb250cm9sIG92ZXIgY2FjaGUtYnlwYXNzCisJICogdmlhIGl0cyBjb21tYW5kIHN0cmVh
bSwgc28gZXZlbiBvbiBMTEMgYXJjaGl0ZWN0dXJlcworCSAqIHdlIGhhdmUgdG8gZmx1c2ggb3V0
IHRoZSBDUFUgY2FjaGUgdG8gbWVtb3J5IHRvCisJICogY2xlYXIgcHJldmlvdXMgY29udGVudHMu
CisJICovCisJaTkxNV9nZW1fb2JqZWN0X3NldF9jYWNoZV9jb2hlcmVuY3kob2JqLCBJOTE1X0NB
Q0hFX05PTkUpOwogCiAJdHJhY2VfaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZShvYmopOwogCi0tIAoy
LjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
