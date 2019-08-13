Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA568C38C
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 23:22:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FE656E073;
	Tue, 13 Aug 2019 21:22:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1F816E073
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2019 21:22:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 14:22:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; d="scan'208";a="260250580"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga001.jf.intel.com with ESMTP; 13 Aug 2019 14:22:11 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190809222643.23142-1-matthew.auld@intel.com>
 <20190809222643.23142-25-matthew.auld@intel.com>
 <6eee71bb-c544-c1a1-001f-e5a08f3b68e9@intel.com>
Message-ID: <a72fbe70-b3ab-9c3e-315d-5306ea08079e@intel.com>
Date: Tue, 13 Aug 2019 14:22:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <6eee71bb-c544-c1a1-001f-e5a08f3b68e9@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 24/37] drm/i915: set num_fence_regs to 0
 if there is no aperture
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

CgpPbiA4LzkvMTkgMzo0NiBQTSwgRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyB3cm90ZToKPiAKPiAK
PiBPbiA4LzkvMTkgMzoyNiBQTSwgTWF0dGhldyBBdWxkIHdyb3RlOgo+PiBGcm9tOiBEYW5pZWxl
IENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+Pgo+PiBX
ZSBjYW4ndCBmZW5jZSBhbnl0aGluZyB3aXRob3V0IGFwZXJ0dXJlLgo+IAo+IFdoZW4gSSB3cm90
ZSB0aGlzIHBhdGNoIChiZWZvcmUgTE1FTSB3YXMgaW4gdGhlIHBpY3R1cmUpIG1hcHBhYmxlIAo+
IGFwZXJ0dXJlIHdhcyBzdXBwb3NlZCB0byBvbmx5IGJlIG1pc3NpbmcgaW4gaGVhZGxlc3Mgc2Nl
bmFyaW9zIHNvIEkgCj4gZGlkbid0IGNvbnNpZGVyIHRoZSBkaXNwbGF5IGNhc2UuIERvIHdlIHN0
aWxsIG5lZWQvdXNlIGZlbmNlcyBmb3IgZGlyZWN0IAo+IGFjY2VzcyBmcm9tIGRpc3BsYXkgSFcg
dG8gTE1FTT8gaWYgc28sIHdlIHNob3VsZCBkcm9wIHRoaXMuCj4gCj4gRGFuaWVsZQo+IAoKQ2hy
aXMgY29uZmlybWVkIHRoZXJlIGlzIGN1cnJlbnRseSBubyB1c2UtY2FzZSBmcm9tIHRoZSBkaXNw
bGF5IHNpZGUsIHNvIAp3ZSBjYW4ga2VlcCB0aGlzLgoKRGFuaWVsZQoKPj4KPj4gU2lnbmVkLW9m
Zi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVs
LmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogU3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5zdW1tZXJzQGlu
dGVsLmNvbT4KPj4gQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPj4g
LS0tCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jIHwgNiAr
KysrLS0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNl
X3JlZy5jIAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jCj4+
IGluZGV4IGJjYWMzNTllYzY2MS4uYmI3ZDkzMjFjYWRmIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9mZW5jZV9yZWcuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbV9mZW5jZV9yZWcuYwo+PiBAQCAtODA4LDggKzgwOCwxMCBAQCB2b2lk
IGk5MTVfZ2d0dF9pbml0X2ZlbmNlcyhzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQo+PiDCoMKgwqDC
oMKgIGRldGVjdF9iaXRfNl9zd2l6emxlKGk5MTUpOwo+PiAtwqDCoMKgIGlmIChJTlRFTF9HRU4o
aTkxNSkgPj0gNyAmJgo+PiAtwqDCoMKgwqDCoMKgwqAgIShJU19WQUxMRVlWSUVXKGk5MTUpIHx8
IElTX0NIRVJSWVZJRVcoaTkxNSkpKQo+PiArwqDCoMKgIGlmICghSEFTX01BUFBBQkxFX0FQRVJU
VVJFKGk5MTUpKQo+PiArwqDCoMKgwqDCoMKgwqAgbnVtX2ZlbmNlcyA9IDA7Cj4+ICvCoMKgwqAg
ZWxzZSBpZiAoSU5URUxfR0VOKGk5MTUpID49IDcgJiYKPj4gK8KgwqDCoMKgwqDCoMKgwqAgIShJ
U19WQUxMRVlWSUVXKGk5MTUpIHx8IElTX0NIRVJSWVZJRVcoaTkxNSkpKQo+PiDCoMKgwqDCoMKg
wqDCoMKgwqAgbnVtX2ZlbmNlcyA9IDMyOwo+PiDCoMKgwqDCoMKgIGVsc2UgaWYgKElOVEVMX0dF
TihpOTE1KSA+PSA0IHx8Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIElTX0k5NDVHKGk5MTUpIHx8
IElTX0k5NDVHTShpOTE1KSB8fAo+Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
