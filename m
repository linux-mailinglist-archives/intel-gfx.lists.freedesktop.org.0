Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02AD539F083
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 10:15:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58A7A6EB2A;
	Tue,  8 Jun 2021 08:15:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A59FA6EB2A;
 Tue,  8 Jun 2021 08:15:39 +0000 (UTC)
IronPort-SDR: yvKaQ8IjxmQ8A3djuA3y4bIURg2Edf9qp9UzI8NQ4vTYBUvVpavrV+aPyBg4l8ZeHFpjxB6VXt
 iKIaVdfwjFuw==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="204820936"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="204820936"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 01:15:38 -0700
IronPort-SDR: aBIp5Tqtddo14K447AkjGHkhR+qqc3JbOB2HRPEb5yB5FMJvfwvQ4k+qH+zXbKdFFSFiXOYxIW
 SF9qdGWbplwA==
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="634994337"
Received: from delmer-mobl.ger.corp.intel.com (HELO [10.249.254.231])
 ([10.249.254.231])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 01:15:36 -0700
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210607182210.99036-1-matthew.auld@intel.com>
 <20210607182210.99036-2-matthew.auld@intel.com>
 <eaad0953f7699a906cc590023aab9d11a93df005.camel@linux.intel.com>
 <125c067c-b94a-c218-5ebc-a57b7d75402d@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <3fccda9b-3c3a-c1f6-f770-d308da2a823b@linux.intel.com>
Date: Tue, 8 Jun 2021 10:15:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <125c067c-b94a-c218-5ebc-a57b7d75402d@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/ttm: add ttm_buddy_man
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

Ck9uIDYvOC8yMSAxMDoxMSBBTSwgTWF0dGhldyBBdWxkIHdyb3RlOgo+IE9uIDA4LzA2LzIwMjEg
MDg6MTEsIFRob21hcyBIZWxsc3Ryw7ZtIHdyb3RlOgo+PiBPbiBNb24sIDIwMjEtMDYtMDcgYXQg
MTk6MjIgKzAxMDAsIE1hdHRoZXcgQXVsZCB3cm90ZToKPj4+IEFkZCBiYWNrIG91ciBzdGFuZGFs
b25lIGk5MTVfYnVkZHkgYWxsb2NhdG9yIGFuZCBpbnRlZ3JhdGUgaXQgaW50byBhCj4+PiB0dG1f
cmVzb3VyY2VfbWFuYWdlci4gVGhpcyB3aWxsIHBsdWcgaW50byBvdXIgdHRtIGJhY2tlbmQgZm9y
Cj4+PiBtYW5hZ2luZwo+Pj4gZGV2aWNlIGxvY2FsLW1lbW9yeSBpbiB0aGUgbmV4dCBjb3VwbGUg
b2YgcGF0Y2hlcy4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcu
YXVsZEBpbnRlbC5jb20+Cj4+PiBDYzogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ry
b21AbGludXguaW50ZWwuY29tPgo+Pj4gLS0tCj4+Pgo+Pgo+PiBTaW5jZSB0aGUgYnVkZHkgKyBz
ZWxmdGVzdHMgaGF2ZSBiZWVuIHBhcnQgb2YgdGhlIGRyaXZlciBiZWZvcmUsIEkKPj4gZGlkbid0
IHJldmlldyB0aGVtIHNlcGFyYXRlbHksIGJ1dCBmb3IgdGhlIFRUTSBpbnRlcmZhY2UsIHNvbWUg
bWlub3IKPj4gY29tbWVudHMgYmVsb3cuIFdpdGggdGhvc2UgZml4ZWQsCj4+Cj4+IEFja2VkLWJ5
OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Cj4+
Cj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV90dG1fYnVkZHlf
bWFuYWdlci5jCj4+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdHRtX2J1ZGR5X21hbmFn
ZXIuYwo+Pj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uZDdi
ZjM3YmUxOTMyCj4+PiAtLS0gL2Rldi9udWxsCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3R0bV9idWRkeV9tYW5hZ2VyLmMKPj4+IEBAIC0wLDAgKzEsMjQ2IEBACj4+PiArLy8g
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAo+Pj4gKy8qCj4+PiArICogQ29weXJpZ2h0IMKp
IDIwMjEgSW50ZWwgQ29ycG9yYXRpb24KPj4+ICsgKi8KPj4+ICsKPj4+ICsjaW5jbHVkZSA8bGlu
dXgvc2xhYi5oPgo+Pj4gKwo+Pj4gKyNpbmNsdWRlIDxkcm0vdHRtL3R0bV9ib19kcml2ZXIuaD4K
Pj4+ICsjaW5jbHVkZSA8ZHJtL3R0bS90dG1fcGxhY2VtZW50Lmg+Cj4+PiArCj4+PiArI2luY2x1
ZGUgImk5MTVfdHRtX2J1ZGR5X21hbmFnZXIuaCIKPj4+ICsKPj4+ICsjaW5jbHVkZSAiaTkxNV9i
dWRkeS5oIgo+Pj4gKyNpbmNsdWRlICJpOTE1X2dlbS5oIgo+Pj4gKwo+Pj4gK3N0cnVjdCBpOTE1
X3R0bV9idWRkeV9tYW5hZ2VyIHsKPj4+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCB0dG1fcmVzb3Vy
Y2VfbWFuYWdlciBtYW5hZ2VyOwo+Pj4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGk5MTVfYnVkZHlf
bW0gbW07Cj4+PiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgbGlzdF9oZWFkIHJlc2VydmVkOwo+Pj4g
K8KgwqDCoMKgwqDCoMKgc3RydWN0IG11dGV4IGxvY2s7Cj4+PiArfTsKPj4+ICsKPj4+ICtzdGF0
aWMgaW5saW5lIHN0cnVjdCBpOTE1X3R0bV9idWRkeV9tYW5hZ2VyICoKPj4KPj4gImlubGluZSIg
c2hvdWxkbid0IGJlIG5lZWRlZCBoZXJlLgo+Pgo+Pj4gK3RvX2J1ZGR5X21hbmFnZXIoc3RydWN0
IHR0bV9yZXNvdXJjZV9tYW5hZ2VyICptYW4pCj4+PiArewo+Pj4gK8KgwqDCoMKgwqDCoMKgcmV0
dXJuIGNvbnRhaW5lcl9vZihtYW4sIHN0cnVjdCBpOTE1X3R0bV9idWRkeV9tYW5hZ2VyLAo+Pj4g
bWFuYWdlcik7Cj4+PiArfQo+Pj4gKwo+Pj4gK3N0YXRpYyBpbnQgaTkxNV90dG1fYnVkZHlfbWFu
X2FsbG9jKHN0cnVjdCB0dG1fcmVzb3VyY2VfbWFuYWdlcgo+Pj4gKm1hbiwKPj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0
IHN0cnVjdCB0dG1fcGxhY2UgKnBsYWNlLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCB0dG1fcmVz
b3VyY2UgKipyZXMpCj4+PiArewo+Pj4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGk5MTVfdHRtX2J1
ZGR5X21hbmFnZXIgKmJtYW4gPSB0b19idWRkeV9tYW5hZ2VyKG1hbik7Cj4+PiArwqDCoMKgwqDC
oMKgwqBzdHJ1Y3QgaTkxNV90dG1fYnVkZHlfcmVzb3VyY2UgKmJtYW5fcmVzOwo+Pj4gK8KgwqDC
oMKgwqDCoMKgc3RydWN0IGk5MTVfYnVkZHlfbW0gKm1tID0gJmJtYW4tPm1tOwo+Pj4gK8KgwqDC
oMKgwqDCoMKgdW5zaWduZWQgbG9uZyBuX3BhZ2VzOwo+Pj4gK8KgwqDCoMKgwqDCoMKgdW5zaWdu
ZWQgaW50IG1pbl9vcmRlcjsKPj4+ICvCoMKgwqDCoMKgwqDCoHU2NCBzaXplOwo+Pj4gK8KgwqDC
oMKgwqDCoMKgaW50IGVycjsKPj4+ICsKPj4+ICvCoMKgwqDCoMKgwqDCoEdFTV9CVUdfT04ocGxh
Y2UtPmZwZm4gfHwgcGxhY2UtPmxwZm4pOwo+Pj4gK8KgwqDCoMKgwqDCoMKgR0VNX0JVR19PTihi
by0+cGFnZV9hbGlnbm1lbnQgPCBtbS0+Y2h1bmtfc2l6ZSk7Cj4+PiArCj4+PiArwqDCoMKgwqDC
oMKgwqBibWFuX3JlcyA9IGt6YWxsb2Moc2l6ZW9mKCpibWFuX3JlcyksIEdGUF9LRVJORUwpOwo+
Pj4gK8KgwqDCoMKgwqDCoMKgaWYgKCFibWFuX3JlcykKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqByZXR1cm4gLUVOT01FTTsKPj4+ICsKPj4+ICvCoMKgwqDCoMKgwqDCoHR0bV9y
ZXNvdXJjZV9pbml0KGJvLCBwbGFjZSwgJmJtYW5fcmVzLT5iYXNlKTsKPj4+ICvCoMKgwqDCoMKg
wqDCoElOSVRfTElTVF9IRUFEKCZibWFuX3Jlcy0+YmxvY2tzKTsKPj4+ICvCoMKgwqDCoMKgwqDC
oGJtYW5fcmVzLT5tbSA9IG1tOwo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoMKgR0VNX0JVR19PTigh
Ym1hbl9yZXMtPmJhc2UubnVtX3BhZ2VzKTsKPj4+ICvCoMKgwqDCoMKgwqDCoHNpemUgPSBibWFu
X3Jlcy0+YmFzZS5udW1fcGFnZXMgPDwgUEFHRV9TSElGVDsKPj4+ICsKPj4+ICvCoMKgwqDCoMKg
wqDCoG1pbl9vcmRlciA9IGlsb2cyKGJvLT5wYWdlX2FsaWdubWVudCkgLSBpbG9nMihtbS0KPj4+
PiBjaHVua19zaXplKTsKPj4+ICvCoMKgwqDCoMKgwqDCoGlmIChwbGFjZS0+ZmxhZ3MgJiBUVE1f
UExfRkxBR19DT05USUdVT1VTKSB7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
c2l6ZSA9IHJvdW5kdXBfcG93X29mX3R3byhzaXplKTsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBtaW5fb3JkZXIgPSBpbG9nMihzaXplKSAtIGlsb2cyKG1tLT5jaHVua19zaXpl
KTsKPj4+ICvCoMKgwqDCoMKgwqDCoH0KPj4+ICsKPj4+ICvCoMKgwqDCoMKgwqDCoGlmIChzaXpl
ID4gbW0tPnNpemUpIHsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBlcnIgPSAt
RTJCSUc7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZ290byBlcnJfZnJlZV9y
ZXM7Cj4+PiArwqDCoMKgwqDCoMKgwqB9Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgwqBuX3BhZ2Vz
ID0gc2l6ZSA+PiBpbG9nMihtbS0+Y2h1bmtfc2l6ZSk7Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKg
wqBkbyB7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGk5MTVfYnVk
ZHlfYmxvY2sgKmJsb2NrOwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHVuc2ln
bmVkIGludCBvcmRlcjsKPj4+ICsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBv
cmRlciA9IGZscyhuX3BhZ2VzKSAtIDE7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgR0VNX0JVR19PTihvcmRlciA+IG1tLT5tYXhfb3JkZXIpOwo+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoEdFTV9CVUdfT04ob3JkZXIgPCBtaW5fb3JkZXIpOwo+Pj4gKwo+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRvIHsKPj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbXV0ZXhfbG9jaygmYm1hbi0+bG9jayk7Cj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGJsb2NrID0g
aTkxNV9idWRkeV9hbGxvYyhtbSwgb3JkZXIpOwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtdXRleF91bmxvY2soJmJtYW4tPmxvY2spOwo+Pj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoIUlTX0VSUihi
bG9jaykpCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBicmVhazsKPj4+ICsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKG9yZGVyLS0gPT0gbWluX29yZGVyKSB7Cj4+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBlcnIgPSAtRU5YSU87Cj4+Cj4+IElJUkMsIFRUTSByZWxpZXMgb24gLUVOT1NQQyB0byBy
ZXRyeSB3aXRoIGV2aWN0aW9ucy4KPgo+IEFoLCByaWdodC4gV2UgY29udmVydCB0aGF0IGJhY2sg
dG8gLUVOWElPIGluIHRoZSB1cHBlciBsZXZlbHMgc29tZXdoZXJlPwo+ClllcywgdGhhdCdzIGRv
bmUgaW4gdGhlIHR0bSBibyBiYWNrZW5kIGFmdGVyIHR0bV9ib192YWxpZGF0ZSgpIGFuZCBibyAK
aW5pdGlhbGl6YXRpb24uCgovVGhvbWFzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
