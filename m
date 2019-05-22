Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E772631A
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 13:39:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DDD0899C7;
	Wed, 22 May 2019 11:39:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26E1A899C7;
 Wed, 22 May 2019 11:39:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 04:39:11 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO [10.252.20.122])
 ([10.252.20.122])
 by orsmga005.jf.intel.com with ESMTP; 22 May 2019 04:39:10 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190508100958.32637-1-chris@chris-wilson.co.uk>
 <20190508100958.32637-10-chris@chris-wilson.co.uk>
 <4cd81719-4151-c28e-a98a-ff432160289c@linux.intel.com>
 <155794892504.12244.2181516924164471431@skylake-alporthouse-com>
 <07c9675f-ac62-a6c5-cf3a-ff4266109a83@linux.intel.com>
 <155852279090.23981.16538709810890555324@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <75268a35-064b-1117-a210-62abc5d53b60@linux.intel.com>
Date: Wed, 22 May 2019 12:39:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155852279090.23981.16538709810890555324@skylake-alporthouse-com>
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

Ck9uIDIyLzA1LzIwMTkgMTE6NTksIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTE2IDA5OjU3OjA4KQo+Pgo+PiBPbiAxNS8wNS8yMDE5IDIwOjM1
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA1
LTE0IDEzOjU3OjI2KQo+Pj4+Cj4+Pj4gT24gMDgvMDUvMjAxOSAxMTowOSwgQ2hyaXMgV2lsc29u
IHdyb3RlOgo+Pj4+PiBBZGQgYSBuZXcgbW9kZSBmb3Igc29tZSBtb3JlIHN0cmVzcywgc3VibWl0
IHRoZSBhbGwtZW5naW5lcyB0ZXN0cwo+Pj4+PiBzaW11bHRhbmVvdXNseSwgYSBzdHJlYW0gcGVy
IGVuZ2luZS4KPj4+Pj4KPj4+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4+Pj4+IC0tLQo+Pj4+PiAgICAgdGVzdHMvaTkxNS9nZW1fZXhl
Y193aGlzcGVyLmMgfCAyNyArKysrKysrKysrKysrKysrKysrKysrLS0tLS0KPj4+Pj4gICAgIDEg
ZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+Pj4+Pgo+Pj4+
PiBkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fZXhlY193aGlzcGVyLmMgYi90ZXN0cy9pOTE1
L2dlbV9leGVjX3doaXNwZXIuYwo+Pj4+PiBpbmRleCBkM2UwYjBiYTIuLmQ1YWZjODExOSAxMDA2
NDQKPj4+Pj4gLS0tIGEvdGVzdHMvaTkxNS9nZW1fZXhlY193aGlzcGVyLmMKPj4+Pj4gKysrIGIv
dGVzdHMvaTkxNS9nZW1fZXhlY193aGlzcGVyLmMKPj4+Pj4gQEAgLTg4LDYgKzg4LDcgQEAgc3Rh
dGljIHZvaWQgdmVyaWZ5X3JlbG9jKGludCBmZCwgdWludDMyX3QgaGFuZGxlLAo+Pj4+PiAgICAg
I2RlZmluZSBTWU5DIDB4NDAKPj4+Pj4gICAgICNkZWZpbmUgUFJJT1JJVFkgMHg4MAo+Pj4+PiAg
ICAgI2RlZmluZSBRVUVVRVMgMHgxMDAKPj4+Pj4gKyNkZWZpbmUgQUxMIDB4MjAwCj4+Pj4+ICAg
ICAKPj4+Pj4gICAgIHN0cnVjdCBoYW5nIHsKPj4+Pj4gICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX2V4ZWNfb2JqZWN0MiBvYmo7Cj4+Pj4+IEBAIC0xOTksNiArMjAwLDcgQEAgc3RhdGljIHZv
aWQgd2hpc3BlcihpbnQgZmQsIHVuc2lnbmVkIGVuZ2luZSwgdW5zaWduZWQgZmxhZ3MpCj4+Pj4+
ICAgICAgICAgdWludDY0X3Qgb2xkX29mZnNldDsKPj4+Pj4gICAgICAgICBpbnQgaSwgbiwgbG9j
Owo+Pj4+PiAgICAgICAgIGludCBkZWJ1Z2ZzOwo+Pj4+PiArICAgICBpbnQgbmNoaWxkOwo+Pj4+
PiAgICAgCj4+Pj4+ICAgICAgICAgaWYgKGZsYWdzICYgUFJJT1JJVFkpIHsKPj4+Pj4gICAgICAg
ICAgICAgICAgIGlndF9yZXF1aXJlKGdlbV9zY2hlZHVsZXJfZW5hYmxlZChmZCkpOwo+Pj4+PiBA
QCAtMjE1LDYgKzIxNyw3IEBAIHN0YXRpYyB2b2lkIHdoaXNwZXIoaW50IGZkLCB1bnNpZ25lZCBl
bmdpbmUsIHVuc2lnbmVkIGZsYWdzKQo+Pj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGVuZ2luZXNbbmVuZ2luZSsrXSA9IGVuZ2luZTsKPj4+Pj4gICAgICAgICAgICAgICAgIH0K
Pj4+Pj4gICAgICAgICB9IGVsc2Ugewo+Pj4+PiArICAgICAgICAgICAgIGlndF9hc3NlcnQoIShm
bGFncyAmIEFMTCkpOwo+Pj4+PiAgICAgICAgICAgICAgICAgaWd0X3JlcXVpcmUoZ2VtX2hhc19y
aW5nKGZkLCBlbmdpbmUpKTsKPj4+Pj4gICAgICAgICAgICAgICAgIGlndF9yZXF1aXJlKGdlbV9j
YW5fc3RvcmVfZHdvcmQoZmQsIGVuZ2luZSkpOwo+Pj4+PiAgICAgICAgICAgICAgICAgZW5naW5l
c1tuZW5naW5lKytdID0gZW5naW5lOwo+Pj4+PiBAQCAtMjMzLDExICsyMzYsMjIgQEAgc3RhdGlj
IHZvaWQgd2hpc3BlcihpbnQgZmQsIHVuc2lnbmVkIGVuZ2luZSwgdW5zaWduZWQgZmxhZ3MpCj4+
Pj4+ICAgICAgICAgaWYgKGZsYWdzICYgSEFORykKPj4+Pj4gICAgICAgICAgICAgICAgIGluaXRf
aGFuZygmaGFuZyk7Cj4+Pj4+ICAgICAKPj4+Pj4gKyAgICAgbmNoaWxkID0gMTsKPj4+Pj4gKyAg
ICAgaWYgKGZsYWdzICYgRk9SS0VEKQo+Pj4+PiArICAgICAgICAgICAgIG5jaGlsZCAqPSBzeXNj
b25mKF9TQ19OUFJPQ0VTU09SU19PTkxOKTsKPj4+Pj4gKyAgICAgaWYgKGZsYWdzICYgQUxMKQo+
Pj4+PiArICAgICAgICAgICAgIG5jaGlsZCAqPSBuZW5naW5lOwo+Pj4+PiArCj4+Pj4+ICAgICAg
ICAgaW50ZWxfZGV0ZWN0X2FuZF9jbGVhcl9taXNzZWRfaW50ZXJydXB0cyhmZCk7Cj4+Pj4+ICAg
ICAgICAgZ3B1X3Bvd2VyX3JlYWQoJnBvd2VyLCAmc2FtcGxlWzBdKTsKPj4+Pj4gLSAgICAgaWd0
X2ZvcmsoY2hpbGQsIGZsYWdzICYgRk9SS0VEID8gc3lzY29uZihfU0NfTlBST0NFU1NPUlNfT05M
TikgOiAxKSAgewo+Pj4+PiArICAgICBpZ3RfZm9yayhjaGlsZCwgbmNoaWxkKSB7Cj4+Pj4+ICAg
ICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgcGFzczsKPj4+Pj4gICAgIAo+Pj4+PiArICAgICAg
ICAgICAgIGlmIChmbGFncyAmIEFMTCkgewo+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgZW5n
aW5lc1swXSA9IGVuZ2luZXNbY2hpbGQgJSBuZW5naW5lXTsKPj4+Pgo+Pj4+IFJlbHlpbmcgb24g
UElEcyBiZWluZyBzZXF1ZW50aWFsIGZlZWxzIGZyYWdpbGUgYnV0IHN1Z2dlc3RpbmcgcGlwZXMg
b3IKPj4+PiBzaGFyZWQgbWVtb3J5IHdvdWxkIGJlIG92ZXJraWxsLiBIb3cgYWJvdXQgYW5vdGhl
ciBsb29wOgo+Pj4KPj4+IFdoZXJlIGFyZSB5b3UgZ2V0dGluZyBwaWRfdCBmcm9tPyBjaGlsZCBp
cyBhbiBpbnRlZ2VyIFswLCBuY2hpbGQpLgo+Pgo+PiBBZGQgYSBjb3JlIGhlbHBlciB0byBnZXQg
aXQ/Cj4+Cj4+IEkgYW0gY29taW5nIGZyb20gYW4gYW5nbGUgdGhhdCBJIHJlbWVtYmVyIHNvbWUg
dGltZSBpbiB0aGUgcGFzdCB0aGVyZQo+PiB3YXMgYSBzZWN1cml0eSB0aGluZyB3aGljaCByYW5k
b21pemVkIHBpZCBhbGxvY2F0aW9uLiBUQkggSSBhbSBub3Qgc3VyZQo+PiBpZiB0aGF0IHN0aWxs
IGV4aXN0cywgYnV0IGlmIGl0IGRvZXMgdGhlbiBpdCB3b3VsZCBub3QgYmUgZ29vZCBmb3IgdGhp
cwo+PiB0ZXN0LiBNYXkgYmUgbW9vdCBwb2ludCB0byB0aGluayBzdWNoIHNlY3VyaXR5IGhhcmRl
bmluZyBtZWFzdXJlcyB3b3VsZAo+PiBiZSBhY3RpdmUgb24gYSBtYWNoaW5lIHJ1bm5pbmcgSUdU
IHRlc3RzLi4gaG0uLiBub3Qgc3VyZS4gQnV0IGl0IGlzCj4+IHN0aWxsIGEgcXVpdGUgaGlkZGVu
IGFzc3VtcHRpb24uCj4gCj4gQnV0IHdlIGFyZSBub3QgdXNpbmcgcGlkX3QgaGVyZS4gSXQgaXMg
anVzdCBhbiBhcnJheSBvZiBjaGlsZCBwcm9jZXNzZXMsCj4gd2l0aCBlYWNoIGNoaWxkIGdldHRp
bmcgaXRzIG93biBlbmdpbmUsIHVzaW5nIHRoZSBjaGlsZCBpbmRleCBhcyBhbgo+IGluZGV4LgoK
T2ggcmlnaHQuLiBib3RoIGlzIHRoZSBzYW1lLiBTb3JyeSwgY29udGV4dC1zd2l0Y2hpbmcgZmFp
bCBvbiBteSBwYXJ0Li4KClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3Vs
aW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
