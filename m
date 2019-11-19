Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8F91021B6
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 11:09:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84CAC6E936;
	Tue, 19 Nov 2019 10:09:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4A5B6E92D
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 10:09:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19255160-1500050 
 for multiple; Tue, 19 Nov 2019 10:09:32 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Nov 2019 10:09:21 +0000
Message-Id: <20191119100929.2628356-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191119100929.2628356-1-chris@chris-wilson.co.uk>
References: <20191119100929.2628356-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/17] drm/i915: Wait until the intel_wakeref
 idle callback is complete
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

V2hlbiB3YWl0aW5nIGZvciBpZGxlLCBzZXJpYWxpc2Ugd2l0aCBhbnkgb25nb2luZyBjYWxsYmFj
ayBzbyB0aGF0IGl0CndpbGwgaGF2ZSBjb21wbGV0ZWQgYmVmb3JlIGNvbXBsZXRpbmcgdGhlIHdh
aXQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93YWtlcmVmLmMgfCAxMSArKysrKysr
KystLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93YWtlcmVmLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF93YWtlcmVmLmMKaW5kZXggOWIyOTE3NmNjMWNhLi45MWZlYjUz
YjI5NDIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93YWtlcmVmLmMKQEAgLTEwOSw4ICsxMDks
MTUgQEAgdm9pZCBfX2ludGVsX3dha2VyZWZfaW5pdChzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2Ys
CiAKIGludCBpbnRlbF93YWtlcmVmX3dhaXRfZm9yX2lkbGUoc3RydWN0IGludGVsX3dha2VyZWYg
KndmKQogewotCXJldHVybiB3YWl0X3Zhcl9ldmVudF9raWxsYWJsZSgmd2YtPndha2VyZWYsCi0J
CQkJICAgICAgICFpbnRlbF93YWtlcmVmX2lzX2FjdGl2ZSh3ZikpOworCWludCBlcnI7CisKKwll
cnIgPSB3YWl0X3Zhcl9ldmVudF9raWxsYWJsZSgmd2YtPndha2VyZWYsCisJCQkJICAgICAgIWlu
dGVsX3dha2VyZWZfaXNfYWN0aXZlKHdmKSk7CisJaWYgKGVycikKKwkJcmV0dXJuIGVycjsKKwor
CWludGVsX3dha2VyZWZfdW5sb2NrX3dhaXQod2YpOworCXJldHVybiAwOwogfQogCiBzdGF0aWMg
dm9pZCB3YWtlcmVmX2F1dG9fdGltZW91dChzdHJ1Y3QgdGltZXJfbGlzdCAqdCkKLS0gCjIuMjQu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
