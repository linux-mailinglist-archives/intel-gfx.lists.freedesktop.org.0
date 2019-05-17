Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F75A216F1
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 12:32:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 441B2898D9;
	Fri, 17 May 2019 10:32:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11725898D9;
 Fri, 17 May 2019 10:32:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 03:32:55 -0700
X-ExtLoop1: 1
Received: from kmarenda-mobl2.ger.corp.intel.com (HELO [10.252.11.159])
 ([10.252.11.159])
 by orsmga001.jf.intel.com with ESMTP; 17 May 2019 03:32:54 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190516185840.19777-1-chris@chris-wilson.co.uk>
 <3494094d-8199-6198-a8e0-927f78e736ad@linux.intel.com>
 <155808226222.12244.5911177411071200102@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <225fbd50-855a-42ac-3485-01ad2406cfbc@linux.intel.com>
Date: Fri, 17 May 2019 11:32:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155808226222.12244.5911177411071200102@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] benchmarks/gem_wsim: Randomise random
 seed
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE3LzA1LzIwMTkgMDk6MzcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTE3IDA5OjI4OjQ2KQo+Pgo+PiBPbiAxNi8wNS8yMDE5IDE5OjU4
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBUbyBhdm9pZCBoaXR0aW5nIHRoZSBzYW1lIHJ1dCBv
biBlYWNoIGJlbmNobWFyayBydW4sIHN0YXJ0IHdpdGggYSBuZXcKPj4+IHJhbmRvbSBzZWVkLiBU
byBhbGxvdyBoaXR0aW5nIHRoZSBzYW1lIHJ1dCBhZ2FpbiwgbGV0IGl0IGJlIHNwZWNpZmllZAo+
Pj4gYnkgdGhlIHVzZXIuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+Cj4+PiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1
bGluQGludGVsLmNvbT4KPj4+IC0tLQo+Pj4gICAgYmVuY2htYXJrcy9nZW1fd3NpbS5jIHwgNiAr
KysrKy0KPj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvYmVuY2htYXJrcy9nZW1fd3NpbS5jIGIvYmVuY2htYXJr
cy9nZW1fd3NpbS5jCj4+PiBpbmRleCA0ODU2OGNlNDAuLmNmMmE0NDc0NiAxMDA2NDQKPj4+IC0t
LSBhL2JlbmNobWFya3MvZ2VtX3dzaW0uYwo+Pj4gKysrIGIvYmVuY2htYXJrcy9nZW1fd3NpbS5j
Cj4+PiBAQCAtMjI4Miw4ICsyMjgyLDkgQEAgaW50IG1haW4oaW50IGFyZ2MsIGNoYXIgKiphcmd2
KQo+Pj4gICAgICAgIGlndF9yZXF1aXJlKGZkKTsKPj4+ICAgIAo+Pj4gICAgICAgIGluaXRfY2xv
Y2tzKCk7Cj4+PiArICAgICBzcmFuZCh0aW1lKE5VTEwpKTsKPj4+ICAgIAo+Pj4gLSAgICAgd2hp
bGUgKChjID0gZ2V0b3B0KGFyZ2MsIGFyZ3YsICJocXYyUlNIeEdkYzpuOnI6dzpXOmE6dDpiOnA6
IikpICE9IC0xKSB7Cj4+PiArICAgICB3aGlsZSAoKGMgPSBnZXRvcHQoYXJnYywgYXJndiwgImhx
djJSU0h4R2RjOm46cjp3Olc6YTp0OmI6cDpzOiIpKSAhPSAtMSkgewo+Pj4gICAgICAgICAgICAg
ICAgc3dpdGNoIChjKSB7Cj4+PiAgICAgICAgICAgICAgICBjYXNlICdXJzoKPj4+ICAgICAgICAg
ICAgICAgICAgICAgICAgaWYgKG1hc3Rlcl93b3JrbG9hZCA+PSAwKSB7Cj4+PiBAQCAtMjMwMCw2
ICsyMzAxLDkgQEAgaW50IG1haW4oaW50IGFyZ2MsIGNoYXIgKiphcmd2KQo+Pj4gICAgICAgICAg
ICAgICAgY2FzZSAncCc6Cj4+PiAgICAgICAgICAgICAgICAgICAgICAgIHByaW8gPSBhdG9pKG9w
dGFyZyk7Cj4+PiAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+Pj4gKyAgICAgICAgICAg
ICBjYXNlICdzJzoKPj4+ICsgICAgICAgICAgICAgICAgICAgICBzcmFuZChhdG9pKG9wdGFyZykp
Owo+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+Pj4gICAgICAgICAgICAgICAgY2Fz
ZSAnYSc6Cj4+PiAgICAgICAgICAgICAgICAgICAgICAgIGlmIChhcHBlbmRfd29ya2xvYWRfYXJn
KSB7Cj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaWYgKHZlcmJvc2UpCj4+Pgo+
Pgo+PiBNYWtlcyBzZW5zZSwganVzdCB0aGUgaGVscCB0ZXh0IG1pc3NpbmcuCj4gCj4gWW91IHVz
ZSAncycgZm9yIHNzZXUsIEkgdGhpbmsgSSAoSW5pdGlhbCByYW5kb20gc2VlZCkgaXMgb25lIG9m
IHRoZSBmZXcKPiBhdmFpbGFibGUuCgpObyBjb21wbGFpbnRzIG9uICdJJy4KCj4+IEkgd2FzIGlu
aXRpYWxseSBjb25mdXNlZCBhdCBzcmFuZCB3aGVuIEkgdGhvdWdodCBJIHVzZWQgeW91cgo+PiBo
YXJzX3BldHJ1c2thIGxpYnJhcnkgcm91dGluZXMgYnV0IHRoZW4gc2F3IHJhbmQoKSBmZWVkcyB0
aGUgc2VlZCBpbnRvCj4+IHRob3NlLgo+IAo+IFllYWgsIEkgaGFkIHRvIGdvIGFuZCBkb3VibGUg
Y2hlY2sgdGhhdCB3ZSBhY3R1YWxseSB1c2VkIHJhbmQoKQo+IHNvbWV3aGVyZSAoYW5kIG5vdCBq
dXN0IGluIG15IGhhY2tzIDopCgpTZWVtcyBJIGhhdmUgdG8gc2VwYXJhdGUgc3RyZWFtcyBvZiBy
YW5kb21uZXNzLgoKT25lIGlzIHJlbGF0aW5nIHRvIHJhbmRvbSBtb2RlIGxvYWQgYmFsYW5jaW5n
LCB3aGljaCB0aGlzIHBhdGNoIGluZmx1ZW5jZXMuCgpTZWNvbmQgaXMgcmVsYXRpbmcgdG8gYmF0
Y2ggYnVmZmVyIGR1cmF0aW9uIHdoaWNoIGlzIGRyaXZlbiBmcm9tIHRoZSAKZ2xvYmFsIGhhcnNf
cGV0cnVza2FfZjU0XzFfcmFuZG9tX3NlZWQgYW5kIHdyb25nbHkgdXNlcyB0aGUgX3Vuc2FmZSAK
ZnVuY3Rpb24gZnJvbSB1bmxvY2tlZCBzZWN0aW9uLiBUaGlzIG1pZ2h0IGJlIGZyb20gYmVmb3Jl
IEkgcmVwbGFjZWQgCmZvcmtpbmcgd2l0aCB0aHJlYWRzLiA6KAoKSSB0aGluayB0aGUgYWdncmVn
YXRlIGZpeCB3b3VsZCBiZSB0byBzdG9yZSBhIHNlY29uZCBzZWVkIHBlciB3b3JrbG9hZCAKZm9y
IHRoZSBsYXR0ZXIuIFJlcGxhY2UgaGFyc19wcmV0cnVza2FfZjU0XzFfcmFuZG9tX3NlZWQgbmVh
ciBiZWdpbm5pbmcgCm9mIHJ1bl93b3JrbGFvZCB3aXRoIHdyay0+YmJfcHJuZyA9ICh3cmstPmZs
YWdzICYgU1lOQ0VEQ0xJRU5UUykgPyAKbWFzdGVyX3Bybmdfc2VlZCA6IHRpbWUoTlVMTCk7IEFu
ZCBpbiBnZXRfZHVyYXRpb24gdXNlIHdyay0+YmJfcHJuZyBhbmQgCnNhZmUgcG5yZyBmdW5jdGlv
bi4gKFlvdSBzdG9yZSBtYXN0ZXJfcHJuZ19zZWVkIGluIG1haW4gYWZ0ZXIgaXQgaXMgc2V0LikK
CkkgdGhpbmsgdGhpcyBzaG91bGQgZml4IGFsbCBpc3N1ZXMgYW5kIHByb3BhZ2F0ZSB0aGUgcGFz
c2VkIGluIHNlZWQgCmNvcnJlY3RseS4KCgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
