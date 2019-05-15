Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 203DC1FAFE
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2019 21:35:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AFB0891F4;
	Wed, 15 May 2019 19:35:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4476890DB;
 Wed, 15 May 2019 19:35:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16569102-1500050 for multiple; Wed, 15 May 2019 20:35:25 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <4cd81719-4151-c28e-a98a-ff432160289c@linux.intel.com>
References: <20190508100958.32637-1-chris@chris-wilson.co.uk>
 <20190508100958.32637-10-chris@chris-wilson.co.uk>
 <4cd81719-4151-c28e-a98a-ff432160289c@linux.intel.com>
Message-ID: <155794892504.12244.2181516924164471431@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 15 May 2019 20:35:25 +0100
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0xNCAxMzo1NzoyNikKPiAKPiBPbiAwOC8w
NS8yMDE5IDExOjA5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBBZGQgYSBuZXcgbW9kZSBmb3Ig
c29tZSBtb3JlIHN0cmVzcywgc3VibWl0IHRoZSBhbGwtZW5naW5lcyB0ZXN0cwo+ID4gc2ltdWx0
YW5lb3VzbHksIGEgc3RyZWFtIHBlciBlbmdpbmUuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gLS0tCj4gPiAgIHRlc3Rz
L2k5MTUvZ2VtX2V4ZWNfd2hpc3Blci5jIHwgMjcgKysrKysrKysrKysrKysrKysrKysrKy0tLS0t
Cj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+
ID4gCj4gPiBkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fZXhlY193aGlzcGVyLmMgYi90ZXN0
cy9pOTE1L2dlbV9leGVjX3doaXNwZXIuYwo+ID4gaW5kZXggZDNlMGIwYmEyLi5kNWFmYzgxMTkg
MTAwNjQ0Cj4gPiAtLS0gYS90ZXN0cy9pOTE1L2dlbV9leGVjX3doaXNwZXIuYwo+ID4gKysrIGIv
dGVzdHMvaTkxNS9nZW1fZXhlY193aGlzcGVyLmMKPiA+IEBAIC04OCw2ICs4OCw3IEBAIHN0YXRp
YyB2b2lkIHZlcmlmeV9yZWxvYyhpbnQgZmQsIHVpbnQzMl90IGhhbmRsZSwKPiA+ICAgI2RlZmlu
ZSBTWU5DIDB4NDAKPiA+ICAgI2RlZmluZSBQUklPUklUWSAweDgwCj4gPiAgICNkZWZpbmUgUVVF
VUVTIDB4MTAwCj4gPiArI2RlZmluZSBBTEwgMHgyMDAKPiA+ICAgCj4gPiAgIHN0cnVjdCBoYW5n
IHsKPiA+ICAgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19vYmplY3QyIG9iajsKPiA+IEBA
IC0xOTksNiArMjAwLDcgQEAgc3RhdGljIHZvaWQgd2hpc3BlcihpbnQgZmQsIHVuc2lnbmVkIGVu
Z2luZSwgdW5zaWduZWQgZmxhZ3MpCj4gPiAgICAgICB1aW50NjRfdCBvbGRfb2Zmc2V0Owo+ID4g
ICAgICAgaW50IGksIG4sIGxvYzsKPiA+ICAgICAgIGludCBkZWJ1Z2ZzOwo+ID4gKyAgICAgaW50
IG5jaGlsZDsKPiA+ICAgCj4gPiAgICAgICBpZiAoZmxhZ3MgJiBQUklPUklUWSkgewo+ID4gICAg
ICAgICAgICAgICBpZ3RfcmVxdWlyZShnZW1fc2NoZWR1bGVyX2VuYWJsZWQoZmQpKTsKPiA+IEBA
IC0yMTUsNiArMjE3LDcgQEAgc3RhdGljIHZvaWQgd2hpc3BlcihpbnQgZmQsIHVuc2lnbmVkIGVu
Z2luZSwgdW5zaWduZWQgZmxhZ3MpCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBl
bmdpbmVzW25lbmdpbmUrK10gPSBlbmdpbmU7Cj4gPiAgICAgICAgICAgICAgIH0KPiA+ICAgICAg
IH0gZWxzZSB7Cj4gPiArICAgICAgICAgICAgIGlndF9hc3NlcnQoIShmbGFncyAmIEFMTCkpOwo+
ID4gICAgICAgICAgICAgICBpZ3RfcmVxdWlyZShnZW1faGFzX3JpbmcoZmQsIGVuZ2luZSkpOwo+
ID4gICAgICAgICAgICAgICBpZ3RfcmVxdWlyZShnZW1fY2FuX3N0b3JlX2R3b3JkKGZkLCBlbmdp
bmUpKTsKPiA+ICAgICAgICAgICAgICAgZW5naW5lc1tuZW5naW5lKytdID0gZW5naW5lOwo+ID4g
QEAgLTIzMywxMSArMjM2LDIyIEBAIHN0YXRpYyB2b2lkIHdoaXNwZXIoaW50IGZkLCB1bnNpZ25l
ZCBlbmdpbmUsIHVuc2lnbmVkIGZsYWdzKQo+ID4gICAgICAgaWYgKGZsYWdzICYgSEFORykKPiA+
ICAgICAgICAgICAgICAgaW5pdF9oYW5nKCZoYW5nKTsKPiA+ICAgCj4gPiArICAgICBuY2hpbGQg
PSAxOwo+ID4gKyAgICAgaWYgKGZsYWdzICYgRk9SS0VEKQo+ID4gKyAgICAgICAgICAgICBuY2hp
bGQgKj0gc3lzY29uZihfU0NfTlBST0NFU1NPUlNfT05MTik7Cj4gPiArICAgICBpZiAoZmxhZ3Mg
JiBBTEwpCj4gPiArICAgICAgICAgICAgIG5jaGlsZCAqPSBuZW5naW5lOwo+ID4gKwo+ID4gICAg
ICAgaW50ZWxfZGV0ZWN0X2FuZF9jbGVhcl9taXNzZWRfaW50ZXJydXB0cyhmZCk7Cj4gPiAgICAg
ICBncHVfcG93ZXJfcmVhZCgmcG93ZXIsICZzYW1wbGVbMF0pOwo+ID4gLSAgICAgaWd0X2Zvcmso
Y2hpbGQsIGZsYWdzICYgRk9SS0VEID8gc3lzY29uZihfU0NfTlBST0NFU1NPUlNfT05MTikgOiAx
KSAgewo+ID4gKyAgICAgaWd0X2ZvcmsoY2hpbGQsIG5jaGlsZCkgewo+ID4gICAgICAgICAgICAg
ICB1bnNpZ25lZCBpbnQgcGFzczsKPiA+ICAgCj4gPiArICAgICAgICAgICAgIGlmIChmbGFncyAm
IEFMTCkgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGVuZ2luZXNbMF0gPSBlbmdpbmVzW2No
aWxkICUgbmVuZ2luZV07Cj4gCj4gUmVseWluZyBvbiBQSURzIGJlaW5nIHNlcXVlbnRpYWwgZmVl
bHMgZnJhZ2lsZSBidXQgc3VnZ2VzdGluZyBwaXBlcyBvciAKPiBzaGFyZWQgbWVtb3J5IHdvdWxk
IGJlIG92ZXJraWxsLiBIb3cgYWJvdXQgYW5vdGhlciBsb29wOgoKV2hlcmUgYXJlIHlvdSBnZXR0
aW5nIHBpZF90IGZyb20/IGNoaWxkIGlzIGFuIGludGVnZXIgWzAsIG5jaGlsZCkuCi1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
