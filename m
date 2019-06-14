Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C35145B2F
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 13:11:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37852891F2;
	Fri, 14 Jun 2019 11:11:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF2F7891CD
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 11:10:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16900963-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 12:10:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Jun 2019 12:10:53 +0100
Message-Id: <20190614111053.25615-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614111053.25615-1-chris@chris-wilson.co.uk>
References: <20190614111053.25615-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915: Execute signal callbacks from no-op
 i915_request_wait
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

SWYgd2UgZW50ZXIgaTkxNV9yZXF1ZXN0X3dhaXQoKSB3aXRoIGFuIGFscmVhZHkgY29tcGxldGVk
IHJlcXVlc3QsIGJ1dAp1bnNpZ25hbGVkIGRtYS1mZW5jZSwgc2lnbmFsIHRoZSBmZW5jZSBiZWZv
cmUgcmV0dXJuaW5nLiBUaGlzIGFsbG93cyB1cwp0byBleGVjdXRlIGFueSBvZiB0aGUgc2lnbmFs
IGNhbGxiYWNrcyBhdCB0aGUgZWFybGllc3Qgb3Bwb3J0dW5pdHkuCgp2MjogQWxzbyBzaWduYWwg
YWZ0ZXIgYnVzeXNwaW4gc3VjY2VzcwoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+ClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVz
dC5jIHwgNiArKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwppbmRleCAxY2JjM2VmNGZjMjcu
LjVlZTFlZjkyYTlkOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1
ZXN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKQEAgLTE0Mzcs
NyArMTQzNyw3IEBAIGxvbmcgaTkxNV9yZXF1ZXN0X3dhaXQoc3RydWN0IGk5MTVfcmVxdWVzdCAq
cnEsCiAJbWlnaHRfc2xlZXAoKTsKIAlHRU1fQlVHX09OKHRpbWVvdXQgPCAwKTsKIAotCWlmIChp
OTE1X3JlcXVlc3RfY29tcGxldGVkKHJxKSkKKwlpZiAoZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKCZy
cS0+ZmVuY2UpKQogCQlyZXR1cm4gdGltZW91dDsKIAogCWlmICghdGltZW91dCkKQEAgLTE0NzAs
OCArMTQ3MCwxMCBAQCBsb25nIGk5MTVfcmVxdWVzdF93YWl0KHN0cnVjdCBpOTE1X3JlcXVlc3Qg
KnJxLAogCSAqIGR1cmF0aW9uLCB3aGljaCB3ZSBjdXJyZW50bHkgbGFjay4KIAkgKi8KIAlpZiAo
Q09ORklHX0RSTV9JOTE1X1NQSU5fUkVRVUVTVCAmJgotCSAgICBfX2k5MTVfc3Bpbl9yZXF1ZXN0
KHJxLCBzdGF0ZSwgQ09ORklHX0RSTV9JOTE1X1NQSU5fUkVRVUVTVCkpCisJICAgIF9faTkxNV9z
cGluX3JlcXVlc3QocnEsIHN0YXRlLCBDT05GSUdfRFJNX0k5MTVfU1BJTl9SRVFVRVNUKSkgewor
CQlkbWFfZmVuY2Vfc2lnbmFsKCZycS0+ZmVuY2UpOwogCQlnb3RvIG91dDsKKwl9CiAKIAkvKgog
CSAqIFRoaXMgY2xpZW50IGlzIGFib3V0IHRvIHN0YWxsIHdhaXRpbmcgZm9yIHRoZSBHUFUuIElu
IG1hbnkgY2FzZXMKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
