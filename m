Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFE264A91
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 18:14:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80F286E10F;
	Wed, 10 Jul 2019 16:14:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BAB46E10F
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 16:14:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17202131-1500050 
 for multiple; Wed, 10 Jul 2019 17:14:14 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 17:14:13 +0100
Message-Id: <20190710161413.7115-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190710143054.610-1-chris@chris-wilson.co.uk>
References: <20190710143054.610-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/selftests: Ensure we don't clamp a
 random offset to 32b
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

U3BlY2lmeSB0aGF0IHdlIGRvIHdhbnQgYSA2NGIgdmFsdWUgZm9yIHNpemVvZih1MzIpIGFzIHdl
IHdhbnQgdG8KY29tcHV0ZSB0aGUgbWFzayBvZiB0aGUgdXBwZXIgNjJiaXRzLgoKdjI6IFVzZSBy
b3VuZF9kb3duKCkgZm9yIGF1dG9tYXRpYyB0eXBlIHByb21vdGlvbgoKU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNaWthIEt1b3BwYWxh
IDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBh
bGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jIHwgMiArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmggICAgICAgICAgfCA3ICsrKysrKysKIDIg
ZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYwpp
bmRleCAzYWJlMTVhMDhiNmQuLjY5NWJmYjE4YjBkNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMKQEAgLTE1MzksNyAr
MTUzOSw3IEBAIHN0YXRpYyBpbnQgaWd0X3ZtX2lzb2xhdGlvbih2b2lkICphcmcpCiAKIAkJCWRp
djY0X3U2NF9yZW0oaTkxNV9wcmFuZG9tX3U2NF9zdGF0ZSgmcHJuZyksCiAJCQkJICAgICAgdm1f
dG90YWwsICZvZmZzZXQpOwotCQkJb2Zmc2V0ICY9IC1zaXplb2YodTMyKTsKKwkJCW9mZnNldCA9
IHJvdW5kX2Rvd24ob2Zmc2V0LCBhbGlnbm9mX2R3b3JkKTsKIAkJCW9mZnNldCArPSBJOTE1X0dU
VF9QQUdFX1NJWkU7CiAKIAkJCWVyciA9IHdyaXRlX3RvX3NjcmF0Y2goY3R4X2EsIGVuZ2luZSwK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmgKaW5kZXggZWVj
MzFlMzZhY2E3Li42OWYzNDczNzMyNWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2dwdV9jb21tYW5kcy5oCkBAIC03LDYgKzcsMTMgQEAKICNpZm5kZWYgX0lOVEVMX0dQVV9D
T01NQU5EU19IXwogI2RlZmluZSBfSU5URUxfR1BVX0NPTU1BTkRTX0hfCiAKKy8qCisgKiBUYXJn
ZXQgYWRkcmVzcyBhbGlnbm1lbnRzIHJlcXVpcmVkIGZvciBHUFUgYWNjZXNzIGUuZy4KKyAqIE1J
X1NUT1JFX0RXT1JEX0lNTS4KKyAqLworI2RlZmluZSBhbGlnbm9mX2R3b3JkIDQKKyNkZWZpbmUg
YWxpZ25vZl9xd29yZCA4CisKIC8qCiAgKiBJbnN0cnVjdGlvbiBmaWVsZCBkZWZpbml0aW9ucyB1
c2VkIGJ5IHRoZSBjb21tYW5kIHBhcnNlcgogICovCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
