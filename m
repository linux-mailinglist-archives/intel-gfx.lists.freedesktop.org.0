Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4C829434
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 11:08:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20DFB6E0A5;
	Fri, 24 May 2019 09:08:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E928E6E0A5
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 09:08:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 02:08:08 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO [10.252.20.122])
 ([10.252.20.122])
 by FMSMGA003.fm.intel.com with ESMTP; 24 May 2019 02:08:07 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190524064529.20514-1-chris@chris-wilson.co.uk>
 <3806b12a-c2e2-fab4-b038-c8dd33daefd1@linux.intel.com>
 <155868585422.28319.13611154637326086125@skylake-alporthouse-com>
 <784ff780-a9b2-b997-1e4f-ed47f313d280@linux.intel.com>
 <155868654679.28319.17830052202613739639@skylake-alporthouse-com>
 <0cc2c0e6-5d0a-1286-2f4a-36a69e2dca19@linux.intel.com>
 <155868699138.28319.7611854554635469420@skylake-alporthouse-com>
 <68cf1795-b914-40b3-645c-0c198e7859db@linux.intel.com>
 <27f51955-016a-bca7-efef-16b962965dce@linux.intel.com>
 <155868850197.28319.10329128001061947761@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <be68051c-db9e-82ef-3d42-a82c6bc903a1@linux.intel.com>
Date: Fri, 24 May 2019 10:08:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155868850197.28319.10329128001061947761@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [BrownBag] drm/i915/gtt: Neuter the deferred unbind
 callback from gen6_ppgtt_cleanup
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
Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI0LzA1LzIwMTkgMTA6MDEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTI0IDA5OjU3OjQyKQo+Pgo+PiBPbiAyNC8wNS8yMDE5IDA5OjUx
LCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPj4+Cj4+PiBPbiAyNC8wNS8yMDE5IDA5OjM2LCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4+Pj4gUXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0yNCAw
OTozMTo0NSkKPj4+Pj4KPj4+Pj4gT24gMjQvMDUvMjAxOSAwOToyOSwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+Pj4+Pj4gUXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0yNCAwOToyMzo0MCkK
Pj4+Pj4+Pgo+Pj4+Pj4+IE9uIDI0LzA1LzIwMTkgMDk6MTcsIENocmlzIFdpbHNvbiB3cm90ZToK
Pj4+Pj4+Pj4gUXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0yNCAwOToxMzoxNCkKPj4+
Pj4+Pj4+Cj4+Pj4+Pj4+PiBPbiAyNC8wNS8yMDE5IDA3OjQ1LCBDaHJpcyBXaWxzb24gd3JvdGU6
Cj4+Pj4+Pj4+Pj4gSGF2aW5nIGRlZmVycmVkIHRoZSB2bWEgZGVzdHJ1Y3Rpb24gdG8gYSB3b3Jr
ZXIgd2hlcmUgd2UgY2FuCj4+Pj4+Pj4+Pj4gYWNxdWlyZSB0aGUKPj4+Pj4+Pj4+PiBzdHJ1Y3Rf
bXV0ZXgsIHdlIGhhdmUgdG8gYXZvaWQgY2hhc2luZyBiYWNrIGludG8gdGhlIG5vdyBkZXN0cm95
ZWQKPj4+Pj4+Pj4+PiBwcGd0dC4gVGhlIHBkX3ZtYSBpcyBzcGVjaWFsIGluIGhhdmluZyBhIGN1
c3RvbSB1bmJpbmQgZnVuY3Rpb24KPj4+Pj4+Pj4+PiB0byBzY2FuCj4+Pj4+Pj4+Pj4gZm9yIHVu
dXNlZCBwYWdlcyBkZXNwaXRlIHRoZSBWTUEgaXRzZWxmIGJlaW5nIG5vdGlvbmFsbHkgcGFydCBv
Zgo+Pj4+Pj4+Pj4+IHRoZQo+Pj4+Pj4+Pj4+IEdHVFQuIEFzIHN1Y2gsIHdlIG5lZWQgdG8gZGlz
YWJsZSB0aGF0IGNhbGxiYWNrIHRvIGF2b2lkIGEKPj4+Pj4+Pj4+PiB1c2UtYWZ0ZXItZnJlZS4K
Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+IFRoaXMgdW5mb3J0dW5hdGVseSBibGV3IHVwIHNvIGVhcmx5
IGR1cmluZyBib290IHRoYXQgQ0kgZGVjbGFyZWQKPj4+Pj4+Pj4+PiB0aGUKPj4+Pj4+Pj4+PiBt
YWNoaW5lIHVucmVhY2hhYmxlIGFzIG9wcG9zZWQgdG8gYmVpbmcgdGhlIG1ham9yIGZhaWx1cmUg
aXQKPj4+Pj4+Pj4+PiB3YXMuIE9vcHMuCj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBGaXhlczogZDM2
MjIwOTljNzZmICgiZHJtL2k5MTUvZ3R0OiBBbHdheXMgYWNxdWlyZSBzdHJ1Y3RfbXV0ZXgKPj4+
Pj4+Pj4+PiBmb3IgZ2VuNl9wcGd0dF9jbGVhbnVwIikKPj4+Pj4+Pj4+PiBTaWduZWQtb2ZmLWJ5
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4+Pj4+Pj4+PiBDYzog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4+Pj4+Pj4+PiBDYzog
VG9taSBTYXJ2ZWxhIDx0b21pLnAuc2FydmVsYUBpbnRlbC5jb20+Cj4+Pj4+Pj4+Pj4gLS0tCj4+
Pj4+Pj4+Pj4gIMKgwqDCoMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwg
MjgKPj4+Pj4+Pj4+PiArKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4+Pj4+Pj4+Pj4gIMKg
wqDCoMKgIDEgZmlsZSBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspCj4+Pj4+Pj4+Pj4KPj4+Pj4+
Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPj4+
Pj4+Pj4+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4+Pj4+Pj4+Pj4g
aW5kZXggOGQ4YTRiMGFkNGQ5Li4yNjZiYWExMWRmNjQgMTAwNjQ0Cj4+Pj4+Pj4+Pj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPj4+Pj4+Pj4+PiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+Pj4+Pj4+Pj4+IEBAIC0xODQ3LDYgKzE4
NDcsMzMgQEAgc3RhdGljIHZvaWQKPj4+Pj4+Pj4+PiBnZW42X3BwZ3R0X2NsZWFudXBfd29yayhz
dHJ1Y3Qgd29ya19zdHJ1Y3QgKndyaykKPj4+Pj4+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoCBrZnJl
ZSh3b3JrKTsKPj4+Pj4+Pj4+PiAgwqDCoMKgwqAgfQo+Pj4+Pj4+Pj4+ICtzdGF0aWMgaW50IG5v
cF9zZXRfcGFnZXMoc3RydWN0IGk5MTVfdm1hICp2bWEpCj4+Pj4+Pj4+Pj4gK3sKPj4+Pj4+Pj4+
PiArwqDCoMKgwqAgcmV0dXJuIC1FTk9ERVY7Cj4+Pj4+Pj4+Pj4gK30KPj4+Pj4+Pj4+PiArCj4+
Pj4+Pj4+Pj4gK3N0YXRpYyB2b2lkIG5vcF9jbGVhcl9wYWdlcyhzdHJ1Y3QgaTkxNV92bWEgKnZt
YSkKPj4+Pj4+Pj4+PiArewo+Pj4+Pj4+Pj4+ICt9Cj4+Pj4+Pj4+Pj4gKwo+Pj4+Pj4+Pj4+ICtz
dGF0aWMgaW50IG5vcF9iaW5kKHN0cnVjdCBpOTE1X3ZtYSAqdm1hLAo+Pj4+Pj4+Pj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbnVtIGk5MTVfY2FjaGVfbGV2ZWwgY2FjaGVf
bGV2ZWwsCj4+Pj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHUzMiB1
bnVzZWQpCj4+Pj4+Pj4+Pj4gK3sKPj4+Pj4+Pj4+PiArwqDCoMKgwqAgcmV0dXJuIC1FTk9ERVY7
Cj4+Pj4+Pj4+Pj4gK30KPj4+Pj4+Pj4+PiArCj4+Pj4+Pj4+Pj4gK3N0YXRpYyB2b2lkIG5vcF91
bmJpbmQoc3RydWN0IGk5MTVfdm1hICp2bWEpCj4+Pj4+Pj4+Pj4gK3sKPj4+Pj4+Pj4+PiArfQo+
Pj4+Pj4+Pj4+ICsKPj4+Pj4+Pj4+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X3ZtYV9vcHMg
bm9wX3ZtYV9vcHMgPSB7Cj4+Pj4+Pj4+Pj4gK8KgwqDCoMKgIC5zZXRfcGFnZXMgPSBub3Bfc2V0
X3BhZ2VzLAo+Pj4+Pj4+Pj4+ICvCoMKgwqDCoCAuY2xlYXJfcGFnZXMgPSBub3BfY2xlYXJfcGFn
ZXMsCj4+Pj4+Pj4+Pj4gK8KgwqDCoMKgIC5iaW5kX3ZtYSA9IG5vcF9iaW5kLAo+Pj4+Pj4+Pj4+
ICvCoMKgwqDCoCAudW5iaW5kX3ZtYSA9IG5vcF91bmJpbmQsCj4+Pj4+Pj4+Pj4gK307Cj4+Pj4+
Pj4+Pj4gKwo+Pj4+Pj4+Pj4+ICDCoMKgwqDCoCBzdGF0aWMgdm9pZCBnZW42X3BwZ3R0X2NsZWFu
dXAoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0pCj4+Pj4+Pj4+Pj4gIMKgwqDCoMKgIHsK
Pj4+Pj4+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZ2VuNl9od19wcGd0dCAqcHBndHQg
PQo+Pj4+Pj4+Pj4+IHRvX2dlbjZfcHBndHQoaTkxNV92bV90b19wcGd0dCh2bSkpOwo+Pj4+Pj4+
Pj4+IEBAIC0xODU1LDYgKzE4ODIsNyBAQCBzdGF0aWMgdm9pZCBnZW42X3BwZ3R0X2NsZWFudXAo
c3RydWN0Cj4+Pj4+Pj4+Pj4gaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKPj4+Pj4+Pj4+PiAgwqDC
oMKgwqDCoMKgwqDCoCAvKiBGSVhNRSByZW1vdmUgdGhlIHN0cnVjdF9tdXRleCB0byBicmluZyB0
aGUgbG9ja2luZwo+Pj4+Pj4+Pj4+IHVuZGVyIGNvbnRyb2wgKi8KPj4+Pj4+Pj4+PiAgwqDCoMKg
wqDCoMKgwqDCoCBJTklUX1dPUksoJndvcmstPmJhc2UsIGdlbjZfcHBndHRfY2xlYW51cF93b3Jr
KTsKPj4+Pj4+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoCB3b3JrLT52bWEgPSBwcGd0dC0+dm1hOwo+
Pj4+Pj4+Pj4+ICvCoMKgwqDCoCB3b3JrLT52bWEtPm9wcyA9ICZub3Bfdm1hX29wczsKPj4+Pj4+
Pj4+Cj4+Pj4+Pj4+PiBDb3VsZCB3ZSB1c2Ugc29tZSBhc3NlcnRzIGJlZm9yZSBvdmVycmlkaW5n
IHRoZSB2bWEgb3BzPyBMaWtlCj4+Pj4+Pj4+PiBHRU1fQlVHX09OKHZtYS0+cGFnZXMpPyBBbmQg
c29tZXRoaW5nIGZvciBzdGlsbCBib3VuZD8KPj4+Pj4+Pj4KPj4+Pj4+Pj4gSXQgdGVjaG5pY2Fs
bHkgc3RpbGwgaXMgYm91bmQgYXMgaXQgaXMgaW4gdGhlIEdHVFQgYnV0IGN1cnJlbnRseQo+Pj4+
Pj4+PiB1bnBpbm5lZCAtLSB0aGF0IHdpbGwgYmUgY2hlY2tlZCBvbiBkZXN0cm95LCBpdCdzIGp1
c3Qgd2UgYWxzbyBnZXQgYW4KPj4+Pj4+Pj4gdW5iaW5kIGNhbGxiYWNrLiB2bWEtPnBhZ2VzIGRv
ZXNuJ3QgZXhpc3QgZm9yIHRoaXMgKHNldCB0byBFUlJfUFRSKS4KPj4+Pj4+Pgo+Pj4+Pj4+IElm
IHdlIGFyZSBnZXR0aW5nIHRoZSB1bmJpbmQgY2FsbGJhY2sgYW5kIHdlIG5vcC1lZCBpdCwgd2hv
IHdpbGwKPj4+Pj4+PiBhY3R1YWxseSBkbyBpdCdzIGpvYj8KPj4+Pj4+Cj4+Pj4+PiBUaGUgY2Fs
bGJhY2sgaXMganVzdCBhIGhvb2sgZm9yIHVzIHRvIHBydW5lIHdpdGhpbiB0aGUgcHBndHQuCj4+
Pj4+PiBJdCBzdGlsbCBpcyByZW1vdmVkIGZyb20gR0dUVCBieSBpOTE1X3ZtYV91bmJpbmQoKS4K
Pj4+Pj4KPj4+Pj4gU28gaXQgbmVlZHMgR0VNX0JVR19PTihwcGd0dC0+c2Nhbl9mb3JfdW51c2Vk
X3B0KSBiZWZvcmUgb3ZlcnJpZGluZyB0aGUKPj4+Pj4gdW5iaW5kPwo+Pj4+Cj4+Pj4gTm8uIFRo
ZXkgZ2V0IGZyZWVkIGJ5IHRoZSBjbGVhbnVwIGl0c2VsZi4gVGhlIHNjYW4gaXMganVzdCBhbgo+
Pj4+IG9wcG9ydHVuaXN0aWMgcHJ1bmUgaWYgZWl0aGVyIHRoZSBjb250ZXh0L21tIGlzIGV2aWN0
ZWQgYnV0IHN0aWxsIGFsaXZlLgo+Pj4KPj4+IFRoZW4gdGhlIHNhbWUgYXNzZXJ0IGluIGdlbjZf
cHBndHRfY2xlYW51cF93b3JrPyA6KQo+Pgo+PiBPa2F5IHBwZ3R0IGlzIGdvbmUgc28gY2FuJ3Qg
ZG8gaXQuLiBhbm5veWluZy4uIENsZWFudXAgc2VlbXMgdG8gc3VwcG9ydAo+PiB5b3VyIGNsYWlt
cyBidXQgSSB0aGluayB3ZSBuZWVkIGEgQkZDIChiaWcgZmF0IGNvbW1lbnQpIGFib3ZlIHRoZSB2
bWEKPj4gb3BzIG92ZXJyaWRlIHRvIGV4cGxhaW5zIHRoaXMuIFdpdGggdGhhdDoKPiAKPiBJdCBo
YXMgRklYTUUhIEkgcmVhbGx5IGRvIGhvcGUgdGhpcyBpcyBzaG9ydCB0ZXJtLi4uCgpPaywgdGhh
dCdzIGdvb2QgZW5vdWdoLgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
