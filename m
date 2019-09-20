Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 024AFB8F9C
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 14:18:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D3FC6FCE9;
	Fri, 20 Sep 2019 12:18:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E90416FCE9
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 12:18:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18558832-1500050 
 for multiple; Fri, 20 Sep 2019 13:18:23 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Sep 2019 13:18:21 +0100
Message-Id: <20190920121821.7223-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Mark contents as dirty on a write
 fault
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2luY2UgZHJvcHBpbmcgdGhlIHNldC10by1ndHQtZG9tYWluIGluIGNvbW1pdCBhNjc5ZjU4ZDA1
MTAgKCJkcm0vaTkxNToKRmx1c2ggcGFnZXMgb24gYWNxdWlzaXRpb24iKSwgd2Ugbm8gbG9uZ2Vy
IG1hcmsgdGhlIGNvbnRlbnRzIGFzIGRpcnR5IG9uCmEgd3JpdGUgZmF1bHQuIFRoaXMgaGFzIHRo
ZSBpc3N1ZSBvZiB1cyB0aGVuIG5vdCBtYXJraW5nIHRoZSBwYWdlcyBhcwpkaXJ0eSBvbiByZWxl
YXNpbmcgdGhlIGJ1ZmZlciwgd2hpY2ggbWVhbnMgdGhlIGNvbnRlbnRzIGFyZSBub3Qgd3JpdHRl
bgpvdXQgdG8gdGhlIHN3YXAgZGV2aWNlIChzaG91bGQgd2UgZXZlciBwaWNrIHRoYXQgYnVmZmVy
IGFzIGEgdmljdGltKS4KTm90YWJseSwgdGhpcyBpcyB2aXNpYmxlIGluIHRoZSBkdW1iIGJ1ZmZl
ciBpbnRlcmZhY2UgdXNlZCBmb3IgY3Vyc29ycy4KSGF2aW5nIHVwZGF0ZWQgdGhlIGN1cnNvciBj
b250ZW50cyB2aWEgbW1hcCwgYW5kIHN3YXBwZWQgYXdheSwgaWYgdGhlCnNocmlua2VyIHNob3Vs
ZCBldmljdCB0aGUgb2xkIGN1cnNvciwgdXBvbiBuZXh0IHJldXNlLCB0aGUgY3Vyc29yIHdvdWxk
CmJlIGludmlzaWJsZS4KCkUuZy4gZWNobyA4MCA+IC9wcm9jL3N5cy9rZXJuZWwvc3lzcnEgOyBl
Y2hvIGYgPiAvcHJvYy9zeXNycS10cmlnZ2VyCgpCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNTQxCkZpeGVzOiBhNjc5ZjU4ZDA1MTAgKCJk
cm0vaTkxNTogRmx1c2ggcGFnZXMgb24gYWNxdWlzaXRpb24iKQpTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1hdHRoZXcgQXVsZCA8bWF0
dGhldy53aWxsaWFtLmF1bGRAZ21haWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPiAjIHY1
LjIrCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyB8IDYgKysr
KystCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKaW5kZXggMTc0OGU2MzE1NmEyLi44
NjBiNzUxYzUxZjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9tbWFuLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwpA
QCAtMzE5LDcgKzMxOSwxMSBAQCB2bV9mYXVsdF90IGk5MTVfZ2VtX2ZhdWx0KHN0cnVjdCB2bV9m
YXVsdCAqdm1mKQogCQlpbnRlbF93YWtlcmVmX2F1dG8oJmk5MTUtPmdndHQudXNlcmZhdWx0X3dh
a2VyZWYsCiAJCQkJICAgbXNlY3NfdG9famlmZmllc190aW1lb3V0KENPTkZJR19EUk1fSTkxNV9V
U0VSRkFVTFRfQVVUT1NVU1BFTkQpKTsKIAotCWk5MTVfdm1hX3NldF9nZ3R0X3dyaXRlKHZtYSk7
CisJaWYgKHdyaXRlKSB7CisJCUdFTV9CVUdfT04oIWk5MTVfZ2VtX29iamVjdF9oYXNfcGlubmVk
X3BhZ2VzKG9iaikpOworCQlpOTE1X3ZtYV9zZXRfZ2d0dF93cml0ZSh2bWEpOworCQlvYmotPm1t
LmRpcnR5ID0gdHJ1ZTsKKwl9CiAKIGVycl9mZW5jZToKIAlpOTE1X3ZtYV91bnBpbl9mZW5jZSh2
bWEpOwotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
