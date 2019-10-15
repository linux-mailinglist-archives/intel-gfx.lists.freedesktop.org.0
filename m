Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83121D7266
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 11:39:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71682892EE;
	Tue, 15 Oct 2019 09:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F518892EE
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 09:39:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18841557-1500050 
 for multiple; Tue, 15 Oct 2019 10:39:16 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 10:39:15 +0100
Message-Id: <20191015093915.3995-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Drop obj.page_pin_count after a
 failed vma->set_pages()
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QmVmb3JlIHdlIGF0dGVtcHQgdG8gc2V0X3BhZ2VzIG9uIHRoZSB2bWEsIHdlIGNsYWltIGEKb2Jq
LnBhZ2VzX3Bpbl9jb3VudCBmb3IgaXQuIElmIHdlIHN1YnNlcXVlbnRseSBmYWlsIHRvIHNldCB0
aGUgcGFnZXMgb24KdGhlIHZtYSwgd2UgbmVlZCB0byBkcm9wIG91ciBwaW5uaW5nIGJlZm9yZSBy
ZXR1cm5pbmcgdGhlIGVycm9yLgoKUmVwb3J0ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5h
dWxkQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+CkNjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYyB8IDUgKysrKy0KIDEgZmlsZSBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEu
YwppbmRleCA5ZmRjZDRlMmM3OTkuLjdkOTM2MjU0YmRlNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV92bWEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Zt
YS5jCkBAIC04MDIsOCArODAyLDExIEBAIHN0YXRpYyBpbnQgdm1hX2dldF9wYWdlcyhzdHJ1Y3Qg
aTkxNV92bWEgKnZtYSkKIAkJfQogCiAJCWVyciA9IHZtYS0+b3BzLT5zZXRfcGFnZXModm1hKTsK
LQkJaWYgKGVycikKKwkJaWYgKGVycikgeworCQkJaWYgKHZtYS0+b2JqKQorCQkJCWk5MTVfZ2Vt
X29iamVjdF91bnBpbl9wYWdlcyh2bWEtPm9iaik7CiAJCQlnb3RvIHVubG9jazsKKwkJfQogCX0K
IAlhdG9taWNfaW5jKCZ2bWEtPnBhZ2VzX2NvdW50KTsKIAotLSAKMi4yMy4wCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
