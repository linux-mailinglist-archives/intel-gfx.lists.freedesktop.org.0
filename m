Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9993828F1F3
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 14:21:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2C416ECC8;
	Thu, 15 Oct 2020 12:21:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67E386ECC4
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 12:21:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22724267-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 13:21:39 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Oct 2020 13:21:38 +0100
Message-Id: <20201015122138.30161-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201015122138.30161-1-chris@chris-wilson.co.uk>
References: <20201015122138.30161-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 4/4] drm/i915/gt: Fixup tgl mocs for PTE tracking
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yY2luZyBtb2NzOjEgW3VzZWQgZm9yIG91ciB3aW5zeXMgZm9sbG93cy1wdGUgbW9kZV0gdG8g
YmUgY2FjaGVkCmNhdXNlZCBkaXNwbGF5IGdsaXRjaGVzLiBUaG91Z2ggaXQgaXMgZG9jdW1lbnRl
ZCBhcyBkZXByZWNhdGVkIChhbmQgc28KbGlrZWx5IGJlaGF2ZXMgYXMgdW5jYWNoZWQpIHVzZSB0
aGUgZm9sbG93LXB0ZSBiaXQgYW5kIGZvcmNlIGl0IG91dCBvZgpMMyBjYWNoZS4KCkZpeGVzOiA0
ZDhhNWNmZTNiMTMgKCJkcm0vaTkxNS9ndDogSW5pdGlhbGl6ZSByZXNlcnZlZCBhbmQgdW5zcGVj
aWZpZWQgTU9DUyBpbmRpY2VzIikKVGVzdGNhc2U6IGlndC9rbXNfZnJvbnRidWZmZXJfdHJhY2tp
bmcKVGVzdGNhc2U6IGlndC9rbXNfYmlnX2ZiClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogQXlheiBBIFNpZGRpcXVpIDxheWF6LnNpZGRp
cXVpQGludGVsLmNvbT4KQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwu
Y29tPgpDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KQ2M6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBKb29uYXMgTGFo
dGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYyB8IDUgKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
bW9jcy5jCmluZGV4IDljZTgwMzc2YWYwZi4uMjU0ODczZTE2NDZlIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbW9jcy5jCkBAIC0yNDMsOCArMjQzLDkgQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBkcm1faTkxNV9tb2NzX2VudHJ5IHRnbF9tb2NzX3RhYmxlW10gPSB7CiAJICogb25seSwgX19p
bml0X21vY3NfdGFibGUoKSB0YWtlIGNhcmUgdG8gcHJvZ3JhbSB1bnVzZWQgaW5kZXggd2l0aAog
CSAqIHRoaXMgZW50cnkuCiAJICovCi0JTU9DU19FTlRSWSgxLCBMRV8zX1dCIHwgTEVfVENfMV9M
TEMgfCBMRV9MUlVNKDMpLAotCQkgICBMM18zX1dCKSwKKwlNT0NTX0VOVFJZKEk5MTVfTU9DU19Q
VEUsCisJCSAgIExFXzBfUEFHRVRBQkxFIHwgTEVfVENfMF9QQUdFVEFCTEUsCisJCSAgIEwzXzFf
VUMpLAogCUdFTjExX01PQ1NfRU5UUklFUywKIAogCS8qIEltcGxpY2l0bHkgZW5hYmxlIEwxIC0g
SERDOkwxICsgTDMgKyBMTEMgKi8KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
