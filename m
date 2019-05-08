Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE21517342
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 10:09:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 790A98966B;
	Wed,  8 May 2019 08:09:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7A4D89581
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 08:09:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16485904-1500050 
 for multiple; Wed, 08 May 2019 09:07:07 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 May 2019 09:06:28 +0100
Message-Id: <20190508080704.24223-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190508080704.24223-1-chris@chris-wilson.co.uk>
References: <20190508080704.24223-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/40] drm/i915: Check for no-op priority
 changes first
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

SW4gYWxsIGxpa2VsaWhvb2QsIHRoZSBwcmlvcml0eSBhbmQgbm9kZSBhcmUgYWxyZWFkeSBpbiB0
aGUgQ1BVIGNhY2hlCmFuZCBieSBjaGVja2luZyB0aGVtIGZpcnN0LCB3ZSBjYW4gYXZvaWQgaGF2
aW5nIHRvIGNoYXNlIHRoZQoqcmVxdWVzdC0+aHdzcCBmb3IgdGhlIGN1cnJlbnQgYnJlYWRjcnVt
Yi4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlci5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1bGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3NjaGVkdWxlci5jCmluZGV4IGYzMmQwZWU2ZDU4Yy4uNTU4MWM1MDA0ZmYwIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlci5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfc2NoZWR1bGVyLmMKQEAgLTIwMCwxMCArMjAwLDEwIEBAIHN0YXRpYyB2
b2lkIF9faTkxNV9zY2hlZHVsZShzdHJ1Y3QgaTkxNV9zY2hlZF9ub2RlICpub2RlLAogCWxvY2tk
ZXBfYXNzZXJ0X2hlbGQoJnNjaGVkdWxlX2xvY2spOwogCUdFTV9CVUdfT04ocHJpbyA9PSBJOTE1
X1BSSU9SSVRZX0lOVkFMSUQpOwogCi0JaWYgKG5vZGVfc2lnbmFsZWQobm9kZSkpCisJaWYgKHBy
aW8gPD0gUkVBRF9PTkNFKG5vZGUtPmF0dHIucHJpb3JpdHkpKQogCQlyZXR1cm47CiAKLQlpZiAo
cHJpbyA8PSBSRUFEX09OQ0Uobm9kZS0+YXR0ci5wcmlvcml0eSkpCisJaWYgKG5vZGVfc2lnbmFs
ZWQobm9kZSkpCiAJCXJldHVybjsKIAogCXN0YWNrLnNpZ25hbGVyID0gbm9kZTsKLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
