Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FFDE308F
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 13:40:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3395E89F31;
	Thu, 24 Oct 2019 11:40:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B62D989BD2
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 11:40:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18948733-1500050 
 for multiple; Thu, 24 Oct 2019 12:40:31 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2019 12:40:24 +0100
Message-Id: <20191024114028.6170-8-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
In-Reply-To: <20191024114028.6170-1-chris@chris-wilson.co.uk>
References: <20191024114028.6170-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/11] drm/i915/gt: Expose preempt reset timeout
 via sysfs
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

QWZ0ZXIgaW5pdGlhbGlzaW5nIGEgcHJlZW1wdGlvbiByZXF1ZXN0LCB3ZSBnaXZlIHRoZSBjdXJy
ZW50IHJlc2lkZW50IGEKc21hbGwgYW1vdW50IG9mIHRpbWUgdG8gdmFjYXRlIHRoZSBHUFUuIFRo
ZSBwcmVlbXB0aW9uIHJlcXVlc3QgaXMgZm9yIGEKaGlnaGVyIHByaW9yaXR5IGNvbnRleHQgYW5k
IHNob3VsZCBiZSBpbW1lZGlhdGUgdG8gbWFpbnRhaW4gaGlnaApxdWFsaXR5IG9mIHNlcnZpY2Ug
KGFuZCBhdm9pZCBwcmlvcml0eSBpbnZlcnNpb24pLiBIb3dldmVyLCB0aGUKcHJlZW1wdGlvbiBn
cmFudWxhcml0eSBvZiB0aGUgR1BVIGNhbiBiZSBxdWl0ZSBjb2Fyc2UgYW5kIHNvIHdlIG5lZWQg
YQpjb21wcm9taXNlLgoKVGhlIHByZWVtcHQgdGltZW91dCBjYW4gYmUgYWRqdXN0ZWQgcGVyLWVu
Z2luZSB1c2luZywKCgkvc3lzL2NsYXNzL2RybS9jYXJkPy9lbmdpbmUvKi9wcmVlbXB0X3RpbWVv
dXRfbXMKCmFuZCBjYW4gYmUgZGlzYWJsZWQgYnkgc2V0dGluZyBpdCB0byAwLgoKU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5wcm9maWxlICAgICAgICAgfCAgMyArKwogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N5c2ZzLmMgfCA0OCArKysrKysrKysrKysrKysr
KysrKwogMiBmaWxlcyBjaGFuZ2VkLCA1MSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5wcm9maWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
S2NvbmZpZy5wcm9maWxlCmluZGV4IDc2MTQ1ZDI1Y2U2NS4uMDY2ZWE5YmEyNzU2IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLnByb2ZpbGUKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvS2NvbmZpZy5wcm9maWxlCkBAIC0zMyw2ICszMyw5IEBAIGNvbmZpZyBEUk1f
STkxNV9QUkVFTVBUX1RJTUVPVVQKIAkgIGV4cGlyZXMsIHRoZSBIVyB3aWxsIGJlIHJlc2V0IHRv
IGFsbG93IHRoZSBtb3JlIGltcG9ydGFudCBjb250ZXh0CiAJICB0byBleGVjdXRlLgogCisJICBU
aGlzIGlzIGFkanVzdGFibGUgdmlhCisJICAvc3lzL2NsYXNzL2RybS9jYXJkPy9lbmdpbmUvKi9w
cmVlbXB0X3RpbWVvdXRfbXMKKwogCSAgTWF5IGJlIDAgdG8gZGlzYWJsZSB0aGUgdGltZW91dC4K
IAogY29uZmlnIERSTV9JOTE1X1NQSU5fUkVRVUVTVApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N5c2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9lbmdpbmVfc3lzZnMuYwppbmRleCA4NjM3N2E0ZmZlNzAuLjI1MDEyMjk3YWE5ZSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N5c2ZzLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N5c2ZzLmMKQEAgLTIy
Myw2ICsyMjMsNTAgQEAgc3RvcF9zaG93KHN0cnVjdCBrb2JqZWN0ICprb2JqLCBzdHJ1Y3Qga29i
al9hdHRyaWJ1dGUgKmF0dHIsIGNoYXIgKmJ1ZikKIHN0YXRpYyBzdHJ1Y3Qga29ial9hdHRyaWJ1
dGUgc3RvcF90aW1lb3V0X2F0dHIgPQogX19BVFRSKHN0b3BfdGltZW91dF9tcywgMDY0NCwgc3Rv
cF9zaG93LCBzdG9wX3N0b3JlKTsKIAorc3RhdGljIHNzaXplX3QKK3ByZWVtcHRfdGltZW91dF9z
dG9yZShzdHJ1Y3Qga29iamVjdCAqa29iaiwgc3RydWN0IGtvYmpfYXR0cmlidXRlICphdHRyLAor
CQkgICAgICBjb25zdCBjaGFyICpidWYsIHNpemVfdCBjb3VudCkKK3sKKwlzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmUgPSBrb2JqX3RvX2VuZ2luZShrb2JqKTsKKwl1bnNpZ25lZCBsb25n
IGxvbmcgdGltZW91dDsKKwlpbnQgZXJyOworCisJLyoKKwkgKiBBZnRlciBpbml0aWFsaXNpbmcg
YSBwcmVlbXB0aW9uIHJlcXVlc3QsIHdlIGdpdmUgdGhlIGN1cnJlbnQKKwkgKiByZXNpZGVudCBh
IHNtYWxsIGFtb3VudCBvZiB0aW1lIHRvIHZhY2F0ZSB0aGUgR1BVLiBUaGUgcHJlZW1wdGlvbgor
CSAqIHJlcXVlc3QgaXMgZm9yIGEgaGlnaGVyIHByaW9yaXR5IGNvbnRleHQgYW5kIHNob3VsZCBi
ZSBpbW1lZGlhdGUgdG8KKwkgKiBtYWludGFpbiBoaWdoIHF1YWxpdHkgb2Ygc2VydmljZSAoYW5k
IGF2b2lkIHByaW9yaXR5IGludmVyc2lvbikuCisJICogSG93ZXZlciwgdGhlIHByZWVtcHRpb24g
Z3JhbnVsYXJpdHkgb2YgdGhlIEdQVSBjYW4gYmUgcXVpdGUgY29hcnNlCisJICogYW5kIHNvIHdl
IG5lZWQgYSBjb21wcm9taXNlLgorCSAqLworCisJZXJyID0ga3N0cnRvdWxsKGJ1ZiwgMCwgJnRp
bWVvdXQpOworCWlmIChlcnIpCisJCXJldHVybiBlcnI7CisKKwlpZiAodGltZW91dCA+IGppZmZp
ZXNfdG9fbXNlY3MoTUFYX1NDSEVEVUxFX1RJTUVPVVQpKQorCQlyZXR1cm4gLUVJTlZBTDsKKwor
CVdSSVRFX09OQ0UoZW5naW5lLT5wcm9wcy5wcmVlbXB0X3RpbWVvdXRfbXMsIHRpbWVvdXQpOwor
CisJaWYgKFJFQURfT05DRShlbmdpbmUtPmV4ZWNsaXN0cy5wZW5kaW5nWzBdKSkKKwkJc2V0X3Rp
bWVyX21zKCZlbmdpbmUtPmV4ZWNsaXN0cy5wcmVlbXB0LCB0aW1lb3V0KTsKKworCXJldHVybiBj
b3VudDsKK30KKworc3RhdGljIHNzaXplX3QKK3ByZWVtcHRfdGltZW91dF9zaG93KHN0cnVjdCBr
b2JqZWN0ICprb2JqLCBzdHJ1Y3Qga29ial9hdHRyaWJ1dGUgKmF0dHIsCisJCSAgICAgY2hhciAq
YnVmKQoreworCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSA9IGtvYmpfdG9fZW5naW5l
KGtvYmopOworCisJcmV0dXJuIHNwcmludGYoYnVmLCAiJWx1XG4iLCBlbmdpbmUtPnByb3BzLnBy
ZWVtcHRfdGltZW91dF9tcyk7Cit9CisKK3N0YXRpYyBzdHJ1Y3Qga29ial9hdHRyaWJ1dGUgcHJl
ZW1wdF90aW1lb3V0X2F0dHIgPQorX19BVFRSKHByZWVtcHRfdGltZW91dF9tcywgMDY0NCwgcHJl
ZW1wdF90aW1lb3V0X3Nob3csIHByZWVtcHRfdGltZW91dF9zdG9yZSk7CisKIHN0YXRpYyB2b2lk
IGtvYmpfZW5naW5lX3JlbGVhc2Uoc3RydWN0IGtvYmplY3QgKmtvYmopCiB7CiAJa2ZyZWUoa29i
aik7CkBAIC0yOTIsNiArMzM2LDEwIEBAIHZvaWQgaW50ZWxfZW5naW5lc19hZGRfc3lzZnMoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJCSAgICBzeXNmc19jcmVhdGVfZmlsZShrb2Jq
LCAmdGltZXNsaWNlX2R1cmF0aW9uX2F0dHIuYXR0cikpCiAJCQlnb3RvIGVycl9lbmdpbmU7CiAK
KwkJaWYgKGludGVsX2VuZ2luZV9oYXNfcHJlZW1wdF9yZXNldChlbmdpbmUpICYmCisJCSAgICBz
eXNmc19jcmVhdGVfZmlsZShrb2JqLCAmcHJlZW1wdF90aW1lb3V0X2F0dHIuYXR0cikpCisJCQln
b3RvIGVycl9lbmdpbmU7CisKIAkJaWYgKDApIHsKIGVycl9vYmplY3Q6CiAJCQlrb2JqZWN0X3B1
dChrb2JqKTsKLS0gCjIuMjQuMC5yYzAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
