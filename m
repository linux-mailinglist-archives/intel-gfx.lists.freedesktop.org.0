Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98ECEA136A
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 10:12:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7C546E067;
	Thu, 29 Aug 2019 08:12:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01EFF6E054
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 08:12:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18299877-1500050 
 for multiple; Thu, 29 Aug 2019 09:11:56 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Aug 2019 09:11:33 +0100
Message-Id: <20190829081150.10271-20-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190829081150.10271-1-chris@chris-wilson.co.uk>
References: <20190829081150.10271-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 19/36] drm/i915: Merge wait_for_timelines with
 retire_request
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

d2FpdF9mb3JfdGltZWxpbmVzIGlzIGVzc2VudGlhbGx5IHRoZSBzYW1lIGxvb3AgYXMgcmV0aXJp
bmcgcmVxdWVzdHMKKHdpdGggYW4gZXh0cmEpLCBzbyBtZXJnZSB0aGUgdHdvIGludG8gb25lIHJv
dXRpbmUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jICAgICAg
fCAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMgICAgICAgIHwg
IDYgKy0KIC4uLi9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYyB8ICA0
ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF90aW1lbGluZS5jICAgfCAgMiAr
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgICAgICAgICAgIHwgIDYgKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8ICAzICstCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jICAgICAgICAgICAgICAgfCA2OCArKy0tLS0t
LS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ldmljdC5jICAgICAg
ICAgfCAxMiArKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyAgICAgICAg
ICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgICAgICAgICAg
IHwgMjEgKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuaCAgICAgICAg
ICAgfCAgMyArLQogLi4uL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X2ZsdXNoX3Rlc3QuYyAg
IHwgIDQgKy0KIC4uLi9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9saXZlX3Rlc3QuYyAgICB8
ICA0ICstCiAuLi4vZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9kZXZpY2UuYyAgfCAg
MiArLQogMTQgZmlsZXMgY2hhbmdlZCwgNDIgaW5zZXJ0aW9ucygrKSwgOTkgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKaW5kZXggZTRhZWUyNjc4
NTQ2Li4zMTZhYTg3NDFhY2IgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9tbWFuLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21t
YW4uYwpAQCAtNDM3LDkgKzQzNyw3IEBAIHN0YXRpYyBpbnQgY3JlYXRlX21tYXBfb2Zmc2V0KHN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiAKIAkvKiBBdHRlbXB0IHRvIHJlYXAgc29t
ZSBtbWFwIHNwYWNlIGZyb20gZGVhZCBvYmplY3RzICovCiAJZG8gewotCQllcnIgPSBpOTE1X2dl
bV93YWl0X2Zvcl9pZGxlKGk5MTUsCi0JCQkJCSAgICAgSTkxNV9XQUlUX0lOVEVSUlVQVElCTEUs
Ci0JCQkJCSAgICAgTUFYX1NDSEVEVUxFX1RJTUVPVVQpOworCQllcnIgPSBpOTE1X2dlbV93YWl0
X2Zvcl9pZGxlKGk5MTUsIE1BWF9TQ0hFRFVMRV9USU1FT1VUKTsKIAkJaWYgKGVycikKIAkJCWJy
ZWFrOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0u
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jCmluZGV4IGU4M2VlZDhm
YTQ1Mi4uYWZiY2Y5MjE5MjY3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0u
YwpAQCAtMjUsNyArMjUsNyBAQCBzdGF0aWMgdm9pZCByZXRpcmVfd29ya19oYW5kbGVyKHN0cnVj
dCB3b3JrX3N0cnVjdCAqd29yaykKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9CiAJ
CWNvbnRhaW5lcl9vZih3b3JrLCB0eXBlb2YoKmk5MTUpLCBnZW0ucmV0aXJlX3dvcmsud29yayk7
CiAKLQlpOTE1X3JldGlyZV9yZXF1ZXN0cyhpOTE1KTsKKwlpOTE1X3JldGlyZV9yZXF1ZXN0cyhp
OTE1LCAwKTsKIAogCXF1ZXVlX2RlbGF5ZWRfd29yayhpOTE1LT53cSwKIAkJCSAgICZpOTE1LT5n
ZW0ucmV0aXJlX3dvcmssCkBAIC01OSw5ICs1OSw3IEBAIHN0YXRpYyBib29sIHN3aXRjaF90b19r
ZXJuZWxfY29udGV4dF9zeW5jKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiB7CiAJYm9vbCByZXN1bHQg
PSAhaW50ZWxfZ3RfaXNfd2VkZ2VkKGd0KTsKIAotCWlmIChpOTE1X2dlbV93YWl0X2Zvcl9pZGxl
KGd0LT5pOTE1LAotCQkJCSAgIEk5MTVfV0FJVF9GT1JfSURMRV9CT09TVCwKLQkJCQkgICBJOTE1
X0dFTV9JRExFX1RJTUVPVVQpID09IC1FVElNRSkgeworCWlmIChpOTE1X2dlbV93YWl0X2Zvcl9p
ZGxlKGd0LT5pOTE1LCBJOTE1X0dFTV9JRExFX1RJTUVPVVQpID09IC1FVElNRSkgewogCQkvKiBY
WFggaGlkZSB3YXJuaW5nIGZyb20gZ2VtX2VpbyAqLwogCQlpZiAoaTkxNV9tb2RwYXJhbXMucmVz
ZXQpIHsKIAkJCWRldl9lcnIoZ3QtPmk5MTUtPmRybS5kZXYsCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jCmluZGV4IGI4N2Uz
NWE3MTNiOC4uYmM0YzhkNzYzMDI0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYwpAQCAtMzA0LDcgKzMwNCw3IEBAIGNy
ZWF0ZV90ZXN0X29iamVjdChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKIAlpbnQgZXJy
OwogCiAJLyogS2VlcCBpbiBHRU0ncyBnb29kIGdyYWNlcyAqLwotCWk5MTVfcmV0aXJlX3JlcXVl
c3RzKHZtLT5pOTE1KTsKKwlpOTE1X3JldGlyZV9yZXF1ZXN0cyh2bS0+aTkxNSwgMCk7CiAKIAlz
aXplID0gbWluKHZtLT50b3RhbCAvIDIsIDEwMjR1bGwgKiBEV19QRVJfUEFHRSAqIFBBR0VfU0la
RSk7CiAJc2l6ZSA9IHJvdW5kX2Rvd24oc2l6ZSwgRFdfUEVSX1BBR0UgKiBQQUdFX1NJWkUpOwpA
QCAtOTIzLDcgKzkyMyw3IEBAIF9fc3NldV9maW5pc2goY29uc3QgY2hhciAqbmFtZSwKIAogCWlm
ICgoZmxhZ3MgJiBURVNUX0lETEUpICYmIHJldCA9PSAwKSB7CiAJCXJldCA9IGk5MTVfZ2VtX3dh
aXRfZm9yX2lkbGUoY2UtPmVuZ2luZS0+aTkxNSwKLQkJCQkJICAgICAwLCBNQVhfU0NIRURVTEVf
VElNRU9VVCk7CisJCQkJCSAgICAgTUFYX1NDSEVEVUxFX1RJTUVPVVQpOwogCQlpZiAocmV0KQog
CQkJcmV0dXJuIHJldDsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2Vs
ZnRlc3RfdGltZWxpbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3RpbWVs
aW5lLmMKaW5kZXggMTZhYmZhYmYwOGM3Li5iMGIwZmE1ZjkxZGUgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3RpbWVsaW5lLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfdGltZWxpbmUuYwpAQCAtNzM0LDcgKzczNCw3IEBAIHN0YXRp
YyBpbnQgbGl2ZV9od3NwX3dyYXAodm9pZCAqYXJnKQogCQkJZ290byBvdXQ7CiAJCX0KIAotCQlp
OTE1X3JldGlyZV9yZXF1ZXN0cyhpOTE1KTsgLyogcmVjeWNsZSBIV1NQICovCisJCWk5MTVfcmV0
aXJlX3JlcXVlc3RzKGk5MTUsIDApOyAvKiByZWN5Y2xlIEhXU1AgKi8KIAl9CiAKIG91dDoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKaW5kZXggMDljNmM0ODVhNzMyLi5kNzQxMGYzZjU3
NmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCkBAIC0zNjEyLDEyICszNjEyLDEw
IEBAIGk5MTVfZHJvcF9jYWNoZXNfc2V0KHZvaWQgKmRhdGEsIHU2NCB2YWwpCiAJCWludGVsX2d0
X3NldF93ZWRnZWQoJmk5MTUtPmd0KTsKIAogCWlmICh2YWwgJiBEUk9QX1JFVElSRSkKLQkJaTkx
NV9yZXRpcmVfcmVxdWVzdHMoaTkxNSk7CisJCWk5MTVfcmV0aXJlX3JlcXVlc3RzKGk5MTUsIDAp
OwogCiAJaWYgKHZhbCAmIChEUk9QX0lETEUgfCBEUk9QX0FDVElWRSkpIHsKLQkJcmV0ID0gaTkx
NV9nZW1fd2FpdF9mb3JfaWRsZShpOTE1LAotCQkJCQkgICAgIEk5MTVfV0FJVF9JTlRFUlJVUFRJ
QkxFLAotCQkJCQkgICAgIE1BWF9TQ0hFRFVMRV9USU1FT1VUKTsKKwkJcmV0ID0gaTkxNV9nZW1f
d2FpdF9mb3JfaWRsZShpOTE1LCBNQVhfU0NIRURVTEVfVElNRU9VVCk7CiAJCWlmIChyZXQpCiAJ
CQlyZXR1cm4gcmV0OwogCX0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IGYxMWQ3NzdiMzlh
ZC4uZTkxMTU5Y2IyZmI2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTIzMTMsOCArMjMx
Myw3IEBAIHZvaWQgaTkxNV9nZW1fZHJpdmVyX3JlZ2lzdGVyKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KTsKIHZvaWQgaTkxNV9nZW1fZHJpdmVyX3VucmVnaXN0ZXIoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpOwogdm9pZCBpOTE1X2dlbV9kcml2ZXJfcmVtb3ZlKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7CiB2b2lkIGk5MTVfZ2VtX2RyaXZlcl9yZWxlYXNl
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7Ci1pbnQgaTkxNV9nZW1fd2FpdF9m
b3JfaWRsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCi0JCQkgICB1bnNpZ25l
ZCBpbnQgZmxhZ3MsIGxvbmcgdGltZW91dCk7CitpbnQgaTkxNV9nZW1fd2FpdF9mb3JfaWRsZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGxvbmcgdGltZW91dCk7CiB2b2lkIGk5
MTVfZ2VtX3N1c3BlbmQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKIHZvaWQg
aTkxNV9nZW1fc3VzcGVuZF9sYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7
CiB2b2lkIGk5MTVfZ2VtX3Jlc3VtZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKaW5kZXggYWE2Y2Y1M2M0NDIxLi5hMDQ1MTY2MTg0ZmEg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpAQCAtODkwLDc5ICs4OTAsMTkgQEAgdm9pZCBpOTE1
X2dlbV9ydW50aW1lX3N1c3BlbmQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJfQog
fQogCi1zdGF0aWMgbG9uZwotd2FpdF9mb3JfdGltZWxpbmVzKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1LAotCQkgICB1bnNpZ25lZCBpbnQgd2FpdCwgbG9uZyB0aW1lb3V0KQotewotCXN0
cnVjdCBpbnRlbF9ndF90aW1lbGluZXMgKnRpbWVsaW5lcyA9ICZpOTE1LT5ndC50aW1lbGluZXM7
Ci0Jc3RydWN0IGludGVsX3RpbWVsaW5lICp0bDsKLQl1bnNpZ25lZCBsb25nIGZsYWdzOwotCi0J
c3Bpbl9sb2NrX2lycXNhdmUoJnRpbWVsaW5lcy0+bG9jaywgZmxhZ3MpOwotCWxpc3RfZm9yX2Vh
Y2hfZW50cnkodGwsICZ0aW1lbGluZXMtPmFjdGl2ZV9saXN0LCBsaW5rKSB7Ci0JCXN0cnVjdCBk
bWFfZmVuY2UgKmZlbmNlOwotCi0JCWZlbmNlID0gaTkxNV9hY3RpdmVfZmVuY2VfZ2V0KCZ0bC0+
bGFzdF9yZXF1ZXN0KTsKLQkJaWYgKCFmZW5jZSkKLQkJCWNvbnRpbnVlOwotCi0JCXNwaW5fdW5s
b2NrX2lycXJlc3RvcmUoJnRpbWVsaW5lcy0+bG9jaywgZmxhZ3MpOwotCi0JCWlmICghZG1hX2Zl
bmNlX2lzX2k5MTUoZmVuY2UpKSB7Ci0JCQl0aW1lb3V0ID0gZG1hX2ZlbmNlX3dhaXRfdGltZW91
dChmZW5jZSwKLQkJCQkJCQkgZmxhZ3MgJiBJOTE1X1dBSVRfSU5URVJSVVBUSUJMRSwKLQkJCQkJ
CQkgdGltZW91dCk7Ci0JCX0gZWxzZSB7Ci0JCQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSA9IHRv
X3JlcXVlc3QoZmVuY2UpOwotCi0JCQkvKgotCQkJICogIlJhY2UtdG8taWRsZSIuCi0JCQkgKgot
CQkJICogU3dpdGNoaW5nIHRvIHRoZSBrZXJuZWwgY29udGV4dCBpcyBvZnRlbiB1c2VkIGFzCi0J
CQkgKiBhIHN5bmNocm9ub3VzIHN0ZXAgcHJpb3IgdG8gaWRsaW5nLCBlLmcuIGluIHN1c3BlbmQK
LQkJCSAqIGZvciBmbHVzaGluZyBhbGwgY3VycmVudCBvcGVyYXRpb25zIHRvIG1lbW9yeSBiZWZv
cmUKLQkJCSAqIHNsZWVwaW5nLiBUaGVzZSB3ZSB3YW50IHRvIGNvbXBsZXRlIGFzIHF1aWNrbHkg
YXMKLQkJCSAqIHBvc3NpYmxlIHRvIGF2b2lkIHByb2xvbmdlZCBzdGFsbHMsIHNvIGFsbG93IHRo
ZSBncHUKLQkJCSAqIHRvIGJvb3N0IHRvIG1heGltdW0gY2xvY2tzLgotCQkJICovCi0JCQlpZiAo
ZmxhZ3MgJiBJOTE1X1dBSVRfRk9SX0lETEVfQk9PU1QpCi0JCQkJZ2VuNl9ycHNfYm9vc3QocnEp
OwotCi0JCQl0aW1lb3V0ID0gaTkxNV9yZXF1ZXN0X3dhaXQocnEsIGZsYWdzLCB0aW1lb3V0KTsK
LQkJfQotCi0JCWRtYV9mZW5jZV9wdXQoZmVuY2UpOwotCQlpZiAodGltZW91dCA8IDApCi0JCQly
ZXR1cm4gdGltZW91dDsKLQotCQkvKiByZXN0YXJ0IGFmdGVyIHJlYWNxdWlyaW5nIHRoZSBsb2Nr
ICovCi0JCXNwaW5fbG9ja19pcnFzYXZlKCZ0aW1lbGluZXMtPmxvY2ssIGZsYWdzKTsKLQkJdGwg
PSBsaXN0X2VudHJ5KCZ0aW1lbGluZXMtPmFjdGl2ZV9saXN0LCB0eXBlb2YoKnRsKSwgbGluayk7
Ci0JfQotCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnRpbWVsaW5lcy0+bG9jaywgZmxhZ3MpOwot
Ci0JcmV0dXJuIHRpbWVvdXQ7Ci19Ci0KLWludCBpOTE1X2dlbV93YWl0X2Zvcl9pZGxlKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1LAotCQkJICAgdW5zaWduZWQgaW50IGZsYWdzLCBsb25n
IHRpbWVvdXQpCitpbnQgaTkxNV9nZW1fd2FpdF9mb3JfaWRsZShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSwgbG9uZyB0aW1lb3V0KQogewogCS8qIElmIHRoZSBkZXZpY2UgaXMgYXNsZWVw
LCB3ZSBoYXZlIG5vIHJlcXVlc3RzIG91dHN0YW5kaW5nICovCiAJaWYgKCFpbnRlbF9ndF9wbV9p
c19hd2FrZSgmaTkxNS0+Z3QpKQogCQlyZXR1cm4gMDsKIAotCWRvIHsKLQkJdGltZW91dCA9IHdh
aXRfZm9yX3RpbWVsaW5lcyhpOTE1LCBmbGFncywgdGltZW91dCk7Ci0JCWlmICh0aW1lb3V0IDwg
MCkKLQkJCXJldHVybiB0aW1lb3V0OwotCisJd2hpbGUgKCh0aW1lb3V0ID0gaTkxNV9yZXRpcmVf
cmVxdWVzdHMoaTkxNSwgdGltZW91dCkpID4gMCkgewogCQljb25kX3Jlc2NoZWQoKTsKIAkJaWYg
KHNpZ25hbF9wZW5kaW5nKGN1cnJlbnQpKQogCQkJcmV0dXJuIC1FSU5UUjsKKwl9CiAKLQl9IHdo
aWxlIChpOTE1X3JldGlyZV9yZXF1ZXN0cyhpOTE1KSk7Ci0KLQlyZXR1cm4gMDsKKwlyZXR1cm4g
dGltZW91dDsKIH0KIAogc3RydWN0IGk5MTVfdm1hICoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2V2aWN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bV9ldmljdC5jCmluZGV4IDQ0ZjViNjM4ZmE0My4uNzA4MDU1YTM4ODdlIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ldmljdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2V2aWN0LmMKQEAgLTQ2LDkgKzQ2LDcgQEAgc3RhdGljIGludCBnZ3R0
X2ZsdXNoKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCSAqIHRoZSBob3BlcyB0aGF0
IHdlIGNhbiB0aGVuIHJlbW92ZSBjb250ZXh0cyBhbmQgdGhlIGxpa2Ugb25seQogCSAqIGJvdW5k
IGJ5IHRoZWlyIGFjdGl2ZSByZWZlcmVuY2UuCiAJICovCi0JcmV0dXJuIGk5MTVfZ2VtX3dhaXRf
Zm9yX2lkbGUoaTkxNSwKLQkJCQkgICAgICBJOTE1X1dBSVRfSU5URVJSVVBUSUJMRSwKLQkJCQkg
ICAgICBNQVhfU0NIRURVTEVfVElNRU9VVCk7CisJcmV0dXJuIGk5MTVfZ2VtX3dhaXRfZm9yX2lk
bGUoaTkxNSwgTUFYX1NDSEVEVUxFX1RJTUVPVVQpOwogfQogCiBzdGF0aWMgYm9vbApAQCAtMTI2
LDYgKzEyNCw4IEBAIGk5MTVfZ2VtX2V2aWN0X3NvbWV0aGluZyhzdHJ1Y3QgaTkxNV9hZGRyZXNz
X3NwYWNlICp2bSwKIAkJCQkgICAgbWluX3NpemUsIGFsaWdubWVudCwgY2FjaGVfbGV2ZWwsCiAJ
CQkJICAgIHN0YXJ0LCBlbmQsIG1vZGUpOwogCisJaTkxNV9yZXRpcmVfcmVxdWVzdHModm0tPmk5
MTUsIDApOworCiBzZWFyY2hfYWdhaW46CiAJYWN0aXZlID0gTlVMTDsKIAlJTklUX0xJU1RfSEVB
RCgmZXZpY3Rpb25fbGlzdCk7CkBAIC0yNjUsMTMgKzI2NSwxMyBAQCBpbnQgaTkxNV9nZW1fZXZp
Y3RfZm9yX25vZGUoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCiAKIAl0cmFjZV9pOTE1
X2dlbV9ldmljdF9ub2RlKHZtLCB0YXJnZXQsIGZsYWdzKTsKIAotCS8qIFJldGlyZSBiZWZvcmUg
d2Ugc2VhcmNoIHRoZSBhY3RpdmUgbGlzdC4gQWx0aG91Z2ggd2UgaGF2ZQorCS8qCisJICogUmV0
aXJlIGJlZm9yZSB3ZSBzZWFyY2ggdGhlIGFjdGl2ZSBsaXN0LiBBbHRob3VnaCB3ZSBoYXZlCiAJ
ICogcmVhc29uYWJsZSBhY2N1cmFjeSBpbiBvdXIgcmV0aXJlbWVudCBsaXN0cywgd2UgbWF5IGhh
dmUKIAkgKiBhIHN0cmF5IHBpbiAocHJldmVudGluZyBldmljdGlvbikgdGhhdCBjYW4gb25seSBi
ZSByZXNvbHZlZCBieQogCSAqIHJldGlyaW5nLgogCSAqLwotCWlmICghKGZsYWdzICYgUElOX05P
TkJMT0NLKSkKLQkJaTkxNV9yZXRpcmVfcmVxdWVzdHModm0tPmk5MTUpOworCWk5MTVfcmV0aXJl
X3JlcXVlc3RzKHZtLT5pOTE1LCAwKTsKIAogCWNoZWNrX2NvbG9yID0gdm0tPm1tLmNvbG9yX2Fk
anVzdDsKIAlpZiAoY2hlY2tfY29sb3IpIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMK
aW5kZXggOWM3YmFkMzMyNDM4Li4wMmM0YzVhNGI0N2YgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtX2d0dC5jCkBAIC0yNTIxLDcgKzI1MjEsNyBAQCB2b2lkIGk5MTVfZ2VtX2d0dF9maW5pc2hf
cGFnZXMoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAlzdHJ1Y3QgaTkxNV9nZ3R0
ICpnZ3R0ID0gJmRldl9wcml2LT5nZ3R0OwogCiAJaWYgKHVubGlrZWx5KGdndHQtPmRvX2lkbGVf
bWFwcykpIHsKLQkJaWYgKGk5MTVfZ2VtX3dhaXRfZm9yX2lkbGUoZGV2X3ByaXYsIDAsIE1BWF9T
Q0hFRFVMRV9USU1FT1VUKSkgeworCQlpZiAoaTkxNV9yZXRpcmVfcmVxdWVzdHMoZGV2X3ByaXYs
IE1BWF9TQ0hFRFVMRV9USU1FT1VUKSkgewogCQkJRFJNX0VSUk9SKCJGYWlsZWQgdG8gd2FpdCBm
b3IgaWRsZTsgVlQnZCBtYXkgaGFuZy5cbiIpOwogCQkJLyogV2FpdCBhIGJpdCwgaW4gaG9wZXMg
aXQgYXZvaWRzIHRoZSBoYW5nICovCiAJCQl1ZGVsYXkoMTApOwpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlcXVlc3QuYwppbmRleCA0ZWNmYWUxNDMyNzYuLjFjNWU4MDRjOWNhMiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZXF1ZXN0LmMKQEAgLTE0MjksMTAgKzE0MjksMTEgQEAgbG9uZyBpOTE1X3Jl
cXVlc3Rfd2FpdChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwKIAlyZXR1cm4gdGltZW91dDsKIH0K
IAotYm9vbCBpOTE1X3JldGlyZV9yZXF1ZXN0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSkKK2xvbmcgaTkxNV9yZXRpcmVfcmVxdWVzdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUsIGxvbmcgdGltZW91dCkKIHsKIAlzdHJ1Y3QgaW50ZWxfZ3RfdGltZWxpbmVzICp0aW1lbGlu
ZXMgPSAmaTkxNS0+Z3QudGltZWxpbmVzOwogCXN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGwsICp0
bjsKKwl1bnNpZ25lZCBsb25nIGFjdGl2ZV9jb3VudCA9IDA7CiAJdW5zaWduZWQgbG9uZyBmbGFn
czsKIAlMSVNUX0hFQUQoZnJlZSk7CiAKQEAgLTE0NDYsMTMgKzE0NDcsMjcgQEAgYm9vbCBpOTE1
X3JldGlyZV9yZXF1ZXN0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAkJdGwtPmFj
dGl2ZV9jb3VudCsrOyAvKiBwaW4gdGhlIGxpc3QgZWxlbWVudCAqLwogCQlzcGluX3VubG9ja19p
cnFyZXN0b3JlKCZ0aW1lbGluZXMtPmxvY2ssIGZsYWdzKTsKIAorCQlpZiAodGltZW91dCA+IDAp
IHsKKwkJCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOworCisJCQlmZW5jZSA9IGk5MTVfYWN0aXZl
X2ZlbmNlX2dldCgmdGwtPmxhc3RfcmVxdWVzdCk7CisJCQlpZiAoZmVuY2UpIHsKKwkJCQl0aW1l
b3V0ID0gZG1hX2ZlbmNlX3dhaXRfdGltZW91dChmZW5jZSwKKwkJCQkJCQkJIHRydWUsCisJCQkJ
CQkJCSB0aW1lb3V0KTsKKwkJCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKKwkJCX0KKwkJfQorCiAJ
CXJldGlyZV9yZXF1ZXN0cyh0bCk7CiAKIAkJc3Bpbl9sb2NrX2lycXNhdmUoJnRpbWVsaW5lcy0+
bG9jaywgZmxhZ3MpOwogCiAJCS8qIFJlc3VtZSBpdGVyYXRpb24gYWZ0ZXIgZHJvcHBpbmcgbG9j
ayAqLwogCQlsaXN0X3NhZmVfcmVzZXRfbmV4dCh0bCwgdG4sIGxpbmspOwotCQlpZiAoIS0tdGwt
PmFjdGl2ZV9jb3VudCkKKwkJaWYgKC0tdGwtPmFjdGl2ZV9jb3VudCkKKwkJCWFjdGl2ZV9jb3Vu
dCArPSAhIXJjdV9hY2Nlc3NfcG9pbnRlcih0bC0+bGFzdF9yZXF1ZXN0LmZlbmNlKTsKKwkJZWxz
ZQogCQkJbGlzdF9kZWwoJnRsLT5saW5rKTsKIAogCQltdXRleF91bmxvY2soJnRsLT5tdXRleCk7
CkBAIC0xNDY4LDcgKzE0ODMsNyBAQCBib29sIGk5MTVfcmV0aXJlX3JlcXVlc3RzKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1KQogCWxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZSh0bCwgdG4s
ICZmcmVlLCBsaW5rKQogCQlfX2ludGVsX3RpbWVsaW5lX2ZyZWUoJnRsLT5rcmVmKTsKIAotCXJl
dHVybiAhbGlzdF9lbXB0eSgmdGltZWxpbmVzLT5hY3RpdmVfbGlzdCk7CisJcmV0dXJuIGFjdGl2
ZV9jb3VudCA/IHRpbWVvdXQgOiAwOwogfQogCiAjaWYgSVNfRU5BQkxFRChDT05GSUdfRFJNX0k5
MTVfU0VMRlRFU1QpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVl
c3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5oCmluZGV4IDU3YTIxOTNj
NjRkMS4uMmE1ZDY4MmFhNmIxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlcXVlc3QuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuaApAQCAt
MzEwLDcgKzMxMCw2IEBAIGxvbmcgaTkxNV9yZXF1ZXN0X3dhaXQoc3RydWN0IGk5MTVfcmVxdWVz
dCAqcnEsCiAjZGVmaW5lIEk5MTVfV0FJVF9JTlRFUlJVUFRJQkxFCUJJVCgwKQogI2RlZmluZSBJ
OTE1X1dBSVRfUFJJT1JJVFkJQklUKDEpIC8qIHNtYWxsIHByaW9yaXR5IGJ1bXAgZm9yIHRoZSBy
ZXF1ZXN0ICovCiAjZGVmaW5lIEk5MTVfV0FJVF9BTEwJCUJJVCgyKSAvKiB1c2VkIGJ5IGk5MTVf
Z2VtX29iamVjdF93YWl0KCkgKi8KLSNkZWZpbmUgSTkxNV9XQUlUX0ZPUl9JRExFX0JPT1NUIEJJ
VCgzKQogCiBzdGF0aWMgaW5saW5lIGJvb2wgaTkxNV9yZXF1ZXN0X3NpZ25hbGVkKGNvbnN0IHN0
cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogewpAQCAtNDQwLDYgKzQzOSw2IEBAIHN0YXRpYyBpbmxp
bmUgYm9vbCBpOTE1X3JlcXVlc3RfaGFzX25vcHJlZW1wdChjb25zdCBzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICpycSkKIAlyZXR1cm4gdW5saWtlbHkocnEtPmZsYWdzICYgSTkxNV9SRVFVRVNUX05PUFJF
RU1QVCk7CiB9CiAKLWJvb2wgaTkxNV9yZXRpcmVfcmVxdWVzdHMoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUpOworbG9uZyBpOTE1X3JldGlyZV9yZXF1ZXN0cyhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSwgbG9uZyB0aW1lb3V0KTsKIAogI2VuZGlmIC8qIEk5MTVfUkVRVUVTVF9I
ICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X2ZsdXNo
X3Rlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3RfZmx1c2hfdGVzdC5j
CmluZGV4IDJhNWZiZTQ2ZWE5Zi4uZWQ0OTZiZDZkODRmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X2ZsdXNoX3Rlc3QuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9zZWxmdGVzdHMvaWd0X2ZsdXNoX3Rlc3QuYwpAQCAtMTgsOCArMTgsNyBAQCBpbnQg
aWd0X2ZsdXNoX3Rlc3Qoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAKIAljb25kX3Jl
c2NoZWQoKTsKIAotCWk5MTVfcmV0aXJlX3JlcXVlc3RzKGk5MTUpOwotCWlmIChpOTE1X2dlbV93
YWl0X2Zvcl9pZGxlKGk5MTUsIDAsIEhaIC8gNSkgPT0gLUVUSU1FKSB7CisJaWYgKGk5MTVfZ2Vt
X3dhaXRfZm9yX2lkbGUoaTkxNSwgSFogLyA1KSA9PSAtRVRJTUUpIHsKIAkJcHJfZXJyKCIlcFMg
dGltZWQgb3V0LCBjYW5jZWxsaW5nIGFsbCBmdXJ0aGVyIHRlc3RpbmcuXG4iLAogCQkgICAgICAg
X19idWlsdGluX3JldHVybl9hZGRyZXNzKDApKTsKIApAQCAtMzAsNyArMjksNiBAQCBpbnQgaWd0
X2ZsdXNoX3Rlc3Qoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJCWludGVsX2d0X3Nl
dF93ZWRnZWQoJmk5MTUtPmd0KTsKIAkJcmV0ID0gLUVJTzsKIAl9Ci0JaTkxNV9yZXRpcmVfcmVx
dWVzdHMoaTkxNSk7CiAKIAlyZXR1cm4gcmV0OwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9saXZlX3Rlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L3NlbGZ0ZXN0cy9pZ3RfbGl2ZV90ZXN0LmMKaW5kZXggMDRhNmY4OGZkZjY0Li5lYWU5MGY5N2Rm
NmMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3RfbGl2ZV90
ZXN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9saXZlX3Rlc3Qu
YwpAQCAtMjMsOSArMjMsNyBAQCBpbnQgaWd0X2xpdmVfdGVzdF9iZWdpbihzdHJ1Y3QgaWd0X2xp
dmVfdGVzdCAqdCwKIAl0LT5mdW5jID0gZnVuYzsKIAl0LT5uYW1lID0gbmFtZTsKIAotCWVyciA9
IGk5MTVfZ2VtX3dhaXRfZm9yX2lkbGUoaTkxNSwKLQkJCQkgICAgIEk5MTVfV0FJVF9JTlRFUlJV
UFRJQkxFLAotCQkJCSAgICAgTUFYX1NDSEVEVUxFX1RJTUVPVVQpOworCWVyciA9IGk5MTVfZ2Vt
X3dhaXRfZm9yX2lkbGUoaTkxNSwgTUFYX1NDSEVEVUxFX1RJTUVPVVQpOwogCWlmIChlcnIpIHsK
IAkJcHJfZXJyKCIlcyglcyk6IGZhaWxlZCB0byBpZGxlIGJlZm9yZSwgd2l0aCBlcnI9JWQhIiwK
IAkJICAgICAgIGZ1bmMsIG5hbWUsIGVycik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9z
ZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNlLmMKaW5kZXggZjNlOWI1ZDdkMDk4Li42NmNjNTYzNGRi
MWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9k
ZXZpY2UuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2
aWNlLmMKQEAgLTQ0LDcgKzQ0LDcgQEAgdm9pZCBtb2NrX2RldmljZV9mbHVzaChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAlkbyB7CiAJCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIGk5
MTUsIGlkKQogCQkJbW9ja19lbmdpbmVfZmx1c2goZW5naW5lKTsKLQl9IHdoaWxlIChpOTE1X3Jl
dGlyZV9yZXF1ZXN0cyhpOTE1KSk7CisJfSB3aGlsZSAoaTkxNV9yZXRpcmVfcmVxdWVzdHMoaTkx
NSwgTUFYX1NDSEVEVUxFX1RJTUVPVVQpKTsKIH0KIAogc3RhdGljIHZvaWQgbW9ja19kZXZpY2Vf
cmVsZWFzZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQotLSAKMi4yMy4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
