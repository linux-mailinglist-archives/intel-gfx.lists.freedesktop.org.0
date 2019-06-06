Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4752A3817F
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 01:02:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 304CC8999C;
	Thu,  6 Jun 2019 23:02:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE0FE8999C
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 23:02:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 16:02:13 -0700
X-ExtLoop1: 1
Received: from cataylo2-ubuntu18-10.jf.intel.com (HELO [10.7.199.54])
 ([10.7.199.54])
 by orsmga003.jf.intel.com with ESMTP; 06 Jun 2019 16:02:13 -0700
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190606180942.13743-1-matthew.d.roper@intel.com>
From: Clinton Taylor <Clinton.A.Taylor@intel.com>
Message-ID: <158a1425-1a88-e9b3-e87f-a1440a6a9b9a@intel.com>
Date: Thu, 6 Jun 2019 15:04:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190606180942.13743-1-matthew.d.roper@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Assume combo PHY HBR3 will be
 inherited by future platforms
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

WWVzLCB0aGlzIG1ha2VzIG1vcmUgc2Vuc2UuCgpSZXZpZXdlZC1ieTogQ2xpbnQgVGF5bG9yIDxD
bGludG9uLkEuVGF5bG9yQGludGVsLmNvbT4KCi1DbGludAoKCk9uIDYvNi8xOSAxMTowOSBBTSwg
TWF0dCBSb3BlciB3cm90ZToKPiBXZSBzaG91bGRuJ3QgYXNzdW1lIHRoYXQgSEJSMyBvbiBjb21i
byBQSFlzIGlzIGFuIEVITC1zcGVjaWZpYwo+IGNhcGFiaWxpdHkuICBMZXQncyBmb2xsb3cgdGhl
IHN0YW5kYXJkIGk5MTUgY29udmVudGlvbiBvZiBhc3N1bWluZwo+IGZ1dHVyZSBwbGF0Zm9ybXMg
d2lsbCBpbmhlcml0IGFsbCBmZWF0dXJlcyBvZiB0aGUgbGF0ZXN0IHBsYXRmb3JtLgo+Cj4gRml4
ZXM6IGI3MTQzODYwNjM0MyAoImRybS9pOTE1L2VobDogU3VwcG9ydCBIQlIzIG9uIEVITCBjb21i
byBQSFkiKQo+IENjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgo+
IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj4gQ2M6IEx1Y2FzIERl
IE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE1hdHQg
Um9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kcC5jIHwgMiArLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMKPiBpbmRleCBiMDk5
YTlkYzI4ZmQuLjRlMmEwNjUxM2U3ZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kcC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwo+IEBA
IC0zMzIsNyArMzMyLDcgQEAgc3RhdGljIGludCBpY2xfbWF4X3NvdXJjZV9yYXRlKHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHApCj4gICAJZW51bSBwb3J0IHBvcnQgPSBkaWdfcG9ydC0+YmFzZS5w
b3J0Owo+ICAgCj4gICAJaWYgKGludGVsX3BvcnRfaXNfY29tYm9waHkoZGV2X3ByaXYsIHBvcnQp
ICYmCj4gLQkgICAgIUlTX0VMS0hBUlRMQUtFKGRldl9wcml2KSAmJgo+ICsJICAgIElTX0lDRUxB
S0UoZGV2X3ByaXYpICYmCj4gICAJICAgICFpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQo+ICAg
CQlyZXR1cm4gNTQwMDAwOwo+ICAgCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
