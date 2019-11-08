Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A75F4491
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 11:35:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C15D46F924;
	Fri,  8 Nov 2019 10:35:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2E186F924
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 10:35:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19126203-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 08 Nov 2019 10:35:11 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Nov 2019 10:35:10 +0000
Message-Id: <20191108103511.20951-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/2] drm/i915/pmu: Cheat when reading the actual
 frequency to avoid fw
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

V2Ugd2FudCB0byBhdm9pZCB0YWtpbmcgZm9yY2V3YWtlIHdoZW4gcXVlcnlpbmcgdGhlIHBlcmZv
cm1hbmNlIHN0YXRzLAphcyB3ZSB3aXNoIHRvIGF2b2lkIHBlcnR1cmJpbmcgdGhlIHN5c3RlbSB1
bmRlciBvYnNlcnZhdGlvbi4gKEFuZCB3aXRoCnRoZSBmb3JjZXdha2UgYmVpbmcga2VwdCBhbGl2
ZSBmb3IgMW1zIGFmdGVyIHVzZSwgc2FtcGxpbmcgdGhlIGZyZXF1ZW5jeQpmcm9tIGEgdGltZXIg
a2VlcHMgZm9yY2V3YWtlIDYwJSBhY3RpdmUuKQoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVy
c3VsaW5AaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1
bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jIHwgMTcg
KysrKysrKysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jCmluZGV4IDA1Mzk1MDE1ZDFmMi4uOGU3
NGY0MDQxM2I4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMKQEAgLTM2Niw4ICszNjYsMjEgQEAg
ZnJlcXVlbmN5X3NhbXBsZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCB1bnNpZ25lZCBpbnQgcGVyaW9k
X25zKQogCiAJCXZhbCA9IHJwcy0+Y3VyX2ZyZXE7CiAJCWlmIChpbnRlbF9ndF9wbV9nZXRfaWZf
YXdha2UoZ3QpKSB7Ci0JCQl2YWwgPSBpbnRlbF91bmNvcmVfcmVhZF9ub3RyYWNlKHVuY29yZSwg
R0VONl9SUFNUQVQxKTsKLQkJCXZhbCA9IGludGVsX2dldF9jYWdmKHJwcywgdmFsKTsKKwkJCXUz
MiBzdGF0OworCisJCQkvKgorCQkJICogV2UgdGFrZSBhIHF1aWNrIHBlZWsgaGVyZSB3aXRob3V0
IHVzaW5nIGZvcmNld2FrZQorCQkJICogc28gdGhhdCB3ZSBkb24ndCBwZXJ0dXJiIHRoZSBzeXN0
ZW0gdW5kZXIgb2JzZXJ2YXRpb24KKwkJCSAqIChmb3JjZXdha2UgPT4gIXJjNiA9PiBpbmNyZWFz
ZWQgcG93ZXIgdXNlKS4gV2UgZXhwZWN0CisJCQkgKiB0aGF0IGlmIHRoZSByZWFkIGZhaWxzIGJl
Y2F1c2UgaXQgaXMgb3V0c2lkZSBvZiB0aGUKKwkJCSAqIG1taW8gcG93ZXIgd2VsbCwgdGhlbiBp
dCB3aWxsIHJldHVybiAwIC0tIGluIHdoaWNoCisJCQkgKiBjYXNlIHdlIGFzc3VtZSB0aGUgc3lz
dGVtIGlzIHJ1bm5pbmcgYXQgdGhlIGludGVuZGVkCisJCQkgKiBmcmVxdWVuY3kuIEZvcnR1bmF0
ZWx5LCB0aGUgcmVhZCBzaG91bGQgcmFyZWx5IGZhaWwhCisJCQkgKi8KKwkJCXN0YXQgPSBpbnRl
bF91bmNvcmVfcmVhZF9mdyh1bmNvcmUsIEdFTjZfUlBTVEFUMSk7CisJCQlpZiAoc3RhdCkKKwkJ
CQl2YWwgPSBpbnRlbF9nZXRfY2FnZihycHMsIHN0YXQpOworCiAJCQlpbnRlbF9ndF9wbV9wdXQo
Z3QpOwogCQl9CiAKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
