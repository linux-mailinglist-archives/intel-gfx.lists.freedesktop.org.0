Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F86AFA23
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 12:15:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3A726E21E;
	Wed, 11 Sep 2019 10:15:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A659C6E21D;
 Wed, 11 Sep 2019 10:15:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18449162-1500050 
 for multiple; Wed, 11 Sep 2019 11:15:02 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Sep 2019 11:15:00 +0100
Message-Id: <20190911101501.7182-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190911101501.7182-1-chris@chris-wilson.co.uk>
References: <20190911101501.7182-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/3] Force spin-batch to cause a hang as
 required
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

V2hlbiB1c2luZyBhIHNwaW5uZXIgdG8gdHJpZ2dlciBhIGhhbmcsIG1ha2UgaXQgdW5wcmVlbXB0
YWJsZSBzbyB0aGF0IGl0CmFwcGVhcnMgbGlrZSBhIHRydWUgaGFuZy4KClJlZmVyZW5jZXM6IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTY2MQpTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiB0ZXN0
cy9pOTE1L2dlbV9laW8uYyAgICAgICAgfCA0ICsrKy0KIHRlc3RzL2k5MTUvZ2VtX2V4ZWNfZmVu
Y2UuYyB8IDMgKystCiB0ZXN0cy9rbXNfYnVzeS5jICAgICAgICAgICAgfCAzICsrLQogMyBmaWxl
cyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
dGVzdHMvaTkxNS9nZW1fZWlvLmMgYi90ZXN0cy9pOTE1L2dlbV9laW8uYwppbmRleCBlMDIxM2M3
NmMuLmU3ZjVkNGRkYiAxMDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9nZW1fZWlvLmMKKysrIGIvdGVz
dHMvaTkxNS9nZW1fZWlvLmMKQEAgLTE3OCw3ICsxNzgsOSBAQCBzdGF0aWMgaWd0X3NwaW5fdCAq
IF9fc3Bpbl9wb2xsKGludCBmZCwgdWludDMyX3QgY3R4LCB1bnNpZ25lZCBsb25nIGZsYWdzKQog
CXN0cnVjdCBpZ3Rfc3Bpbl9mYWN0b3J5IG9wdHMgPSB7CiAJCS5jdHggPSBjdHgsCiAJCS5lbmdp
bmUgPSBmbGFncywKLQkJLmZsYWdzID0gSUdUX1NQSU5fRkFTVCB8IElHVF9TUElOX0ZFTkNFX09V
VCwKKwkJLmZsYWdzID0gKElHVF9TUElOX0ZBU1QgfAorCQkJICBJR1RfU1BJTl9OT19QUkVFTVBU
SU9OIHwKKwkJCSAgSUdUX1NQSU5fRkVOQ0VfT1VUKSwKIAl9OwogCiAJaWYgKGdlbV9jYW5fc3Rv
cmVfZHdvcmQoZmQsIG9wdHMuZW5naW5lKSkKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2V4
ZWNfZmVuY2UuYyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfZmVuY2UuYwppbmRleCAyMDcxODI5MjIu
LjJmMDRkN2FmNCAxMDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9nZW1fZXhlY19mZW5jZS5jCisrKyBi
L3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfZmVuY2UuYwpAQCAtMzMxLDcgKzMzMSw4IEBAIHN0YXRpYyB2
b2lkIHRlc3RfZmVuY2VfYXdhaXQoaW50IGZkLCB1bnNpZ25lZCByaW5nLCB1bnNpZ25lZCBmbGFn
cykKIAogCXNwaW4gPSBpZ3Rfc3Bpbl9uZXcoZmQsCiAJCQkgICAgLmVuZ2luZSA9IHJpbmcsCi0J
CQkgICAgLmZsYWdzID0gSUdUX1NQSU5fRkVOQ0VfT1VUKTsKKwkJCSAgICAuZmxhZ3MgPSAoSUdU
X1NQSU5fRkVOQ0VfT1VUIHwKKwkJCQkgICAgICBJR1RfU1BJTl9OT19QUkVFTVBUSU9OKSk7CiAJ
aWd0X2Fzc2VydChzcGluLT5vdXRfZmVuY2UgIT0gLTEpOwogCiAJaSA9IDA7CmRpZmYgLS1naXQg
YS90ZXN0cy9rbXNfYnVzeS5jIGIvdGVzdHMva21zX2J1c3kuYwppbmRleCA2NmYyNmNkMDguLjdl
NWFiM2QxOSAxMDA2NDQKLS0tIGEvdGVzdHMva21zX2J1c3kuYworKysgYi90ZXN0cy9rbXNfYnVz
eS5jCkBAIC0yNzEsNyArMjcxLDggQEAgc3RhdGljIHZvaWQgdGVzdF9wYWdlZmxpcF9tb2Rlc2V0
X2hhbmcoaWd0X2Rpc3BsYXlfdCAqZHB5LAogCiAJdCA9IGlndF9zcGluX25ldyhkcHktPmRybV9m
ZCwKIAkJCSAuZW5naW5lID0gcmluZywKLQkJCSAuZGVwZW5kZW5jeSA9IGZiLmdlbV9oYW5kbGUp
OworCQkJIC5kZXBlbmRlbmN5ID0gZmIuZ2VtX2hhbmRsZSwKKwkJCSAuZmxhZ3MgPSBJR1RfU1BJ
Tl9OT19QUkVFTVBUSU9OKTsKIAogCWRvX29yX2RpZShkcm1Nb2RlUGFnZUZsaXAoZHB5LT5kcm1f
ZmQsIGRweS0+cGlwZXNbcGlwZV0uY3J0Y19pZCwgZmIuZmJfaWQsIERSTV9NT0RFX1BBR0VfRkxJ
UF9FVkVOVCwgJmZiKSk7CiAKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
