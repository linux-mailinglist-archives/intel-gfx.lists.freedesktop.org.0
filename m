Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B86625E0D0
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 11:17:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8691B6E111;
	Wed,  3 Jul 2019 09:17:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21F856E10C
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 09:17:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17110511-1500050 
 for multiple; Wed, 03 Jul 2019 10:17:29 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jul 2019 10:17:20 +0100
Message-Id: <20190703091726.11690-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190703091726.11690-1-chris@chris-wilson.co.uk>
References: <20190703091726.11690-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/15] drm/i915/execlists: Hesitate before
 slicing
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QmUgYSBsaXR0bGUgbW9yZSBoZXNpdGFudCBiZWZvcmUgaW5qZWN0aW5nIGEgdGltZXNsaWNlLCBh
bmQgdHJ5IHRvIHRha2UKaW50byBhY2NvdW50IGFueSBjaGFuZ2UgaW4gcHJpb3JpdHkgdGhhdCBp
cyBkdWUgZm9yIHRoZSBydW5uaW5nIHRhc2sKYmVmb3JlIHN3aXRjaGluZyB0byBhbm90aGVyIHRh
c2suIFRoaXMgd2lsbCBhbGxvdyB1cyB0byBhcmJpdHJhcmlseQpwcmV2ZW50IHN3aXRjaGluZyBh
d2F5IGZyb20gYSByZXF1ZXN0IGlmIHdlIGRlZW0gaXQgbmVjZXNzYXJpbHkgdG8KZGlzYWJsZSBw
cmVlbXB0aW9uLCBmb3IgaW5zdGFuY2UuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxp
bkBpbnRlbC5jb20+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVs
LmNvbT4KQ2M6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNv
bT4KQWNrZWQtYnk6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDIgKy0KIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggNDk3Y2E1MjM4MWE3Li5mMDhhZmEyNmJhNDIgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC04OTksNyArODk5LDcgQEAgbmVlZF90aW1l
c2xpY2Uoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBjb25zdCBzdHJ1Y3QgaTkxNV9y
ZXF1ZXN0ICpycSkKIAloaW50ID0gbWF4KHJxX3ByaW8obGlzdF9uZXh0X2VudHJ5KHJxLCBzY2hl
ZC5saW5rKSksCiAJCSAgIGVuZ2luZS0+ZXhlY2xpc3RzLnF1ZXVlX3ByaW9yaXR5X2hpbnQpOwog
Ci0JcmV0dXJuIGhpbnQgPj0gcnFfcHJpbyhycSk7CisJcmV0dXJuIGhpbnQgPj0gZWZmZWN0aXZl
X3ByaW8ocnEpOwogfQogCiBzdGF0aWMgYm9vbAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
