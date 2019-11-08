Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A692AF4452
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 11:19:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B20176F90A;
	Fri,  8 Nov 2019 10:19:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F2766F90A
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 10:19:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 02:19:15 -0800
X-IronPort-AV: E=Sophos;i="5.68,281,1569308400"; d="scan'208";a="206424187"
Received: from cstylian-mobl.ger.corp.intel.com (HELO [10.251.95.7])
 ([10.251.95.7])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 08 Nov 2019 02:19:13 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191108085626.32429-1-chris@chris-wilson.co.uk>
 <20191108085626.32429-3-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <f667d87d-87f6-11a8-f9bf-b77510c673e6@linux.intel.com>
Date: Fri, 8 Nov 2019 10:19:11 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191108085626.32429-3-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/pmu: Cheat when reading the
 actual frequency to avoid fw
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

Ck9uIDA4LzExLzIwMTkgMDg6NTYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXZSB3YW50IHRvIGF2
b2lkIHRha2luZyBmb3JjZXdha2Ugd2hlbiBxdWVyeWluZyB0aGUgcGVyZm9ybWFuY2Ugc3RhdHMs
Cj4gYXMgd2Ugd2lzaCB0byBhdm9pZCBwZXJ0dXJiaW5nIHRoZSBzeXN0ZW0gdW5kZXIgb2JzZXJ2
YXRpb24uIChBbmQgd2l0aAo+IHRoZSBmb3JjZXdha2UgYmVpbmcga2VwdCBhbGl2ZSBmb3IgMW1z
IGFmdGVyIHVzZSwgc2FtcGxpbmcgdGhlIGZyZXF1ZW5jeQo+IGZyb20gYSB0aW1lciBrZWVwcyBm
b3JjZXdha2UgNjAlIGFjdGl2ZS4pCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJz
dWxpbkBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5j
IHwgOCArKysrKystLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMKPiBpbmRleCAwNTM5NTAxNWQxZjIu
LmRiZGU4MGEzNzZjYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bt
dS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYwo+IEBAIC0zNjYsOCAr
MzY2LDEyIEBAIGZyZXF1ZW5jeV9zYW1wbGUoc3RydWN0IGludGVsX2d0ICpndCwgdW5zaWduZWQg
aW50IHBlcmlvZF9ucykKPiAgIAo+ICAgCQl2YWwgPSBycHMtPmN1cl9mcmVxOwo+ICAgCQlpZiAo
aW50ZWxfZ3RfcG1fZ2V0X2lmX2F3YWtlKGd0KSkgewo+IC0JCQl2YWwgPSBpbnRlbF91bmNvcmVf
cmVhZF9ub3RyYWNlKHVuY29yZSwgR0VONl9SUFNUQVQxKTsKPiAtCQkJdmFsID0gaW50ZWxfZ2V0
X2NhZ2YocnBzLCB2YWwpOwo+ICsJCQl1MzIgc3RhdDsKPiArCj4gKwkJCXN0YXQgPSBpbnRlbF91
bmNvcmVfcmVhZF9mdyh1bmNvcmUsIEdFTjZfUlBTVEFUMSk7Cj4gKwkJCWlmIChzdGF0KQo+ICsJ
CQkJdmFsID0gaW50ZWxfZ2V0X2NhZ2YocnBzLCBzdGF0KTsKPiArCj4gICAJCQlpbnRlbF9ndF9w
bV9wdXQoZ3QpOwo+ICAgCQl9Cj4gICAKPiAKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
