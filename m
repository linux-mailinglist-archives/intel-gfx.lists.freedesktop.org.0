Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C786FD134
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 23:57:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64EF56E43C;
	Thu, 14 Nov 2019 22:57:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2ED16E43C
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 22:57:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19206182-1500050 
 for multiple; Thu, 14 Nov 2019 22:57:36 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Nov 2019 22:57:34 +0000
Message-Id: <20191114225736.616885-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191114225736.616885-1-chris@chris-wilson.co.uk>
References: <20191114225736.616885-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/selftests: Be explicit in ERR_PTR
 handling
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
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hlbiBzZXR0aW5nIHVwIGEgZnVsbCBHR1RULCB3ZSBleHBlY3QgdGhlIG5leHQgaW5zZXJ0IHRv
IGZhaWwgd2l0aAotRU5PU1BDLiBTaW1wbGlmeSB0aGUgdXNlIG9mIEVSUl9QVFIgdG8gbm90IGNv
bmZ1c2UgZWl0aGVyIHRoZSByZWFkZXIgb3IKc21hdGNoLgoKUmVwb3J0ZWQtYnk6IERhbiBDYXJw
ZW50ZXIgPGRhbi5jYXJwZW50ZXJAb3JhY2xlLmNvbT4KUmVmZXJlbmNlczogZjQwYTdiNzU1OGVm
ICgiZHJtL2k5MTU6IEluaXRpYWwgc2VsZnRlc3RzIGZvciBleGVyY2lzaW5nIGV2aWN0aW9uIikK
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcmM2LmMgICAgICAgICAgfCA5ICsr
KysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX2V2aWN0LmMg
fCA0ICsrLS0KIDIgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3JjNi5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcmM2LmMKaW5kZXggNmI0Y2I1YzdkNDQ2
Li4zNTUxNmQ0Njk5ZDIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0
ZXN0X3JjNi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3JjNi5jCkBA
IC0xMTYsMTEgKzExNiwxNiBAQCBpbnQgbGl2ZV9yYzZfY3R4KHZvaWQgKmFyZykKIAkJCQlnb3Rv
IG91dDsKIAkJCX0KIAotCQkJaW50ZWxfZ3RfcmV0aXJlX3JlcXVlc3RzKGd0KTsKLQkJCWludGVs
X2d0X3BtX3dhaXRfZm9yX2lkbGUoZ3QpOworCQkJaWYgKGludGVsX2d0X3dhaXRfZm9yX2lkbGUo
Z3QsIEhaIC8gNSkgPT0gLUVUSU1FKSB7CisJCQkJaW50ZWxfZ3Rfc2V0X3dlZGdlZChndCk7CisJ
CQkJZXJyID0gLUVUSU1FOworCQkJCWdvdG8gb3V0OworCQkJfQogCisJCQlpbnRlbF9ndF9wbV93
YWl0X2Zvcl9pZGxlKGd0KTsKIAkJCXByX2RlYnVnKCIlczogQ1RYX0lORk89JTB4XG4iLAogCQkJ
CSBlbmdpbmUtPm5hbWUsIFJFQURfT05DRSgqcmVzKSk7CisKIAkJCWlmIChyZXNldHMgIT0KIAkJ
CSAgICBpOTE1X3Jlc2V0X2VuZ2luZV9jb3VudCgmZ3QtPmk5MTUtPmdwdV9lcnJvciwKIAkJCQkJ
CSAgICBlbmdpbmUpKSB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVz
dHMvaTkxNV9nZW1fZXZpY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1
X2dlbV9ldmljdC5jCmluZGV4IDVmMTMzZDE3NzIxMi4uMDZlZjg4NTEwMjA5IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZXZpY3QuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZXZpY3QuYwpAQCAtMTk4LDgg
KzE5OCw4IEBAIHN0YXRpYyBpbnQgaWd0X292ZXJjb21taXQodm9pZCAqYXJnKQogCXF1aXJrX2Fk
ZChvYmosICZvYmplY3RzKTsKIAogCXZtYSA9IGk5MTVfZ2VtX29iamVjdF9nZ3R0X3BpbihvYmos
IE5VTEwsIDAsIDAsIDApOwotCWlmICghSVNfRVJSKHZtYSkgfHwgUFRSX0VSUih2bWEpICE9IC1F
Tk9TUEMpIHsKLQkJcHJfZXJyKCJGYWlsZWQgdG8gZXZpY3QraW5zZXJ0LCBpOTE1X2dlbV9vYmpl
Y3RfZ2d0dF9waW4gcmV0dXJuZWQgZXJyPSVkXG4iLCAoaW50KVBUUl9FUlIodm1hKSk7CisJaWYg
KHZtYSAhPSBFUlJfUFRSKC1FTk9TUEMpKSB7CisJCXByX2VycigiRmFpbGVkIHRvIGV2aWN0K2lu
c2VydCwgaTkxNV9nZW1fb2JqZWN0X2dndHRfcGluIHJldHVybmVkIGVycj0lZFxuIiwgKGludClQ
VFJfRVJSX09SX1pFUk8odm1hKSk7CiAJCWVyciA9IC1FSU5WQUw7CiAJCWdvdG8gY2xlYW51cDsK
IAl9Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
