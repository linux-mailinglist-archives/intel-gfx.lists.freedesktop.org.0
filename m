Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9255E827
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 17:52:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F3DB6E169;
	Wed,  3 Jul 2019 15:52:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9EDB6E169
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 15:52:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17117751-1500050 
 for multiple; Wed, 03 Jul 2019 16:52:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jul 2019 16:52:23 +0100
Message-Id: <20190703155225.9501-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190703155225.9501-1-chris@chris-wilson.co.uk>
References: <20190703155225.9501-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/gt: Use caller provided forcewake
 for intel_mocs_init_engine
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

RHVyaW5nIHBvc3QtcmVzZXQgcmVzdW1lLCB3ZSBjYWxsIGludGVsX21vY3NfaW5pdF9lbmdpbmUg
dG8gcmVpbml0aWFsaXNlCnRoZSBNT0NTIHJlZ2lzdGVycy4gU3VwcmlzaW5nbHksIGVzcGVjaWFs
bHkgd2hlbiBlbmhhbmNlZCBieSBsb2NrZGVwLAp0aGUgYWNxdWlzaXRpb24gb2YgdGhlIGZvcmNl
d2FrZSBsb2NrIGFyb3VuZCBlYWNoIHJlZ2lzdGVyIHdyaXRlIHRha2VzIGEKc3Vic3RhbnRpYWwg
cG9ydGlvbiBvZiB0aGUgcmVzZXQgdGltZS4gV2UgZG9uJ3QgbmVlZCB0byB1c2UgdGhlCmluZGl2
aWR1YWwgZm9yY2V3YWtlIGhlcmUgYXMgd2UgY2FuIGFzc3VtZSB0aGF0IHRoZSBjYWxsZXIgaXMg
aG9sZGluZyBhCmJsYW5rZXQgZm9yY2V3YWtlIGZvciB0aGUgcmVzZXQmcmVzdW1lIGFuZCB0aGUg
cmVzdW1lIGlzIHNlcmlhbGlzZWQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28u
dXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9j
cy5jIHwgMTUgKysrKysrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCsp
LCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX21vY3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYwppbmRleCBh
ZTZjYmYwZDUxN2MuLjI5MGE1ZTliOTBiOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbW9jcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21v
Y3MuYwpAQCAtMzQ2LDYgKzM0Niw5IEBAIHZvaWQgaW50ZWxfbW9jc19pbml0X2VuZ2luZShzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJdW5zaWduZWQgaW50IGluZGV4OwogCXUzMiB1
bnVzZWRfdmFsdWU7CiAKKwkvKiBDYWxsZWQgdW5kZXIgYSBibGFua2V0IGZvcmNld2FrZSAqLwor
CWFzc2VydF9mb3JjZXdha2VzX2FjdGl2ZSh1bmNvcmUsIEZPUkNFV0FLRV9BTEwpOworCiAJaWYg
KCFnZXRfbW9jc19zZXR0aW5ncyhndCwgJnRhYmxlKSkKIAkJcmV0dXJuOwogCkBAIC0zNTUsMTYg
KzM1OCwxNiBAQCB2b2lkIGludGVsX21vY3NfaW5pdF9lbmdpbmUoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lKQogCWZvciAoaW5kZXggPSAwOyBpbmRleCA8IHRhYmxlLnNpemU7IGluZGV4
KyspIHsKIAkJdTMyIHZhbHVlID0gZ2V0X2VudHJ5X2NvbnRyb2woJnRhYmxlLCBpbmRleCk7CiAK
LQkJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwKLQkJCQkgICBtb2NzX3JlZ2lzdGVyKGVuZ2lu
ZS0+aWQsIGluZGV4KSwKLQkJCQkgICB2YWx1ZSk7CisJCWludGVsX3VuY29yZV93cml0ZV9mdyh1
bmNvcmUsCisJCQkJICAgICAgbW9jc19yZWdpc3RlcihlbmdpbmUtPmlkLCBpbmRleCksCisJCQkJ
ICAgICAgdmFsdWUpOwogCX0KIAogCS8qIEFsbCByZW1haW5pbmcgZW50cmllcyBhcmUgYWxzbyB1
bnVzZWQgKi8KIAlmb3IgKDsgaW5kZXggPCB0YWJsZS5uX2VudHJpZXM7IGluZGV4KyspCi0JCWlu
dGVsX3VuY29yZV93cml0ZSh1bmNvcmUsCi0JCQkJICAgbW9jc19yZWdpc3RlcihlbmdpbmUtPmlk
LCBpbmRleCksCi0JCQkJICAgdW51c2VkX3ZhbHVlKTsKKwkJaW50ZWxfdW5jb3JlX3dyaXRlX2Z3
KHVuY29yZSwKKwkJCQkgICAgICBtb2NzX3JlZ2lzdGVyKGVuZ2luZS0+aWQsIGluZGV4KSwKKwkJ
CQkgICAgICB1bnVzZWRfdmFsdWUpOwogfQogCiAvKioKLS0gCjIuMjAuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
