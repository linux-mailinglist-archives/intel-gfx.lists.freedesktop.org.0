Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FFF8B48B3
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 10:00:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FFB06EB30;
	Tue, 17 Sep 2019 08:00:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFD6E6EB30
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 08:00:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18515043-1500050 
 for multiple; Tue, 17 Sep 2019 09:00:30 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Sep 2019 09:00:29 +0100
Message-Id: <20190917080029.27632-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Only apply a rmw mmio update if the
 value changes
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

SWYgd2UgdHJ5IHRvIGNsZWFyLCBvciBldmVuIHNldCwgYSBiaXQgaW4gdGhlIHJlZ2lzdGVyIHRo
YXQgZG9lc24ndApjaGFuZ2UgdGhlIHJlZ2lzdGVyIHN0YXRlOyBza2lwIHRoZSB3cml0ZS4gVGhl
cmUncyBhIHNsaWdodCBkYW5nZXIgaW4KdGhhdCB0aGUgcmVnaXN0ZXIgYWN0cyBhcyBhIGxhdGNo
LW9uLXdyaXRlLCBidXQgSSBkbyBub3QgdGhpbmsgd2UgdXNlIGEKcm13IGN5Y2xlIHdpdGggYW55
IHN1Y2ggbGF0Y2ggcmVnaXN0ZXJzLgoKU3VnZ2VzdGVkLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1
cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IERhbmllbGUgQ2VyYW9sbyBT
cHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+CkNjOiBUdnJ0a28gVXJzdWxp
biA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3VuY29yZS5oIHwgMjAgKysrKysrKysrKy0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAx
MCBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Vu
Y29yZS5oCmluZGV4IDQxNGZjMmNiMDQ1OS4uZGNmYTI0Mzg5MmM2IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF91bmNvcmUuaApAQCAtMzc4LDIzICszNzgsMjMgQEAgaW50ZWxfdW5jb3JlX3JlYWQ2
NF8yeDMyKHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSwKIHN0YXRpYyBpbmxpbmUgdm9pZCBp
bnRlbF91bmNvcmVfcm13KHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSwKIAkJCQkgICAgaTkx
NV9yZWdfdCByZWcsIHUzMiBjbGVhciwgdTMyIHNldCkKIHsKLQl1MzIgdmFsOworCXUzMiBvbGQs
IHZhbDsKIAotCXZhbCA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgcmVnKTsKLQl2YWwgJj0g
fmNsZWFyOwotCXZhbCB8PSBzZXQ7Ci0JaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwgcmVnLCB2
YWwpOworCW9sZCA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgcmVnKTsKKwl2YWwgPSAob2xk
ICYgfmNsZWFyKSB8IHNldDsKKwlpZiAodmFsICE9IG9sZCkKKwkJaW50ZWxfdW5jb3JlX3dyaXRl
KHVuY29yZSwgcmVnLCB2YWwpOwogfQogCiBzdGF0aWMgaW5saW5lIHZvaWQgaW50ZWxfdW5jb3Jl
X3Jtd19mdyhzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUsCiAJCQkJICAgICAgIGk5MTVfcmVn
X3QgcmVnLCB1MzIgY2xlYXIsIHUzMiBzZXQpCiB7Ci0JdTMyIHZhbDsKKwl1MzIgb2xkLCB2YWw7
CiAKLQl2YWwgPSBpbnRlbF91bmNvcmVfcmVhZF9mdyh1bmNvcmUsIHJlZyk7Ci0JdmFsICY9IH5j
bGVhcjsKLQl2YWwgfD0gc2V0OwotCWludGVsX3VuY29yZV93cml0ZV9mdyh1bmNvcmUsIHJlZywg
dmFsKTsKKwlvbGQgPSBpbnRlbF91bmNvcmVfcmVhZF9mdyh1bmNvcmUsIHJlZyk7CisJdmFsID0g
KG9sZCAmIH5jbGVhcikgfCBzZXQ7CisJaWYgKHZhbCAhPSBvbGQpCisJCWludGVsX3VuY29yZV93
cml0ZV9mdyh1bmNvcmUsIHJlZywgdmFsKTsKIH0KIAogc3RhdGljIGlubGluZSBpbnQgaW50ZWxf
dW5jb3JlX3dyaXRlX2FuZF92ZXJpZnkoc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlLAotLSAK
Mi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
