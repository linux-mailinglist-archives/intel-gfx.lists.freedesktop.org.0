Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1517D848C0
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 11:42:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B27989A75;
	Wed,  7 Aug 2019 09:42:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6F0889A75
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 09:42:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17915310-1500050 
 for multiple; Wed, 07 Aug 2019 10:41:29 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Aug 2019 10:41:28 +0100
Message-Id: <20190807094128.9993-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Drop expectations of VM_IO from our
 GGTT mmappings
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

V2UgZG9uJ3QgcmVhbGx5IHdhbnQgdG8gdXNlIFZNX0lPIGZvciBvdXIgR0dUVCBtbWFwcyAoaXQg
aW1wbGllcyB0aGF0CnRoZSBtbWFwIGNvbnRhaW5zIG1lbW9yeSBtYXBwZWQgcmVnaXN0ZXJzLCB3
aGljaCB3ZSBkbyBub3QgZXhwb3NlKSB5ZXQgSQpvdmVyemVhbG91c2x5IGFkZGVkIGl0IHRvIGFu
IGFzc2VydCBqdXN0IGJlY2F1c2UgdGhhdCdzIGhvdyB3ZSBhbHdheXMKaGFkIHNldHVwIHRoZSB2
bWEuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4K
Q2M6IEFiZGllbCBKYW51bGd1ZSA8YWJkaWVsLmphbnVsZ3VlQGxpbnV4LmludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X21tLmMgfCA1ICsrLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfbW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfbW0uYwpp
bmRleCBjMjNiYjI5ZTZkM2UuLjMxODU2MmNlNjRjMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9tbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfbW0uYwpA
QCAtNjMsOSArNjMsOCBAQCBpbnQgcmVtYXBfaW9fbWFwcGluZyhzdHJ1Y3Qgdm1fYXJlYV9zdHJ1
Y3QgKnZtYSwKIAlzdHJ1Y3QgcmVtYXBfcGZuIHI7CiAJaW50IGVycjsKIAotCUdFTV9CVUdfT04o
KHZtYS0+dm1fZmxhZ3MgJgotCQkgICAgKFZNX0lPIHwgVk1fUEZOTUFQIHwgVk1fRE9OVEVYUEFO
RCB8IFZNX0RPTlREVU1QKSkgIT0KLQkJICAgKFZNX0lPIHwgVk1fUEZOTUFQIHwgVk1fRE9OVEVY
UEFORCB8IFZNX0RPTlREVU1QKSk7CisjZGVmaW5lIEVYUEVDVEVEX0ZMQUdTIChWTV9QRk5NQVAg
fCBWTV9ET05URVhQQU5EIHwgVk1fRE9OVERVTVApCisJR0VNX0JVR19PTigodm1hLT52bV9mbGFn
cyAmIEVYUEVDVEVEX0ZMQUdTKSAhPSBFWFBFQ1RFRF9GTEFHUyk7CiAKIAkvKiBXZSByZWx5IG9u
IHByZXZhbGlkYXRpb24gb2YgdGhlIGlvLW1hcHBpbmcgdG8gc2tpcCB0cmFja19wZm4oKS4gKi8K
IAlyLm1tID0gdm1hLT52bV9tbTsKLS0gCjIuMjMuMC5yYzEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
