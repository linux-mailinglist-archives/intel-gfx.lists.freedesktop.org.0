Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A42189B29F
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 16:55:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1CBE6ECB8;
	Fri, 23 Aug 2019 14:55:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0510D6ECB8
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 14:55:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 07:55:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,421,1559545200"; d="scan'208";a="203788960"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga004.fm.intel.com with ESMTP; 23 Aug 2019 07:55:17 -0700
To: Jani Nikula <jani.nikula@intel.com>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190820020147.5667-1-daniele.ceraolospurio@intel.com>
 <20190820020147.5667-2-daniele.ceraolospurio@intel.com>
 <op.z6tu8kdjxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <30042968-5bf2-4106-ee29-9bf9dab29673@intel.com>
 <9512dd31-71c1-5b74-c45b-ca69cfc844a7@intel.com> <87y2zk9j64.fsf@intel.com>
 <87tva89hyh.fsf@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <8f65f447-d64c-acf5-ccb2-36e045c472b5@intel.com>
Date: Fri, 23 Aug 2019 07:55:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <87tva89hyh.fsf@intel.com>
Content-Language: en-US
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA4LzIzLzE5IDU6MzYgQU0sIEphbmkgTmlrdWxhIHdyb3RlOgo+IE9uIEZyaSwgMjMgQXVn
IDIwMTksIEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+IHdyb3RlOgo+PiBPbiBU
aHUsIDIyIEF1ZyAyMDE5LCBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9z
cHVyaW9AaW50ZWwuY29tPiB3cm90ZToKPj4+IE9uIDgvMjAvMTkgMTE6MDAgQU0sIERhbmllbGUg
Q2VyYW9sbyBTcHVyaW8gd3JvdGU6Cj4+Pj4KPj4+Pgo+Pj4+IE9uIDgvMjAvMTkgODo0MiBBTSwg
TWljaGFsIFdhamRlY3prbyB3cm90ZToKPj4+Pj4gT24gVHVlLCAyMCBBdWcgMjAxOSAwNDowMTo0
NyArMDIwMCwgRGFuaWVsZSBDZXJhb2xvIFNwdXJpbwo+Pj4+PiA8ZGFuaWVsZS5jZXJhb2xvc3B1
cmlvQGludGVsLmNvbT4gd3JvdGU6Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcmVnX3R5cGVzLmgKPj4+Pj4+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcmVnX3R5cGVzLmgKPj4+Pj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+
Pj4+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjg3YmNlODBkZDVlZAo+Pj4+Pj4gLS0tIC9kZXYvbnVs
bAo+Pj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcmVnX3R5cGVzLmgKPj4+
Pj4KPj4+Pj4KPj4+Pj4+ICsKPj4+Pj4+ICt0eXBlZGVmIHN0cnVjdCB7Cj4+Pj4+PiArwqDCoMKg
IHUzMiByZWc7Cj4+Pj4+PiArfSBpOTE1X3JlZ190Owo+Pj4+Pj4gKwo+Pj4+Pj4gKyNkZWZpbmUg
X01NSU8ocikgKChjb25zdCBpOTE1X3JlZ190KXsgLnJlZyA9IChyKSB9KQo+Pj4+Pj4gKwo+Pj4+
Pj4gKyNkZWZpbmUgSU5WQUxJRF9NTUlPX1JFRyBfTU1JTygwKQo+Pj4+Pj4gKwo+Pj4+Pj4gK3N0
YXRpYyBpbmxpbmUgdTMyIGk5MTVfbW1pb19yZWdfb2Zmc2V0KGk5MTVfcmVnX3QgcmVnKQo+Pj4+
Pj4gK3sKPj4+Pj4+ICvCoMKgwqAgcmV0dXJuIHJlZy5yZWc7Cj4+Pj4+PiArfQo+Pj4+Pj4gKwo+
Pj4+Pj4gK3N0YXRpYyBpbmxpbmUgYm9vbCBpOTE1X21taW9fcmVnX2VxdWFsKGk5MTVfcmVnX3Qg
YSwgaTkxNV9yZWdfdCBiKQo+Pj4+Pj4gK3sKPj4+Pj4+ICvCoMKgwqAgcmV0dXJuIGk5MTVfbW1p
b19yZWdfb2Zmc2V0KGEpID09IGk5MTVfbW1pb19yZWdfb2Zmc2V0KGIpOwo+Pj4+Pj4gK30KPj4+
Pj4+ICsKPj4+Pj4+ICtzdGF0aWMgaW5saW5lIGJvb2wgaTkxNV9tbWlvX3JlZ192YWxpZChpOTE1
X3JlZ190IHJlZykKPj4+Pj4+ICt7Cj4+Pj4+PiArwqDCoMKgIHJldHVybiAhaTkxNV9tbWlvX3Jl
Z19lcXVhbChyZWcsIElOVkFMSURfTU1JT19SRUcpOwo+Pj4+Pj4gK30KPj4+Pj4+ICsKPj4+Pj4K
Pj4+Pj4gaG1tLCB0aGVyZSBpcyBub3cgZGlzY29ubmVjdGlvbiBiZXR3ZWVuIHByZWZpeGVzIGlu
Ogo+Pj4+Pgo+Pj4+PiAgwqDCoMKgwqDCoCdpbnRlbCdfcmVnX3R5cGVzLmgKPj4+Pj4gYW5kCj4+
Pj4+ICDCoMKgwqDCoMKgJ2k5MTUnX3JlZ190Cj4+Pj4+ICDCoMKgwqDCoMKgJ2k5MTUnX21taW9f
cmVnX3h4eCgpCj4+Pj4+Cj4+Pj4+IHRoYXQgaXMgd2h5IEkgd2FzIHN1Z2dlc3RpbmcgdG8ga2Vl
cDoKPj4+Pj4KPj4+Pj4gIMKgwqDCoMKgwqAnaTkxNSdfcmVnLmggKG9yIGF0IHlvdXIgcHJlZmVy
ZW5jZSAnaTkxNSdfcmVnX3R5cGVzLmgpCj4+Pj4+IHdpdGgKPj4+Pj4gIMKgwqDCoMKgwqAnaTkx
NSdfcmVnX3QKPj4+Pj4gIMKgwqDCoMKgwqAnaTkxNSdfbW1pb19yZWdfeHh4KCkKPj4+Pj4KPj4+
Pj4gYW5kIHVzZSBpbnRlbF9yZWcqIGZpbGVzIGZvciBhY3R1YWwgaHcgZGVmaW5pdGlvbnMuCj4+
Pj4+Cj4+Pj4+IGlmIHdlIGRvbid0IHBsYW4gdG8gcmVuYW1lIGk5MTVfcmVnX3QgaW50byBpbnRl
bF9tbWlvX3JlZ190Cj4+Pj4+IHRoZW4gbWF5YmUgYmV0dGVyIHRvIHN0YXkgd2l0aCBpOTE1X3Jl
Z190eXBlcy5oID8KPj4+Pj4KPj4+Pgo+Pj4+IEknZCBwZXJzb25hbGx5IHByZWZlciB0byBrZWVw
IHRoZSBpbnRlbF8qIHByZWZpeCBhbmQgZmxpcCBpOTE1X3JlZ190IHRvCj4+Pj4gaW50ZWxfcmVn
X3QgKGFzIGEgc2Vjb25kIHN0ZXAgdG8ga2VlcCB0aGluZ3Mgc2ltcGxlKS4gQnV0IGdpdmVuIHRo
ZSBzaXplCj4+Pj4gb2YgdGhlIGNoYW5nZSBJJ2QgcHJlZmVyIHRvIGhlYXIgc29tZSBtb3JlIG9w
aW5pb25zIGJlZm9yZSBnb2luZyB0aHJvdWdoCj4+Pj4gd2l0aCBpdCwgc28gSSdsbCB3YWl0IGEg
Yml0IGZvciBtb3JlIGNvbW1lbnRzLgo+Pj4+Cj4+Pj4gRGFuaWVsZQo+Pj4+Cj4+Pgo+Pj4gQ2hy
aXMsIEphbmksIGFyZSB5b3Ugb2sgaWYgSSBnb3Qgd2l0aCBNaWNoYWwncyBzdWdnZXN0aW9uIGZv
ciBub3csIGkuZS4KPj4+IGk5MTVfcmVnX3R5cGVzLmggYW5kIGludGVsX3JlZy5oPwo+Pgo+PiBU
aGVyZSdzIHJlYWxseSBub3RoaW5nIGluIHRoaXMgcGF0Y2ggdGhhdCByZXF1aXJlcyB5b3UgdG8g
cmVuYW1lCj4+IGk5MTVfcmVnLmggYXQgYWxsLiBUaGUgc3ViamVjdCBvZiB0aGUgcGF0Y2ggaXMg
YWJvdXQgYWRkaW5nIGEgbmV3IGZpbGUKPj4gZm9yIHRoZSB0eXBlczsgdGhlIHJlbmFtZSBzZWVt
cyBsaWtlIGFuIGFmdGVydGhvdWdodC4KPj4KPj4gSSBndWVzcyB3ZSdsbCBhZGQgYSBkaXNwbGF5
Lzxzb21ldGhpbmc+X3JlZy5oIGxhdGVyLiBCdXQgdGhhdCBkb2Vzbid0Cj4+IHJlcXVpcmUgdGhp
cyByZW5hbWUgZWl0aGVyLgo+IAo+IFRvIGNsYXJpZnksIEkgdGhpbmsgeW91IGNhbiBqdXN0IGV4
dHJhY3QgaTkxNV9yZWdfdHlwZXMuaCAoaTkxNQo+IHJlZmVycmluZyB0byB0aGUgKmRyaXZlciog
aGVyZSkgZnJvbSBpOTE1X3JlZy5oIGZvciBzdGFydGVycywgYW5kCj4gY29udGludWUgd2l0aCBl
eHRyYWN0aW5nIHJlZ2lzdGVycyB0byBzZXBhcmF0ZSBmaWxlcyB3aXRob3V0IGhhdmluZyB0bwo+
IHJlbmFtZSBpOTE1X3JlZy5oLiBNYWtlIHNlbnNlPwo+IAoKWWVzLCB0aGF0J3Mgd2hhdCB2MSBk
aWQsIGJ1dCB0aGVuIEkgZ290IGZlZWRiYWNrIGZyb20gTWljaGFsIHRvIHJlbmFtZSAKaTkxNV9y
ZWcuaCB0byBpbnRlbF9yZWcuaC4gV2lsbCBmbGlwIGJhY2sgdG8gdjEgZm9yIG5vdyBhbmQgdGhl
biAKcmVjb25zaWRlciB0aGUgbmFtaW5nIG9uY2UgaTkxNV9yZWcuaCBoYXMgYmVlbiBicm9rZW4g
dXAgYSBiaXQgbW9yZS4KCk1pY2hhbCwgYW55IG9iamVjdGlvbj8KCkRhbmllbGUKCj4gQlIsCj4g
SmFuaS4KPiAKPiAKPiAKPiAKPj4KPj4gQlIsCj4+IEphbmkuCj4+Cj4+Cj4+Cj4+Pgo+Pj4gRGFu
aWVsZQo+Pj4KPj4+Pj4gTWljaGFsCj4+Pj4+Cj4+Pj4+IHBzLiBpOTE1L2ludGVsIHByZWZpeCBy
dWxlcyBhcmUga2lsbGluZyBtZSB0b28gOykKPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+Pj4+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPj4+PiBJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+Pj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKPiAKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
