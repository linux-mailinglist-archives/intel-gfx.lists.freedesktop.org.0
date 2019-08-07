Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DEB4848E1
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 11:50:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5995F6E113;
	Wed,  7 Aug 2019 09:50:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CDC46E113
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 09:50:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 02:50:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,357,1559545200"; d="scan'208";a="185939588"
Received: from abazhenx-mobl1.ccr.corp.intel.com ([10.249.254.197])
 by orsmga002.jf.intel.com with ESMTP; 07 Aug 2019 02:50:04 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190807094128.9993-1-chris@chris-wilson.co.uk>
From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Message-ID: <d74dbc4e-b4d5-d767-0180-070fc0d15c47@linux.intel.com>
Date: Wed, 7 Aug 2019 12:50:02 +0300
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190807094128.9993-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Drop expectations of VM_IO from
 our GGTT mmappings
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

Ck9uIDA3LzA4LzIwMTkgMTIuNDEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXZSBkb24ndCByZWFs
bHkgd2FudCB0byB1c2UgVk1fSU8gZm9yIG91ciBHR1RUIG1tYXBzIChpdCBpbXBsaWVzIHRoYXQK
PiB0aGUgbW1hcCBjb250YWlucyBtZW1vcnkgbWFwcGVkIHJlZ2lzdGVycywgd2hpY2ggd2UgZG8g
bm90IGV4cG9zZSkgeWV0IEkKPiBvdmVyemVhbG91c2x5IGFkZGVkIGl0IHRvIGFuIGFzc2VydCBq
dXN0IGJlY2F1c2UgdGhhdCdzIGhvdyB3ZSBhbHdheXMKPiBoYWQgc2V0dXAgdGhlIHZtYS4KClJl
dmlld2VkLWJ5OiBBYmRpZWwgSmFudWxndWUgPGFiZGllbC5qYW51bGd1ZUBsaW51eC5pbnRlbC5j
b20+Cgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgo+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRl
bC5jb20+Cj4gQ2M6IEFiZGllbCBKYW51bGd1ZSA8YWJkaWVsLmphbnVsZ3VlQGxpbnV4LmludGVs
LmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9tbS5jIHwgNSArKy0tLQo+
ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X21tLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X21tLmMKPiBpbmRleCBjMjNiYjI5ZTZkM2UuLjMxODU2MmNlNjRjMCAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X21tLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X21tLmMKPiBAQCAtNjMsOSArNjMsOCBAQCBpbnQgcmVtYXBfaW9f
bWFwcGluZyhzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSwKPiAgCXN0cnVjdCByZW1hcF9wZm4g
cjsKPiAgCWludCBlcnI7Cj4gIAo+IC0JR0VNX0JVR19PTigodm1hLT52bV9mbGFncyAmCj4gLQkJ
ICAgIChWTV9JTyB8IFZNX1BGTk1BUCB8IFZNX0RPTlRFWFBBTkQgfCBWTV9ET05URFVNUCkpICE9
Cj4gLQkJICAgKFZNX0lPIHwgVk1fUEZOTUFQIHwgVk1fRE9OVEVYUEFORCB8IFZNX0RPTlREVU1Q
KSk7Cj4gKyNkZWZpbmUgRVhQRUNURURfRkxBR1MgKFZNX1BGTk1BUCB8IFZNX0RPTlRFWFBBTkQg
fCBWTV9ET05URFVNUCkKPiArCUdFTV9CVUdfT04oKHZtYS0+dm1fZmxhZ3MgJiBFWFBFQ1RFRF9G
TEFHUykgIT0gRVhQRUNURURfRkxBR1MpOwo+ICAKPiAgCS8qIFdlIHJlbHkgb24gcHJldmFsaWRh
dGlvbiBvZiB0aGUgaW8tbWFwcGluZyB0byBza2lwIHRyYWNrX3BmbigpLiAqLwo+ICAJci5tbSA9
IHZtYS0+dm1fbW07Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
