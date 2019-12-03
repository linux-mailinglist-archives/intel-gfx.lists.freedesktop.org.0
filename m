Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1CDF10FD72
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 13:13:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACA836E48F;
	Tue,  3 Dec 2019 12:13:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07D5F6E48F
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 12:13:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19441101-1500050 
 for multiple; Tue, 03 Dec 2019 12:13:15 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Dec 2019 12:13:15 +0000
Message-Id: <20191203121316.2972257-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Drop inspection of execbuf flags
 during evict
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

V2l0aCB0aGUgZ29hbCBvZiByZW1vdmluZyB0aGUgc2VyaWFsaXNhdGlvbiBmcm9tIGFyb3VuZCBl
eGVjYnVmLCB3ZSB3aWxsCm5vIGxvbmdlciBoYXZlIHRoZSBwcml2aWxlZ2Ugb2YgdGhlcmUgYmVp
bmcgYSBzaW5nbGUgZXhlY2J1ZiBpbiBmbGlnaHQKYXQgYW55IHRpbWUgYW5kIHNvIHdpbGwgb25s
eSBiZSBhYmxlIHRvIGluc3BlY3QgdGhlIHVzZXIncyBmbGFncyB3aXRoaW4KdGhlIGNhcmVmdWxs
eSBjb250cm9sbGVkIGV4ZWNidWYgY29udGV4dC4gaTkxNV9nZW1fZXZpY3RfZm9yX25vZGUoKSBp
cwp0aGUgb25seSB1c2VyIG91dHNpZGUgb2YgZXhlY2J1ZiB0aGF0IGN1cnJlbnRseSBwZWVrcyBh
dCB0aGUgZmxhZyB0bwpjb252ZXJ0IGFuIG92ZXJsYXBwaW5nIHNvZnRwaW5uZWQgcmVxdWVzdCBm
cm9tIEVOT1NQQyB0byBFSU5WQUwuIFJldHJhY3QKdGhpcyBuaWNldHkgYW5kIG9ubHkgcmVwb3J0
IEVOT1NQQyBpZiB0aGUgbG9jYXRpb24gaXMgaW4gY3VycmVudCB1c2UsCmVpdGhlciBkdWUgdG8g
dGhpcyBleGVjYnVmIG9yIGFub3RoZXIuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRp
bmVuQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFz
LmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbV9ldmljdC5jIHwgMTUgKysrKysrLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNl
cnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2V2aWN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ldmlj
dC5jCmluZGV4IDdlNjJjMzEwMjkwZi4uMTM5NTAxOGM2NTdhIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ldmljdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2V2aWN0LmMKQEAgLTI5Miw3ICsyOTIsOCBAQCBpbnQgaTkxNV9nZW1fZXZpY3Rf
Zm9yX25vZGUoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCiAJCUdFTV9CVUdfT04oIWRy
bV9tbV9ub2RlX2FsbG9jYXRlZChub2RlKSk7CiAJCXZtYSA9IGNvbnRhaW5lcl9vZihub2RlLCB0
eXBlb2YoKnZtYSksIG5vZGUpOwogCi0JCS8qIElmIHdlIGFyZSB1c2luZyBjb2xvcmluZyB0byBp
bnNlcnQgZ3VhcmQgcGFnZXMgYmV0d2VlbgorCQkvKgorCQkgKiBJZiB3ZSBhcmUgdXNpbmcgY29s
b3JpbmcgdG8gaW5zZXJ0IGd1YXJkIHBhZ2VzIGJldHdlZW4KIAkJICogZGlmZmVyZW50IGNhY2hl
IGRvbWFpbnMgd2l0aGluIHRoZSBhZGRyZXNzIHNwYWNlLCB3ZSBoYXZlCiAJCSAqIHRvIGNoZWNr
IHdoZXRoZXIgdGhlIG9iamVjdHMgb24gZWl0aGVyIHNpZGUgb2Ygb3VyIHJhbmdlCiAJCSAqIGFi
dXR0IGFuZCBjb25mbGljdC4gSWYgdGhleSBhcmUgaW4gY29uZmxpY3QsIHRoZW4gd2UgZXZpY3QK
QEAgLTMwOSwyMiArMzEwLDE4IEBAIGludCBpOTE1X2dlbV9ldmljdF9mb3Jfbm9kZShzdHJ1Y3Qg
aTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKIAkJCX0KIAkJfQogCi0JCWlmIChmbGFncyAmIFBJTl9O
T05CTE9DSyAmJgotCQkgICAgKGk5MTVfdm1hX2lzX3Bpbm5lZCh2bWEpIHx8IGk5MTVfdm1hX2lz
X2FjdGl2ZSh2bWEpKSkgeworCQlpZiAoaTkxNV92bWFfaXNfcGlubmVkKHZtYSkpIHsKIAkJCXJl
dCA9IC1FTk9TUEM7CiAJCQlicmVhazsKIAkJfQogCi0JCS8qIE92ZXJsYXAgb2Ygb2JqZWN0cyBp
biB0aGUgc2FtZSBiYXRjaD8gKi8KLQkJaWYgKGk5MTVfdm1hX2lzX3Bpbm5lZCh2bWEpKSB7CisJ
CWlmIChmbGFncyAmIFBJTl9OT05CTE9DSyAmJiBpOTE1X3ZtYV9pc19hY3RpdmUodm1hKSkgewog
CQkJcmV0ID0gLUVOT1NQQzsKLQkJCWlmICh2bWEtPmV4ZWNfZmxhZ3MgJiYKLQkJCSAgICAqdm1h
LT5leGVjX2ZsYWdzICYgRVhFQ19PQkpFQ1RfUElOTkVEKQotCQkJCXJldCA9IC1FSU5WQUw7CiAJ
CQlicmVhazsKIAkJfQogCi0JCS8qIE5ldmVyIHNob3cgZmVhciBpbiB0aGUgZmFjZSBvZiBkcmFn
b25zIQorCQkvKgorCQkgKiBOZXZlciBzaG93IGZlYXIgaW4gdGhlIGZhY2Ugb2YgZHJhZ29ucyEK
IAkJICoKIAkJICogV2UgY2Fubm90IGRpcmVjdGx5IHJlbW92ZSB0aGlzIG5vZGUgZnJvbSB3aXRo
aW4gdGhpcwogCQkgKiBpdGVyYXRvciBhbmQgYXMgd2l0aCBpOTE1X2dlbV9ldmljdF9zb21ldGhp
bmcoKSB3ZSBlbXBsb3kKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
