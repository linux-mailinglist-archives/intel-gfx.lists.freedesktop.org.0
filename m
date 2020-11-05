Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 177632A77C7
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 08:10:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 824D06E97B;
	Thu,  5 Nov 2020 07:10:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26B566E97B
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Nov 2020 07:10:39 +0000 (UTC)
IronPort-SDR: bhwUm30JX1a++d0h3bX/vklgRwQwi25RWXISbRNjmO1ipiZDcQATNiNJEr70kYUlrbxwI/Pzr+
 1eBhNLgtKFog==
X-IronPort-AV: E=McAfee;i="6000,8403,9795"; a="254046143"
X-IronPort-AV: E=Sophos;i="5.77,452,1596524400"; d="scan'208";a="254046143"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2020 23:10:37 -0800
IronPort-SDR: GM6jjNecUYrTEFZLjRDcRrlnT/zipmIG1rRLCwfRcFNCNATtBFTFAHNppJ5zTlv9PXdpq36b6/
 OOLMfxlNU49g==
X-IronPort-AV: E=Sophos;i="5.77,452,1596524400"; d="scan'208";a="539259145"
Received: from oc5mblwhs02.amr.corp.intel.com (HELO
 Win10on45-110.SSPE.ch.intel.com) ([10.249.254.144])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2020 23:10:35 -0800
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
 <20201016104444.1492028-21-maarten.lankhorst@linux.intel.com>
 <1b38a307-0d57-9abd-d72d-a0e783b39183@linux.intel.com>
 <5ed58ed0-ce0c-dbf8-ceb3-5a88c2e1fc00@linux.intel.com>
 <2c5a14d7-e01d-5af1-a4a0-96281c7a8943@linux.intel.com>
Message-ID: <d82b6639-1faa-209c-7a27-8a80a37f02a8@linux.intel.com>
Date: Thu, 5 Nov 2020 08:10:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <2c5a14d7-e01d-5af1-a4a0-96281c7a8943@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 20/61] drm/i915: Rework clflush to work
 correctly without obj->mm.lock.
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDExLzIvMjAgMTA6MjIgQU0sIFRob21hcyBIZWxsc3Ryw7ZtIHdyb3RlOgo+Cj4gT24gMTEv
Mi8yMCA5OjQ4IEFNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPj4gT3AgMzAtMTAtMjAyMCBv
bSAxNjowOCBzY2hyZWVmIFRob21hcyBIZWxsc3Ryw7ZtOgo+Pj4gT24gMTAvMTYvMjAgMTI6NDQg
UE0sIE1hYXJ0ZW4gTGFua2hvcnN0IHdyb3RlOgo+Pj4+IFBpbiBpbiB0aGUgY2FsbGVyLCBub3Qg
aW4gdGhlIHdvcmsgaXRzZWxmLiBUaGlzIHNob3VsZCBhbHNvCj4+Pj4gd29yayBiZXR0ZXIgZm9y
IGRtYS1mZW5jZSBhbm5vdGF0aW9ucy4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4g
TGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4+Pj4gLS0tCj4+
Pj4gwqDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY2xmbHVzaC5jIHwgMTUg
KysrKysrKy0tLS0tLS0tCj4+Pj4gwqDCoCAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCsp
LCA4IGRlbGV0aW9ucygtKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9jbGZsdXNoLmMgCj4+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fY2xmbHVzaC5jCj4+Pj4gaW5kZXggYmMwMjIzNzE2OTA2Li5kYWY5Mjg0ZWYx
ZjUgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2Ns
Zmx1c2guYwo+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jbGZs
dXNoLmMKPj4+PiBAQCAtMjcsMTUgKzI3LDggQEAgc3RhdGljIHZvaWQgX19kb19jbGZsdXNoKHN0
cnVjdCAKPj4+PiBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCj4+Pj4gwqDCoCBzdGF0aWMgaW50
IGNsZmx1c2hfd29yayhzdHJ1Y3QgZG1hX2ZlbmNlX3dvcmsgKmJhc2UpCj4+Pj4gwqDCoCB7Cj4+
Pj4gwqDCoMKgwqDCoMKgIHN0cnVjdCBjbGZsdXNoICpjbGZsdXNoID0gY29udGFpbmVyX29mKGJh
c2UsIAo+Pj4+IHR5cGVvZigqY2xmbHVzaCksIGJhc2UpOwo+Pj4+IC3CoMKgwqAgc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKm9iaiA9IGNsZmx1c2gtPm9iajsKPj4+PiAtwqDCoMKgIGludCBl
cnI7Cj4+Pj4gwqDCoCAtwqDCoMKgIGVyciA9IGk5MTVfZ2VtX29iamVjdF9waW5fcGFnZXMob2Jq
KTsKPj4+PiAtwqDCoMKgIGlmIChlcnIpCj4+Pj4gLcKgwqDCoMKgwqDCoMKgIHJldHVybiBlcnI7
Cj4+Pj4gLQo+Pj4+IC3CoMKgwqAgX19kb19jbGZsdXNoKG9iaik7Cj4+Pj4gLcKgwqDCoCBpOTE1
X2dlbV9vYmplY3RfdW5waW5fcGFnZXMob2JqKTsKPj4+PiArwqDCoMKgIF9fZG9fY2xmbHVzaChj
bGZsdXNoLT5vYmopOwo+Pj4+IMKgwqAgwqDCoMKgwqDCoCByZXR1cm4gMDsKPj4+PiDCoMKgIH0K
Pj4+PiBAQCAtNDQsNiArMzcsNyBAQCBzdGF0aWMgdm9pZCBjbGZsdXNoX3JlbGVhc2Uoc3RydWN0
IGRtYV9mZW5jZV93b3JrIAo+Pj4+ICpiYXNlKQo+Pj4+IMKgwqAgewo+Pj4+IMKgwqDCoMKgwqDC
oCBzdHJ1Y3QgY2xmbHVzaCAqY2xmbHVzaCA9IGNvbnRhaW5lcl9vZihiYXNlLCAKPj4+PiB0eXBl
b2YoKmNsZmx1c2gpLCBiYXNlKTsKPj4+PiDCoMKgICvCoMKgwqAgaTkxNV9nZW1fb2JqZWN0X3Vu
cGluX3BhZ2VzKGNsZmx1c2gtPm9iaik7Cj4+PiBIbW0sIENvdWxkIHdlIGRvIHdpdGhvdXQgcGlu
bmluZyBoZXJlPyBQYWdlcyBwcmVzZW50IGFyZSBwcm90ZWN0ZWQgCj4+PiBmaXJzdCBieSB0aGUg
b2JqZWN0IGxvY2ssIHRoZW4gYnkgdGhlIGZlbmNlPwo+Pj4KPj4+IC9UaG9tYXMKPj4+Cj4+Pgo+
Pj4KPj4gSSBmZWx0IHRoZSBsZWFzdCBjaGFuY2Ugb2YgcmVncmVzc2lvbnMgd2FzIHRvIGNvcHkg
dGhlIGV4aXN0aW5nIGNvZGUuIDopCj4+Cj4+IEF0IGxlYXN0IHVudGlsIHdlIGhhdmUgY29tcGxl
dGVkIG9iai0+bW0ubG9jayByZW1vdmFsLCB3ZSBzaG91bGRuJ3QgCj4+IHRyeSB0byBiZSBzbWFy
dCB3aXRoIHRoZXNlIGtpbmQgb2YgdGhpbmdzLgo+Pgo+PiBMaWtlbHksIHdlJ3ZlIGFscmVhZHkg
cGlubmVkIHRoZSBwYWdlcywgc28gaXQncyBhIHNpbXBsZSByZWYgaW5jcmVhc2UuCj4+Cj4+IExh
dGVyIG9uLCB3ZSBjYW4gdHJ5IHRvIGJlIHNtYXJ0LCBidXQgd2hlbmV2ZXIgSSB0cmllZCB0byBj
aGFuZ2UgCj4+IGJlaGF2aW9yIHNvIGZhciwgSSB3YXMgZm9yY2VkIHRvIGh1bnQgZG93biBidWdz
Lgo+Cj4gT0ssIHNvdW5kcyBnb29kLgo+ClJldmlld2VkLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8
dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+CgoKPiAvVGhvbWFzCj4KPgo+Cj4+Cj4+
IH5NYWFydGVuCj4+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
