Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A63B9AFA6
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 14:36:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F4146EC83;
	Fri, 23 Aug 2019 12:36:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9056D6EC83
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 12:36:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 05:36:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,421,1559545200"; d="scan'208";a="196471065"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 23 Aug 2019 05:36:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <87y2zk9j64.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190820020147.5667-1-daniele.ceraolospurio@intel.com>
 <20190820020147.5667-2-daniele.ceraolospurio@intel.com>
 <op.z6tu8kdjxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <30042968-5bf2-4106-ee29-9bf9dab29673@intel.com>
 <9512dd31-71c1-5b74-c45b-ca69cfc844a7@intel.com> <87y2zk9j64.fsf@intel.com>
Date: Fri, 23 Aug 2019 15:36:38 +0300
Message-ID: <87tva89hyh.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915: Introduce intel_reg_types.h
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMyBBdWcgMjAxOSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4g
d3JvdGU6Cj4gT24gVGh1LCAyMiBBdWcgMjAxOSwgRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFu
aWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4gd3JvdGU6Cj4+IE9uIDgvMjAvMTkgMTE6MDAg
QU0sIERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gd3JvdGU6Cj4+PiAKPj4+IAo+Pj4gT24gOC8yMC8x
OSA4OjQyIEFNLCBNaWNoYWwgV2FqZGVjemtvIHdyb3RlOgo+Pj4+IE9uIFR1ZSwgMjAgQXVnIDIw
MTkgMDQ6MDE6NDcgKzAyMDAsIERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gCj4+Pj4gPGRhbmllbGUu
Y2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+IHdyb3RlOgo+Pj4+Cj4+Pj4KPj4+Pj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ190eXBlcy5oIAo+Pj4+PiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ190eXBlcy5oCj4+Pj4+IG5ldyBmaWxlIG1vZGUgMTAw
NjQ0Cj4+Pj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uODdiY2U4MGRkNWVkCj4+Pj4+IC0tLSAvZGV2
L251bGwKPj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcmVnX3R5cGVzLmgK
Pj4+Pgo+Pj4+Cj4+Pj4+ICsKPj4+Pj4gK3R5cGVkZWYgc3RydWN0IHsKPj4+Pj4gK8KgwqDCoCB1
MzIgcmVnOwo+Pj4+PiArfSBpOTE1X3JlZ190Owo+Pj4+PiArCj4+Pj4+ICsjZGVmaW5lIF9NTUlP
KHIpICgoY29uc3QgaTkxNV9yZWdfdCl7IC5yZWcgPSAocikgfSkKPj4+Pj4gKwo+Pj4+PiArI2Rl
ZmluZSBJTlZBTElEX01NSU9fUkVHIF9NTUlPKDApCj4+Pj4+ICsKPj4+Pj4gK3N0YXRpYyBpbmxp
bmUgdTMyIGk5MTVfbW1pb19yZWdfb2Zmc2V0KGk5MTVfcmVnX3QgcmVnKQo+Pj4+PiArewo+Pj4+
PiArwqDCoMKgIHJldHVybiByZWcucmVnOwo+Pj4+PiArfQo+Pj4+PiArCj4+Pj4+ICtzdGF0aWMg
aW5saW5lIGJvb2wgaTkxNV9tbWlvX3JlZ19lcXVhbChpOTE1X3JlZ190IGEsIGk5MTVfcmVnX3Qg
YikKPj4+Pj4gK3sKPj4+Pj4gK8KgwqDCoCByZXR1cm4gaTkxNV9tbWlvX3JlZ19vZmZzZXQoYSkg
PT0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoYik7Cj4+Pj4+ICt9Cj4+Pj4+ICsKPj4+Pj4gK3N0YXRp
YyBpbmxpbmUgYm9vbCBpOTE1X21taW9fcmVnX3ZhbGlkKGk5MTVfcmVnX3QgcmVnKQo+Pj4+PiAr
ewo+Pj4+PiArwqDCoMKgIHJldHVybiAhaTkxNV9tbWlvX3JlZ19lcXVhbChyZWcsIElOVkFMSURf
TU1JT19SRUcpOwo+Pj4+PiArfQo+Pj4+PiArCj4+Pj4KPj4+PiBobW0sIHRoZXJlIGlzIG5vdyBk
aXNjb25uZWN0aW9uIGJldHdlZW4gcHJlZml4ZXMgaW46Cj4+Pj4KPj4+PiDCoMKgwqDCoMKgJ2lu
dGVsJ19yZWdfdHlwZXMuaAo+Pj4+IGFuZAo+Pj4+IMKgwqDCoMKgwqAnaTkxNSdfcmVnX3QKPj4+
PiDCoMKgwqDCoMKgJ2k5MTUnX21taW9fcmVnX3h4eCgpCj4+Pj4KPj4+PiB0aGF0IGlzIHdoeSBJ
IHdhcyBzdWdnZXN0aW5nIHRvIGtlZXA6Cj4+Pj4KPj4+PiDCoMKgwqDCoMKgJ2k5MTUnX3JlZy5o
IChvciBhdCB5b3VyIHByZWZlcmVuY2UgJ2k5MTUnX3JlZ190eXBlcy5oKQo+Pj4+IHdpdGgKPj4+
PiDCoMKgwqDCoMKgJ2k5MTUnX3JlZ190Cj4+Pj4gwqDCoMKgwqDCoCdpOTE1J19tbWlvX3JlZ194
eHgoKQo+Pj4+Cj4+Pj4gYW5kIHVzZSBpbnRlbF9yZWcqIGZpbGVzIGZvciBhY3R1YWwgaHcgZGVm
aW5pdGlvbnMuCj4+Pj4KPj4+PiBpZiB3ZSBkb24ndCBwbGFuIHRvIHJlbmFtZSBpOTE1X3JlZ190
IGludG8gaW50ZWxfbW1pb19yZWdfdAo+Pj4+IHRoZW4gbWF5YmUgYmV0dGVyIHRvIHN0YXkgd2l0
aCBpOTE1X3JlZ190eXBlcy5oID8KPj4+Pgo+Pj4gCj4+PiBJJ2QgcGVyc29uYWxseSBwcmVmZXIg
dG8ga2VlcCB0aGUgaW50ZWxfKiBwcmVmaXggYW5kIGZsaXAgaTkxNV9yZWdfdCB0byAKPj4+IGlu
dGVsX3JlZ190IChhcyBhIHNlY29uZCBzdGVwIHRvIGtlZXAgdGhpbmdzIHNpbXBsZSkuIEJ1dCBn
aXZlbiB0aGUgc2l6ZSAKPj4+IG9mIHRoZSBjaGFuZ2UgSSdkIHByZWZlciB0byBoZWFyIHNvbWUg
bW9yZSBvcGluaW9ucyBiZWZvcmUgZ29pbmcgdGhyb3VnaCAKPj4+IHdpdGggaXQsIHNvIEknbGwg
d2FpdCBhIGJpdCBmb3IgbW9yZSBjb21tZW50cy4KPj4+IAo+Pj4gRGFuaWVsZQo+Pj4gCj4+Cj4+
IENocmlzLCBKYW5pLCBhcmUgeW91IG9rIGlmIEkgZ290IHdpdGggTWljaGFsJ3Mgc3VnZ2VzdGlv
biBmb3Igbm93LCBpLmUuIAo+PiBpOTE1X3JlZ190eXBlcy5oIGFuZCBpbnRlbF9yZWcuaD8KPgo+
IFRoZXJlJ3MgcmVhbGx5IG5vdGhpbmcgaW4gdGhpcyBwYXRjaCB0aGF0IHJlcXVpcmVzIHlvdSB0
byByZW5hbWUKPiBpOTE1X3JlZy5oIGF0IGFsbC4gVGhlIHN1YmplY3Qgb2YgdGhlIHBhdGNoIGlz
IGFib3V0IGFkZGluZyBhIG5ldyBmaWxlCj4gZm9yIHRoZSB0eXBlczsgdGhlIHJlbmFtZSBzZWVt
cyBsaWtlIGFuIGFmdGVydGhvdWdodC4KPgo+IEkgZ3Vlc3Mgd2UnbGwgYWRkIGEgZGlzcGxheS88
c29tZXRoaW5nPl9yZWcuaCBsYXRlci4gQnV0IHRoYXQgZG9lc24ndAo+IHJlcXVpcmUgdGhpcyBy
ZW5hbWUgZWl0aGVyLgoKVG8gY2xhcmlmeSwgSSB0aGluayB5b3UgY2FuIGp1c3QgZXh0cmFjdCBp
OTE1X3JlZ190eXBlcy5oIChpOTE1CnJlZmVycmluZyB0byB0aGUgKmRyaXZlciogaGVyZSkgZnJv
bSBpOTE1X3JlZy5oIGZvciBzdGFydGVycywgYW5kCmNvbnRpbnVlIHdpdGggZXh0cmFjdGluZyBy
ZWdpc3RlcnMgdG8gc2VwYXJhdGUgZmlsZXMgd2l0aG91dCBoYXZpbmcgdG8KcmVuYW1lIGk5MTVf
cmVnLmguIE1ha2Ugc2Vuc2U/CgpCUiwKSmFuaS4KCgoKCj4KPiBCUiwKPiBKYW5pLgo+Cj4KPgo+
Pgo+PiBEYW5pZWxlCj4+Cj4+Pj4gTWljaGFsCj4+Pj4KPj4+PiBwcy4gaTkxNS9pbnRlbCBwcmVm
aXggcnVsZXMgYXJlIGtpbGxpbmcgbWUgdG9vIDspCj4+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+Pj4g
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+Pj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApKYW5pIE5pa3VsYSwgSW50
ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
