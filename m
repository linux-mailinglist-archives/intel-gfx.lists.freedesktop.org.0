Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F53C10519C
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 12:46:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB7BA6E07D;
	Thu, 21 Nov 2019 11:46:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0E526E07D
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 11:46:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 03:46:37 -0800
X-IronPort-AV: E=Sophos;i="5.69,224,1571727600"; d="scan'208";a="201097725"
Received: from unknown (HELO [10.252.30.240]) ([10.252.30.240])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 21 Nov 2019 03:46:36 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191121093326.134774-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <965e0a22-8630-6436-9119-abd1479db6ed@linux.intel.com>
Date: Thu, 21 Nov 2019 11:46:34 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191121093326.134774-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Hold request reference while
 waiting for w/a verification
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

Ck9uIDIxLzExLzIwMTkgMDk6MzMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBBcyB3ZSB3YWl0IHVw
b24gYSByZXF1ZXN0LCB3ZSBtdXN0IGJlIGhvbGRpbmcgYSByZWZlcmVuY2UgdG8gaXQsIGFuZCBi
ZQo+IHdhcnkgdGhhdCBpOTE1X3JlcXVlc3RfYWRkKCkgY29uc3VtZXMgdGhlIHBhc3NlZCBpbiBy
ZWZlcmVuY2UuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5j
b20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5j
IHwgNyArKysrKy0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93
b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMu
Ywo+IGluZGV4IDM5OWFjYWUyZjMzZi4uMjI2YmQ0Y2NjYjQ4IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gQEAgLTE1OTIsMTYgKzE1OTIsMTcg
QEAgc3RhdGljIGludCBlbmdpbmVfd2FfbGlzdF92ZXJpZnkoc3RydWN0IGludGVsX2NvbnRleHQg
KmNlLAo+ICAgCWlmIChlcnIpCj4gICAJCWdvdG8gZXJyX3ZtYTsKPiAgIAo+ICsJaTkxNV9yZXF1
ZXN0X2dldChycSk7Cj4gICAJaTkxNV9yZXF1ZXN0X2FkZChycSk7Cj4gICAJaWYgKGk5MTVfcmVx
dWVzdF93YWl0KHJxLCAwLCBIWiAvIDUpIDwgMCkgewo+ICAgCQllcnIgPSAtRVRJTUU7Cj4gLQkJ
Z290byBlcnJfdm1hOwo+ICsJCWdvdG8gZXJyX3JxOwo+ICAgCX0KPiAgIAo+ICAgCXJlc3VsdHMg
PSBpOTE1X2dlbV9vYmplY3RfcGluX21hcCh2bWEtPm9iaiwgSTkxNV9NQVBfV0IpOwo+ICAgCWlm
IChJU19FUlIocmVzdWx0cykpIHsKPiAgIAkJZXJyID0gUFRSX0VSUihyZXN1bHRzKTsKPiAtCQln
b3RvIGVycl92bWE7Cj4gKwkJZ290byBlcnJfcnE7Cj4gICAJfQo+ICAgCj4gICAJZXJyID0gMDsK
PiBAQCAtMTYxNSw2ICsxNjE2LDggQEAgc3RhdGljIGludCBlbmdpbmVfd2FfbGlzdF92ZXJpZnko
c3RydWN0IGludGVsX2NvbnRleHQgKmNlLAo+ICAgCj4gICAJaTkxNV9nZW1fb2JqZWN0X3VucGlu
X21hcCh2bWEtPm9iaik7Cj4gICAKPiArZXJyX3JxOgo+ICsJaTkxNV9yZXF1ZXN0X3B1dChycSk7
Cj4gICBlcnJfdm1hOgo+ICAgCWk5MTVfdm1hX3VucGluKHZtYSk7Cj4gICAJaTkxNV92bWFfcHV0
KHZtYSk7Cj4gCgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
