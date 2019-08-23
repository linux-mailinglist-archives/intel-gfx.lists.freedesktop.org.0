Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A7D9B44D
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 18:13:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 998EC6E049;
	Fri, 23 Aug 2019 16:13:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E2FB6E03C
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 16:13:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 09:13:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,421,1559545200"; d="scan'208";a="263230849"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga001.jf.intel.com with ESMTP; 23 Aug 2019 09:13:15 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.146.68])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x7NGDESo011175; Fri, 23 Aug 2019 17:13:14 +0100
To: "Jani Nikula" <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
References: <20190820020147.5667-1-daniele.ceraolospurio@intel.com>
 <20190820020147.5667-2-daniele.ceraolospurio@intel.com>
 <op.z6tu8kdjxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <30042968-5bf2-4106-ee29-9bf9dab29673@intel.com>
 <9512dd31-71c1-5b74-c45b-ca69cfc844a7@intel.com> <87y2zk9j64.fsf@intel.com>
 <87tva89hyh.fsf@intel.com> <8f65f447-d64c-acf5-ccb2-36e045c472b5@intel.com>
Date: Fri, 23 Aug 2019 18:13:14 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z6zgocl7xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <8f65f447-d64c-acf5-ccb2-36e045c472b5@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMyBBdWcgMjAxOSAxNjo1NToyMSArMDIwMCwgRGFuaWVsZSBDZXJhb2xvIFNwdXJp
byAgCjxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPiB3cm90ZToKCj4KPgo+IE9uIDgv
MjMvMTkgNTozNiBBTSwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IE9uIEZyaSwgMjMgQXVnIDIwMTks
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+IHdyb3RlOgo+Pj4gT24gVGh1LCAy
MiBBdWcgMjAxOSwgRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyAgCj4+PiA8ZGFuaWVsZS5jZXJhb2xv
c3B1cmlvQGludGVsLmNvbT4gd3JvdGU6Cj4+Pj4gT24gOC8yMC8xOSAxMTowMCBBTSwgRGFuaWVs
ZSBDZXJhb2xvIFNwdXJpbyB3cm90ZToKPj4+Pj4KPj4+Pj4KPj4+Pj4gT24gOC8yMC8xOSA4OjQy
IEFNLCBNaWNoYWwgV2FqZGVjemtvIHdyb3RlOgo+Pj4+Pj4gT24gVHVlLCAyMCBBdWcgMjAxOSAw
NDowMTo0NyArMDIwMCwgRGFuaWVsZSBDZXJhb2xvIFNwdXJpbwo+Pj4+Pj4gPGRhbmllbGUuY2Vy
YW9sb3NwdXJpb0BpbnRlbC5jb20+IHdyb3RlOgo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+Pj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ190eXBlcy5oCj4+Pj4+Pj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdfdHlwZXMuaAo+Pj4+Pj4+IG5ldyBmaWxlIG1v
ZGUgMTAwNjQ0Cj4+Pj4+Pj4gaW5kZXggMDAwMDAwMDAwMDAwLi44N2JjZTgwZGQ1ZWQKPj4+Pj4+
PiAtLS0gL2Rldi9udWxsCj4+Pj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cmVnX3R5cGVzLmgKPj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4+ICsKPj4+Pj4+PiArdHlwZWRlZiBzdHJ1
Y3Qgewo+Pj4+Pj4+ICsgICAgdTMyIHJlZzsKPj4+Pj4+PiArfSBpOTE1X3JlZ190Owo+Pj4+Pj4+
ICsKPj4+Pj4+PiArI2RlZmluZSBfTU1JTyhyKSAoKGNvbnN0IGk5MTVfcmVnX3QpeyAucmVnID0g
KHIpIH0pCj4+Pj4+Pj4gKwo+Pj4+Pj4+ICsjZGVmaW5lIElOVkFMSURfTU1JT19SRUcgX01NSU8o
MCkKPj4+Pj4+PiArCj4+Pj4+Pj4gK3N0YXRpYyBpbmxpbmUgdTMyIGk5MTVfbW1pb19yZWdfb2Zm
c2V0KGk5MTVfcmVnX3QgcmVnKQo+Pj4+Pj4+ICt7Cj4+Pj4+Pj4gKyAgICByZXR1cm4gcmVnLnJl
ZzsKPj4+Pj4+PiArfQo+Pj4+Pj4+ICsKPj4+Pj4+PiArc3RhdGljIGlubGluZSBib29sIGk5MTVf
bW1pb19yZWdfZXF1YWwoaTkxNV9yZWdfdCBhLCBpOTE1X3JlZ190IGIpCj4+Pj4+Pj4gK3sKPj4+
Pj4+PiArICAgIHJldHVybiBpOTE1X21taW9fcmVnX29mZnNldChhKSA9PSBpOTE1X21taW9fcmVn
X29mZnNldChiKTsKPj4+Pj4+PiArfQo+Pj4+Pj4+ICsKPj4+Pj4+PiArc3RhdGljIGlubGluZSBi
b29sIGk5MTVfbW1pb19yZWdfdmFsaWQoaTkxNV9yZWdfdCByZWcpCj4+Pj4+Pj4gK3sKPj4+Pj4+
PiArICAgIHJldHVybiAhaTkxNV9tbWlvX3JlZ19lcXVhbChyZWcsIElOVkFMSURfTU1JT19SRUcp
Owo+Pj4+Pj4+ICt9Cj4+Pj4+Pj4gKwo+Pj4+Pj4KPj4+Pj4+IGhtbSwgdGhlcmUgaXMgbm93IGRp
c2Nvbm5lY3Rpb24gYmV0d2VlbiBwcmVmaXhlcyBpbjoKPj4+Pj4+Cj4+Pj4+PiAgICAgICAnaW50
ZWwnX3JlZ190eXBlcy5oCj4+Pj4+PiBhbmQKPj4+Pj4+ICAgICAgICdpOTE1J19yZWdfdAo+Pj4+
Pj4gICAgICAgJ2k5MTUnX21taW9fcmVnX3h4eCgpCj4+Pj4+Pgo+Pj4+Pj4gdGhhdCBpcyB3aHkg
SSB3YXMgc3VnZ2VzdGluZyB0byBrZWVwOgo+Pj4+Pj4KPj4+Pj4+ICAgICAgICdpOTE1J19yZWcu
aCAob3IgYXQgeW91ciBwcmVmZXJlbmNlICdpOTE1J19yZWdfdHlwZXMuaCkKPj4+Pj4+IHdpdGgK
Pj4+Pj4+ICAgICAgICdpOTE1J19yZWdfdAo+Pj4+Pj4gICAgICAgJ2k5MTUnX21taW9fcmVnX3h4
eCgpCj4+Pj4+Pgo+Pj4+Pj4gYW5kIHVzZSBpbnRlbF9yZWcqIGZpbGVzIGZvciBhY3R1YWwgaHcg
ZGVmaW5pdGlvbnMuCj4+Pj4+Pgo+Pj4+Pj4gaWYgd2UgZG9uJ3QgcGxhbiB0byByZW5hbWUgaTkx
NV9yZWdfdCBpbnRvIGludGVsX21taW9fcmVnX3QKPj4+Pj4+IHRoZW4gbWF5YmUgYmV0dGVyIHRv
IHN0YXkgd2l0aCBpOTE1X3JlZ190eXBlcy5oID8KPj4+Pj4+Cj4+Pj4+Cj4+Pj4+IEknZCBwZXJz
b25hbGx5IHByZWZlciB0byBrZWVwIHRoZSBpbnRlbF8qIHByZWZpeCBhbmQgZmxpcCBpOTE1X3Jl
Z190ICAKPj4+Pj4gdG8KPj4+Pj4gaW50ZWxfcmVnX3QgKGFzIGEgc2Vjb25kIHN0ZXAgdG8ga2Vl
cCB0aGluZ3Mgc2ltcGxlKS4gQnV0IGdpdmVuIHRoZSAgCj4+Pj4+IHNpemUKPj4+Pj4gb2YgdGhl
IGNoYW5nZSBJJ2QgcHJlZmVyIHRvIGhlYXIgc29tZSBtb3JlIG9waW5pb25zIGJlZm9yZSBnb2lu
ZyAgCj4+Pj4+IHRocm91Z2gKPj4+Pj4gd2l0aCBpdCwgc28gSSdsbCB3YWl0IGEgYml0IGZvciBt
b3JlIGNvbW1lbnRzLgo+Pj4+Pgo+Pj4+PiBEYW5pZWxlCj4+Pj4+Cj4+Pj4KPj4+PiBDaHJpcywg
SmFuaSwgYXJlIHlvdSBvayBpZiBJIGdvdCB3aXRoIE1pY2hhbCdzIHN1Z2dlc3Rpb24gZm9yIG5v
dywgIAo+Pj4+IGkuZS4KPj4+PiBpOTE1X3JlZ190eXBlcy5oIGFuZCBpbnRlbF9yZWcuaD8KPj4+
Cj4+PiBUaGVyZSdzIHJlYWxseSBub3RoaW5nIGluIHRoaXMgcGF0Y2ggdGhhdCByZXF1aXJlcyB5
b3UgdG8gcmVuYW1lCj4+PiBpOTE1X3JlZy5oIGF0IGFsbC4gVGhlIHN1YmplY3Qgb2YgdGhlIHBh
dGNoIGlzIGFib3V0IGFkZGluZyBhIG5ldyBmaWxlCj4+PiBmb3IgdGhlIHR5cGVzOyB0aGUgcmVu
YW1lIHNlZW1zIGxpa2UgYW4gYWZ0ZXJ0aG91Z2h0Lgo+Pj4KPj4+IEkgZ3Vlc3Mgd2UnbGwgYWRk
IGEgZGlzcGxheS88c29tZXRoaW5nPl9yZWcuaCBsYXRlci4gQnV0IHRoYXQgZG9lc24ndAo+Pj4g
cmVxdWlyZSB0aGlzIHJlbmFtZSBlaXRoZXIuCj4+ICBUbyBjbGFyaWZ5LCBJIHRoaW5rIHlvdSBj
YW4ganVzdCBleHRyYWN0IGk5MTVfcmVnX3R5cGVzLmggKGk5MTUKPj4gcmVmZXJyaW5nIHRvIHRo
ZSAqZHJpdmVyKiBoZXJlKSBmcm9tIGk5MTVfcmVnLmggZm9yIHN0YXJ0ZXJzLCBhbmQKPj4gY29u
dGludWUgd2l0aCBleHRyYWN0aW5nIHJlZ2lzdGVycyB0byBzZXBhcmF0ZSBmaWxlcyB3aXRob3V0
IGhhdmluZyB0bwo+PiByZW5hbWUgaTkxNV9yZWcuaC4gTWFrZSBzZW5zZT8KPj4KPgo+IFllcywg
dGhhdCdzIHdoYXQgdjEgZGlkLCBidXQgdGhlbiBJIGdvdCBmZWVkYmFjayBmcm9tIE1pY2hhbCB0
byByZW5hbWUgIAo+IGk5MTVfcmVnLmggdG8gaW50ZWxfcmVnLmguIFdpbGwgZmxpcCBiYWNrIHRv
IHYxIGZvciBub3cgYW5kIHRoZW4gIAo+IHJlY29uc2lkZXIgdGhlIG5hbWluZyBvbmNlIGk5MTVf
cmVnLmggaGFzIGJlZW4gYnJva2VuIHVwIGEgYml0IG1vcmUuCj4KPiBNaWNoYWwsIGFueSBvYmpl
Y3Rpb24/CgpUaGVyZSB3YXMgc29tZSBtaXN1bmRlcnN0YW5kaW5nIGhlcmUuCkJ1dCB1c2luZyBp
OTE1X3JlZ190eXBlcy5oIGZvciAnaTkxNScgdHlwZXMgaXMgZmluZSBmb3IgbWUuCgpNb3Zpbmcg
aHcgcmVnaXN0ZXIgZGVmaW5pdGlvbnMgdG8gJ2ludGVsJyBmaWxlcyAodG8gbWF0Y2ggb3RoZXIg
ZmlsZXMKYW5kIG5hbWluZykgY2FuIGJlIGRvbmUgbGF0ZXIgKGVuZGVkIGJ5IGtpbGxpbmcgZW1w
dHkgaTkxNV9yZWcuaCkKCk1pY2hhbAoKPgo+IERhbmllbGUKPgo+PiBCUiwKPj4gSmFuaS4KPj4K
Pj4+Cj4+PiBCUiwKPj4+IEphbmkuCj4+Pgo+Pj4KPj4+Cj4+Pj4KPj4+PiBEYW5pZWxlCj4+Pj4K
Pj4+Pj4+IE1pY2hhbAo+Pj4+Pj4KPj4+Pj4+IHBzLiBpOTE1L2ludGVsIHByZWZpeCBydWxlcyBh
cmUga2lsbGluZyBtZSB0b28gOykKPj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPj4+Pj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+Pj4+PiBJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+Pj4+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
