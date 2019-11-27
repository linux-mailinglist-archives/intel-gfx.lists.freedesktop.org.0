Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A146B10B070
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 14:40:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8267C892A9;
	Wed, 27 Nov 2019 13:40:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77C3889970
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 13:40:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 05:40:12 -0800
X-IronPort-AV: E=Sophos;i="5.69,249,1571727600"; d="scan'208";a="203076813"
Received: from kjbrenna-mobl1.ger.corp.intel.com (HELO [10.251.83.147])
 ([10.251.83.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 27 Nov 2019 05:40:11 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191127115813.3345823-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a78c01be-9505-0659-4028-f86d15b0d5e9@linux.intel.com>
Date: Wed, 27 Nov 2019 13:39:56 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191127115813.3345823-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Defer breadcrumb processing to
 after the irq handler
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI3LzExLzIwMTkgMTE6NTgsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUaGUgZGVzaWduIG9m
IG91ciBpbnRlcnJ1cHQgaGFuZGxlcnMgaXMgdGhhdCB3ZSBhY2sgdGhlIHJlY2VpcHQgb2YgdGhl
Cj4gaW50ZXJydXB0IGZpcnN0LCBpbnNpZGUgdGhlIGNyaXRpY2FsIHNlY3Rpb24gd2hlcmUgdGhl
IG1hc3RlciBpbnRlcnJ1cHQKPiBjb250cm9sIGlzIG9mZiBhbmQgb3RoZXIgY3B1cyBjYW5ub3Qg
c3RhcnQgcHJvY2Vzc2luZyB0aGUgbmV4dAo+IGludGVycnVwdDsgYW5kIHRoZW4gcHJvY2VzcyB0
aGUgaW50ZXJydXB0IGV2ZW50cyBhZnRlcndhcmRzLiBIb3dldmVyLAo+IEljZWxha2UgaW50cm9k
dWNlZCBhIHdob2xlIG5ldyBzZXQgb2YgYmFua2VkIEdUX0lJUiB0aGF0IGFyZSBpbmhlcmVudGx5
Cj4gc2VyaWFsaXNlZCBhbmQgc2xvdyB0byByZXRyaWV2ZSB0aGUgSUlSIGFuZCBtdXN0IGJlIHBy
b2Nlc3NlZCB3aXRoaW4gdGhlCj4gY3JpdGljYWwgc2VjdGlvbi4gV2UgY2FuIHN0aWxsIHB1c2gg
b3VyIGJyZWFkY3J1bWJzIG91dCBvZiB0aGlzIGNyaXRpY2FsCj4gc2VjdGlvbiBieSB1c2luZyBv
dXIgaXJxX3dvcmtlci4gT24gYmR3KywgdGhpcyBzaG91bGQgbm90IG1ha2UgdG9vIG11Y2gKPiBv
ZiBhIGRpZmZlcmVuY2UgYXMgd2Ugb25seSBzbGlnaHRseSBkZWZlciB0aGUgYnJlYWRjcnVtYnMs
IGJ1dCBvbiBpY2wrCj4gdGhpcyBzaG91bGQgbWFrZSBhIGJpZyBkaWZmZXJlbmNlIHRvIG91ciB0
aHJvdWdocHV0IG9mIGludGVycnVwdHMgZnJvbQo+IGNvbmN1cnJlbnRseSBleGVjdXRpbmcgZW5n
aW5lcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X2lycS5j
IHwgMiArLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X2lycS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfaXJxLmMKPiBpbmRleCA5NzNlZTdl
ZGVkNjQuLjMzMmIxMmE1NzRmYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9ndF9pcnEuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0
X2lycS5jCj4gQEAgLTI4LDcgKzI4LDcgQEAgY3NfaXJxX2hhbmRsZXIoc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lLCB1MzIgaWlyKQo+ICAgCQl0YXNrbGV0ID0gdHJ1ZTsKPiAgIAo+ICAg
CWlmIChpaXIgJiBHVF9SRU5ERVJfVVNFUl9JTlRFUlJVUFQpIHsKPiAtCQlpbnRlbF9lbmdpbmVf
YnJlYWRjcnVtYnNfaXJxKGVuZ2luZSk7Cj4gKwkJaW50ZWxfZW5naW5lX3F1ZXVlX2JyZWFkY3J1
bWJzKGVuZ2luZSk7Cj4gICAJCXRhc2tsZXQgfD0gaW50ZWxfZW5naW5lX25lZWRzX2JyZWFkY3J1
bWJfdGFza2xldChlbmdpbmUpOwo+ICAgCX0KPiAgIAo+IAoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBV
cnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
