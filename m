Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0CC10D51D
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 12:46:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60BD76E8E4;
	Fri, 29 Nov 2019 11:46:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A62F66E8E4;
 Fri, 29 Nov 2019 11:46:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19391590-1500050 
 for multiple; Fri, 29 Nov 2019 11:45:53 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Nov 2019 11:45:52 +0000
Message-Id: <20191129114552.802185-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/perf_pmu: Check that while parked,
 we report min freq or below
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

V2hpbGUgdGhlIEhXIGlzIHBhcmtlZCwgdGhlIEdQVSBzaG91bGQgYmUgdHVybmVkIG9mZiBhbmQg
Y2xvY2tzIHN0b3AKKGkuZS4gcnVubmluZyBhdCAwSHopLiBXZSBzaG91bGQgcmVwb3J0IGVpdGhl
ciB0aGUgbGFzdCBmcmVxdWVuY3kgd2UKcHJvZ3JhbSAod2hpY2ggc2hvdWxkIGJlIHRoZSBtaW5p
bXVtIGxlZ2FsIHZhbHVlKSBvciBhIG1vcmUgdHJ1dGhmdWwgMC4KClNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiB0ZXN0cy9wZXJmX3BtdS5jIHwgNDAgKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDQw
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS90ZXN0cy9wZXJmX3BtdS5jIGIvdGVzdHMvcGVy
Zl9wbXUuYwppbmRleCA1NDg0Mjc4NGMuLmExNTIwZDJjNCAxMDA2NDQKLS0tIGEvdGVzdHMvcGVy
Zl9wbXUuYworKysgYi90ZXN0cy9wZXJmX3BtdS5jCkBAIC0xNDc3LDYgKzE0NzcsNDQgQEAgdGVz
dF9mcmVxdWVuY3koaW50IGdlbV9mZCkKIAlfX2Fzc2VydF93aXRoaW5fZXBzaWxvbihtYXhbMF0s
IG1heF9mcmVxLCB0b2xlcmFuY2UsIDAuMTVmKTsKIH0KIAorc3RhdGljIHZvaWQKK3Rlc3RfZnJl
cXVlbmN5X2lkbGUoaW50IGdlbV9mZCkKK3sKKwl1aW50MzJfdCBtaW5fZnJlcTsKKwl1aW50NjRf
dCB2YWxbMl0sIHN0YXJ0WzJdLCBzbGVwdDsKKwlkb3VibGUgaWRsZVsyXTsKKwlpbnQgZmQsIHN5
c2ZzOworCisJc3lzZnMgPSBpZ3Rfc3lzZnNfb3BlbihnZW1fZmQpOworCWlndF9yZXF1aXJlKHN5
c2ZzID49IDApOworCisJbWluX2ZyZXEgPSBpZ3Rfc3lzZnNfZ2V0X3UzMihzeXNmcywgImd0X1JQ
bl9mcmVxX21oeiIpOworCWNsb3NlKHN5c2ZzKTsKKworCS8qIFdoaWxlIHBhcmtlZCwgb3VyIGNv
bnZlbnRpb24gaXMgdG8gcmVwb3J0IHRoZSBHUFUgYXQgMEh6ICovCisKKwlmZCA9IG9wZW5fZ3Jv
dXAoSTkxNV9QTVVfUkVRVUVTVEVEX0ZSRVFVRU5DWSwgLTEpOworCW9wZW5fZ3JvdXAoSTkxNV9Q
TVVfQUNUVUFMX0ZSRVFVRU5DWSwgZmQpOworCisJZ2VtX3F1aWVzY2VudF9ncHUoZ2VtX2ZkKTsg
LyogQmUgaWRsZSEgKi8KKwltZWFzdXJlZF91c2xlZXAoMjAwMCk7IC8qIFdhaXQgZm9yIHRpbWVy
cyB0byBjZWFzZSAqLworCisJc2xlcHQgPSBwbXVfcmVhZF9tdWx0aShmZCwgMiwgc3RhcnQpOwor
CW1lYXN1cmVkX3VzbGVlcChiYXRjaF9kdXJhdGlvbl9ucyAvIDEwMDApOworCXNsZXB0ID0gcG11
X3JlYWRfbXVsdGkoZmQsIDIsIHZhbCkgLSBzbGVwdDsKKworCWlkbGVbMF0gPSAxZTkqKHZhbFsw
XSAtIHN0YXJ0WzBdKSAvIHNsZXB0OworCWlkbGVbMV0gPSAxZTkqKHZhbFsxXSAtIHN0YXJ0WzFd
KSAvIHNsZXB0OworCisJaWd0X2luZm8oIklkbGUgZnJlcXVlbmN5OiByZXF1ZXN0ZWQgJS4xZiwg
YWN0dWFsICUuMWY7IEhXIG1pbiAldVxuIiwKKwkJIGlkbGVbMF0sIGlkbGVbMV0sIG1pbl9mcmVx
KTsKKworCWlndF9hc3NlcnRfZihpZGxlWzBdIDw9IG1pbl9mcmVxLAorCQkgICAgICJSZXF1ZXN0
IGZyZXF1ZW5jeSBzaG91bGQgYmUgMCB3aGlsZSBwYXJrZWQhXG4iKTsKKwlpZ3RfYXNzZXJ0X2Yo
aWRsZVsxXSA8PSBtaW5fZnJlcSwKKwkJICAgICAiQWN0dWFsIGZyZXF1ZW5jeSBzaG91bGQgYmUg
MCB3aGlsZSBwYXJrZWQhXG4iKTsKK30KKwogc3RhdGljIGJvb2wgd2FpdF9mb3JfcmM2KGludCBm
ZCkKIHsKIAlzdHJ1Y3QgdGltZXNwZWMgdHYgPSB7fTsKQEAgLTE5NjcsNiArMjAwNSw4IEBAIGln
dF9tYWluCiAJICovCiAJaWd0X3N1YnRlc3QoImZyZXF1ZW5jeSIpCiAJCXRlc3RfZnJlcXVlbmN5
KGZkKTsKKwlpZ3Rfc3VidGVzdCgiZnJlcXVlbmN5LWlkbGUiKQorCQl0ZXN0X2ZyZXF1ZW5jeV9p
ZGxlKGZkKTsKIAogCS8qKgogCSAqIFRlc3QgaW50ZXJydXB0IGNvdW50IHJlcG9ydGluZy4KLS0g
CjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
