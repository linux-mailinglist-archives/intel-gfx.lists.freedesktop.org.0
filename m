Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60230F28D1
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 09:13:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 758806EEBF;
	Thu,  7 Nov 2019 08:13:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5E746EEC9
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 08:13:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19110681-1500050 
 for multiple; Thu, 07 Nov 2019 08:12:57 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Nov 2019 08:12:48 +0000
Message-Id: <20191107081252.10542-24-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191107081252.10542-1-chris@chris-wilson.co.uk>
References: <20191107081252.10542-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 24/28] drm/i915/gt: Expose preempt reset timeout
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
KysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgICAgICAgICAgfCAgMiAr
LQogMyBmaWxlcyBjaGFuZ2VkLCA1MiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5wcm9maWxlIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvS2NvbmZpZy5wcm9maWxlCmluZGV4IDc2MTQ1ZDI1Y2U2NS4uMDY2ZWE5YmEy
NzU2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLnByb2ZpbGUKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5wcm9maWxlCkBAIC0zMyw2ICszMyw5IEBA
IGNvbmZpZyBEUk1fSTkxNV9QUkVFTVBUX1RJTUVPVVQKIAkgIGV4cGlyZXMsIHRoZSBIVyB3aWxs
IGJlIHJlc2V0IHRvIGFsbG93IHRoZSBtb3JlIGltcG9ydGFudCBjb250ZXh0CiAJICB0byBleGVj
dXRlLgogCisJICBUaGlzIGlzIGFkanVzdGFibGUgdmlhCisJICAvc3lzL2NsYXNzL2RybS9jYXJk
Py9lbmdpbmUvKi9wcmVlbXB0X3RpbWVvdXRfbXMKKwogCSAgTWF5IGJlIDAgdG8gZGlzYWJsZSB0
aGUgdGltZW91dC4KIAogY29uZmlnIERSTV9JOTE1X1NQSU5fUkVRVUVTVApkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N5c2ZzLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfc3lzZnMuYwppbmRleCA4NjM3N2E0ZmZlNzAuLjI1
MDEyMjk3YWE5ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5n
aW5lX3N5c2ZzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N5
c2ZzLmMKQEAgLTIyMyw2ICsyMjMsNTAgQEAgc3RvcF9zaG93KHN0cnVjdCBrb2JqZWN0ICprb2Jq
LCBzdHJ1Y3Qga29ial9hdHRyaWJ1dGUgKmF0dHIsIGNoYXIgKmJ1ZikKIHN0YXRpYyBzdHJ1Y3Qg
a29ial9hdHRyaWJ1dGUgc3RvcF90aW1lb3V0X2F0dHIgPQogX19BVFRSKHN0b3BfdGltZW91dF9t
cywgMDY0NCwgc3RvcF9zaG93LCBzdG9wX3N0b3JlKTsKIAorc3RhdGljIHNzaXplX3QKK3ByZWVt
cHRfdGltZW91dF9zdG9yZShzdHJ1Y3Qga29iamVjdCAqa29iaiwgc3RydWN0IGtvYmpfYXR0cmli
dXRlICphdHRyLAorCQkgICAgICBjb25zdCBjaGFyICpidWYsIHNpemVfdCBjb3VudCkKK3sKKwlz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUgPSBrb2JqX3RvX2VuZ2luZShrb2JqKTsKKwl1
bnNpZ25lZCBsb25nIGxvbmcgdGltZW91dDsKKwlpbnQgZXJyOworCisJLyoKKwkgKiBBZnRlciBp
bml0aWFsaXNpbmcgYSBwcmVlbXB0aW9uIHJlcXVlc3QsIHdlIGdpdmUgdGhlIGN1cnJlbnQKKwkg
KiByZXNpZGVudCBhIHNtYWxsIGFtb3VudCBvZiB0aW1lIHRvIHZhY2F0ZSB0aGUgR1BVLiBUaGUg
cHJlZW1wdGlvbgorCSAqIHJlcXVlc3QgaXMgZm9yIGEgaGlnaGVyIHByaW9yaXR5IGNvbnRleHQg
YW5kIHNob3VsZCBiZSBpbW1lZGlhdGUgdG8KKwkgKiBtYWludGFpbiBoaWdoIHF1YWxpdHkgb2Yg
c2VydmljZSAoYW5kIGF2b2lkIHByaW9yaXR5IGludmVyc2lvbikuCisJICogSG93ZXZlciwgdGhl
IHByZWVtcHRpb24gZ3JhbnVsYXJpdHkgb2YgdGhlIEdQVSBjYW4gYmUgcXVpdGUgY29hcnNlCisJ
ICogYW5kIHNvIHdlIG5lZWQgYSBjb21wcm9taXNlLgorCSAqLworCisJZXJyID0ga3N0cnRvdWxs
KGJ1ZiwgMCwgJnRpbWVvdXQpOworCWlmIChlcnIpCisJCXJldHVybiBlcnI7CisKKwlpZiAodGlt
ZW91dCA+IGppZmZpZXNfdG9fbXNlY3MoTUFYX1NDSEVEVUxFX1RJTUVPVVQpKQorCQlyZXR1cm4g
LUVJTlZBTDsKKworCVdSSVRFX09OQ0UoZW5naW5lLT5wcm9wcy5wcmVlbXB0X3RpbWVvdXRfbXMs
IHRpbWVvdXQpOworCisJaWYgKFJFQURfT05DRShlbmdpbmUtPmV4ZWNsaXN0cy5wZW5kaW5nWzBd
KSkKKwkJc2V0X3RpbWVyX21zKCZlbmdpbmUtPmV4ZWNsaXN0cy5wcmVlbXB0LCB0aW1lb3V0KTsK
KworCXJldHVybiBjb3VudDsKK30KKworc3RhdGljIHNzaXplX3QKK3ByZWVtcHRfdGltZW91dF9z
aG93KHN0cnVjdCBrb2JqZWN0ICprb2JqLCBzdHJ1Y3Qga29ial9hdHRyaWJ1dGUgKmF0dHIsCisJ
CSAgICAgY2hhciAqYnVmKQoreworCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSA9IGtv
YmpfdG9fZW5naW5lKGtvYmopOworCisJcmV0dXJuIHNwcmludGYoYnVmLCAiJWx1XG4iLCBlbmdp
bmUtPnByb3BzLnByZWVtcHRfdGltZW91dF9tcyk7Cit9CisKK3N0YXRpYyBzdHJ1Y3Qga29ial9h
dHRyaWJ1dGUgcHJlZW1wdF90aW1lb3V0X2F0dHIgPQorX19BVFRSKHByZWVtcHRfdGltZW91dF9t
cywgMDY0NCwgcHJlZW1wdF90aW1lb3V0X3Nob3csIHByZWVtcHRfdGltZW91dF9zdG9yZSk7CisK
IHN0YXRpYyB2b2lkIGtvYmpfZW5naW5lX3JlbGVhc2Uoc3RydWN0IGtvYmplY3QgKmtvYmopCiB7
CiAJa2ZyZWUoa29iaik7CkBAIC0yOTIsNiArMzM2LDEwIEBAIHZvaWQgaW50ZWxfZW5naW5lc19h
ZGRfc3lzZnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJCSAgICBzeXNmc19jcmVh
dGVfZmlsZShrb2JqLCAmdGltZXNsaWNlX2R1cmF0aW9uX2F0dHIuYXR0cikpCiAJCQlnb3RvIGVy
cl9lbmdpbmU7CiAKKwkJaWYgKGludGVsX2VuZ2luZV9oYXNfcHJlZW1wdF9yZXNldChlbmdpbmUp
ICYmCisJCSAgICBzeXNmc19jcmVhdGVfZmlsZShrb2JqLCAmcHJlZW1wdF90aW1lb3V0X2F0dHIu
YXR0cikpCisJCQlnb3RvIGVycl9lbmdpbmU7CisKIAkJaWYgKDApIHsKIGVycl9vYmplY3Q6CiAJ
CQlrb2JqZWN0X3B1dChrb2JqKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXgg
NTRhNmRlYmQ2YmRiLi42Njg4ZmJmZDQ5YjcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xy
Yy5jCkBAIC0yMjIyLDcgKzIyMjIsNyBAQCBzdGF0aWMgbm9pbmxpbmUgdm9pZCBwcmVlbXB0X3Jl
c2V0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAljb25zdCB1bnNpZ25lZCBpbnQg
Yml0ID0gSTkxNV9SRVNFVF9FTkdJTkUgKyBlbmdpbmUtPmlkOwogCXVuc2lnbmVkIGxvbmcgKmxv
Y2sgPSAmZW5naW5lLT5ndC0+cmVzZXQuZmxhZ3M7CiAKLQlpZiAoaTkxNV9tb2RwYXJhbXMucmVz
ZXQgPCAzKQorCWlmICghaW50ZWxfaGFzX3Jlc2V0X2VuZ2luZShlbmdpbmUtPmd0KSkKIAkJcmV0
dXJuOwogCiAJaWYgKHRlc3RfYW5kX3NldF9iaXQoYml0LCBsb2NrKSkKLS0gCjIuMjQuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
