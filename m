Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CA512F43
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 15:33:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 469F96E798;
	Fri,  3 May 2019 13:33:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDF266E798
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 13:33:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 06:33:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,425,1549958400"; d="scan'208";a="140971024"
Received: from jbartcza-mobl.ger.corp.intel.com (HELO [10.251.88.64])
 ([10.251.88.64])
 by orsmga006.jf.intel.com with ESMTP; 03 May 2019 06:33:01 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190503115225.30831-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1fa5f7d8-9407-2c70-a559-594b47c429d6@linux.intel.com>
Date: Fri, 3 May 2019 14:32:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503115225.30831-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 01/13] drm/i915: Assert breadcrumbs are
 correctly ordered in the signal handler
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

Ck9uIDAzLzA1LzIwMTkgMTI6NTIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBJbnNpZGUgdGhlIHNp
Z25hbCBoYW5kbGVyLCB3ZSBleHBlY3QgdGhlIHJlcXVlc3RzIHRvIGJlIG9yZGVyZWQgYnkgdGhl
aXIKPiBicmVhZGNydW1iIHN1Y2ggdGhhdCBubyBsYXRlciByZXF1ZXN0IG1heSBiZSBjb21wbGV0
ZSBpZiB3ZSBmaW5kIGFuCj4gZWFybGllciBpbmNvbXBsZXRlLiBBZGQgYW4gYXNzZXJ0IHRvIGNo
ZWNrIHRoYXQgdGhlIG5leHQgYnJlYWRjcnVtYgo+IHNob3VsZCBub3QgYmUgbG9naWNhbGx5IGJl
Zm9yZSB0aGUgY3VycmVudC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2JyZWFkY3J1bWJzLmMgfCA2ICsrKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0
aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9i
cmVhZGNydW1icy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMu
Ywo+IGluZGV4IDNjYmZmZDQwMGIxYi4uYTZmZmIyNWY3MmEyIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2JyZWFkY3J1bWJzLmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9icmVhZGNydW1icy5jCj4gQEAgLTk5LDYgKzk5LDEyIEBAIHZv
aWQgaW50ZWxfZW5naW5lX2JyZWFkY3J1bWJzX2lycShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpl
bmdpbmUpCj4gICAJCQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSA9Cj4gICAJCQkJbGlzdF9lbnRy
eShwb3MsIHR5cGVvZigqcnEpLCBzaWduYWxfbGluayk7Cj4gICAKPiArCQkJR0VNX0JVR19PTihu
ZXh0ICE9ICZjZS0+c2lnbmFscyAmJgo+ICsJCQkJICAgaTkxNV9zZXFub19wYXNzZWQocnEtPmZl
bmNlLnNlcW5vLAo+ICsJCQkJCQkgICAgIGxpc3RfZW50cnkobmV4dCwKPiArCQkJCQkJCQl0eXBl
b2YoKnJxKSwKPiArCQkJCQkJCQlzaWduYWxfbGluayktPmZlbmNlLnNlcW5vKSk7CgpJIGtub3cg
aXRzIG9ubHkgR0VNX0JVR19PTiwgYnV0IHdoeSBjaGVjayBmb3IgdGhpcyBpbiB0aGUgaXJxIGhh
bmRsZXI/IApZb3UgZG9uJ3QgdHJ1c3QgdGhlIGluc2VydGlvbiwgb3IgZ3JvdXAgZGVsZXRpb24/
IE9yIGp1c3QgYmVjdWFzZSBpdCBpcyAKdGhlIHNtYWxsZXN0IGFtb3VudCBvZiBjb2RlIHRvIHBp
Z2d5LWJhY2sgb24gZXhpc3RpbmcgaXRlcmF0aW9uPwoKUmVnYXJkcywKClR2cnRrbwoKPiArCj4g
ICAJCQlpZiAoIV9fcmVxdWVzdF9jb21wbGV0ZWQocnEpKQo+ICAgCQkJCWJyZWFrOwo+ICAgCj4g
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
