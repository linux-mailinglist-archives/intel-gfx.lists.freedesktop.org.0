Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3E0201CA
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2019 10:57:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB884892E2;
	Thu, 16 May 2019 08:57:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECC89892E2;
 Thu, 16 May 2019 08:57:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 01:57:10 -0700
X-ExtLoop1: 1
Received: from kmarenda-mobl2.ger.corp.intel.com (HELO [10.252.11.159])
 ([10.252.11.159])
 by orsmga001.jf.intel.com with ESMTP; 16 May 2019 01:57:09 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190508100958.32637-1-chris@chris-wilson.co.uk>
 <20190508100958.32637-10-chris@chris-wilson.co.uk>
 <4cd81719-4151-c28e-a98a-ff432160289c@linux.intel.com>
 <155794892504.12244.2181516924164471431@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <07c9675f-ac62-a6c5-cf3a-ff4266109a83@linux.intel.com>
Date: Thu, 16 May 2019 09:57:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155794892504.12244.2181516924164471431@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t 10/16] i915/gem_exec_whisper: Fork
 all-engine tests one-per-engine
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

Ck9uIDE1LzA1LzIwMTkgMjA6MzUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTE0IDEzOjU3OjI2KQo+Pgo+PiBPbiAwOC8wNS8yMDE5IDExOjA5
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBBZGQgYSBuZXcgbW9kZSBmb3Igc29tZSBtb3JlIHN0
cmVzcywgc3VibWl0IHRoZSBhbGwtZW5naW5lcyB0ZXN0cwo+Pj4gc2ltdWx0YW5lb3VzbHksIGEg
c3RyZWFtIHBlciBlbmdpbmUuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+PiAtLS0KPj4+ICAgIHRlc3RzL2k5MTUvZ2VtX2V4
ZWNfd2hpc3Blci5jIHwgMjcgKysrKysrKysrKysrKysrKysrKysrKy0tLS0tCj4+PiAgICAxIGZp
bGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZm
IC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fZXhlY193aGlzcGVyLmMgYi90ZXN0cy9pOTE1L2dlbV9l
eGVjX3doaXNwZXIuYwo+Pj4gaW5kZXggZDNlMGIwYmEyLi5kNWFmYzgxMTkgMTAwNjQ0Cj4+PiAt
LS0gYS90ZXN0cy9pOTE1L2dlbV9leGVjX3doaXNwZXIuYwo+Pj4gKysrIGIvdGVzdHMvaTkxNS9n
ZW1fZXhlY193aGlzcGVyLmMKPj4+IEBAIC04OCw2ICs4OCw3IEBAIHN0YXRpYyB2b2lkIHZlcmlm
eV9yZWxvYyhpbnQgZmQsIHVpbnQzMl90IGhhbmRsZSwKPj4+ICAgICNkZWZpbmUgU1lOQyAweDQw
Cj4+PiAgICAjZGVmaW5lIFBSSU9SSVRZIDB4ODAKPj4+ICAgICNkZWZpbmUgUVVFVUVTIDB4MTAw
Cj4+PiArI2RlZmluZSBBTEwgMHgyMDAKPj4+ICAgIAo+Pj4gICAgc3RydWN0IGhhbmcgewo+Pj4g
ICAgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19vYmplY3QyIG9iajsKPj4+IEBAIC0xOTks
NiArMjAwLDcgQEAgc3RhdGljIHZvaWQgd2hpc3BlcihpbnQgZmQsIHVuc2lnbmVkIGVuZ2luZSwg
dW5zaWduZWQgZmxhZ3MpCj4+PiAgICAgICAgdWludDY0X3Qgb2xkX29mZnNldDsKPj4+ICAgICAg
ICBpbnQgaSwgbiwgbG9jOwo+Pj4gICAgICAgIGludCBkZWJ1Z2ZzOwo+Pj4gKyAgICAgaW50IG5j
aGlsZDsKPj4+ICAgIAo+Pj4gICAgICAgIGlmIChmbGFncyAmIFBSSU9SSVRZKSB7Cj4+PiAgICAg
ICAgICAgICAgICBpZ3RfcmVxdWlyZShnZW1fc2NoZWR1bGVyX2VuYWJsZWQoZmQpKTsKPj4+IEBA
IC0yMTUsNiArMjE3LDcgQEAgc3RhdGljIHZvaWQgd2hpc3BlcihpbnQgZmQsIHVuc2lnbmVkIGVu
Z2luZSwgdW5zaWduZWQgZmxhZ3MpCj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ZW5naW5lc1tuZW5naW5lKytdID0gZW5naW5lOwo+Pj4gICAgICAgICAgICAgICAgfQo+Pj4gICAg
ICAgIH0gZWxzZSB7Cj4+PiArICAgICAgICAgICAgIGlndF9hc3NlcnQoIShmbGFncyAmIEFMTCkp
Owo+Pj4gICAgICAgICAgICAgICAgaWd0X3JlcXVpcmUoZ2VtX2hhc19yaW5nKGZkLCBlbmdpbmUp
KTsKPj4+ICAgICAgICAgICAgICAgIGlndF9yZXF1aXJlKGdlbV9jYW5fc3RvcmVfZHdvcmQoZmQs
IGVuZ2luZSkpOwo+Pj4gICAgICAgICAgICAgICAgZW5naW5lc1tuZW5naW5lKytdID0gZW5naW5l
Owo+Pj4gQEAgLTIzMywxMSArMjM2LDIyIEBAIHN0YXRpYyB2b2lkIHdoaXNwZXIoaW50IGZkLCB1
bnNpZ25lZCBlbmdpbmUsIHVuc2lnbmVkIGZsYWdzKQo+Pj4gICAgICAgIGlmIChmbGFncyAmIEhB
TkcpCj4+PiAgICAgICAgICAgICAgICBpbml0X2hhbmcoJmhhbmcpOwo+Pj4gICAgCj4+PiArICAg
ICBuY2hpbGQgPSAxOwo+Pj4gKyAgICAgaWYgKGZsYWdzICYgRk9SS0VEKQo+Pj4gKyAgICAgICAg
ICAgICBuY2hpbGQgKj0gc3lzY29uZihfU0NfTlBST0NFU1NPUlNfT05MTik7Cj4+PiArICAgICBp
ZiAoZmxhZ3MgJiBBTEwpCj4+PiArICAgICAgICAgICAgIG5jaGlsZCAqPSBuZW5naW5lOwo+Pj4g
Kwo+Pj4gICAgICAgIGludGVsX2RldGVjdF9hbmRfY2xlYXJfbWlzc2VkX2ludGVycnVwdHMoZmQp
Owo+Pj4gICAgICAgIGdwdV9wb3dlcl9yZWFkKCZwb3dlciwgJnNhbXBsZVswXSk7Cj4+PiAtICAg
ICBpZ3RfZm9yayhjaGlsZCwgZmxhZ3MgJiBGT1JLRUQgPyBzeXNjb25mKF9TQ19OUFJPQ0VTU09S
U19PTkxOKSA6IDEpICB7Cj4+PiArICAgICBpZ3RfZm9yayhjaGlsZCwgbmNoaWxkKSB7Cj4+PiAg
ICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgcGFzczsKPj4+ICAgIAo+Pj4gKyAgICAgICAgICAg
ICBpZiAoZmxhZ3MgJiBBTEwpIHsKPj4+ICsgICAgICAgICAgICAgICAgICAgICBlbmdpbmVzWzBd
ID0gZW5naW5lc1tjaGlsZCAlIG5lbmdpbmVdOwo+Pgo+PiBSZWx5aW5nIG9uIFBJRHMgYmVpbmcg
c2VxdWVudGlhbCBmZWVscyBmcmFnaWxlIGJ1dCBzdWdnZXN0aW5nIHBpcGVzIG9yCj4+IHNoYXJl
ZCBtZW1vcnkgd291bGQgYmUgb3ZlcmtpbGwuIEhvdyBhYm91dCBhbm90aGVyIGxvb3A6Cj4gCj4g
V2hlcmUgYXJlIHlvdSBnZXR0aW5nIHBpZF90IGZyb20/IGNoaWxkIGlzIGFuIGludGVnZXIgWzAs
IG5jaGlsZCkuCgpBZGQgYSBjb3JlIGhlbHBlciB0byBnZXQgaXQ/CgpJIGFtIGNvbWluZyBmcm9t
IGFuIGFuZ2xlIHRoYXQgSSByZW1lbWJlciBzb21lIHRpbWUgaW4gdGhlIHBhc3QgdGhlcmUgCndh
cyBhIHNlY3VyaXR5IHRoaW5nIHdoaWNoIHJhbmRvbWl6ZWQgcGlkIGFsbG9jYXRpb24uIFRCSCBJ
IGFtIG5vdCBzdXJlIAppZiB0aGF0IHN0aWxsIGV4aXN0cywgYnV0IGlmIGl0IGRvZXMgdGhlbiBp
dCB3b3VsZCBub3QgYmUgZ29vZCBmb3IgdGhpcyAKdGVzdC4gTWF5IGJlIG1vb3QgcG9pbnQgdG8g
dGhpbmsgc3VjaCBzZWN1cml0eSBoYXJkZW5pbmcgbWVhc3VyZXMgd291bGQgCmJlIGFjdGl2ZSBv
biBhIG1hY2hpbmUgcnVubmluZyBJR1QgdGVzdHMuLiBobS4uIG5vdCBzdXJlLiBCdXQgaXQgaXMg
CnN0aWxsIGEgcXVpdGUgaGlkZGVuIGFzc3VtcHRpb24uCgpSZWdhcmRzLAoKVHZydGtvCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
