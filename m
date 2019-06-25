Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2435F5277E
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 11:07:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DB026E0AA;
	Tue, 25 Jun 2019 09:07:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C9646E0AA
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 09:07:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17014818-1500050 
 for multiple; Tue, 25 Jun 2019 10:06:58 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 10:06:55 +0100
Message-Id: <20190625090655.19220-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190625070829.25277-1-kenneth@whitecape.org>
References: <20190625070829.25277-1-kenneth@whitecape.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Disable SAMPLER_STATE prefetching on
 all Gen11 steppings.
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
Cc: Kenneth Graunke <kenneth@whitecape.org>, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogS2VubmV0aCBHcmF1bmtlIDxrZW5uZXRoQHdoaXRlY2FwZS5vcmc+CgpUaGUgRGVtYW5k
IFByZWZldGNoIHdvcmthcm91bmQgKGJpbmRpbmcgdGFibGUgcHJlZmV0Y2hpbmcpIG9ubHkgYXBw
bGllcwp0byBJY2VsYWtlIEEwL0IwLiAgQnV0IHRoZSBTYW1wbGVyIFByZWZldGNoIHdvcmthcm91
bmQgbmVlZHMgdG8gYmUKYXBwbGllZCB0byBhbGwgR2VuMTEgc3RlcHBpbmdzLCBhY2NvcmRpbmcg
dG8gYSBwcm9ncmFtbWluZyBub3RlIGluIHRoZQpTQVJDSEtNRCBkb2N1bWVudGF0aW9uLgoKVXNp
bmcgdGhlIEludGVsIEdhbGxpdW0gZHJpdmVyLCBJIGhhdmUgc2VlbiBpbnRlcm1pdHRlbnQgZmFp
bHVyZXMgaW4KdGhlIGRFUVAtR0xFUzMxLmZ1bmN0aW9uYWwuY29weV9pbWFnZS5ub25fY29tcHJl
c3NlZC4qIHRlc3RzLiAgQWZ0ZXIKYXBwbHlpbmcgdGhpcyB3b3JrYXJvdW5kLCB0aGUgdGVzdHMg
cmVsaWFibHkgcGFzcy4KCnYyOiBSZW1vdmUgdGhlIG92ZXJsYXAgd2l0aCBhIHByZS1wcm9kdWN0
aW9uIHcvYQoKQlNwZWM6IDk2NjMKU2lnbmVkLW9mZi1ieTogS2VubmV0aCBHcmF1bmtlIDxrZW5u
ZXRoQHdoaXRlY2FwZS5vcmc+ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgpDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCA4ICsrKysrKy0tCiAxIGZpbGUg
Y2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCmluZGV4IGM3MDQ0NWFkZmIwMi4uOTkzODA0
ZDA5NTE3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJv
dW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMK
QEAgLTEyNTIsOCArMTI1MiwxMiBAQCByY3NfZW5naW5lX3dhX2luaXQoc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lLCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCiAJCWlmIChJU19JQ0xf
UkVWSUQoaTkxNSwgSUNMX1JFVklEX0EwLCBJQ0xfUkVWSURfQjApKQogCQkJd2Ffd3JpdGVfb3Io
d2FsLAogCQkJCSAgICBHRU43X1NBUkNIS01ELAotCQkJCSAgICBHRU43X0RJU0FCTEVfREVNQU5E
X1BSRUZFVENIIHwKLQkJCQkgICAgR0VON19ESVNBQkxFX1NBTVBMRVJfUFJFRkVUQ0gpOworCQkJ
CSAgICBHRU43X0RJU0FCTEVfREVNQU5EX1BSRUZFVENIKTsKKworCQkvKiBXYV8xNjA2NjgyMTY2
OmljbCAqLworCQl3YV93cml0ZV9vcih3YWwsCisJCQkgICAgR0VON19TQVJDSEtNRCwKKwkJCSAg
ICBHRU43X0RJU0FCTEVfU0FNUExFUl9QUkVGRVRDSCk7CiAJfQogCiAJaWYgKElTX0dFTl9SQU5H
RShpOTE1LCA5LCAxMSkpIHsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
