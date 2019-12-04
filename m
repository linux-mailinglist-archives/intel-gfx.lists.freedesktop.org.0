Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D24112C76
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 14:21:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 919886E8F9;
	Wed,  4 Dec 2019 13:21:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3ED4A6E8F3;
 Wed,  4 Dec 2019 13:21:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19457107-1500050 
 for multiple; Wed, 04 Dec 2019 13:20:49 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Dec 2019 13:20:51 +0000
Message-Id: <20191204132051.3740419-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/perf_pmu: Measure how many batches
 can fit into the ring
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RG8gbm90IGJsaW5kbHkgYXNzdW1lIDMwIHNwaW4gYmF0Y2hlcyB3aWxsIGFsd2F5cyBmaXQgaW50
byB0aGUgcmluZywgYnV0CnVzZSBvdXIgbWVhc3VyZW1lbnQgdG9vbCBpbnN0ZWFkLgoKU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIHRlc3RzL3BlcmZfcG11
LmMgfCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS90ZXN0cy9wZXJmX3BtdS5jIGIvdGVzdHMvcGVyZl9wbXUuYwppbmRl
eCBkZTRjMjMxZGQuLjhlNTBhYzlhMCAxMDA2NDQKLS0tIGEvdGVzdHMvcGVyZl9wbXUuYworKysg
Yi90ZXN0cy9wZXJmX3BtdS5jCkBAIC00Miw2ICs0Miw3IEBACiAjaW5jbHVkZSAiaWd0X3BlcmYu
aCIKICNpbmNsdWRlICJpZ3Rfc3lzZnMuaCIKICNpbmNsdWRlICJpZ3RfcG0uaCIKKyNpbmNsdWRl
ICJpOTE1L2dlbV9yaW5nLmgiCiAjaW5jbHVkZSAic3dfc3luYy5oIgogCiBJR1RfVEVTVF9ERVND
UklQVElPTigiVGVzdCB0aGUgaTkxNSBwbXUgcGVyZiBpbnRlcmZhY2UiKTsKQEAgLTEyNzYsOCAr
MTI3Nyw5IEBAIHN0YXRpYyB2b2lkIGNwdV9ob3RwbHVnKGludCBnZW1fZmQpCiBzdGF0aWMgdm9p
ZAogdGVzdF9pbnRlcnJ1cHRzKGludCBnZW1fZmQpCiB7CisJY29uc3QgaW50IHRhcmdldCA9CisJ
CWdlbV9tZWFzdXJlX3JpbmdfaW5mbGlnaHQoZ2VtX2ZkLCBJOTE1X0VYRUNfREVGQVVMVCwgMCk7
CiAJY29uc3QgdW5zaWduZWQgaW50IHRlc3RfZHVyYXRpb25fbXMgPSAxMDAwOwotCWNvbnN0IGlu
dCB0YXJnZXQgPSAzMDsKIAlpZ3Rfc3Bpbl90ICpzcGluW3RhcmdldF07CiAJc3RydWN0IHBvbGxm
ZCBwZmQ7CiAJdWludDY0X3QgaWRsZSwgYnVzeTsKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
