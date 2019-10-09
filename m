Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFFBD0B27
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 11:29:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B85876E94B;
	Wed,  9 Oct 2019 09:29:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7435B6E94B
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 09:29:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18774667-1500050 
 for multiple; Wed, 09 Oct 2019 10:28:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Oct 2019 10:28:52 +0100
Message-Id: <20191009092852.27048-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Prevent merging requests
 with conflicting flags
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

V2Ugc2V0IG91dC1vZi1ib3VuZCBwYXJhbWV0ZXJzIGluc2lkZSB0aGUgaTkxNV9yZXF1ZXN0cy5m
bGFncyBmaWVsZCwKc3VjaCBhcyBkaXNhYmxpbmcgcHJlZW1wdGlvbiBvciBtYXJraW5nIHRoZSBl
bmQtb2YtY29udGV4dC4gV2Ugc2hvdWxkCm5vdCBjb2FsZXNjZSBjb25zZWN1dGl2ZSByZXF1ZXN0
cyBpZiB0aGV5IGhhdmUgZGlmZmVyaW5nIGluc3RydWN0aW9ucwphcyB3ZSBvbmx5IGluc3BlY3Qg
dGhlIGxhc3QgYWN0aXZlIHJlcXVlc3QgaW4gYSBjb250ZXh0LiBUaHVzIGlmIHdlCmFsbG93IGEg
bGF0ZXIgcmVxdWVzdCB0byBiZSBtZXJnZWQgaW50byB0aGUgc2FtZSBleGVjdXRpb24gY29udGV4
dCwgaXQKd2lsbCBtYXNrIGFueSBvZiB0aGUgZWFybGllciBmbGFncy4KClJlZmVyZW5jZXM6IDJh
OThmNGU2NWJiYSAoImRybS9pOTE1OiBhZGQgaW5mcmFzdHJ1Y3R1cmUgdG8gaG9sZCBvZmYgcHJl
ZW1wdGlvbiBvbiBhIHJlcXVlc3QiKQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KQ2M6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5k
d2VybGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
YyB8IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYwppbmRleCA2ZGI3NjJjNTA5YjguLjJlNTE5MmE5ZTc5NiAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTEyMzMsNiArMTIzMyw5IEBAIHN0YXRpYyBi
b29sIGNhbl9tZXJnZV9ycShjb25zdCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpwcmV2LAogCWlmIChp
OTE1X3JlcXVlc3RfY29tcGxldGVkKG5leHQpKQogCQlyZXR1cm4gdHJ1ZTsKIAorCWlmICh1bmxp
a2VseShwcmV2LT5mbGFncyBeIG5leHQtPmZsYWdzKSkKKwkJcmV0dXJuIGZhbHNlOworCiAJaWYg
KCFjYW5fbWVyZ2VfY3R4KHByZXYtPmh3X2NvbnRleHQsIG5leHQtPmh3X2NvbnRleHQpKQogCQly
ZXR1cm4gZmFsc2U7CiAKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
