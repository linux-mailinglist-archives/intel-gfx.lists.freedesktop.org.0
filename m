Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6B82CD164
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Dec 2020 09:40:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 241406E09C;
	Thu,  3 Dec 2020 08:40:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A238E6E09C;
 Thu,  3 Dec 2020 08:40:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23198367-1500050 
 for multiple; Thu, 03 Dec 2020 08:40:27 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Dec 2020 08:39:31 +0000
Message-Id: <20201203083931.1370591-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/api_intel_bb: Only assert objects
 are unmoved for full-ppgtt
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
Cc: igt-dev@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SWYgd2UgbGV0IGFuIG9iamVjdCBpZGxlIGluIGEgc2hhcmVkIEdUVCwgaXQgbWF5IGJlIGV2aWN0
ZWQgYnkgdGhlCmtlcm5lbCBpbiBmYXZvdXIgb2YgYW5vdGhlciBjbGllbnQuIFRodXMsIHdlIGhh
dmUgdG8gYmUgdmVyeSBjYXJlZnVsCndoZW4gYXNzZXJ0aW5nIHRoYXQgdHdvIGRpZmZlcmVudCBl
eGVjdXRpb25zIG9mIHRoZSBzYW1lIG9iamVjdCB3aWxsCmJlIGF0IHRoZSBzYW1lIGFkZHJlc3Mu
IElmIHRoZXJlJ3MgYW4gaWRsZSBwb2ludCBiZXR3ZWVuIHRoZSB0d28KYXNzZXJ0cywgaXQgd2ls
bCBvbmx5IGJlIGd1YXJhbnRlZWQgdG8gaG9sZCBmb3IgZnVsbC1wcGd0dC4KCkNsb3NlczogaHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy8yNzU0ClNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogWmJp
Z25pZXcgS2VtcGN6ecWEc2tpIDx6Ymlnbmlldy5rZW1wY3p5bnNraUBpbnRlbC5jb20+Ci0tLQog
dGVzdHMvaTkxNS9hcGlfaW50ZWxfYmIuYyB8IDE5ICsrKysrKysrKysrKysrKy0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L3Rlc3RzL2k5MTUvYXBpX2ludGVsX2JiLmMgYi90ZXN0cy9pOTE1L2FwaV9pbnRlbF9iYi5jCmlu
ZGV4IDBjYjMxOTJjYi4uMTg4MTRkMTRkIDEwMDY0NAotLS0gYS90ZXN0cy9pOTE1L2FwaV9pbnRl
bF9iYi5jCisrKyBiL3Rlc3RzL2k5MTUvYXBpX2ludGVsX2JiLmMKQEAgLTUwNSwxMCArNTA1LDIx
IEBAIHN0YXRpYyB2b2lkIGJsaXQoc3RydWN0IGJ1Zl9vcHMgKmJvcHMsCiAJaW50ZWxfYmJfZXhl
YyhpYmIsIGludGVsX2JiX29mZnNldChpYmIpLCBmbGFncywgdHJ1ZSk7CiAJY2hlY2tfYnVmKGRz
dCwgQ09MT1JfNzcpOwogCi0JcG9mZjJfc3JjID0gaW50ZWxfYmJfZ2V0X29iamVjdF9vZmZzZXQo
aWJiLCBzcmMtPmhhbmRsZSk7Ci0JcG9mZjJfZHN0ID0gaW50ZWxfYmJfZ2V0X29iamVjdF9vZmZz
ZXQoaWJiLCBkc3QtPmhhbmRsZSk7Ci0JaWd0X2Fzc2VydChwb2ZmX3NyYyA9PSBwb2ZmMl9zcmMp
OwotCWlndF9hc3NlcnQocG9mZl9kc3QgPT0gcG9mZjJfZHN0KTsKKwkvKgorCSAqIFNpbmNlIHdl
IGxldCB0aGUgb2JqZWN0cyBpZGxlLCBpZiB0aGUgR1RUIGlzIHNoYXJlZCBhbm90aGVyIGNsaWVu
dAorCSAqIGlzIGxpYWJsZSB0byByZXVzZSBvdXIgb2Zmc2V0cyBmb3IgdGhlbXNlbHZlcywgY2F1
c2luZyB1cyB0byBoYXZlCisJICogdG8gcmVsb2NhdGUuIFdlIGRvbid0IGV4cGVjdCB0aGlzIHRv
IGhhcHBlbiBhcyBMUlUgZXZpY3Rpb24gc2hvdWxkCisJICogdHJ5IHRvIGF2b2lkIHJldXNlLCBi
dXQgd2UgdXNlIHJhbmRvbSBldmljdGlvbiBpbnN0ZWFkIGFzIGl0IGlzCisJICogbXVjaCBxdWlj
a2VyISBHaXZlbiB0aGF0IHRoZSBrZXJuZWwgaXMgKmFsbG93ZWQqIHRvIHJlbG9jYXRlIG9iamVj
dHMsCisJICogd2UgY2Fubm90IGFzc2VydCB0aGF0IHRoZSBvYmplY3RzIHJlbWFpbiBpbiB0aGUg
c2FtZSBsb2NhdGlvbiwgdW5sZXNzCisJICogd2UgYXJlIGluIGZ1bGwgY29udHJvbCBvZiBvdXIg
b3duIEdUVC4KKwkgKi8KKwlpZiAoZ2VtX3VzZXNfZnVsbF9wcGd0dChpOTE1KSkgeworCQlpZ3Rf
YXNzZXJ0X2VxX3U2NChpbnRlbF9iYl9nZXRfb2JqZWN0X29mZnNldChpYmIsIHNyYy0+aGFuZGxl
KSwKKwkJCQkgIHBvZmZfc3JjKTsKKwkJaWd0X2Fzc2VydF9lcV91NjQoaW50ZWxfYmJfZ2V0X29i
amVjdF9vZmZzZXQoaWJiLCBkc3QtPmhhbmRsZSksCisJCQkJICBwb2ZmX2RzdCk7CisJfQogCiAJ
aW50ZWxfYnVmX2Rlc3Ryb3koc3JjKTsKIAlpbnRlbF9idWZfZGVzdHJveShkc3QpOwotLSAKMi4y
OS4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
