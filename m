Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54DC21056CA
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 17:18:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0EC46F4A2;
	Thu, 21 Nov 2019 16:18:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81AA16F4A2
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 16:18:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 08:18:03 -0800
X-IronPort-AV: E=Sophos;i="5.69,226,1571727600"; d="scan'208";a="201172379"
Received: from aburk3x-mobl1.ger.corp.intel.com (HELO [10.252.19.231])
 ([10.252.19.231])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 21 Nov 2019 08:18:02 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191121135131.338984-1-chris@chris-wilson.co.uk>
 <20191121135131.338984-4-chris@chris-wilson.co.uk>
 <47b1c0b1-b797-4c1b-5f0c-c3816e78e5ba@linux.intel.com>
 <157434802374.29262.546860326687350604@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <231ff7bf-6aa1-c040-f8aa-f81cca063d5b@linux.intel.com>
Date: Thu, 21 Nov 2019 16:17:59 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157434802374.29262.546860326687350604@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/gt: Adopt engine_park
 synchronisation rules for engine_retire
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

Ck9uIDIxLzExLzIwMTkgMTQ6NTMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTExLTIxIDE0OjQyOjU2KQo+Pgo+PiBPbiAyMS8xMS8yMDE5IDEzOjUx
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBJbiB0aGUgbmV4dCBwYXRjaCwgd2Ugd2lsbCBpbnRy
b2R1Y2UgYSBuZXcgYXN5bmNocm9ub3VzIHJldGlyZW1lbnQKPj4+IHdvcmtlciwgZmVkIGJ5IGV4
ZWNsaXN0cyBDUyBldmVudHMuIEhlcmUgd2UgbWF5IHF1ZXVlIGEgcmV0aXJlbWVudCBhcwo+Pj4g
c29vbiBhcyBhIHJlcXVlc3QgaXMgc3VibWl0dGVkIHRvIEhXIChhbmQgY29tcGxldGVzIGluc3Rh
bnRseSksIGFuZCB3ZQo+Pj4gYWxzbyB3YW50IHRvIHByb2Nlc3MgdGhhdCByZXRpcmVtZW50IGFz
IGVhcmx5IGFzIHBvc3NpYmxlIGFuZCBjYW5ub3QKPj4+IGFmZm9yZCB0byBwb3N0cG9uZSAoYXMg
dGhlcmUgbWF5IG5vdCBiZSBhbm90aGVyIG9wcG9ydHVuaXR5IHRvIHJldGlyZSBpdAo+Pj4gZm9y
IGEgZmV3IHNlY29uZHMpLiBUbyBhbGxvdyB0aGUgbmV3IGFzeW5jIHJldGlyZXIgdG8gcnVuIGlu
IHBhcmFsbGVsCj4+PiB3aXRoIG91ciBzdWJtaXNzaW9uLCBwdWxsIHRoZSBfX2k5MTVfcmVxdWVz
dF9xdWV1ZSAodGhhdCBwYXNzZXMgdGhlCj4+PiByZXF1ZXN0IHRvIEhXKSBpbnNpZGUgdGhlIHRp
bWVsaW5lcyBzcGlubG9jayBzbyB0aGF0IHRoZSByZXRpcmVtZW50Cj4+PiBjYW5ub3QgcmVsZWFz
ZSB0aGUgdGltZWxpbmUgYmVmb3JlIHdlIGhhdmUgY29tcGxldGVkIHRoZSBzdWJtaXNzaW9uLgo+
Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgo+Pj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+
PiAtLS0KPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jIHwg
MjkgKysrKysrKysrKysrKysrKy0tLS0tLS0KPj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNl
cnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2VuZ2luZV9wbS5jCj4+PiBpbmRleCAzNzNhNGI5ZjE1OWMuLmJkMGFmMDJiZWExNiAx
MDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5j
Cj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYwo+Pj4g
QEAgLTc0LDE4ICs3NCwzMyBAQCBzdGF0aWMgaW5saW5lIHZvaWQgX190aW1lbGluZV9tYXJrX3Vu
bG9jayhzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCj4+PiAgICAjZW5kaWYgLyogIUlTX0VOQUJM
RUQoQ09ORklHX0xPQ0tERVApICovCj4+PiAgICAKPj4+ICAgIHN0YXRpYyB2b2lkCj4+PiAtX19p
bnRlbF90aW1lbGluZV9lbnRlcl9hbmRfcmVsZWFzZV9wbShzdHJ1Y3QgaW50ZWxfdGltZWxpbmUg
KnRsLAo+Pj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGludGVs
X2VuZ2luZV9jcyAqZW5naW5lKQo+Pj4gK19fcXVldWVfYW5kX3JlbGVhc2VfcG0oc3RydWN0IGk5
MTVfcmVxdWVzdCAqcnEsCj4+PiArICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaW50ZWxfdGlt
ZWxpbmUgKnRsLAo+Pj4gKyAgICAgICAgICAgICAgICAgICAgc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lKQo+Pj4gICAgewo+Pj4gICAgICAgIHN0cnVjdCBpbnRlbF9ndF90aW1lbGluZXMg
KnRpbWVsaW5lcyA9ICZlbmdpbmUtPmd0LT50aW1lbGluZXM7Cj4+PiAgICAKPj4+ICsgICAgIC8q
Cj4+PiArICAgICAgKiBXZSBoYXZlIHRvIHNlcmlhbGlzZSBhbGwgcG90ZW50aWFsIHJldGlyZW1l
bnQgcGF0aHMgd2l0aCBvdXIKPj4+ICsgICAgICAqIHN1Ym1pc3Npb24sIGFzIHdlIGRvbid0IHdh
bnQgdG8gdW5kZXJmbG93IGVpdGhlciB0aGUKPj4+ICsgICAgICAqIGVuZ2luZS0+d2FrZXJlZi5j
b3VudGVyIG9yIG91ciB0aW1lbGluZS0+YWN0aXZlX2NvdW50Lgo+Pj4gKyAgICAgICoKPj4+ICsg
ICAgICAqIEVxdWFsbHksIHdlIGNhbm5vdCBhbGxvdyBhIG5ldyBzdWJtaXNzaW9uIHRvIHN0YXJ0
IHVudGlsCj4+PiArICAgICAgKiBhZnRlciB3ZSBmaW5pc2ggcXVldWVpbmcsIG5vciBjb3VsZCB3
ZSBhbGxvdyB0aGF0IHN1Ym1pdHRlcgo+Pj4gKyAgICAgICogdG8gcmV0aXJlIHVzIGJlZm9yZSB3
ZSBhcmUgcmVhZHkhCj4+PiArICAgICAgKi8KPj4+ICAgICAgICBzcGluX2xvY2soJnRpbWVsaW5l
cy0+bG9jayk7Cj4+PiAgICAKPj4+IC0gICAgIGlmICghYXRvbWljX2ZldGNoX2luYygmdGwtPmFj
dGl2ZV9jb3VudCkpCj4+PiAtICAgICAgICAgICAgIGxpc3RfYWRkX3RhaWwoJnRsLT5saW5rLCAm
dGltZWxpbmVzLT5hY3RpdmVfbGlzdCk7Cj4+PiArICAgICAvKiBIYW5kIHRoZSByZXF1ZXN0IG92
ZXIgdG8gSFcgYW5kIHNvIGVuZ2luZV9yZXRpcmUoKSAqLwo+Pj4gKyAgICAgX19pOTE1X3JlcXVl
c3RfcXVldWUocnEsIE5VTEwpOwo+Pj4gICAgCj4+PiArICAgICAvKiBMZXQgbmV3IHN1Ym1pc3Np
b25zIGNvbW1lbmNlIChhbmQgbWF5YmUgcmV0aXJlIHRoaXMgdGltZWxpbmUpICovCj4+PiAgICAg
ICAgX19pbnRlbF93YWtlcmVmX2RlZmVyX3BhcmsoJmVuZ2luZS0+d2FrZXJlZik7Cj4+PiAgICAK
Pj4+ICsgICAgIC8qIExldCBpbnRlbF9ndF9yZXRpcmVfcmVxdWVzdHMoKSByZXRpcmUgdXMgKi8K
Pj4+ICsgICAgIGlmICghYXRvbWljX2ZldGNoX2luYygmdGwtPmFjdGl2ZV9jb3VudCkpCj4+PiAr
ICAgICAgICAgICAgIGxpc3RfYWRkX3RhaWwoJnRsLT5saW5rLCAmdGltZWxpbmVzLT5hY3RpdmVf
bGlzdCk7Cj4+PiArCj4+PiAgICAgICAgc3Bpbl91bmxvY2soJnRpbWVsaW5lcy0+bG9jayk7Cj4+
Cj4+IE5vdyB0aGF0IGV2ZXJ5dGhpbmcgaXMgdW5kZXIgdGhlIGxvY2sgdGhlIG9yZGVyIG9mIG9w
ZXJhdGlvbiBpcyBub3QKPj4gaW1wb3J0YW50LCBvciBpdCBzdGlsbCBpcz8KPiAKPiBxdWV1ZSBi
ZWZvcmUgdW5wYXJrIHRoYXQgaXMgcmVxdWlyZWQuCj4gCj4gdW5wYXJrIGFuZCBhZGRfdG9fdGlt
ZWxpbmUsIHRoZSBvcmRlciBpcyBmbGV4aWJsZSBhcyB0aGUgbG9jayBnb3Zlcm5vcnMKPiB0aGUg
aW50ZXJhY3Rpb25zIGJldHdlZW4gdGhvc2UgYW5kIHJldGlyZXJzLiBTbyBJIGNob3NlIHRvIGFs
bG93IHRoZQo+IG5leHQgbmV3Y29tZXIgc3RhcnQgYSBmZXcgaW5zdHJ1Y3Rpb25zIGVhcmxpZXIu
CgpZZXMsIGJlY2F1c2Ugb2YgZGlmZmVyZW50IGxvY2tzLiBTbyB0aGUgY29tbWVudCBhYm92ZSAK
X19pbnRlbF93YWtlcmVmX2RlZmVyX3BhcmsgaXMgbm90IGNvcnJlY3Qgc2luY2UgdGltZWxpbmUg
Y2Fubm90IGJlIApyZXRpcmVkIHVudGlsIHRoZSBsb2NrIGlzIGRyb3BwZWQuCgpJdCdzIG9ubHkg
cHJlc2VydmF0aW9uIG9mIHRpbWVsaW5lIG9yZGVyaW5nIHdoaWNoIG1hbmRhdGVzIGRlZmVyX3Bh
cmsgCmFmdGVyIHJlcXVlc3RfcXVldWUuIEFzIGZhciBhcyBJIGFtIGFibGUgdG8gc3VtbW9uIG15
IG93biB1bmRlcnN0YW5kaW5nIApmcm9tIHllc3RlcmRheS4KClJlZ2FyZHMsCgpUdnJ0a28KCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
