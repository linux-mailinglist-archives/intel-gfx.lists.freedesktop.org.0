Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEEA10A32B
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 18:11:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A23736E459;
	Tue, 26 Nov 2019 17:11:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5CEE6E459
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 17:11:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 09:11:07 -0800
X-IronPort-AV: E=Sophos;i="5.69,246,1571727600"; d="scan'208";a="202782138"
Received: from kjbrenna-mobl1.ger.corp.intel.com (HELO [10.251.83.147])
 ([10.251.83.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 26 Nov 2019 09:11:06 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191126164712.2802694-1-chris@chris-wilson.co.uk>
 <5fa8398b-75df-6d61-92a2-681b54308fc6@linux.intel.com>
 <157478790800.18552.17333038666230795992@skylake-alporthouse-com>
 <6f599b6e-1011-2b96-f171-a624a466dc9d@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b6b3cdb0-cb2b-e25c-27f2-296405e2f944@linux.intel.com>
Date: Tue, 26 Nov 2019 17:11:04 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <6f599b6e-1011-2b96-f171-a624a466dc9d@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftest: If reconfigure_sseu is
 busy, try again
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

Ck9uIDI2LzExLzIwMTkgMTc6MDgsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+IAo+IE9uIDI2LzEx
LzIwMTkgMTc6MDUsIENocmlzIFdpbHNvbiB3cm90ZToKPj4gUXVvdGluZyBUdnJ0a28gVXJzdWxp
biAoMjAxOS0xMS0yNiAxNzowMDo1MykKPj4+Cj4+PiBPbiAyNi8xMS8yMDE5IDE2OjQ3LCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4+Pj4gRm9sbG93aW5nIDU4YjRjMWEwN2FkYSAoImRybS9pOTE1OiBS
ZWR1Y2UgbmVzdGVkIAo+Pj4+IHByZXBhcmVfcmVtb3RlX2NvbnRleHQoKQo+Pj4+IHRvIGEgdHJ5
bG9jayIpLCB3ZSBwdW50IHRvIHRoZSBjYWxsZXIgaWYgdGhlIGxvY2FsIGludGVsX2NvbnRleHQK
Pj4+PiBoYXBwZW5zIHRvIGJlIGJ1c3kgYXMgd2UgdHJ5IHRvIHJld3JpdGUgdGhlIHNzZXUgKGR1
ZSB0byByZXRpcmluZyBpbgo+Pj4+IGFub3RoZXIgdGhyZWFkKS4gQXMgdGhlIGludGVybHVkZSBz
aG91bGQgYmUgc2hvcnQsIHNwaW4gdW50aWwgdGhlIGxvY2sKPj4+PiBpcyBhdmFpbGFibGUuCj4+
Pj4KPj4+PiBUaGUgcmVncmV0IGZvciB1c2luZyBtdXRleF90cnlsb2NrKCkgYW5kIG5vdCBhbiBh
dG9taWMgaW5zZXJ0aW9uIG9mIHRoZQo+Pj4+IGJhcnJpZXIgaXMgZ3Jvd2luZy4uLgo+Pj4+Cj4+
Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Cj4+Pj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+Pj4g
LS0tCj4+Pj4gwqDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2Vt
X2NvbnRleHQuYyB8IDUgKysrKy0KPj4+PiDCoMKgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYyAKPj4+PiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jCj4+Pj4gaW5kZXgg
MmVhNDc5MGYzNzIxLi41NzFjYzk5NjU3N2MgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMKPj4+PiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYwo+Pj4+IEBA
IC0xMTk3LDcgKzExOTcsMTAgQEAgX19zc2V1X3Rlc3QoY29uc3QgY2hhciAqbmFtZSwKPj4+PiDC
oMKgwqDCoMKgwqAgaWYgKHJldCkKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdv
dG8gb3V0X3BtOwo+Pj4+IC3CoMKgwqDCoCByZXQgPSBpbnRlbF9jb250ZXh0X3JlY29uZmlndXJl
X3NzZXUoY2UsIHNzZXUpOwo+Pj4+ICvCoMKgwqDCoCBkbyB7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCByZXQgPSBpbnRlbF9jb250ZXh0X3JlY29uZmlndXJlX3NzZXUoY2UsIHNzZXUp
Owo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uZF9yZXNjaGVkKCk7Cj4+Pj4gK8Kg
wqDCoMKgIH0gd2hpbGUgKHJldCA9PSAtRUFHQUlOKTsKPj4+PiDCoMKgwqDCoMKgwqAgaWYgKHJl
dCkKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gb3V0X3NwaW47Cj4+Pj4K
Pj4+Cj4+PiBIbSBJIGxvb2tlZCBhdCB0aGUgc2VsZnRlc3RzLCBzYXcgZXJyb3IgaXMgY29ycmVj
dGx5IHByb3BhZ2F0ZWQsIGFuZAo+Pj4gY29uY2x1ZGVkIGl0IHdpbGwgYmUgZmluZS4gSSBtaXNz
ZWQgdGhlIHByb2JsZW0gc2VsZnRlc3RzIHdpbGwgbm90Cj4+PiBhY3R1YWxseSByZXRyeS4gQnV0
IHdhaXQsIGNhbiB3ZSBldmVuIGNvdW50IHRoYXQgdXNlcnNwYWNlIHdpbGwgaWYgYWxsCj4+PiBv
ZiBhIHN1ZGRlbiBjdHguc2V0X3BhcmFtIHN0YXJ0cyByZXR1cm5pbmcgLUVBR0FJTiBzcG9yYWRp
Y2FsbHk/IEZlZWxzCj4+PiBsaWtlIHdlIG1heSBuZWVkIHRvIHJldmVydC4KPj4KPj4gV2UgaW52
b2tlIHRoZSBwcmluY2lwbGUgb2YgZHJtSW9jdGwoKSBjYXRjaGVzIC1FQUdBSU4uCj4gCj4gSSdt
IG5vdCBjb21mb3J0YWJsZSB3aXRoIHRoYXQuIDooIE5vdCBsZWFzdCBob3cgd2UgYXJlIHNheWlu
ZyBub3QgdG8gdXNlIAo+IGxpYmRybS4gbWFuIDIgaW9jdGwgZG9lcyBub3QgbWVudGlvbiAtRUFH
QUlOLiA6KAoKT3IgZHVjdCB0YXBlIGJ5IGxvb3BpbmcgaW4gc2V0X3NzZXUgYXMgd2VsbD8KClJl
Z2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
