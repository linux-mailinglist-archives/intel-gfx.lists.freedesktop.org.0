Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 560CAFC262
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 10:14:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 952376E4DE;
	Thu, 14 Nov 2019 09:14:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8705C6E4DE
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 09:14:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19197347-1500050 
 for multiple; Thu, 14 Nov 2019 09:13:58 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Nov 2019 09:13:57 +0000
Message-Id: <20191114091357.10844-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Be explicit in ERR_PTR
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
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX2V2aWN0LmMgfCA0ICsr
LS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX2V2aWN0LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZXZpY3QuYwppbmRleCA1
ZjEzM2QxNzcyMTIuLjA2ZWY4ODUxMDIwOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX2V2aWN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
c2VsZnRlc3RzL2k5MTVfZ2VtX2V2aWN0LmMKQEAgLTE5OCw4ICsxOTgsOCBAQCBzdGF0aWMgaW50
IGlndF9vdmVyY29tbWl0KHZvaWQgKmFyZykKIAlxdWlya19hZGQob2JqLCAmb2JqZWN0cyk7CiAK
IAl2bWEgPSBpOTE1X2dlbV9vYmplY3RfZ2d0dF9waW4ob2JqLCBOVUxMLCAwLCAwLCAwKTsKLQlp
ZiAoIUlTX0VSUih2bWEpIHx8IFBUUl9FUlIodm1hKSAhPSAtRU5PU1BDKSB7Ci0JCXByX2Vycigi
RmFpbGVkIHRvIGV2aWN0K2luc2VydCwgaTkxNV9nZW1fb2JqZWN0X2dndHRfcGluIHJldHVybmVk
IGVycj0lZFxuIiwgKGludClQVFJfRVJSKHZtYSkpOworCWlmICh2bWEgIT0gRVJSX1BUUigtRU5P
U1BDKSkgeworCQlwcl9lcnIoIkZhaWxlZCB0byBldmljdCtpbnNlcnQsIGk5MTVfZ2VtX29iamVj
dF9nZ3R0X3BpbiByZXR1cm5lZCBlcnI9JWRcbiIsIChpbnQpUFRSX0VSUl9PUl9aRVJPKHZtYSkp
OwogCQllcnIgPSAtRUlOVkFMOwogCQlnb3RvIGNsZWFudXA7CiAJfQotLSAKMi4yNC4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
