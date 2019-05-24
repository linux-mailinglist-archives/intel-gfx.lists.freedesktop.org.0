Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 716CD293FB
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:57:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0D3E88F58;
	Fri, 24 May 2019 08:57:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8583C88F58
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 08:57:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 01:57:45 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO [10.252.20.122])
 ([10.252.20.122])
 by FMSMGA003.fm.intel.com with ESMTP; 24 May 2019 01:57:44 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190524064529.20514-1-chris@chris-wilson.co.uk>
 <3806b12a-c2e2-fab4-b038-c8dd33daefd1@linux.intel.com>
 <155868585422.28319.13611154637326086125@skylake-alporthouse-com>
 <784ff780-a9b2-b997-1e4f-ed47f313d280@linux.intel.com>
 <155868654679.28319.17830052202613739639@skylake-alporthouse-com>
 <0cc2c0e6-5d0a-1286-2f4a-36a69e2dca19@linux.intel.com>
 <155868699138.28319.7611854554635469420@skylake-alporthouse-com>
 <68cf1795-b914-40b3-645c-0c198e7859db@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <27f51955-016a-bca7-efef-16b962965dce@linux.intel.com>
Date: Fri, 24 May 2019 09:57:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <68cf1795-b914-40b3-645c-0c198e7859db@linux.intel.com>
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

Ck9uIDI0LzA1LzIwMTkgMDk6NTEsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+IAo+IE9uIDI0LzA1
LzIwMTkgMDk6MzYsIENocmlzIFdpbHNvbiB3cm90ZToKPj4gUXVvdGluZyBUdnJ0a28gVXJzdWxp
biAoMjAxOS0wNS0yNCAwOTozMTo0NSkKPj4+Cj4+PiBPbiAyNC8wNS8yMDE5IDA5OjI5LCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4+Pj4gUXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0yNCAw
OToyMzo0MCkKPj4+Pj4KPj4+Pj4gT24gMjQvMDUvMjAxOSAwOToxNywgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+Pj4+Pj4gUXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0yNCAwOToxMzoxNCkK
Pj4+Pj4+Pgo+Pj4+Pj4+IE9uIDI0LzA1LzIwMTkgMDc6NDUsIENocmlzIFdpbHNvbiB3cm90ZToK
Pj4+Pj4+Pj4gSGF2aW5nIGRlZmVycmVkIHRoZSB2bWEgZGVzdHJ1Y3Rpb24gdG8gYSB3b3JrZXIg
d2hlcmUgd2UgY2FuIAo+Pj4+Pj4+PiBhY3F1aXJlIHRoZQo+Pj4+Pj4+PiBzdHJ1Y3RfbXV0ZXgs
IHdlIGhhdmUgdG8gYXZvaWQgY2hhc2luZyBiYWNrIGludG8gdGhlIG5vdyBkZXN0cm95ZWQKPj4+
Pj4+Pj4gcHBndHQuIFRoZSBwZF92bWEgaXMgc3BlY2lhbCBpbiBoYXZpbmcgYSBjdXN0b20gdW5i
aW5kIGZ1bmN0aW9uIAo+Pj4+Pj4+PiB0byBzY2FuCj4+Pj4+Pj4+IGZvciB1bnVzZWQgcGFnZXMg
ZGVzcGl0ZSB0aGUgVk1BIGl0c2VsZiBiZWluZyBub3Rpb25hbGx5IHBhcnQgb2YgCj4+Pj4+Pj4+
IHRoZQo+Pj4+Pj4+PiBHR1RULiBBcyBzdWNoLCB3ZSBuZWVkIHRvIGRpc2FibGUgdGhhdCBjYWxs
YmFjayB0byBhdm9pZCBhCj4+Pj4+Pj4+IHVzZS1hZnRlci1mcmVlLgo+Pj4+Pj4+Pgo+Pj4+Pj4+
PiBUaGlzIHVuZm9ydHVuYXRlbHkgYmxldyB1cCBzbyBlYXJseSBkdXJpbmcgYm9vdCB0aGF0IENJ
IGRlY2xhcmVkIAo+Pj4+Pj4+PiB0aGUKPj4+Pj4+Pj4gbWFjaGluZSB1bnJlYWNoYWJsZSBhcyBv
cHBvc2VkIHRvIGJlaW5nIHRoZSBtYWpvciBmYWlsdXJlIGl0IAo+Pj4+Pj4+PiB3YXMuIE9vcHMu
Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IEZpeGVzOiBkMzYyMjA5OWM3NmYgKCJkcm0vaTkxNS9ndHQ6IEFs
d2F5cyBhY3F1aXJlIHN0cnVjdF9tdXRleCAKPj4+Pj4+Pj4gZm9yIGdlbjZfcHBndHRfY2xlYW51
cCIpCj4+Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgo+Pj4+Pj4+PiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4KPj4+Pj4+Pj4gQ2M6IFRvbWkgU2FydmVsYSA8dG9taS5wLnNhcnZlbGFAaW50ZWwu
Y29tPgo+Pj4+Pj4+PiAtLS0KPj4+Pj4+Pj4gwqDCoMKgwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fZ3R0LmMgfCAyOCAKPj4+Pj4+Pj4gKysrKysrKysrKysrKysrKysrKysrKysrKysr
Kwo+Pj4+Pj4+PiDCoMKgwqDCoCAxIGZpbGUgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKQo+Pj4+
Pj4+Pgo+Pj4+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1f
Z3R0LmMgCj4+Pj4+Pj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPj4+
Pj4+Pj4gaW5kZXggOGQ4YTRiMGFkNGQ5Li4yNjZiYWExMWRmNjQgMTAwNjQ0Cj4+Pj4+Pj4+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4+Pj4+Pj4+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4+Pj4+Pj4+IEBAIC0xODQ3LDYgKzE4
NDcsMzMgQEAgc3RhdGljIHZvaWQgCj4+Pj4+Pj4+IGdlbjZfcHBndHRfY2xlYW51cF93b3JrKHN0
cnVjdCB3b3JrX3N0cnVjdCAqd3JrKQo+Pj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgIGtmcmVlKHdv
cmspOwo+Pj4+Pj4+PiDCoMKgwqDCoCB9Cj4+Pj4+Pj4+ICtzdGF0aWMgaW50IG5vcF9zZXRfcGFn
ZXMoc3RydWN0IGk5MTVfdm1hICp2bWEpCj4+Pj4+Pj4+ICt7Cj4+Pj4+Pj4+ICvCoMKgwqDCoCBy
ZXR1cm4gLUVOT0RFVjsKPj4+Pj4+Pj4gK30KPj4+Pj4+Pj4gKwo+Pj4+Pj4+PiArc3RhdGljIHZv
aWQgbm9wX2NsZWFyX3BhZ2VzKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQo+Pj4+Pj4+PiArewo+Pj4+
Pj4+PiArfQo+Pj4+Pj4+PiArCj4+Pj4+Pj4+ICtzdGF0aWMgaW50IG5vcF9iaW5kKHN0cnVjdCBp
OTE1X3ZtYSAqdm1hLAo+Pj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
ZW51bSBpOTE1X2NhY2hlX2xldmVsIGNhY2hlX2xldmVsLAo+Pj4+Pj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgdTMyIHVudXNlZCkKPj4+Pj4+Pj4gK3sKPj4+Pj4+Pj4gK8Kg
wqDCoMKgIHJldHVybiAtRU5PREVWOwo+Pj4+Pj4+PiArfQo+Pj4+Pj4+PiArCj4+Pj4+Pj4+ICtz
dGF0aWMgdm9pZCBub3BfdW5iaW5kKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQo+Pj4+Pj4+PiArewo+
Pj4+Pj4+PiArfQo+Pj4+Pj4+PiArCj4+Pj4+Pj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGk5MTVf
dm1hX29wcyBub3Bfdm1hX29wcyA9IHsKPj4+Pj4+Pj4gK8KgwqDCoMKgIC5zZXRfcGFnZXMgPSBu
b3Bfc2V0X3BhZ2VzLAo+Pj4+Pj4+PiArwqDCoMKgwqAgLmNsZWFyX3BhZ2VzID0gbm9wX2NsZWFy
X3BhZ2VzLAo+Pj4+Pj4+PiArwqDCoMKgwqAgLmJpbmRfdm1hID0gbm9wX2JpbmQsCj4+Pj4+Pj4+
ICvCoMKgwqDCoCAudW5iaW5kX3ZtYSA9IG5vcF91bmJpbmQsCj4+Pj4+Pj4+ICt9Owo+Pj4+Pj4+
PiArCj4+Pj4+Pj4+IMKgwqDCoMKgIHN0YXRpYyB2b2lkIGdlbjZfcHBndHRfY2xlYW51cChzdHJ1
Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKPj4+Pj4+Pj4gwqDCoMKgwqAgewo+Pj4+Pj4+PiDC
oMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBnZW42X2h3X3BwZ3R0ICpwcGd0dCA9IAo+Pj4+Pj4+PiB0
b19nZW42X3BwZ3R0KGk5MTVfdm1fdG9fcHBndHQodm0pKTsKPj4+Pj4+Pj4gQEAgLTE4NTUsNiAr
MTg4Miw3IEBAIHN0YXRpYyB2b2lkIGdlbjZfcHBndHRfY2xlYW51cChzdHJ1Y3QgCj4+Pj4+Pj4+
IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0pCj4+Pj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgLyogRklY
TUUgcmVtb3ZlIHRoZSBzdHJ1Y3RfbXV0ZXggdG8gYnJpbmcgdGhlIGxvY2tpbmcgCj4+Pj4+Pj4+
IHVuZGVyIGNvbnRyb2wgKi8KPj4+Pj4+Pj4gwqDCoMKgwqDCoMKgwqDCoCBJTklUX1dPUksoJndv
cmstPmJhc2UsIGdlbjZfcHBndHRfY2xlYW51cF93b3JrKTsKPj4+Pj4+Pj4gwqDCoMKgwqDCoMKg
wqDCoCB3b3JrLT52bWEgPSBwcGd0dC0+dm1hOwo+Pj4+Pj4+PiArwqDCoMKgwqAgd29yay0+dm1h
LT5vcHMgPSAmbm9wX3ZtYV9vcHM7Cj4+Pj4+Pj4KPj4+Pj4+PiBDb3VsZCB3ZSB1c2Ugc29tZSBh
c3NlcnRzIGJlZm9yZSBvdmVycmlkaW5nIHRoZSB2bWEgb3BzPyBMaWtlCj4+Pj4+Pj4gR0VNX0JV
R19PTih2bWEtPnBhZ2VzKT8gQW5kIHNvbWV0aGluZyBmb3Igc3RpbGwgYm91bmQ/Cj4+Pj4+Pgo+
Pj4+Pj4gSXQgdGVjaG5pY2FsbHkgc3RpbGwgaXMgYm91bmQgYXMgaXQgaXMgaW4gdGhlIEdHVFQg
YnV0IGN1cnJlbnRseQo+Pj4+Pj4gdW5waW5uZWQgLS0gdGhhdCB3aWxsIGJlIGNoZWNrZWQgb24g
ZGVzdHJveSwgaXQncyBqdXN0IHdlIGFsc28gZ2V0IGFuCj4+Pj4+PiB1bmJpbmQgY2FsbGJhY2su
IHZtYS0+cGFnZXMgZG9lc24ndCBleGlzdCBmb3IgdGhpcyAoc2V0IHRvIEVSUl9QVFIpLgo+Pj4+
Pgo+Pj4+PiBJZiB3ZSBhcmUgZ2V0dGluZyB0aGUgdW5iaW5kIGNhbGxiYWNrIGFuZCB3ZSBub3At
ZWQgaXQsIHdobyB3aWxsCj4+Pj4+IGFjdHVhbGx5IGRvIGl0J3Mgam9iPwo+Pj4+Cj4+Pj4gVGhl
IGNhbGxiYWNrIGlzIGp1c3QgYSBob29rIGZvciB1cyB0byBwcnVuZSB3aXRoaW4gdGhlIHBwZ3R0
Lgo+Pj4+IEl0IHN0aWxsIGlzIHJlbW92ZWQgZnJvbSBHR1RUIGJ5IGk5MTVfdm1hX3VuYmluZCgp
Lgo+Pj4KPj4+IFNvIGl0IG5lZWRzIEdFTV9CVUdfT04ocHBndHQtPnNjYW5fZm9yX3VudXNlZF9w
dCkgYmVmb3JlIG92ZXJyaWRpbmcgdGhlCj4+PiB1bmJpbmQ/Cj4+Cj4+IE5vLiBUaGV5IGdldCBm
cmVlZCBieSB0aGUgY2xlYW51cCBpdHNlbGYuIFRoZSBzY2FuIGlzIGp1c3QgYW4KPj4gb3Bwb3J0
dW5pc3RpYyBwcnVuZSBpZiBlaXRoZXIgdGhlIGNvbnRleHQvbW0gaXMgZXZpY3RlZCBidXQgc3Rp
bGwgYWxpdmUuCj4gCj4gVGhlbiB0aGUgc2FtZSBhc3NlcnQgaW4gZ2VuNl9wcGd0dF9jbGVhbnVw
X3dvcms/IDopCgpPa2F5IHBwZ3R0IGlzIGdvbmUgc28gY2FuJ3QgZG8gaXQuLiBhbm5veWluZy4u
IENsZWFudXAgc2VlbXMgdG8gc3VwcG9ydCAKeW91ciBjbGFpbXMgYnV0IEkgdGhpbmsgd2UgbmVl
ZCBhIEJGQyAoYmlnIGZhdCBjb21tZW50KSBhYm92ZSB0aGUgdm1hIApvcHMgb3ZlcnJpZGUgdG8g
ZXhwbGFpbnMgdGhpcy4gV2l0aCB0aGF0OgoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0
dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
