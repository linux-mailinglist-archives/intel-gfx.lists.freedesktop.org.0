Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FA1756D4
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 20:24:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F0BE8906E;
	Thu, 25 Jul 2019 18:24:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0173E8906E
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 18:24:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17606059-1500050 
 for multiple; Thu, 25 Jul 2019 19:24:39 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Jul 2019 19:24:37 +0100
Message-Id: <20190725182437.3228-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Capture vma contents outside of
 spinlock
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

Q3VycmVudGx5IHdlIHVzZSB0aGUgZW5naW5lLT5hY3RpdmUubG9jayB0byBlbnN1cmUgdGhhdCB0
aGUgcmVxdWVzdCBpcwpub3QgcmV0aXJlZCBhcyB3ZSBjYXB0dXJlIHRoZSBkYXRhLiBIb3dldmVy
LCB3ZSBvbmx5IG5lZWQgdG8gZW5zdXJlIHRoYXQKdGhlIHZtYSBhcmUgbm90IHJlbW92ZWQgcHJp
b3IgdG8gdXNlIGFjcXVpcmluZyB0aGVpciBjb250ZW50cywgYW5kCnNpbmNlIHdlIGhhdmUgYWxy
ZWFkeSByZWxpbnF1aXNoZWQgb3VyIHN0b3AtbWFjaGluZSBwcm90ZWN0aW9uLCB3ZQphc3N1bWUg
dGhhdCB0aGUgdXNlciB3aWxsIG5vdCBiZSBvdmVyd3JpdGluZyB0aGUgY29udGVudHMgYmVmb3Jl
IHdlIGFyZQphYmxlIHRvIHJlY29yZCB0aGVtLgoKSW4gb3JkZXIgdG8gY2FwdHVyZSB0aGUgdm1h
IG91dHNpZGUgb2YgdGhlIHNwaW5sb2NrLCB3ZSBhY3F1aXJlIGEKcmVmZXJlbmNlIGFuZCBtYXJr
IHRoZSB2bWEgYXMgYWN0aXZlIHRvIHByZXZlbnQgaXQgZnJvbSBiZWluZyB1bmJvdW5kLgpIb3dl
dmVyLCBzaW5jZSBpdCBpcyB0cmlja3kgYWxsb2NhdGUgYW4gZW50cnkgaW4gdGhlIGZlbmNlIHRy
ZWUgKGRvaW5nCnNvIHdvdWxkIHJlcXVpcmUgdGFraW5nIGEgbXV0ZXgpIHdoaWxlIGluc2lkZSB0
aGUgZW5naW5lIHNwaW5sb2NrLCB3ZQp1c2UgYW4gYXRvbWljIGJpdCBhbmQgc3BlY2lhbCBjYXNl
IHRoZSBoYW5kbGluZyBmb3IgaTkxNV9hY3RpdmVfd2FpdC4KClRoZSBjb3JlIGJlbmVmaXQgaXMg
dGhhdCB3ZSBjYW4gdXNlIHNvbWUgbm9uLWF0b21pYyBtZXRob2RzIGZvciBtYXBwaW5nCnRoZSBk
ZXZpY2UgcGFnZXMsIHdlIGNhbiByZW1vdmUgdGhlIHNsb3cgY29tcHJlc3Npb24gcGhhc2Ugb3V0
IG9mIGF0b21pYwpjb250ZXh0IChpLmUuIHN0b3AgYW50YWdvbmlzaW5nIHRoZSBubWktd2F0Y2hk
b2cpLCBhbmQgbm8gd2UgbG9uZ2VyIG5lZWQKbGFyZ2UgcmVzZXJ2ZXMgb2YgYXRvbWljIHBhZ2Vz
LgoKQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTExMTIxNQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jICAgICAgIHwgIDM0
ICsrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmggICAgICAgfCAgIDMg
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmVfdHlwZXMuaCB8ICAgMyArCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jICAgIHwgMTEzICsrKysrKysrKysrKysr
KystLS0tLS0tCiA0IGZpbGVzIGNoYW5nZWQsIDExOCBpbnNlcnRpb25zKCspLCAzNSBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYwppbmRleCAxM2YzMDRhMjlmYzguLjlj
ZjJkNWZlNWVhZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jCkBAIC0xOTYsNiArMTk2
LDcgQEAgdm9pZCBfX2k5MTVfYWN0aXZlX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUsCiAJZGVidWdfYWN0aXZlX2luaXQocmVmKTsKIAogCXJlZi0+aTkxNSA9IGk5MTU7CisJcmVm
LT5mbGFncyA9IDA7CiAJcmVmLT5hY3RpdmUgPSBhY3RpdmU7CiAJcmVmLT5yZXRpcmUgPSByZXRp
cmU7CiAJcmVmLT50cmVlID0gUkJfUk9PVDsKQEAgLTI2Miw2ICsyNjMsMzQgQEAgdm9pZCBpOTE1
X2FjdGl2ZV9yZWxlYXNlKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQogCWFjdGl2ZV9yZXRpcmUo
cmVmKTsKIH0KIAorc3RhdGljIHZvaWQgX19hY3RpdmVfdW5ncmFiKHN0cnVjdCBpOTE1X2FjdGl2
ZSAqcmVmKQoreworCWNsZWFyX2FuZF93YWtlX3VwX2JpdChJOTE1X0FDVElWRV9HUkFCLCAmcmVm
LT5mbGFncyk7Cit9CisKK2Jvb2wgaTkxNV9hY3RpdmVfdHJ5Z3JhYihzdHJ1Y3QgaTkxNV9hY3Rp
dmUgKnJlZikKK3sKKwlkZWJ1Z19hY3RpdmVfYXNzZXJ0KHJlZik7CisKKwlpZiAodGVzdF9hbmRf
c2V0X2JpdChJOTE1X0FDVElWRV9HUkFCLCAmcmVmLT5mbGFncykpCisJCXJldHVybiBmYWxzZTsK
KworCWlmICghYXRvbWljX2FkZF91bmxlc3MoJnJlZi0+Y291bnQsIDEsIDApKSB7CisJCV9fYWN0
aXZlX3VuZ3JhYihyZWYpOworCQlyZXR1cm4gZmFsc2U7CisJfQorCisJcmV0dXJuIHRydWU7Cit9
CisKK3ZvaWQgaTkxNV9hY3RpdmVfdW5ncmFiKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQorewor
CUdFTV9CVUdfT04oIXRlc3RfYml0KEk5MTVfQUNUSVZFX0dSQUIsICZyZWYtPmZsYWdzKSk7CisK
KwlhY3RpdmVfcmV0aXJlKHJlZik7CisJX19hY3RpdmVfdW5ncmFiKHJlZik7Cit9CisKIGludCBp
OTE1X2FjdGl2ZV93YWl0KHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQogewogCXN0cnVjdCBhY3Rp
dmVfbm9kZSAqaXQsICpuOwpAQCAtMjcwLDcgKzI5OSw3IEBAIGludCBpOTE1X2FjdGl2ZV93YWl0
KHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQogCW1pZ2h0X3NsZWVwKCk7CiAJbWlnaHRfbG9jaygm
cmVmLT5tdXRleCk7CiAKLQlpZiAoUkJfRU1QVFlfUk9PVCgmcmVmLT50cmVlKSkKKwlpZiAoaTkx
NV9hY3RpdmVfaXNfaWRsZShyZWYpKQogCQlyZXR1cm4gMDsKIAogCWVyciA9IG11dGV4X2xvY2tf
aW50ZXJydXB0aWJsZSgmcmVmLT5tdXRleCk7CkBAIC0yOTIsNiArMzIxLDkgQEAgaW50IGk5MTVf
YWN0aXZlX3dhaXQoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYpCiAJaWYgKGVycikKIAkJcmV0dXJu
IGVycjsKIAorCWlmICh3YWl0X29uX2JpdCgmcmVmLT5mbGFncywgSTkxNV9BQ1RJVkVfR1JBQiwg
VEFTS19LSUxMQUJMRSkpCisJCXJldHVybiAtRUlOVFI7CisKIAlpZiAoIWk5MTVfYWN0aXZlX2lz
X2lkbGUocmVmKSkKIAkJcmV0dXJuIC1FQlVTWTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9hY3RpdmUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZl
LmgKaW5kZXggMTM0MTY2ZDMxMjUxLi5iYTY4YjA3N2VjNmMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9hY3RpdmUuaApAQCAtMzk1LDYgKzM5NSw5IEBAIGludCBpOTE1X2FjdGl2ZV9hY3F1aXJlKHN0
cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKTsKIHZvaWQgaTkxNV9hY3RpdmVfcmVsZWFzZShzdHJ1Y3Qg
aTkxNV9hY3RpdmUgKnJlZik7CiB2b2lkIF9faTkxNV9hY3RpdmVfcmVsZWFzZV9uZXN0ZWQoc3Ry
dWN0IGk5MTVfYWN0aXZlICpyZWYsIGludCBzdWJjbGFzcyk7CiAKK2Jvb2wgaTkxNV9hY3RpdmVf
dHJ5Z3JhYihzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZik7Cit2b2lkIGk5MTVfYWN0aXZlX3VuZ3Jh
YihzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZik7CisKIHN0YXRpYyBpbmxpbmUgYm9vbAogaTkxNV9h
Y3RpdmVfaXNfaWRsZShjb25zdCBzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikKIHsKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlX3R5cGVzLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2FjdGl2ZV90eXBlcy5oCmluZGV4IDViMGEzMDI0Y2UyNC4uOTY3YmRm
MmY1ZGRhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZV90eXBl
cy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlX3R5cGVzLmgKQEAgLTM2
LDYgKzM2LDkgQEAgc3RydWN0IGk5MTVfYWN0aXZlIHsKIAlzdHJ1Y3QgbXV0ZXggbXV0ZXg7CiAJ
YXRvbWljX3QgY291bnQ7CiAKKwl1bnNpZ25lZCBsb25nIGZsYWdzOworI2RlZmluZSBJOTE1X0FD
VElWRV9HUkFCIDAKKwogCWludCAoKmFjdGl2ZSkoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYpOwog
CXZvaWQgKCpyZXRpcmUpKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKTsKIApkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ3B1X2Vycm9yLmMKaW5kZXggNTZkZmMyNjUwODM2Li40ZDAxYWUxNDYxZWEgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYwpAQCAtMjk4LDcgKzI5OCw3IEBAIHN0
YXRpYyB2b2lkICpjb21wcmVzc19uZXh0X3BhZ2Uoc3RydWN0IGNvbXByZXNzICpjLAogCWlmIChk
c3QtPnBhZ2VfY291bnQgPj0gZHN0LT5udW1fcGFnZXMpCiAJCXJldHVybiBFUlJfUFRSKC1FTk9T
UEMpOwogCi0JcGFnZSA9IHBvb2xfYWxsb2MoJmMtPnBvb2wsIEFUT01JQ19NQVlGQUlMKTsKKwlw
YWdlID0gcG9vbF9hbGxvYygmYy0+cG9vbCwgQUxMT1dfRkFJTCk7CiAJaWYgKCFwYWdlKQogCQly
ZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsKIApAQCAtMzI3LDggKzMyNyw2IEBAIHN0YXRpYyBpbnQg
Y29tcHJlc3NfcGFnZShzdHJ1Y3QgY29tcHJlc3MgKmMsCiAKIAkJaWYgKHpsaWJfZGVmbGF0ZSh6
c3RyZWFtLCBaX05PX0ZMVVNIKSAhPSBaX09LKQogCQkJcmV0dXJuIC1FSU87Ci0KLQkJdG91Y2hf
bm1pX3dhdGNoZG9nKCk7CiAJfSB3aGlsZSAoenN0cmVhbS0+YXZhaWxfaW4pOwogCiAJLyogRmFs
bGJhY2sgdG8gdW5jb21wcmVzc2VkIGlmIHdlIGluY3JlYXNlIHNpemU/ICovCkBAIC00MDcsNyAr
NDA1LDcgQEAgc3RhdGljIGludCBjb21wcmVzc19wYWdlKHN0cnVjdCBjb21wcmVzcyAqYywKIHsK
IAl2b2lkICpwdHI7CiAKLQlwdHIgPSBwb29sX2FsbG9jKCZjLT5wb29sLCBBVE9NSUNfTUFZRkFJ
TCk7CisJcHRyID0gcG9vbF9hbGxvYygmYy0+cG9vbCwgQUxMT1dfRkFJTCk7CiAJaWYgKCFwdHIp
CiAJCXJldHVybiAtRU5PTUVNOwogCkBAIC0xMDAxLDEyICs5OTksMTQgQEAgaTkxNV9lcnJvcl9v
YmplY3RfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCWRtYV9hZGRyX3Qg
ZG1hOwogCWludCByZXQ7CiAKKwltaWdodF9zbGVlcCgpOworCiAJaWYgKCF2bWEgfHwgIXZtYS0+
cGFnZXMpCiAJCXJldHVybiBOVUxMOwogCiAJbnVtX3BhZ2VzID0gbWluX3QodTY0LCB2bWEtPnNp
emUsIHZtYS0+b2JqLT5iYXNlLnNpemUpID4+IFBBR0VfU0hJRlQ7CiAJbnVtX3BhZ2VzID0gRElW
X1JPVU5EX1VQKDEwICogbnVtX3BhZ2VzLCA4KTsgLyogd29yc3RjYXNlIHpsaWIgZ3Jvd3RoICov
Ci0JZHN0ID0ga21hbGxvYyhzaXplb2YoKmRzdCkgKyBudW1fcGFnZXMgKiBzaXplb2YodTMyICop
LCBBVE9NSUNfTUFZRkFJTCk7CisJZHN0ID0ga21hbGxvYyhzaXplb2YoKmRzdCkgKyBudW1fcGFn
ZXMgKiBzaXplb2YodTMyICopLCBBTExPV19GQUlMKTsKIAlpZiAoIWRzdCkKIAkJcmV0dXJuIE5V
TEw7CiAKQEAgLTEwMjcsOSArMTAyNyw5IEBAIGk5MTVfZXJyb3Jfb2JqZWN0X2NyZWF0ZShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAogCQlnZ3R0LT52bS5pbnNlcnRfcGFnZSgmZ2d0
dC0+dm0sIGRtYSwgc2xvdCwgSTkxNV9DQUNIRV9OT05FLCAwKTsKIAotCQlzID0gaW9fbWFwcGlu
Z19tYXBfYXRvbWljX3djKCZnZ3R0LT5pb21hcCwgc2xvdCk7CisJCXMgPSBpb19tYXBwaW5nX21h
cF93YygmZ2d0dC0+aW9tYXAsIHNsb3QsIFBBR0VfU0laRSk7CiAJCXJldCA9IGNvbXByZXNzX3Bh
Z2UoY29tcHJlc3MsICh2b2lkICBfX2ZvcmNlICopcywgZHN0KTsKLQkJaW9fbWFwcGluZ191bm1h
cF9hdG9taWMocyk7CisJCWlvX21hcHBpbmdfdW5tYXAocyk7CiAJCWlmIChyZXQpCiAJCQlicmVh
azsKIAl9CkBAIC0xMzAyLDEwICsxMzAyLDQxIEBAIHN0YXRpYyB2b2lkIHJlY29yZF9jb250ZXh0
KHN0cnVjdCBkcm1faTkxNV9lcnJvcl9jb250ZXh0ICplLAogCWUtPmFjdGl2ZSA9IGF0b21pY19y
ZWFkKCZjdHgtPmFjdGl2ZV9jb3VudCk7CiB9CiAKLXN0YXRpYyB2b2lkCitzdHJ1Y3QgY2FwdHVy
ZV92bWEgeworCXN0cnVjdCBjYXB0dXJlX3ZtYSAqbmV4dDsKKwlzdHJ1Y3QgaTkxNV92bWEgKnZt
YTsKKwlzdHJ1Y3QgZHJtX2k5MTVfZXJyb3Jfb2JqZWN0ICoqb3V0OworfTsKKworc3RhdGljIHN0
cnVjdCBjYXB0dXJlX3ZtYSAqCitjYXB0dXJlX3ZtYShzdHJ1Y3QgY2FwdHVyZV92bWEgKm5leHQs
CisJICAgIHN0cnVjdCBpOTE1X3ZtYSAqdm1hLAorCSAgICBzdHJ1Y3QgZHJtX2k5MTVfZXJyb3Jf
b2JqZWN0ICoqb3V0KQoreworCXN0cnVjdCBjYXB0dXJlX3ZtYSAqYzsKKworCSpvdXQgPSBOVUxM
OworCisJYyA9IGttYWxsb2Moc2l6ZW9mKCpjKSwgQVRPTUlDX01BWUZBSUwpOworCWlmICghYykK
KwkJcmV0dXJuIG5leHQ7CisKKwlpZiAoIWk5MTVfYWN0aXZlX3RyeWdyYWIoJnZtYS0+YWN0aXZl
KSkgeworCQlrZnJlZShjKTsKKwkJcmV0dXJuIG5leHQ7CisJfQorCisJYy0+dm1hID0gaTkxNV92
bWFfZ2V0KHZtYSk7CisJYy0+b3V0ID0gb3V0OworCisJYy0+bmV4dCA9IG5leHQ7CisJcmV0dXJu
IGM7Cit9CisKK3N0YXRpYyBzdHJ1Y3QgY2FwdHVyZV92bWEgKgogcmVxdWVzdF9yZWNvcmRfdXNl
cl9ibyhzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0LAogCQkgICAgICAgc3RydWN0IGRybV9p
OTE1X2Vycm9yX2VuZ2luZSAqZWUsCi0JCSAgICAgICBzdHJ1Y3QgY29tcHJlc3MgKmNvbXByZXNz
KQorCQkgICAgICAgc3RydWN0IGNhcHR1cmVfdm1hICpjYXB0dXJlKQogewogCXN0cnVjdCBpOTE1
X2NhcHR1cmVfbGlzdCAqYzsKIAlzdHJ1Y3QgZHJtX2k5MTVfZXJyb3Jfb2JqZWN0ICoqYm87CkBA
IC0xMzE1LDcgKzEzNDYsNyBAQCByZXF1ZXN0X3JlY29yZF91c2VyX2JvKHN0cnVjdCBpOTE1X3Jl
cXVlc3QgKnJlcXVlc3QsCiAJZm9yIChjID0gcmVxdWVzdC0+Y2FwdHVyZV9saXN0OyBjOyBjID0g
Yy0+bmV4dCkKIAkJbWF4Kys7CiAJaWYgKCFtYXgpCi0JCXJldHVybjsKKwkJcmV0dXJuIGNhcHR1
cmU7CiAKIAlibyA9IGttYWxsb2NfYXJyYXkobWF4LCBzaXplb2YoKmJvKSwgQVRPTUlDX01BWUZB
SUwpOwogCWlmICghYm8pIHsKQEAgLTEzMjQsMjEgKzEzNTUsMTkgQEAgcmVxdWVzdF9yZWNvcmRf
dXNlcl9ibyhzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0LAogCQlibyA9IGttYWxsb2NfYXJy
YXkobWF4LCBzaXplb2YoKmJvKSwgQVRPTUlDX01BWUZBSUwpOwogCX0KIAlpZiAoIWJvKQotCQly
ZXR1cm47CisJCXJldHVybiBjYXB0dXJlOwogCiAJY291bnQgPSAwOwogCWZvciAoYyA9IHJlcXVl
c3QtPmNhcHR1cmVfbGlzdDsgYzsgYyA9IGMtPm5leHQpIHsKLQkJYm9bY291bnRdID0gaTkxNV9l
cnJvcl9vYmplY3RfY3JlYXRlKHJlcXVlc3QtPmk5MTUsCi0JCQkJCQkgICAgIGMtPnZtYSwKLQkJ
CQkJCSAgICAgY29tcHJlc3MpOwotCQlpZiAoIWJvW2NvdW50XSkKLQkJCWJyZWFrOworCQljYXB0
dXJlID0gY2FwdHVyZV92bWEoY2FwdHVyZSwgYy0+dm1hLCAmYm9bY291bnRdKTsKIAkJaWYgKCsr
Y291bnQgPT0gbWF4KQogCQkJYnJlYWs7CiAJfQogCiAJZWUtPnVzZXJfYm8gPSBibzsKIAllZS0+
dXNlcl9ib19jb3VudCA9IGNvdW50OworCisJcmV0dXJuIGNhcHR1cmU7CiB9CiAKIHN0YXRpYyBz
dHJ1Y3QgZHJtX2k5MTVfZXJyb3Jfb2JqZWN0ICoKQEAgLTEzNzAsNiArMTM5OSw3IEBAIGdlbV9y
ZWNvcmRfcmluZ3Moc3RydWN0IGk5MTVfZ3B1X3N0YXRlICplcnJvciwgc3RydWN0IGNvbXByZXNz
ICpjb21wcmVzcykKIAkJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lID0gaTkxNS0+ZW5n
aW5lW2ldOwogCQlzdHJ1Y3QgZHJtX2k5MTVfZXJyb3JfZW5naW5lICplZSA9ICZlcnJvci0+ZW5n
aW5lW2ldOwogCQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0OworCQlzdHJ1Y3QgY2FwdHVy
ZV92bWEgKmNhcHR1cmU7CiAJCXVuc2lnbmVkIGxvbmcgZmxhZ3M7CiAKIAkJZWUtPmVuZ2luZV9p
ZCA9IC0xOwpAQCAtMTM5MywyNiArMTQyMywyOSBAQCBnZW1fcmVjb3JkX3JpbmdzKHN0cnVjdCBp
OTE1X2dwdV9zdGF0ZSAqZXJyb3IsIHN0cnVjdCBjb21wcmVzcyAqY29tcHJlc3MpCiAKIAkJCXJl
Y29yZF9jb250ZXh0KCZlZS0+Y29udGV4dCwgY3R4KTsKIAotCQkJLyogV2UgbmVlZCB0byBjb3B5
IHRoZXNlIHRvIGFuIGFub255bW91cyBidWZmZXIKKwkJCS8qCisJCQkgKiBXZSBuZWVkIHRvIGNv
cHkgdGhlc2UgdG8gYW4gYW5vbnltb3VzIGJ1ZmZlcgogCQkJICogYXMgdGhlIHNpbXBsZXN0IG1l
dGhvZCB0byBhdm9pZCBiZWluZyBvdmVyd3JpdHRlbgogCQkJICogYnkgdXNlcnNwYWNlLgogCQkJ
ICovCi0JCQllZS0+YmF0Y2hidWZmZXIgPQotCQkJCWk5MTVfZXJyb3Jfb2JqZWN0X2NyZWF0ZShp
OTE1LAotCQkJCQkJCSByZXF1ZXN0LT5iYXRjaCwKLQkJCQkJCQkgY29tcHJlc3MpOworCQkJY2Fw
dHVyZSA9IGNhcHR1cmVfdm1hKGNhcHR1cmUsCisJCQkJCSAgICAgIHJlcXVlc3QtPmJhdGNoLAor
CQkJCQkgICAgICAmZWUtPmJhdGNoYnVmZmVyKTsKIAogCQkJaWYgKEhBU19CUk9LRU5fQ1NfVExC
KGk5MTUpKQotCQkJCWVlLT53YV9iYXRjaGJ1ZmZlciA9Ci0JCQkJICBpOTE1X2Vycm9yX29iamVj
dF9jcmVhdGUoaTkxNSwKLQkJCQkJCQkgICBlbmdpbmUtPmd0LT5zY3JhdGNoLAotCQkJCQkJCSAg
IGNvbXByZXNzKTsKLQkJCXJlcXVlc3RfcmVjb3JkX3VzZXJfYm8ocmVxdWVzdCwgZWUsIGNvbXBy
ZXNzKTsKKwkJCQljYXB0dXJlID0gY2FwdHVyZV92bWEoY2FwdHVyZSwKKwkJCQkJCSAgICAgIGVu
Z2luZS0+Z3QtPnNjcmF0Y2gsCisJCQkJCQkgICAgICAmZWUtPndhX2JhdGNoYnVmZmVyKTsKIAot
CQkJZWUtPmN0eCA9Ci0JCQkJaTkxNV9lcnJvcl9vYmplY3RfY3JlYXRlKGk5MTUsCi0JCQkJCQkJ
IHJlcXVlc3QtPmh3X2NvbnRleHQtPnN0YXRlLAotCQkJCQkJCSBjb21wcmVzcyk7CisJCQljYXB0
dXJlID0gcmVxdWVzdF9yZWNvcmRfdXNlcl9ibyhyZXF1ZXN0LCBlZSwgY2FwdHVyZSk7CisKKwkJ
CWNhcHR1cmUgPSBjYXB0dXJlX3ZtYShjYXB0dXJlLAorCQkJCQkgICAgICByZXF1ZXN0LT5od19j
b250ZXh0LT5zdGF0ZSwKKwkJCQkJICAgICAgJmVlLT5jdHgpOworCisJCQljYXB0dXJlID0gY2Fw
dHVyZV92bWEoY2FwdHVyZSwKKwkJCQkJICAgICAgcmluZy0+dm1hLAorCQkJCQkgICAgICAmZWUt
PnJpbmdidWZmZXIpOwogCiAJCQllcnJvci0+c2ltdWxhdGVkIHw9CiAJCQkJaTkxNV9nZW1fY29u
dGV4dF9ub19lcnJvcl9jYXB0dXJlKGN0eCk7CkBAIC0xNDIzLDE1ICsxNDU2LDI3IEBAIGdlbV9y
ZWNvcmRfcmluZ3Moc3RydWN0IGk5MTVfZ3B1X3N0YXRlICplcnJvciwgc3RydWN0IGNvbXByZXNz
ICpjb21wcmVzcykKIAogCQkJZWUtPmNwdV9yaW5nX2hlYWQgPSByaW5nLT5oZWFkOwogCQkJZWUt
PmNwdV9yaW5nX3RhaWwgPSByaW5nLT50YWlsOwotCQkJZWUtPnJpbmdidWZmZXIgPQotCQkJCWk5
MTVfZXJyb3Jfb2JqZWN0X2NyZWF0ZShpOTE1LAotCQkJCQkJCSByaW5nLT52bWEsCi0JCQkJCQkJ
IGNvbXByZXNzKTsKIAogCQkJZW5naW5lX3JlY29yZF9yZXF1ZXN0cyhlbmdpbmUsIHJlcXVlc3Qs
IGVlKTsKIAkJfQogCQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZlbmdpbmUtPmFjdGl2ZS5sb2Nr
LCBmbGFncyk7CiAKKwkJd2hpbGUgKGNhcHR1cmUpIHsKKwkJCXN0cnVjdCBjYXB0dXJlX3ZtYSAq
dGhpcyA9IGNhcHR1cmU7CisKKwkJCWNhcHR1cmUgPSB0aGlzLT5uZXh0OworCisJCQkqdGhpcy0+
b3V0ID0KKwkJCQlpOTE1X2Vycm9yX29iamVjdF9jcmVhdGUoaTkxNSwKKwkJCQkJCQkgdGhpcy0+
dm1hLAorCQkJCQkJCSBjb21wcmVzcyk7CisKKwkJCWk5MTVfYWN0aXZlX3VuZ3JhYigmdGhpcy0+
dm1hLT5hY3RpdmUpOworCQkJaTkxNV92bWFfcHV0KHRoaXMtPnZtYSk7CisKKwkJCWtmcmVlKHRo
aXMpOworCQl9CisKIAkJZWUtPmh3c19wYWdlID0KIAkJCWk5MTVfZXJyb3Jfb2JqZWN0X2NyZWF0
ZShpOTE1LAogCQkJCQkJIGVuZ2luZS0+c3RhdHVzX3BhZ2Uudm1hLAotLSAKMi4yMi4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
