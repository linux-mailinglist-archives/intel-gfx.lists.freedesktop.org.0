Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5CE21C7BAC
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 22:59:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C40E6E8DF;
	Wed,  6 May 2020 20:59:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEFEE6E8DC
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 20:59:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21131966-1500050 
 for multiple; Wed, 06 May 2020 21:59:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 May 2020 21:59:17 +0100
Message-Id: <20200506205920.24233-12-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200506205920.24233-1-chris@chris-wilson.co.uk>
References: <20200506205920.24233-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/15] drm/i915: Replace the hardcoded
 I915_FENCE_TIMEOUT
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RXhwb3NlIHRoZSBoYXJkY29kZWQgdGltZW91dCBmb3IgdW5zaWduYWxlZCBmb3JlaWduIGZlbmNl
cyBhcyBhIEtjb25maWcKb3B0aW9uLCBwcmltYXJpbHkgdG8gYWxsb3cgYnJhdmUgc3lzdGVtcyB0
byBkaXNhYmxlIHRoZSB0aW1lb3V0IGFuZApzb2xlbHkgcmVseSBvbiBjb3JyZWN0IHNpZ25hbGlu
Zy4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgpDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcucHJvZmlsZSAgICAgICAgICAgfCAxMiAr
KysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAg
ICAgfCAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAg
IHwgIDUgKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jbGZsdXNoLmMg
ICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NsaWVudF9ibHQu
YyB8ICAzICstLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2ZlbmNlLmMgICAg
ICB8ICA0ICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfY29uZmlnLmMgICAgICAgICAg
ICAgfCAxNSArKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2Lmgg
ICAgICAgICAgICAgICAgfCAxMCArKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlcXVlc3QuYyAgICAgICAgICAgIHwgIDkgKysrKysrLS0tCiA5IGZpbGVzIGNoYW5nZWQsIDUw
IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfY29uZmlnLmMKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9LY29uZmlnLnByb2ZpbGUgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLnBy
b2ZpbGUKaW5kZXggMGJmZDI3NmMxOWZlLi4zOTI1YmU2NWQzMTQgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L0tjb25maWcucHJvZmlsZQorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9LY29uZmlnLnByb2ZpbGUKQEAgLTEsMyArMSwxNSBAQAorY29uZmlnIERSTV9JOTE1X0ZFTkNF
X1RJTUVPVVQKKwlpbnQgIlRpbWVvdXQgZm9yIHVuc2lnbmFsZWQgZm9yZWlnbiBmZW5jZXMiCisJ
ZGVmYXVsdCAxMDAwMCAjIG1pbGxpc2Vjb25kcworCWhlbHAKKwkgIFdoZW4gbGlzdGVuaW5nIHRv
IGEgZm9yZWlnbiBmZW5jZSwgd2UgaW5zdGFsbCBhIHN1cHBsZW1lbnRhcnkgdGltZXIKKwkgIHRv
IGVuc3VyZSB0aGF0IHdlIGFyZSBhbHdheXMgc2lnbmFsZWQgYW5kIG91ciB1c2Vyc3BhY2UgaXMg
YWJsZSB0bworCSAgbWFrZSBmb3J3YXJkIHByb2dyZXNzLiBUaGlzIHZhbHVlIHNwZWNpZmllcyB0
aGUgdGltZW91dCB1c2VkIGZvciBhbgorCSAgdW5zaWduYWxlZCBmb3JlaWduIGZlbmNlLgorCisJ
ICBNYXkgYmUgMCB0byBkaXNhYmxlIHRoZSB0aW1lb3V0LCBhbmQgcmVseSBvbiB0aGUgZm9yZWln
biBmZW5jZSBiZWluZworCSAgZXZlbnR1YWxseSBzaWduYWxlZC4KKwogY29uZmlnIERSTV9JOTE1
X1VTRVJGQVVMVF9BVVRPU1VTUEVORAogCWludCAiUnVudGltZSBhdXRvc3VzcGVuZCBkZWxheSBm
b3IgdXNlcnNwYWNlIEdHVFQgbW1hcHMgKG1zKSIKIAlkZWZhdWx0IDI1MCAjIG1pbGxpc2Vjb25k
cwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9NYWtlZmlsZQppbmRleCA1MzU5YzczNmM3ODkuLmIwZGE2ZWE2ZTNmMSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvTWFrZWZpbGUKQEAgLTM1LDYgKzM1LDcgQEAgc3ViZGlyLWNjZmxhZ3MteSArPSAt
SSQoc3JjdHJlZSkvJChzcmMpCiAKICMgY29yZSBkcml2ZXIgY29kZQogaTkxNS15ICs9IGk5MTVf
ZHJ2Lm8gXAorCSAgaTkxNV9jb25maWcubyBcCiAJICBpOTE1X2lycS5vIFwKIAkgIGk5MTVfZ2V0
cGFyYW0ubyBcCiAJICBpOTE1X3BhcmFtcy5vIFwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggZmQ2ZDYzYjAzNDg5Li40MzJiNGVlYWY5ZjYgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNTgx
NCw3ICsxNTgxNCw3IEBAIGludGVsX3ByZXBhcmVfcGxhbmVfZmIoc3RydWN0IGRybV9wbGFuZSAq
X3BsYW5lLAogCWlmIChuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZmVuY2UpIHsgLyogZXhwbGljaXQg
ZmVuY2luZyAqLwogCQlyZXQgPSBpOTE1X3N3X2ZlbmNlX2F3YWl0X2RtYV9mZW5jZSgmc3RhdGUt
PmNvbW1pdF9yZWFkeSwKIAkJCQkJCSAgICBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZmVuY2UsCi0J
CQkJCQkgICAgSTkxNV9GRU5DRV9USU1FT1VULAorCQkJCQkJICAgIGk5MTVfZmVuY2VfdGltZW91
dChkZXZfcHJpdiksCiAJCQkJCQkgICAgR0ZQX0tFUk5FTCk7CiAJCWlmIChyZXQgPCAwKQogCQkJ
cmV0dXJuIHJldDsKQEAgLTE1ODQxLDcgKzE1ODQxLDggQEAgaW50ZWxfcHJlcGFyZV9wbGFuZV9m
YihzdHJ1Y3QgZHJtX3BsYW5lICpfcGxhbmUsCiAKIAkJcmV0ID0gaTkxNV9zd19mZW5jZV9hd2Fp
dF9yZXNlcnZhdGlvbigmc3RhdGUtPmNvbW1pdF9yZWFkeSwKIAkJCQkJCSAgICAgIG9iai0+YmFz
ZS5yZXN2LCBOVUxMLAotCQkJCQkJICAgICAgZmFsc2UsIEk5MTVfRkVOQ0VfVElNRU9VVCwKKwkJ
CQkJCSAgICAgIGZhbHNlLAorCQkJCQkJICAgICAgaTkxNV9mZW5jZV90aW1lb3V0KGRldl9wcml2
KSwKIAkJCQkJCSAgICAgIEdGUF9LRVJORUwpOwogCQlpZiAocmV0IDwgMCkKIAkJCWdvdG8gdW5w
aW5fZmI7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY2xm
bHVzaC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NsZmx1c2guYwppbmRl
eCAzNGJlNGMwZWU3YzUuLmJjMDIyMzcxNjkwNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2NsZmx1c2guYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fY2xmbHVzaC5jCkBAIC0xMDgsNyArMTA4LDcgQEAgYm9vbCBpOTE1X2dlbV9j
bGZsdXNoX29iamVjdChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCWlmIChjbGZs
dXNoKSB7CiAJCWk5MTVfc3dfZmVuY2VfYXdhaXRfcmVzZXJ2YXRpb24oJmNsZmx1c2gtPmJhc2Uu
Y2hhaW4sCiAJCQkJCQlvYmotPmJhc2UucmVzdiwgTlVMTCwgdHJ1ZSwKLQkJCQkJCUk5MTVfRkVO
Q0VfVElNRU9VVCwKKwkJCQkJCWk5MTVfZmVuY2VfdGltZW91dCh0b19pOTE1KG9iai0+YmFzZS5k
ZXYpKSwKIAkJCQkJCUk5MTVfRkVOQ0VfR0ZQKTsKIAkJZG1hX3Jlc3ZfYWRkX2V4Y2xfZmVuY2Uo
b2JqLT5iYXNlLnJlc3YsICZjbGZsdXNoLT5iYXNlLmRtYSk7CiAJCWRtYV9mZW5jZV93b3JrX2Nv
bW1pdCgmY2xmbHVzaC0+YmFzZSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fY2xpZW50X2JsdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2NsaWVudF9ibHQuYwppbmRleCAzYTE0NmFhMjU5M2IuLmQzYTg2YTRkNWMwNCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NsaWVudF9ibHQuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY2xpZW50X2JsdC5jCkBAIC0yODgs
OCArMjg4LDcgQEAgaW50IGk5MTVfZ2VtX3NjaGVkdWxlX2ZpbGxfcGFnZXNfYmx0KHN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAKIAlpOTE1X2dlbV9vYmplY3RfbG9jayhvYmopOwog
CWVyciA9IGk5MTVfc3dfZmVuY2VfYXdhaXRfcmVzZXJ2YXRpb24oJndvcmstPndhaXQsCi0JCQkJ
CSAgICAgIG9iai0+YmFzZS5yZXN2LCBOVUxMLAotCQkJCQkgICAgICB0cnVlLCBJOTE1X0ZFTkNF
X1RJTUVPVVQsCisJCQkJCSAgICAgIG9iai0+YmFzZS5yZXN2LCBOVUxMLCB0cnVlLCAwLAogCQkJ
CQkgICAgICBJOTE1X0ZFTkNFX0dGUCk7CiAJaWYgKGVyciA8IDApIHsKIAkJZG1hX2ZlbmNlX3Nl
dF9lcnJvcigmd29yay0+ZG1hLCBlcnIpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX2ZlbmNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fZmVuY2UuYwppbmRleCAyZjYxMDBlYzI2MDguLjhhYjg0MmM4MGY5OSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2ZlbmNlLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2ZlbmNlLmMKQEAgLTcyLDggKzcyLDggQEAgaTkxNV9n
ZW1fb2JqZWN0X2xvY2tfZmVuY2Uoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIAkJ
ICAgICAgIDAsIDApOwogCiAJaWYgKGk5MTVfc3dfZmVuY2VfYXdhaXRfcmVzZXJ2YXRpb24oJnN0
dWItPmNoYWluLAotCQkJCQkgICAgb2JqLT5iYXNlLnJlc3YsIE5VTEwsCi0JCQkJCSAgICB0cnVl
LCBJOTE1X0ZFTkNFX1RJTUVPVVQsCisJCQkJCSAgICBvYmotPmJhc2UucmVzdiwgTlVMTCwgdHJ1
ZSwKKwkJCQkJICAgIGk5MTVfZmVuY2VfdGltZW91dCh0b19pOTE1KG9iai0+YmFzZS5kZXYpKSwK
IAkJCQkJICAgIEk5MTVfRkVOQ0VfR0ZQKSA8IDApCiAJCWdvdG8gZXJyOwogCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2NvbmZpZy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9jb25maWcuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAu
LmI3OWI1ZjZkMmNmYQotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfY29uZmlnLmMKQEAgLTAsMCArMSwxNSBAQAorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IE1JVAorLyoKKyAqIENvcHlyaWdodCDCqSAyMDIwIEludGVsIENvcnBvcmF0aW9uCisgKi8KKwor
I2luY2x1ZGUgImk5MTVfZHJ2LmgiCisKK3Vuc2lnbmVkIGxvbmcKK2k5MTVfZmVuY2VfY29udGV4
dF90aW1lb3V0KGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1NjQgY29udGV4
dCkKK3sKKwlpZiAoY29udGV4dCAmJiBJU19BQ1RJVkUoQ09ORklHX0RSTV9JOTE1X0ZFTkNFX1RJ
TUVPVVQpKQorCQlyZXR1cm4gbXNlY3NfdG9famlmZmllc190aW1lb3V0KENPTkZJR19EUk1fSTkx
NV9GRU5DRV9USU1FT1VUKTsKKworCXJldHVybiAwOworfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgK
aW5kZXggNmFmNjk1NTU3MzNlLi4yZTNiNWM0ZDA3NTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aApAQCAtNjE0LDggKzYxNCwxNiBAQCBzdHJ1Y3QgaTkxNV9nZW1fbW0gewogCiAjZGVmaW5lIEk5
MTVfSURMRV9FTkdJTkVTX1RJTUVPVVQgKDIwMCkgLyogaW4gbXMgKi8KIAordW5zaWduZWQgbG9u
ZyBpOTE1X2ZlbmNlX2NvbnRleHRfdGltZW91dChjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwKKwkJCQkJIHU2NCBjb250ZXh0KTsKKworc3RhdGljIGlubGluZSB1bnNpZ25lZCBs
b25nCitpOTE1X2ZlbmNlX3RpbWVvdXQoY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpCit7CisJcmV0dXJuIGk5MTVfZmVuY2VfY29udGV4dF90aW1lb3V0KGk5MTUsIFU2NF9NQVgp
OworfQorCiAjZGVmaW5lIEk5MTVfUkVTRVRfVElNRU9VVCAoMTAgKiBIWikgLyogMTBzICovCi0j
ZGVmaW5lIEk5MTVfRkVOQ0VfVElNRU9VVCAoMTAgKiBIWikgLyogMTBzICovCiAKICNkZWZpbmUg
STkxNV9FTkdJTkVfREVBRF9USU1FT1VUICAoNCAqIEhaKSAgLyogU2Vxbm8sIGhlYWQgYW5kIHN1
YnVuaXRzIGRlYWQgKi8KICNkZWZpbmUgSTkxNV9TRVFOT19ERUFEX1RJTUVPVVQgICAoMTIgKiBI
WikgLyogU2Vxbm8gZGVhZCB3aXRoIGFjdGl2ZSBoZWFkICovCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVxdWVzdC5jCmluZGV4IGZjZjk5NWU3ZDEwYy4uMzA0MzIwYWZlMzJiIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlcXVlc3QuYwpAQCAtMTA5OSw3ICsxMDk5LDggQEAgaTkxNV9yZXF1ZXN0X2F3
YWl0X2V4dGVybmFsKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCBzdHJ1Y3QgZG1hX2ZlbmNlICpm
ZW5jZSkKIHsKIAltYXJrX2V4dGVybmFsKHJxKTsKIAlyZXR1cm4gaTkxNV9zd19mZW5jZV9hd2Fp
dF9kbWFfZmVuY2UoJnJxLT5zdWJtaXQsIGZlbmNlLAotCQkJCQkgICAgIGZlbmNlLT5jb250ZXh0
ID8gSTkxNV9GRU5DRV9USU1FT1VUIDogMCwKKwkJCQkJICAgICBpOTE1X2ZlbmNlX2NvbnRleHRf
dGltZW91dChycS0+aTkxNSwKKwkJCQkJCQkJCWZlbmNlLT5jb250ZXh0KSwKIAkJCQkJICAgICBJ
OTE1X0ZFTkNFX0dGUCk7CiB9CiAKQEAgLTEyMzAsNyArMTIzMSw4IEBAIGk5MTVfcmVxdWVzdF9h
d2FpdF9wcm94eShzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwgc3RydWN0IGRtYV9mZW5jZSAqZmVu
Y2UpCiAJICogV2FpdCB1bnRpbCB3ZSBrbm93IHRoZSByZWFsIGZlbmNlIHNvIHRoYXQgY2FuIG9w
dGltaXNlIHRoZQogCSAqIGludGVyLWZlbmNlIHN5bmNocm9uaXNhdGlvbi4KIAkgKi8KLQlyZXR1
cm4gX19pOTE1X3JlcXVlc3RfYXdhaXRfcHJveHkocnEsIGZlbmNlLCBJOTE1X0ZFTkNFX1RJTUVP
VVQsCisJcmV0dXJuIF9faTkxNV9yZXF1ZXN0X2F3YWl0X3Byb3h5KHJxLCBmZW5jZSwKKwkJCQkJ
ICBpOTE1X2ZlbmNlX3RpbWVvdXQocnEtPmk5MTUpLAogCQkJCQkgIGF3YWl0X3Byb3h5LCBOVUxM
KTsKIH0KIApAQCAtMTM5OCw3ICsxNDAwLDggQEAgaTkxNV9yZXF1ZXN0X2F3YWl0X3Byb3h5X2V4
ZWN1dGlvbihzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwKIAkgKiBiZSBhYmxlIHRvIGhvb2sgaW50
byBpdHMgZXhlY3V0aW9uLCBhcyBvcHBvc2VkIHRvIHdhaXRpbmcgZm9yCiAJICogaXRzIGNvbXBs
ZXRpb24uCiAJICovCi0JcmV0dXJuIF9faTkxNV9yZXF1ZXN0X2F3YWl0X3Byb3h5KHJxLCBmZW5j
ZSwgSTkxNV9GRU5DRV9USU1FT1VULAorCXJldHVybiBfX2k5MTVfcmVxdWVzdF9hd2FpdF9wcm94
eShycSwgZmVuY2UsCisJCQkJCSAgaTkxNV9mZW5jZV90aW1lb3V0KHJxLT5pOTE1KSwKIAkJCQkJ
ICBleGVjdXRpb25fcHJveHksIGhvb2spOwogfQogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
