Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4EE55C0B
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 01:08:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 586976E1BB;
	Tue, 25 Jun 2019 23:08:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E91E76E1BB
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 23:08:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17024273-1500050 
 for multiple; Wed, 26 Jun 2019 00:08:20 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jun 2019 00:08:15 +0100
Message-Id: <20190625230815.32244-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fail harder if GPU reset fails
 outright
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

SWYgd2UgcmVxdWVzdCBhIHJlc2V0IGFuZCB0aGUgR1BVIGZhaWxzIHRvIHJlc3BvbmQsIGFiYW5k
b24gYWxsIGhvcGUuIElmCnRoZSByZXF1ZXN0IGlzIHN0aWxsIHN0dWNrIHdoZW4gd2UgYXR0ZW1w
dCB0byBkbyBhbm90aGVyLCBmYWlsIGVhcmx5IGFuZAphdm9pZCByZXF1ZXN0aW5nIG11bHRpcGxl
IHBvc3NpYmx5IGNvbmZsaWN0aW5nIGRvbWFpbnMgYmUgcmVzZXQKc2ltdWx0YW5lb3VzbHkuCgpX
ZSBzaG91bGQgbmV2ZXIgc2VlIHRoaXMgaW4gcHJhY3RpY2UsIGFuZCBpZiB3ZSBkbywgaXQgaXMg
YWxyZWFkeSB0b28KbGF0ZS4KClJlZmVyZW5jZXM6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTExMDk5OApTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFA
bGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0
LmMgfCAxNSArKysrKysrKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCsp
LCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3Jlc2V0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCmluZGV4
IDcyMDAyYzBmOTY5OC4uNTZjNDNmOGNiYzE3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9yZXNldC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3Jlc2V0LmMKQEAgLTMwMSw4ICszMDEsMTYgQEAgc3RhdGljIGludCBnZW42X2h3X2RvbWFpbl9y
ZXNldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAkJCQl1MzIgaHdfZG9tYWluX21h
c2spCiB7CiAJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gJmk5MTUtPnVuY29yZTsKKwl1
MzIgc3RhdHVzOwogCWludCBlcnI7CiAKKwkvKgorCSAqIENoZWNrIHRoYXQgYWxsIHByZXZpb3Vz
IHJlc2V0IHJlcXVlc3RzIGhhdmUgYmVlbiBmbHVzaGVkIHNvCisJICogdGhhdCB3ZSBkb24ndCBz
aW11bHRhbmVvdXNseSB0cnkgdG8gcmVzZXQgMiBvdmVybGFwcGluZyBkb21haW5zLgorCSAqLwor
CWlmIChpbnRlbF91bmNvcmVfcmVhZF9mdyh1bmNvcmUsIEdFTjZfR0RSU1QpKQorCQlyZXR1cm4g
LUVJTzsKKwogCS8qCiAJICogR0VONl9HRFJTVCBpcyBub3QgaW4gdGhlIGd0IHBvd2VyIHdlbGws
IG5vIG5lZWQgdG8gY2hlY2sKIAkgKiBmb3IgZmlmbyBzcGFjZSBmb3IgdGhlIHdyaXRlIG9yIGZv
cmNld2FrZSB0aGUgY2hpcCBmb3IKQEAgLTMxNCwxMCArMzIyLDExIEBAIHN0YXRpYyBpbnQgZ2Vu
Nl9od19kb21haW5fcmVzZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJZXJyID0g
X19pbnRlbF93YWl0X2Zvcl9yZWdpc3Rlcl9mdyh1bmNvcmUsCiAJCQkJCSAgIEdFTjZfR0RSU1Qs
IGh3X2RvbWFpbl9tYXNrLCAwLAogCQkJCQkgICA1MDAsIDAsCi0JCQkJCSAgIE5VTEwpOworCQkJ
CQkgICAmc3RhdHVzKTsKKwlpbnRlbF91bmNvcmVfd3JpdGVfZncodW5jb3JlLCBHRU42X0dEUlNU
LCAwKTsKIAlpZiAoZXJyKQotCQlEUk1fREVCVUdfRFJJVkVSKCJXYWl0IGZvciAweCUwOHggZW5n
aW5lcyByZXNldCBmYWlsZWRcbiIsCi0JCQkJIGh3X2RvbWFpbl9tYXNrKTsKKwkJRFJNX0RFQlVH
X0RSSVZFUigiV2FpdCBmb3IgMHglMDh4IFtIV10gZW5naW5lcyByZXNldCBmYWlsZWQ6ICUwOHhc
biIsCisJCQkJIGh3X2RvbWFpbl9tYXNrLCBzdGF0dXMpOwogCiAJcmV0dXJuIGVycjsKIH0KLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
