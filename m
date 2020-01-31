Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DF714EB58
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 12:01:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91A6A6FAED;
	Fri, 31 Jan 2020 11:01:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38CA56FAF9
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 11:01:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 03:00:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,385,1574150400"; d="scan'208";a="218579130"
Received: from bplackle-mobl.ger.corp.intel.com (HELO [10.252.51.65])
 ([10.252.51.65])
 by orsmga007.jf.intel.com with ESMTP; 31 Jan 2020 03:00:56 -0800
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20200124013701.40609-1-umesh.nerlige.ramappa@intel.com>
 <0f632875-e78a-22f1-2259-d65fa5e74ef5@intel.com>
 <20200127053052.GB35901@orsosgc001.amr.corp.intel.com>
 <fcd5d9ab-6687-890a-c872-ea048718792d@intel.com>
 <20200130235414.GB39410@orsosgc001.amr.corp.intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <36baf9cc-f3d7-cfd1-1de3-ade6c8657793@intel.com>
Date: Fri, 31 Jan 2020 13:00:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200130235414.GB39410@orsosgc001.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Fix OA context id overlap
 with idle context id
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMzEvMDEvMjAyMCAwMTo1NCwgVW1lc2ggTmVybGlnZSBSYW1hcHBhIHdyb3RlOgo+IE9uIE1v
biwgSmFuIDI3LCAyMDIwIGF0IDExOjE2OjMyQU0gKzAyMDAsIExpb25lbCBMYW5kd2VybGluIHdy
b3RlOgo+Cj4gW3NuaXBdCj4KPj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9w
ZXJmLmMKPj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPj4+Pj4g
QEAgLTEzMjMsNyArMTMyMywxMiBAQCBzdGF0aWMgaW50IG9hX2dldF9yZW5kZXJfY3R4X2lkKHN0
cnVjdCAKPj4+Pj4gaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQo+Pj4+PiDCoMKgwqDCoCBjYXNl
IDEyOiB7Cj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgc3RyZWFtLT5zcGVjaWZpY19jdHhfaWRfbWFz
ayA9Cj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAoKDFVIDw8IEdFTjExX1NXX0NUWF9J
RF9XSURUSCkgLSAxKSA8PCAKPj4+Pj4gKEdFTjExX1NXX0NUWF9JRF9TSElGVCAtIDMyKTsKPj4+
Pj4gLcKgwqDCoMKgwqDCoMKgIHN0cmVhbS0+c3BlY2lmaWNfY3R4X2lkID0gc3RyZWFtLT5zcGVj
aWZpY19jdHhfaWRfbWFzazsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgIC8qIFBpY2sgYW4gdW51c2Vk
IGNvbnRleHQgaWQKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqAgKiAwIC0gKE5VTV9DT05URVhUX1RB
RyAtIDEpIGFyZSB1c2VkIGJ5IG90aGVyIGNvbnRleHRzCj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKg
ICogR0VOMTJfTUFYX0NPTlRFWFRfSFdfSUQgKDB4N2ZmKSBpcyB1c2VkIGJ5IGlkbGUgY29udGV4
dAo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoCAqLwo+Pj4+PiArwqDCoMKgwqDCoMKgwqAgc3RyZWFt
LT5zcGVjaWZpY19jdHhfaWQgPSAoR0VOMTJfTUFYX0NPTlRFWFRfSFdfSUQgLSAxKSAKPj4+Pj4g
PDwgKEdFTjExX1NXX0NUWF9JRF9TSElGVCAtIDMyKTsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgIEJV
SUxEX0JVR19PTigoR0VOMTJfTUFYX0NPTlRFWFRfSFdfSUQgLSAxKSA8IAo+Pj4+PiBOVU1fQ09O
VEVYVF9UQUcpOwo+Pj4+Cj4+Pj4KPj4+PiBBcmcgeWVhaCwgd2UgY2FuJ3QgdXNlIGFuIGlkIHRo
YXQgaGFzIGFsbCBiaXRzIHRvIDEgYmVjYXVzZSB0aGF0IAo+Pj4+IG1hdGNoZXMgdGhlIGlkbGUg
dmFsdWUgaW4gdGhlIE9BIHJlcG9ydHMgOi8KPj4+Pgo+Pj4+IFRoaXMgYWxzbyBhZmZlY3RzIGdl
bjgtMTAgY2FzZXMgKGFmYWlrKS4KPj4+Cj4+PiBGb3IgZ2VuOC0xMCwgSSBkaWQgbm90IHNlZSBh
IHNwZWNpZmljIGRlZmluaXRpb24gZm9yIGFuIGlkbGUgY29udGV4dCAKPj4+IGlkLsKgIFRoZSBm
cm9tL3RvIGlkbGUgY29udGV4dCBzd2l0Y2hlcyBhcmUgaW5kaWNhdGVkIGJ5IGRlZGljYXRlZCAK
Pj4+IGJpdHMgaW4gdGhlIENTQiBpbnN0ZWFkIChmcm9tIHNwZWMpLgo+Pgo+Pgo+PiBJIG1lYW50
IHRoYXQgSSByZW1lbWJlciB0aGUgcGVyaW9kaWMgT0EgcmVwb3J0cyB3aGVuIEhXIGlzIGlkbGUg
dG8gCj4+IGhhdmUgdGhlIGNvbnRleF9pZD0weGZmZmZmZmZmLgo+Cj4gRm9yIHRoZXNlIGdlbnMg
d2UgdXNlIDB4MWZmZmZmIGFzIHRoZSBjb250ZXh0IGlkLiBCZWZvcmUgd2UgcmV0dXJuIAo+IHJl
cG9ydHMgdG8gdGhlIHVzZXIsIHdlIGFyZSBzZXR0aW5nIGNvbnRleHQgaWQgdG8gMHhmZmZmZmZm
ZiBmb3IgCj4gaW52YWxpZCBhbmQgaXJyZWxldmFudCBjb250ZXh0cy4KPgo+IFRoYW5rcywKPiBV
bWVzaAoKClNvcnJ5LCBJJ3ZlIGJlZW4gYSBiaXQgb3V0IG9mIHRoZSBsb29wIG9uIE9BIHJlcG9y
dHMgbGF0ZWx5LgoKSSBqdXN0IG5vdGljZWQgdGhhdCB0aGUgY29udGV4dCB2YWxpZCBiaXQgaXMg
bm90IGNoZWNrZWQgb24gZ2VuMTIgYW55bW9yZS4KClRoZSBkb2N1bWVudGF0aW9uIGlzIHJlYWxs
eSBob3JyaWJsZSwgYnV0IEJTcGVjIDUyMTk4IHNlZW1zIHRvIGluZGljYXRlIAp0aGUgYml0IGlz
IHN0aWxsIGFyb3VuZC4KCgpDb3VsZCBpdCBiZSB0aGUgc291cmNlIG9mIHRoZSBpc3N1ZT8KCgpU
aGFua3MgZm9yIHlvdXIgaGVscCA6KQoKCi1MaW9uZWwKCgo+Pgo+PiBJIGNvdWxkIHJlbWVtYmVy
IHdyb25nIDovCj4+Cj4+Cj4+IC1MaW9uZWwKPj4KPj4KPj4+Cj4+PiBUaGFua3MsCj4+PiBVbWVz
aAo+Pj4KPj4+Pgo+Pj4+Cj4+Pj4gVGhhbmtzIGZvciBzcG90dGluZyB0aGlzIQo+Pj4+Cj4+Pj4K
Pj4+PiAtTGlvbmVsCj4+Pj4KPj4+Pgo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgIGJyZWFrOwo+Pj4+
PiDCoMKgwqDCoCB9Cj4+Pj4+IEBAIC0xMzMxLDcgKzEzMzYsNyBAQCBzdGF0aWMgaW50IG9hX2dl
dF9yZW5kZXJfY3R4X2lkKHN0cnVjdCAKPj4+Pj4gaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQo+
Pj4+PiDCoMKgwqDCoMKgwqDCoMKgIE1JU1NJTkdfQ0FTRShJTlRFTF9HRU4oY2UtPmVuZ2luZS0+
aTkxNSkpOwo+Pj4+PiDCoMKgwqDCoCB9Cj4+Pj4+IC3CoMKgwqAgY2UtPnRhZyA9IHN0cmVhbS0+
c3BlY2lmaWNfY3R4X2lkX21hc2s7Cj4+Pj4+ICvCoMKgwqAgY2UtPnRhZyA9IHN0cmVhbS0+c3Bl
Y2lmaWNfY3R4X2lkOwo+Pj4+PiDCoMKgwqDCoCBEUk1fREVCVUdfRFJJVkVSKCJmaWx0ZXJpbmcg
b24gY3R4X2lkPTB4JXggY3R4X2lkX21hc2s9MHgleFxuIiwKPj4+Pj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgc3RyZWFtLT5zcGVjaWZpY19jdHhfaWQsCj4+Pj4KPj4+Pgo+PgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
