Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E65210A302
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 18:08:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3526B893A4;
	Tue, 26 Nov 2019 17:08:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CFC2893A4
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 17:08:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 09:08:07 -0800
X-IronPort-AV: E=Sophos;i="5.69,246,1571727600"; d="scan'208";a="202780894"
Received: from kjbrenna-mobl1.ger.corp.intel.com (HELO [10.251.83.147])
 ([10.251.83.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 26 Nov 2019 09:08:07 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191126164712.2802694-1-chris@chris-wilson.co.uk>
 <5fa8398b-75df-6d61-92a2-681b54308fc6@linux.intel.com>
 <157478790800.18552.17333038666230795992@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6f599b6e-1011-2b96-f171-a624a466dc9d@linux.intel.com>
Date: Tue, 26 Nov 2019 17:08:05 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157478790800.18552.17333038666230795992@skylake-alporthouse-com>
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

Ck9uIDI2LzExLzIwMTkgMTc6MDUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTExLTI2IDE3OjAwOjUzKQo+Pgo+PiBPbiAyNi8xMS8yMDE5IDE2OjQ3
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBGb2xsb3dpbmcgNThiNGMxYTA3YWRhICgiZHJtL2k5
MTU6IFJlZHVjZSBuZXN0ZWQgcHJlcGFyZV9yZW1vdGVfY29udGV4dCgpCj4+PiB0byBhIHRyeWxv
Y2siKSwgd2UgcHVudCB0byB0aGUgY2FsbGVyIGlmIHRoZSBsb2NhbCBpbnRlbF9jb250ZXh0Cj4+
PiBoYXBwZW5zIHRvIGJlIGJ1c3kgYXMgd2UgdHJ5IHRvIHJld3JpdGUgdGhlIHNzZXUgKGR1ZSB0
byByZXRpcmluZyBpbgo+Pj4gYW5vdGhlciB0aHJlYWQpLiBBcyB0aGUgaW50ZXJsdWRlIHNob3Vs
ZCBiZSBzaG9ydCwgc3BpbiB1bnRpbCB0aGUgbG9jawo+Pj4gaXMgYXZhaWxhYmxlLgo+Pj4KPj4+
IFRoZSByZWdyZXQgZm9yIHVzaW5nIG11dGV4X3RyeWxvY2soKSBhbmQgbm90IGFuIGF0b21pYyBp
bnNlcnRpb24gb2YgdGhlCj4+PiBiYXJyaWVyIGlzIGdyb3dpbmcuLi4KPj4+Cj4+PiBTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4+IENjOiBU
dnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pj4gLS0tCj4+PiAgICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYyB8IDUg
KysrKy0KPj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0
cy9pOTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3Rz
L2k5MTVfZ2VtX2NvbnRleHQuYwo+Pj4gaW5kZXggMmVhNDc5MGYzNzIxLi41NzFjYzk5NjU3N2Mg
MTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVf
Z2VtX2NvbnRleHQuYwo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0
cy9pOTE1X2dlbV9jb250ZXh0LmMKPj4+IEBAIC0xMTk3LDcgKzExOTcsMTAgQEAgX19zc2V1X3Rl
c3QoY29uc3QgY2hhciAqbmFtZSwKPj4+ICAgICAgICBpZiAocmV0KQo+Pj4gICAgICAgICAgICAg
ICAgZ290byBvdXRfcG07Cj4+PiAgICAKPj4+IC0gICAgIHJldCA9IGludGVsX2NvbnRleHRfcmVj
b25maWd1cmVfc3NldShjZSwgc3NldSk7Cj4+PiArICAgICBkbyB7Cj4+PiArICAgICAgICAgICAg
IHJldCA9IGludGVsX2NvbnRleHRfcmVjb25maWd1cmVfc3NldShjZSwgc3NldSk7Cj4+PiArICAg
ICAgICAgICAgIGNvbmRfcmVzY2hlZCgpOwo+Pj4gKyAgICAgfSB3aGlsZSAocmV0ID09IC1FQUdB
SU4pOwo+Pj4gICAgICAgIGlmIChyZXQpCj4+PiAgICAgICAgICAgICAgICBnb3RvIG91dF9zcGlu
Owo+Pj4gICAgCj4+Pgo+Pgo+PiBIbSBJIGxvb2tlZCBhdCB0aGUgc2VsZnRlc3RzLCBzYXcgZXJy
b3IgaXMgY29ycmVjdGx5IHByb3BhZ2F0ZWQsIGFuZAo+PiBjb25jbHVkZWQgaXQgd2lsbCBiZSBm
aW5lLiBJIG1pc3NlZCB0aGUgcHJvYmxlbSBzZWxmdGVzdHMgd2lsbCBub3QKPj4gYWN0dWFsbHkg
cmV0cnkuIEJ1dCB3YWl0LCBjYW4gd2UgZXZlbiBjb3VudCB0aGF0IHVzZXJzcGFjZSB3aWxsIGlm
IGFsbAo+PiBvZiBhIHN1ZGRlbiBjdHguc2V0X3BhcmFtIHN0YXJ0cyByZXR1cm5pbmcgLUVBR0FJ
TiBzcG9yYWRpY2FsbHk/IEZlZWxzCj4+IGxpa2Ugd2UgbWF5IG5lZWQgdG8gcmV2ZXJ0Lgo+IAo+
IFdlIGludm9rZSB0aGUgcHJpbmNpcGxlIG9mIGRybUlvY3RsKCkgY2F0Y2hlcyAtRUFHQUlOLgoK
SSdtIG5vdCBjb21mb3J0YWJsZSB3aXRoIHRoYXQuIDooIE5vdCBsZWFzdCBob3cgd2UgYXJlIHNh
eWluZyBub3QgdG8gdXNlIApsaWJkcm0uIG1hbiAyIGlvY3RsIGRvZXMgbm90IG1lbnRpb24gLUVB
R0FJTi4gOigKClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
