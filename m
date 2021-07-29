Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D58A3DA1A0
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 12:56:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFED56ED1B;
	Thu, 29 Jul 2021 10:55:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 803BC6E0CF;
 Thu, 29 Jul 2021 10:55:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="234748533"
X-IronPort-AV: E=Sophos;i="5.84,278,1620716400"; d="scan'208";a="234748533"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 03:55:57 -0700
X-IronPort-AV: E=Sophos;i="5.84,278,1620716400"; d="scan'208";a="664336706"
Received: from badunne-mobl5.ger.corp.intel.com (HELO [10.252.9.201])
 ([10.252.9.201])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 03:55:56 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210728155013.1741657-1-matthew.auld@intel.com>
 <c5365359-0a0d-2232-5fde-c1f4caf45cc6@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <8c6468ab-a266-cb19-7b1e-e7840fa514c0@intel.com>
Date: Thu, 29 Jul 2021 11:55:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <c5365359-0a0d-2232-5fde-c1f4caf45cc6@linux.intel.com>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: fixup igt_shrink_thp
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjkvMDcvMjAyMSAxMTo1MywgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4gCj4gSGkgTWF0dCwK
PiAKPiBPbiAyOC8wNy8yMDIxIDE2OjUwLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4+IFNpbmNlIHRo
ZSBvYmplY3QgbWlnaHQgc3RpbGwgYmUgYWN0aXZlIGhlcmUsIHRoZSBzaHJpbmtfYWxsIHdpbGwg
c2ltcGx5Cj4+IGlnbm9yZSBpdCwgd2hpY2ggYmxvd3MgdXAgaW4gdGhlIHRlc3QsIHNpbmNlIHRo
ZSBwYWdlcyB3aWxsIHN0aWxsIGJlCj4+IHRoZXJlLiBDdXJyZW50bHkgVEhQIGlzIGRpc2FibGVk
IHdoaWNoIHNob3VsZCByZXN1bHQgaW4gdGhlIHRlc3QgYmVpbmcKPj4gc2tpcHBlZCwgYnV0IGlm
IHdlIGV2ZXIgcmUtZW5hYmxlIFRIUCB3ZSBtaWdodCBzdGFydCBzZWVpbmcgdGhlIGZhaWx1cmUu
Cj4+IEZpeCB0aGlzIGJ5IGZvcmNpbmcgSTkxNV9TSFJJTktfQUNUSVZFLgo+Pgo+PiBTaWduZWQt
b2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4+IENjOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+PiAtLS0KPj4gwqAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmMgfCA1ICsrKystCj4+IMKg
IDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5j
IAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jCj4+
IGluZGV4IGEwOTRmM2NlMWE5MC4uN2E2N2U4ODBiNTYyIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMuYwo+PiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMuYwo+PiBAQCAtMTU3NSw3ICsx
NTc1LDEwIEBAIHN0YXRpYyBpbnQgaWd0X3Nocmlua190aHAodm9pZCAqYXJnKQo+PiDCoMKgwqDC
oMKgwqAgKiBOb3cgdGhhdCB0aGUgcGFnZXMgYXJlICp1bnBpbm5lZCogc2hyaW5rLWFsbCBzaG91
bGQgaW52b2tlCj4+IMKgwqDCoMKgwqDCoCAqIHNobWVtIHRvIHRydW5jYXRlIG91ciBwYWdlcy4K
Pj4gwqDCoMKgwqDCoMKgICovCj4+IC3CoMKgwqAgaTkxNV9nZW1fc2hyaW5rX2FsbChpOTE1KTsK
Pj4gK8KgwqDCoCBpOTE1X2dlbV9zaHJpbmsoTlVMTCwgaTkxNSwgLTFVTCwgTlVMTCwKPj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgSTkxNV9TSFJJTktfQk9VTkQgfAo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBJOTE1X1NIUklOS19VTkJPVU5EIHwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgSTkxNV9TSFJJTktfQUNUSVZFKTsKPj4gwqDCoMKgwqDCoCBpZiAoaTkxNV9nZW1fb2JqZWN0
X2hhc19wYWdlcyhvYmopKSB7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBwcl9lcnIoInNocmluay1h
bGwgZGlkbid0IHRydW5jYXRlIHRoZSBwYWdlc1xuIik7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBl
cnIgPSAtRUlOVkFMOwo+Pgo+IAo+IEkgZGlkIHMvc2hyaW5rLWFsbC9zaHJpbmtpbmcvIGxvY2Fs
bHkgaW4gdGhlIGNvbW1lbnQgYWJvdmUsIGFuZCBpbiAKPiBwcl9lcnIgYmVsb3cgdGhlIGNhbGwg
dG8gc2hyaW5rZXIuIEFyZSB5b3Ugb2theSBpZiBJIHJlcG9zdCBsaWtlIHRoYXQgCj4gYW5kIHdp
dGggbXkgci1iIGFzIHBhcnQgb2YgbXkgc2VyaWVzPwoKU3VyZS4KCj4gCj4gUmVnYXJkcywKPiAK
PiBUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
