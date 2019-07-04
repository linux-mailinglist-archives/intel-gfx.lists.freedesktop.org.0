Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED335F648
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 12:05:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7629E6E2DD;
	Thu,  4 Jul 2019 10:05:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91C496E2DC;
 Thu,  4 Jul 2019 10:05:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jul 2019 03:05:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,450,1557212400"; d="scan'208";a="184967963"
Received: from dglazik-mobl2.ger.corp.intel.com (HELO [10.251.94.160])
 ([10.251.94.160])
 by fmsmga001.fm.intel.com with ESMTP; 04 Jul 2019 03:05:10 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190703165956.16232-1-chris@chris-wilson.co.uk>
 <a85e32da-d4df-6291-e875-59051db06b1d@linux.intel.com>
 <156223432829.25091.14734911923283946589@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <2d477d4c-991c-83f8-6fbb-e7dadd13b42a@linux.intel.com>
Date: Thu, 4 Jul 2019 11:05:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <156223432829.25091.14734911923283946589@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_workarounds: Adapt
 to change in file format for per-engine wa
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA0LzA3LzIwMTkgMTA6NTgsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA3LTA0IDEwOjUxOjQ0KQo+Pgo+PiBPbiAwMy8wNy8yMDE5IDE3OjU5
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBUbyByZWR1Y2UgdGhlIGFzc3VtcHRpb25zIG9mIFJD
UzAgaW4gdGhlIGtlcm5lbCwgd2Ugd2FudCB0byBtYWtlIHRoZQo+Pj4gZGVidWdmcyBlbmdpbmUg
YWdub3N0aWMgYW5kIHNvIHdlIG5lZWQgdG8gYWRhcHQgdGhlIGlndCBwYXJzZXIgZm9yCj4+PiBm
bGV4aWJpbGl0eS4KPj4+Cj4+PiBJZiB3ZSBjb3VsZCBqdXN0IGFkZXF1YXRlbHkgc2ltdWxhdGUg
UzMvUzQgaW4gdGhlIGtlcm5lbCB3ZSBjb3VsZCBmb3Jnbwo+Pj4gdGhpcyB0ZXN0IGVudGlyZWx5
Li4uCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Cj4+PiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNv
bT4KPj4+IC0tLQo+Pj4gICAgdGVzdHMvaTkxNS9nZW1fd29ya2Fyb3VuZHMuYyB8IDEyICsrKysr
KysrKystLQo+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX3dvcmthcm91bmRzLmMg
Yi90ZXN0cy9pOTE1L2dlbV93b3JrYXJvdW5kcy5jCj4+PiBpbmRleCA0MDM4NjNjMGIuLjgxYzM1
NmYwNiAxMDA2NDQKPj4+IC0tLSBhL3Rlc3RzL2k5MTUvZ2VtX3dvcmthcm91bmRzLmMKPj4+ICsr
KyBiL3Rlc3RzL2k5MTUvZ2VtX3dvcmthcm91bmRzLmMKPj4+IEBAIC0yNDksNiArMjQ5LDcgQEAg
aWd0X21haW4KPj4+ICAgICAgICBpZ3RfZml4dHVyZSB7Cj4+PiAgICAgICAgICAgICAgICBGSUxF
ICpmaWxlOwo+Pj4gICAgICAgICAgICAgICAgY2hhciAqbGluZSA9IE5VTEw7Cj4+PiArICAgICAg
ICAgICAgIGNoYXIgKnN0cjsKPj4+ICAgICAgICAgICAgICAgIHNpemVfdCBsaW5lX3NpemU7Cj4+
PiAgICAgICAgICAgICAgICBpbnQgaSwgZmQ7Cj4+PiAgICAKPj4+IEBAIC0yNjEsOSArMjYyLDEz
IEBAIGlndF9tYWluCj4+PiAgICAKPj4+ICAgICAgICAgICAgICAgIGZkID0gaWd0X2RlYnVnZnNf
b3BlbihkZXZpY2UsICJpOTE1X3dhX3JlZ2lzdGVycyIsIE9fUkRPTkxZKTsKPj4+ICAgICAgICAg
ICAgICAgIGZpbGUgPSBmZG9wZW4oZmQsICJyIik7Cj4+PiAtICAgICAgICAgICAgIGlndF9hc3Nl
cnQoZ2V0bGluZSgmbGluZSwgJmxpbmVfc2l6ZSwgZmlsZSkgPiAwKTsKPj4+ICsgICAgICAgICAg
ICAgaWd0X3JlcXVpcmUoZ2V0bGluZSgmbGluZSwgJmxpbmVfc2l6ZSwgZmlsZSkgPiAwKTsKPj4+
ICAgICAgICAgICAgICAgIGlndF9kZWJ1ZygiaTkxNV93YV9yZWdpc3RlcnM6ICVzIiwgbGluZSk7
Cj4+PiAtICAgICAgICAgICAgIHNzY2FuZihsaW5lLCAiV29ya2Fyb3VuZHMgYXBwbGllZDogJWQi
LCAmbnVtX3dhX3JlZ3MpOwo+Pj4gKwo+Pj4gKyAgICAgICAgICAgICAvKiBXZSBhc3N1bWUgdGhh
dCB0aGUgZmlyc3QgYmF0Y2ggaXMgZm9yIHJjcyAqLwo+Pgo+PiBJIHRoaW5rIHlvdSBtZWFuICJm
aXJzdCBsaW5lIi4KPiAKPiBJIHdhcyB0aGlua2luZyBvZiBiYXRjaCBhcyBpbiBzZXQgb2Ygd29y
a2Fyb3VuZHMuCgpPayA6KQogCj4+PiArICAgICAgICAgICAgIHN0ciA9IHN0cnN0cihsaW5lLCAi
V29ya2Fyb3VuZHMgYXBwbGllZDoiKTsKPj4+ICsgICAgICAgICAgICAgaWd0X2Fzc2VydChzdHIp
Owo+Pj4gKyAgICAgICAgICAgICBzc2NhbmYoc3RyLCAiV29ya2Fyb3VuZHMgYXBwbGllZDogJWQi
LCAmbnVtX3dhX3JlZ3MpOwo+Pj4gICAgICAgICAgICAgICAgaWd0X3JlcXVpcmUobnVtX3dhX3Jl
Z3MgPiAwKTsKPj4KPj4gSSBoYXZlIGEgc3VzcGljaW9uIGFsbCB0aGUgYWJvdmUgc2VjdGlvbiBj
b3VsZCBiZSBzaW1wbGlmaWVkIHVzaW5nCj4+IGZzY2FuZiBhbmQganVzdCBjaGVja2luZyByZXR1
cm4gdmFsdWUgYW5kIGVycm5vIGJ1dCB0aGF0IHdvdWxkIGJlIGFza2luZwo+PiBmb3IgdG9vIG11
Y2ggd29yayBmb3Igd2hhdCB0aGlzIGlzLgo+IAo+IFNwZWFraW5nIG15IGxhbmd1YWdlIDopCj4g
Cj4+PiAgICAKPj4+ICAgICAgICAgICAgICAgIHdhX3JlZ3MgPSBtYWxsb2MobnVtX3dhX3JlZ3Mg
KiBzaXplb2YoKndhX3JlZ3MpKTsKPj4+IEBAIC0yNzEsNiArMjc2LDkgQEAgaWd0X21haW4KPj4+
ICAgIAo+Pj4gICAgICAgICAgICAgICAgaSA9IDA7Cj4+PiAgICAgICAgICAgICAgICB3aGlsZSAo
Z2V0bGluZSgmbGluZSwgJmxpbmVfc2l6ZSwgZmlsZSkgPiAwKSB7Cj4+PiArICAgICAgICAgICAg
ICAgICAgICAgaWYgKHN0cnN0cihsaW5lLCAiV29ya2Fyb3VuZHMgYXBwbGllZDoiKSkKPj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+Pj4gKwo+Pj4gICAgICAgICAgICAg
ICAgICAgICAgICBpZ3RfZGVidWcoIiVzIiwgbGluZSk7Cj4+PiAgICAgICAgICAgICAgICAgICAg
ICAgIGlmIChzc2NhbmYobGluZSwgIjB4JVg6IDB4JTA4WCwgbWFzazogMHglMDhYIiwKPj4+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmd2FfcmVnc1tpXS5hZGRyLAo+Pj4KPj4K
Pj4gSSBqdXN0IGhhZCBhIHRob3VnaHQgdGhhdCBzaW5jZSB3ZSBhcmUgZmlkZGxpbmcgd2l0aCB0
aGlzIHdlIHNob3VsZCBhZGQKPj4gZW5naW5lIG5hbWVzIGludG8gc3RyaW5ncy4gQW5kL29yIGNs
YXNzOmluc3RhbmNlIHBhaXJzLgo+IAo+IEV4cGFuZCB1cG9uIHRoYXQgdGhvdWdodDogd2hlcmUg
ZG8geW91IHdhbnQgdGhpcz8gSSBwcmVzdW1lIHlvdSBhcmUKPiB0aGlua2luZyBvZiBhbiBpZ3Qg
aGVscGVyIGZvciByY3MwIC0+IGNsYXNzOlJFTkRFUiwgaW5zdDowCgpJIG5vdyBzZWUgeW91IGFs
cmVhZHkgZGlkIGl0IGluIHRoZSBpOTE1IHBhdGNoOgoKKwkJc2VxX3ByaW50ZihtLCAiJXM6IFdv
cmthcm91bmRzIGFwcGxpZWQ6ICV1XG4iLAorCQkJICAgZW5naW5lLT5uYW1lLCBjb3VudCk7CgpT
byBub3RoaW5nIHJlYWxseS4gSUdUIGNhbiBiZSBleHRlbmRlZCBsYXRlciBpZiBuZWVkZWQuCgpS
ZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJl
Z2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
