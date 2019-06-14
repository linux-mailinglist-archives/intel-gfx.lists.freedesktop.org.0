Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F4A45573
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 09:12:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F2F7895B6;
	Fri, 14 Jun 2019 07:12:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9378E88EFF
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 07:12:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16897516-1500050 
 for multiple; Fri, 14 Jun 2019 08:10:28 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Jun 2019 08:09:56 +0100
Message-Id: <20190614071023.17929-13-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614071023.17929-1-chris@chris-wilson.co.uk>
References: <20190614071023.17929-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/39] dma-fence: Propagate errors to
 dma-fence-array container
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
Cc: Gustavo Padovan <gustavo@padovan.org>,
 Sumit Semwal <sumit.semwal@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hlbiBvbmUgb2YgdGhlIGFycmF5IG9mIGZlbmNlcyBpcyBzaWduYWxlZCwgcHJvcGFnYXRlIGl0
cyBlcnJvcnMgdG8gdGhlCnBhcmVudCBmZW5jZS1hcnJheSAoa2VlcGluZyB0aGUgZmlyc3QgZXJy
b3IgdG8gYmUgcmFpc2VkKS4KCnYyOiBPcGVuY29kZSBjbXB4Y2hnX2xvY2FsIHRvIGF2b2lkIGNv
bXBpbGVyIGZyZWFrb3V0LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+CkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3Jn
PgpDYzogR3VzdGF2byBQYWRvdmFuIDxndXN0YXZvQHBhZG92YW4ub3JnPgotLS0KIGRyaXZlcnMv
ZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYyB8IDE1ICsrKysrKysrKysrKysrKwogMSBmaWxlIGNo
YW5nZWQsIDE1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLWFycmF5LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMKaW5kZXgg
MTJjNmY2NGMwYmMyLi5kOTA2NzViYjRmY2MgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtZmVuY2UtYXJyYXkuYworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMK
QEAgLTEzLDYgKzEzLDEyIEBACiAjaW5jbHVkZSA8bGludXgvc2xhYi5oPgogI2luY2x1ZGUgPGxp
bnV4L2RtYS1mZW5jZS1hcnJheS5oPgogCitzdGF0aWMgdm9pZCBmZW5jZV9zZXRfZXJyb3Jfb25j
ZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgaW50IGVycm9yKQoreworCWlmICghZmVuY2UtPmVy
cm9yICYmIGVycm9yKQorCQlkbWFfZmVuY2Vfc2V0X2Vycm9yKGZlbmNlLCBlcnJvcik7Cit9CisK
IHN0YXRpYyBjb25zdCBjaGFyICpkbWFfZmVuY2VfYXJyYXlfZ2V0X2RyaXZlcl9uYW1lKHN0cnVj
dCBkbWFfZmVuY2UgKmZlbmNlKQogewogCXJldHVybiAiZG1hX2ZlbmNlX2FycmF5IjsKQEAgLTM4
LDYgKzQ0LDEzIEBAIHN0YXRpYyB2b2lkIGRtYV9mZW5jZV9hcnJheV9jYl9mdW5jKHN0cnVjdCBk
bWFfZmVuY2UgKmYsCiAJCWNvbnRhaW5lcl9vZihjYiwgc3RydWN0IGRtYV9mZW5jZV9hcnJheV9j
YiwgY2IpOwogCXN0cnVjdCBkbWFfZmVuY2VfYXJyYXkgKmFycmF5ID0gYXJyYXlfY2ItPmFycmF5
OwogCisJLyoKKwkgKiBQcm9wYWdhdGUgdGhlIGZpcnN0IGVycm9yIHJlcG9ydGVkIGJ5IGFueSBv
ZiBvdXIgZmVuY2VzLCBidXQgb25seQorCSAqIGJlZm9yZSB3ZSBvdXJzZWx2ZXMgYXJlIHNpZ25h
bGVkLgorCSAqLworCWlmIChhdG9taWNfcmVhZCgmYXJyYXktPm51bV9wZW5kaW5nKSA+IDApCisJ
CWZlbmNlX3NldF9lcnJvcl9vbmNlKCZhcnJheS0+YmFzZSwgZi0+ZXJyb3IpOworCiAJaWYgKGF0
b21pY19kZWNfYW5kX3Rlc3QoJmFycmF5LT5udW1fcGVuZGluZykpCiAJCWlycV93b3JrX3F1ZXVl
KCZhcnJheS0+d29yayk7CiAJZWxzZQpAQCAtNjMsNiArNzYsOCBAQCBzdGF0aWMgYm9vbCBkbWFf
ZmVuY2VfYXJyYXlfZW5hYmxlX3NpZ25hbGluZyhzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkKIAkJ
ZG1hX2ZlbmNlX2dldCgmYXJyYXktPmJhc2UpOwogCQlpZiAoZG1hX2ZlbmNlX2FkZF9jYWxsYmFj
ayhhcnJheS0+ZmVuY2VzW2ldLCAmY2JbaV0uY2IsCiAJCQkJCSAgIGRtYV9mZW5jZV9hcnJheV9j
Yl9mdW5jKSkgeworCQkJZmVuY2Vfc2V0X2Vycm9yX29uY2UoJmFycmF5LT5iYXNlLAorCQkJCQkg
ICAgIGFycmF5LT5mZW5jZXNbaV0tPmVycm9yKTsKIAkJCWRtYV9mZW5jZV9wdXQoJmFycmF5LT5i
YXNlKTsKIAkJCWlmIChhdG9taWNfZGVjX2FuZF90ZXN0KCZhcnJheS0+bnVtX3BlbmRpbmcpKQog
CQkJCXJldHVybiBmYWxzZTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
