Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F501028D4
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 17:03:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 199896E986;
	Tue, 19 Nov 2019 16:03:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00B1B6E986
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 16:03:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 08:02:59 -0800
X-IronPort-AV: E=Sophos;i="5.69,218,1571727600"; d="scan'208";a="200395922"
Received: from unknown (HELO [10.252.30.240]) ([10.252.30.240])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 19 Nov 2019 08:02:59 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191118230254.2615942-1-chris@chris-wilson.co.uk>
 <20191118230254.2615942-14-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3e45f650-08be-1ab8-7302-3af6cc1f83b3@linux.intel.com>
Date: Tue, 19 Nov 2019 16:02:57 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191118230254.2615942-14-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 13/19] drm/i915/gt: Move new timelines to
 the end of active_list
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

Ck9uIDE4LzExLzIwMTkgMjM6MDIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXaGVuIGFkZGluZyBh
IG5ldyBhY3RpdmUgdGltZWxpbmUsIHBsYWNlIGl0IGF0IHRoZSBlbmQgb2YgdGhlIGxpc3QuIFRo
aXMKPiBhbGxvd3MgZm9yIGludGVsX2d0X3JldGlyZV9yZXF1ZXN0cygpIHRvIHBpY2sgdXAgdGhl
IG5ld2NvbWVyIG1vcmUKPiBxdWlja2x5IGFuZCBob3BlZnVsbHkgY29tcGxldGUgdGhlIHJldGly
ZW1lbnQgc29vbmVyLgo+IAo+IFJlZmVyZW5jZXM6IDc5MzZhMjJkZDQ2NiAoImRybS9pOTE1L2d0
OiBXYWl0IGZvciBuZXcgcmVxdWVzdHMgaW4gaW50ZWxfZ3RfcmV0aXJlX3JlcXVlc3RzKCkiKQo+
IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+
IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYyB8IDIgKy0KPiAgIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYwo+IGluZGV4IGJkOTczZDk1MDA2NC4uYjE5MGE1
ZDlhYjAyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVs
aW5lLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZS5jCj4g
QEAgLTM1OSw3ICszNTksNyBAQCB2b2lkIGludGVsX3RpbWVsaW5lX2VudGVyKHN0cnVjdCBpbnRl
bF90aW1lbGluZSAqdGwpCj4gICAKPiAgIAlzcGluX2xvY2soJnRpbWVsaW5lcy0+bG9jayk7Cj4g
ICAJaWYgKCFhdG9taWNfZmV0Y2hfaW5jKCZ0bC0+YWN0aXZlX2NvdW50KSkKPiAtCQlsaXN0X2Fk
ZCgmdGwtPmxpbmssICZ0aW1lbGluZXMtPmFjdGl2ZV9saXN0KTsKPiArCQlsaXN0X2FkZF90YWls
KCZ0bC0+bGluaywgJnRpbWVsaW5lcy0+YWN0aXZlX2xpc3QpOwo+ICAgCXNwaW5fdW5sb2NrKCZ0
aW1lbGluZXMtPmxvY2spOwo+ICAgfQo+ICAgCj4gCgpJZiBJIGFtIG5vdCBtaXNzaW5nIHNvbWV0
aGluZyB0aGlzIHNob3VsZCBiZSBvbiB0aGUgbWljcm8tb3B0aW1pc2F0aW9uIApsZXZlbCwgd2Vs
bCwgbWluaS1vcHRpbWlzYXRpb24uIFNpbmNlIGZvciBpbnN0YW5jZSBub3cgaXQgY291bGQgd2Fp
dCBvbiAKdGhlIG1vc3QgcmVjZW50IHJlcXVlc3QgYW5kIHdoZW4gdGhhdCBmaW5pc2hlcyBkbyBt
b3N0bHkgc2lnbmFsbGVkIApjaGVja3MsIG9yIGV2ZW4gbGVzcy4gV2l0aCB0aGUgY2hhbmdlIGl0
IHdvdWxkIGZpcnN0IHN3ZWVwIHRoZSBhbHJlYWR5IApjb21wbGV0ZWQgb25lcyBhbmQgdGhlbiB3
YWl0IGZvciB0aGUgbW9zdCByZWNlbnQgb25lLiBOZXZlcnRoZWxlc3MsIEkgCmRvbid0IHNlZSBh
IHByb2JsZW0gd2l0aCBpdCBzbzoKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
