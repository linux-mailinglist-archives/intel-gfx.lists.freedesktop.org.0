Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D6D2BBE8
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 00:11:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67B9A89722;
	Mon, 27 May 2019 22:11:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 498C689722
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 22:11:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 May 2019 15:11:35 -0700
X-ExtLoop1: 1
Received: from pdworak-mobl.ger.corp.intel.com (HELO [10.252.23.118])
 ([10.252.23.118])
 by FMSMGA003.fm.intel.com with ESMTP; 27 May 2019 15:11:34 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190521140855.3957-1-lionel.g.landwerlin@intel.com>
 <20190521140855.3957-3-lionel.g.landwerlin@intel.com>
 <155845658360.23981.11195981062397484814@skylake-alporthouse-com>
 <6aa987f0-3825-ff37-7b8e-deb24840a3c9@intel.com>
 <155869095409.28319.17899714925932847048@skylake-alporthouse-com>
 <20477c2a-f4b7-9130-6e69-e6c08ff62f7e@intel.com>
 <155869243871.28319.17151289879188051725@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <8f604709-6779-6d40-0d91-285bf8848516@intel.com>
Date: Mon, 27 May 2019 23:11:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <155869243871.28319.17151289879188051725@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/perf: allow holding preemption
 on filtered ctx
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

T24gMjQvMDUvMjAxOSAxMTowNywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDUtMjQgMTA6NTE6NDkpCj4+IE9uIDI0LzA1LzIwMTkgMTA6NDIs
IENocmlzIFdpbHNvbiB3cm90ZToKPj4+IFF1b3RpbmcgTGlvbmVsIExhbmR3ZXJsaW4gKDIwMTkt
MDUtMjQgMTA6Mjg6MTYpCj4+Pj4gT24gMjEvMDUvMjAxOSAxNzozNiwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+Pj4+PiBRdW90aW5nIExpb25lbCBMYW5kd2VybGluICgyMDE5LTA1LTIxIDE1OjA4OjUy
KQo+Pj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPj4+Pj4+IGluZGV4IGYyNjNh
ODM3NDI3My4uMmFkOTU5NzdmN2E4IDEwMDY0NAo+Pj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbHJjLmMKPj4+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2xyYy5jCj4+Pj4+PiBAQCAtMjA4NSw3ICsyMDg1LDcgQEAgc3RhdGljIGludCBnZW45
X2VtaXRfYmJfc3RhcnQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsCj4+Pj4+PiAgICAgICAgICAg
IGlmIChJU19FUlIoY3MpKQo+Pj4+Pj4gICAgICAgICAgICAgICAgICAgIHJldHVybiBQVFJfRVJS
KGNzKTsKPj4+Pj4+ICAgICAKPj4+Pj4+IC0gICAgICAgKmNzKysgPSBNSV9BUkJfT05fT0ZGIHwg
TUlfQVJCX0VOQUJMRTsKPj4+Pj4+ICsgICAgICAgKmNzKysgPSBNSV9BUkJfT05fT0ZGIHwgcnEt
Pmh3X2NvbnRleHQtPmFyYl9lbmFibGU7Cj4+Pj4+IE15IHByZWRpY3Rpb24gaXMgdGhhdCB0aGlz
IHdpbGwgcmVzdWx0IGluIHRoaXMgY29udGV4dCBiZWluZyByZXNldCBkdWUKPj4+Pj4gdG8gcHJl
ZW1wdGlvbiB0aW1lb3V0cyBhbmQgdGhlIGNvbnRleHQgdW5kZXIgcHJvZmlsZSBiZWluZyBiYW5u
ZWQuIE5vdGUKPj4+Pj4gdGhhdCBwcmVlbXB0aW9uIHRpbWVvdXRzIHdpbGwgYmUgdGhlIHByaW1h
cnkgbWVhbnMgZm9yIGhhbmcgZGV0ZWN0aW9uCj4+Pj4+IGZvciBlbmRsZXNzIGJhdGNoZXMuCj4+
Pj4+IC1DaHJpcwo+Pj4+Pgo+Pj4+IEFub3RoZXIgdGhvdWdodCA6Cj4+Pj4KPj4+PiBXaGF0IGlm
IHdlIHJhbiB3aXRoIHRoZSBtYXggcHJpb3JpdHk/Cj4+Pj4gSXQgd291bGQgYmUgZmluZSB0byBo
YXZlIHRoZSBoYW5nY2hlY2sgcHJlZW1wdCB0aGUgd29ya2xvYWQgKGl0J3MgcHJldHR5Cj4+Pj4g
c2hvcnQgYW5kIHNob3VsZG4ndCBhZmZlY3QgcGVyZiBjb3VudGVycyBmcm9tIDNkL2NvbXB1dGUg
cGlwZWxpbmUgbXVjaCkKPj4+PiBhcyBsb25nIGFzIGVuc3VyZSBub3RoaW5nIGVsc2UgcnVucy4K
Pj4+IEl0J3MgY2VydGFpbmx5IHNhZmVyIGZyb20gdGhlIHBvdiB0aGF0IHdlIGRvbid0IGJsb2Nr
IHByZWVtcHRpb24gYW5kIHNvCj4+PiBkb24ndCBpbmN1ciBmb3JjZWQgcmVzZXRzLiBOb3Qga2Vl
biBvbiB0aGUgc3lzdGVtIGJlaW5nIHBlcnR1cmJlZCBieSB0aGUKPj4+IGFjdCBvZiBvYnNlcnZp
bmcgaXQsIGFuZCBJIHN0aWxsIGRpc2xpa2UgdGhlIG5vdGlvbiBvZiBwZXJtaXR0aW5nIG9uZQo+
Pj4gY2xpZW50IHRvIGhvZyB0aGUgR1BVIHNvIGVhc2lseS4gTWFrZXMgbWUgdGhpbmsgb2YgUlQg
dGhyb3R0bGluZywgYW5kCj4+PiBnZW5lcmFsbHkgdGhyb3dpbmcgb3V0IHRoZSBhYnNvbHV0ZSBw
cmlvcml0eSBzeXN0ZW0gKGluIGV4Y2hhbmdlIGZvcgo+Pj4gY29tcHV0ZWQgZGVhZGxpbmVzIG9y
IHNvbWV0aGluZykuCj4+PiAtQ2hyaXMKPj4+Cj4+IEkgZG9uJ3QgbGlrZSBpdCBtdWNoIGVpdGhl
ciBidXQgSSBjYW4ndCBzZWUgaG93IHRvIGRvIG90aGVyd2lzZSB3aXRoIHRoZQo+PiBoYXJkd2Fy
ZSB3ZSBjdXJyZW50bHkgaGF2ZS4KPj4KPj4gSSdtIHRoaW5raW5nIG9mIDIgcHJpb3JpdGllcyB2
YWx1ZXMgb25lIG9mIHNjaGVkdWxpbmcsIG9uZSBvbmNlIHJ1bm5pbmcuCj4gSXQncyBub3QgcXVp
dGUgdGhhdCBlYXN5IGFzIHlvdSBtYXkgc3RhcnQgcnVubmluZyBjb25jdXJyZW50bHkgd2l0aCBv
bmUKPiBvZiB5b3VyIGRlcGVuZGVuY2llcyBhbmQgbXVzdCB0aGVyZWZvcmUgbWFuYWdlIHRoZSBw
cmlvcml0eSBpbnZlcnNpb24gaWYKPiB5b3UgYm9vc3QgeW91cnNlbGYuIEFuZCBJJ3ZlIGp1c3Qg
Z29uZSB0aHJvdWdoIGFuZCB0aHJvd24gb3V0IHRoZQo+IGN1cnJlbnQgY29tcGxleGl0eSBvZiBt
YW5pcHVsYXRpbmcgcHJpb3JpdHkgYXMgdGhleSBydW4gYmVjYXVzZSBpdCBtYWRlCj4gdGltZXNs
aWNpbmcgbXVjaCBoYXJkZXIgKHdoZXJlIHRoZSBwcmlvcml0eSB3YXMgY2hhbmdpbmcgYmV0d2Vl
bgo+IGV2YWx1YXRpbmcgdGhlIG5lZWQgZm9yIHRoZSBjb250ZXh0IHN3aXRjaCBhbmQgdGhlIGNv
bnRleHQgc3dpdGNoCj4gb2NjdXJyaW5nIC0tIHN1Y2ggbWlzdGFrZXMgY2FuIGJlIG5vdGljZWQg
aW4gdGhyb3VnaHB1dCBzZW5zaXRpdmUKPiB0cmFuc2NvZGUgd29ya2xvYWRzKS4KCgpJdCdzIGxp
a2UgeW91IHdyb3RlIGEgc2NoZWR1bGVyIGJlZm9yZSEKCgpIZXJlIGlzIGhvdyBJIGNvdWxkIHNl
ZSB0aGlzIHdvcmsuCgpJIGNhbiBzZWUgdGhlIDMgZGlmZmVyZW50IHN0YWdlcyBvZiBhIHJlcXVl
c3QgOgoKIMKgIC0gd2FpdGluZyBvbiBkZXBlbmRlbmNpZXMKCiDCoCAtIGluIHRoZSBlbmdpbmUg
cXVldWUKCiDCoCAtIGluIHRoZSBIVwoKClRoZSByZXF1ZXN0IHdvdWxkIG1haW50YWluIGlzIG5v
cm1hbC9kZWZhdWx0IHByaW9yaXR5IHVudGlsIGl0IGhpdHMgdGhlIEhXLgoKV2hlbiBoaXR0aW5n
IHRoZSBIVyBmb3IgdGhlIGZpcnN0IHRpbWUsIGl0cyBwcmlvcml0eSBpcyB1cGdyYWRlZCB0byBw
ZXJmIApwcmlvcml0eSBzbyB0aGF0IGl0IHN0aWNrcyB0byB0aGUgSFcgdW50aWwgY29tcGxldGl0
aW9uIChvciBzb21lIG90aGVyIAp0aW1lb3V0IGtpY2tzIGl0IG9mZiB0aGUgSFcpLgoKCkRvZXMg
dGhhdCBzdGlsbCBzb3VuZCBicm9rZW4/CgoKVGhhbmtzIGEgbG90LAoKCi1MaW9uZWwKCgo+Cj4+
IE1vc3QgY29udGV4dHMgd291bGQgaGF2ZSBib3RoIHZhbHVlcyBlcXVhbC4KPj4KPj4gQ291bGQg
bWl0aWdhdGUgdGhlIGlzc3VlIGEgYml0Pwo+IEEgYml0LCBpdCBnaXZlcyB5b3UgYSBzb2Z0IG5v
dGlvbiBvZiBhIG5vLXByZWVtcHQgZmxhZyB3aXRob3V0IHF1ZXVlCj4ganVtcGluZy4gcnFfcHJp
byhycSkgfCBpbnRlbF9jb250ZXh0LT5lZmZlY3RpdmVfcHJpb3JpdHkgb3Igc29tZXN1Y2guCj4g
LUNocmlzCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
