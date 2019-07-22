Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B14700CB
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2019 15:18:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7D4C89C1F;
	Mon, 22 Jul 2019 13:18:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 152DA89C1F
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2019 13:18:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17505627-1500050 
 for multiple; Mon, 22 Jul 2019 14:18:32 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jul 2019 14:18:30 +0100
Message-Id: <20190722131830.14601-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt:
 WaSetVfGuardbandPreemptionVertexCount (bdw/chv)
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

QXMgYSB3L2EgZm9yIGRhdGEgY29ycnVwdGlvbiwgd2UgYXJlIHRvbGQgdG8gc2V0IHRoZSBwcmVl
bXB0aW9uIHZlcnRleApjb3VudCB0byAweDIwIG9uIGJvb3QuIEFzIGl0IGlzIGEgY291bnRlciwg
b25jZSBjb250ZXh0cyBhcmUgYWN0aXZlIHdlCmRvIG5vdCBleHBlY3QgdGhlIHZhbHVlIHRvIGJl
IHJldGFpbmVkLCBzbyBoaWRlIGl0IGZyb20gdGhlIHdhLWxpc3QKdmVyaWZpY2F0aW9uLgoKU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBU
dnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCAyNCArKysrKysrKysrKysr
KysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5kZXggNzA0YWNlMDFlN2Y1Li43NjI4
Zjg0NjMzMTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmth
cm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMu
YwpAQCAtNjQ3LDYgKzY0NywyNiBAQCBpbnQgaW50ZWxfZW5naW5lX2VtaXRfY3R4X3dhKHN0cnVj
dCBpOTE1X3JlcXVlc3QgKnJxKQogCXJldHVybiAwOwogfQogCitzdGF0aWMgdm9pZAorZ2VuOF9n
dF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAorCQkJIHN0
cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKK3sKKwkvKiBXYVNldFZmR3VhcmRiYW5kUHJlZW1wdGlv
blZlcnRleENvdW50OmJkdyxjaHYgKi8KKwl3YV93cml0ZV9tYXNrZWRfb3Iod2FsLCBfTU1JTygw
eDgzQTQpLCAwLCAweGZmZmYwMDIwKTsKK30KKworc3RhdGljIHZvaWQKK2Jkd19ndF93b3JrYXJv
dW5kc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBzdHJ1Y3QgaTkxNV93YV9s
aXN0ICp3YWwpCit7CisJZ2VuOF9ndF93b3JrYXJvdW5kc19pbml0KGk5MTUsIHdhbCk7Cit9CisK
K3N0YXRpYyB2b2lkCitjaHZfZ3Rfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQoreworCWdlbjhfZ3Rfd29ya2Fy
b3VuZHNfaW5pdChpOTE1LCB3YWwpOworfQorCiBzdGF0aWMgdm9pZAogZ2VuOV9ndF93b3JrYXJv
dW5kc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBzdHJ1Y3QgaTkxNV93YV9s
aXN0ICp3YWwpCiB7CkBAIC05MDcsNiArOTI3LDEwIEBAIGd0X2luaXRfd29ya2Fyb3VuZHMoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKIAkJ
Ynh0X2d0X3dvcmthcm91bmRzX2luaXQoaTkxNSwgd2FsKTsKIAllbHNlIGlmIChJU19TS1lMQUtF
KGk5MTUpKQogCQlza2xfZ3Rfd29ya2Fyb3VuZHNfaW5pdChpOTE1LCB3YWwpOworCWVsc2UgaWYg
KElTX0NIRVJSWVZJRVcoaTkxNSkpCisJCWNodl9ndF93b3JrYXJvdW5kc19pbml0KGk5MTUsIHdh
bCk7CisJZWxzZSBpZiAoSVNfQlJPQURXRUxMKGk5MTUpKQorCQliZHdfZ3Rfd29ya2Fyb3VuZHNf
aW5pdChpOTE1LCB3YWwpOwogCWVsc2UgaWYgKElOVEVMX0dFTihpOTE1KSA8PSA4KQogCQlyZXR1
cm47CiAJZWxzZQotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
