Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E95E8FE87
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 10:51:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C1856E181;
	Fri, 16 Aug 2019 08:51:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBCBC6E248
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 08:51:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18159551-1500050 for multiple; Fri, 16 Aug 2019 09:50:40 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <871rxl7dmi.fsf@gaia.fi.intel.com>
References: <20190814092643.1908-1-chris@chris-wilson.co.uk>
 <871rxl7dmi.fsf@gaia.fi.intel.com>
Message-ID: <156594543821.11610.2900524316246622498@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 16 Aug 2019 09:50:38 +0100
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915/execlists: Lift process_csb()
 out of the irq-off spinlock
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTE2IDA4OjUwOjI5KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gPiAgc3RhdGljIGlubGluZSBz
dHJ1Y3QgaTkxNV9yZXF1ZXN0ICoKPiA+ICBleGVjbGlzdHNfc2NoZWR1bGVfaW4oc3RydWN0IGk5
MTVfcmVxdWVzdCAqcnEsIGludCBpZHgpCj4gPiAgewo+ID4gLSAgICAgc3RydWN0IGludGVsX2Nv
bnRleHQgKmNlID0gcnEtPmh3X2NvbnRleHQ7Cj4gPiAtICAgICBpbnQgY291bnQ7Cj4gPiArICAg
ICBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqIGNvbnN0IGNlID0gcnEtPmh3X2NvbnRleHQ7Cj4gPiAr
ICAgICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpvbGQ7Cj4gPiAgCj4gPiArICAgICBHRU1fQlVH
X09OKCFpbnRlbF9lbmdpbmVfcG1faXNfYXdha2UocnEtPmVuZ2luZSkpOwo+ID4gICAgICAgdHJh
Y2VfaTkxNV9yZXF1ZXN0X2luKHJxLCBpZHgpOwo+ID4gIAo+ID4gLSAgICAgY291bnQgPSBpbnRl
bF9jb250ZXh0X2luZmxpZ2h0X2NvdW50KGNlKTsKPiA+IC0gICAgIGlmICghY291bnQpIHsKPiA+
IC0gICAgICAgICAgICAgaW50ZWxfY29udGV4dF9nZXQoY2UpOwo+ID4gLSAgICAgICAgICAgICBj
ZS0+aW5mbGlnaHQgPSBycS0+ZW5naW5lOwo+ID4gLQo+ID4gLSAgICAgICAgICAgICBpbnRlbF9n
dF9wbV9nZXQoY2UtPmluZmxpZ2h0LT5ndCk7Cj4gPiAtICAgICAgICAgICAgIGV4ZWNsaXN0c19j
b250ZXh0X3N0YXR1c19jaGFuZ2UocnEsIElOVEVMX0NPTlRFWFRfU0NIRURVTEVfSU4pOwo+ID4g
LSAgICAgICAgICAgICBpbnRlbF9lbmdpbmVfY29udGV4dF9pbihjZS0+aW5mbGlnaHQpOwo+ID4g
LSAgICAgfQo+ID4gKyAgICAgb2xkID0gUkVBRF9PTkNFKGNlLT5pbmZsaWdodCk7Cj4gPiArICAg
ICBkbyB7Cj4gPiArICAgICAgICAgICAgIGlmICghb2xkKSB7Cj4gCj4gVGhlIHNjaGVkdWxlIG91
dCBtaWdodCBoYXZlIHN3YXBwZWQgaW5mbGlnaHQgaW4gaGVyZSBydWluaW5nIG91ciBkYXkuCj4g
U28gSSBhbSBoZXJlIHRyeWluZyB0byBmaWd1cmUgb3V0IGhvdyB5b3UgY2FuIHB1bGwgaXQgb2Zm
LgoKT25jZSB3ZSBfa25vd18gdGhlIGNvbnRleHQgaXMgaWRsZSwgdGhlIG9ubHkgd2F5IGl0IGNh
biBiZWNvbWUgYnVzeSBhZ2FpbgppcyB2aWEgc3VibWl0dGluZyBhIHJlcXVlc3QgdW5kZXIgdGhl
IGVuZ2luZS0+YWN0aXZlLmxvY2ssIHdoaWNoIHdlCmhvbGQuCgpOb3RlIHRoYXQgc2NoZWR1bGUt
b3V0IGFsc28gaGFzIGV4Y2x1c2l2ZSBhY2Nlc3MgYnkgaXRzIGNhbGxlciAob25seSBvbmUKc3Vi
bWlzc2lvbiB0YXNrbGV0IGF0IGEgdGltZSksIGJ1dCBzY2hlZHVsZS1vdXQgbWF5IHJ1biBjb25j
dXJyZW50bHkgdG8Kc2NoZWR1bGUtaW4uIChCdXQgb25jZSB3ZSBpZGxlIGEgY29udGV4dCBpbiBz
Y2hlZHVsZS1vdXQsIHdlIHdpbGwgbmV2ZXIKc2VlIGl0IGFnYWluIHVudGlsIGEgc2NoZWR1bGUt
aW4sIGhlbmNlIHdlIGtub3cgdGhhdCB1cG9uIHNlZWluZyBOVUxMIHdlCmhhdmUgZXhjbHVzaXZl
IGFjY2Vzcy4pCgo+ID4gKyAgICAgICAgICAgICAgICAgICAgIFdSSVRFX09OQ0UoY2UtPmluZmxp
Z2h0LCBfX2V4ZWNsaXN0c19zY2hlZHVsZV9pbihycSkpOwo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgIGJyZWFrOwo+ID4gKyAgICAgICAgICAgICB9Cj4gPiArICAgICB9IHdoaWxlICghdHJ5X2Nt
cHhjaGcoJmNlLT5pbmZsaWdodCwgJm9sZCwgcHRyX2luYyhvbGQpKSk7Cj4gPiAgCj4gPiAtICAg
ICBpbnRlbF9jb250ZXh0X2luZmxpZ2h0X2luYyhjZSk7Cj4gPiAgICAgICBHRU1fQlVHX09OKGlu
dGVsX2NvbnRleHRfaW5mbGlnaHQoY2UpICE9IHJxLT5lbmdpbmUpOwo+ID4gLQo+ID4gICAgICAg
cmV0dXJuIGk5MTVfcmVxdWVzdF9nZXQocnEpOwo+ID4gIH0KCj4gPiAgZW5hYmxlX3RpbWVzbGlj
ZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gPiAgewo+ID4gLSAgICAgc3RydWN0
IGk5MTVfcmVxdWVzdCAqbGFzdCA9IGxhc3RfYWN0aXZlKCZlbmdpbmUtPmV4ZWNsaXN0cyk7Cj4g
PiArICAgICBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICogY29uc3QgKnBvcnQ7Cj4gPiArICAgICBpbnQg
aGludDsKPiA+ICsKPiA+ICsgICAgIHBvcnQgPSBlbmdpbmUtPmV4ZWNsaXN0cy5hY3RpdmU7Cj4g
PiArICAgICB3aGlsZSAocG9ydFswXSAmJiBpOTE1X3JlcXVlc3RfY29tcGxldGVkKHBvcnRbMF0p
KQo+ID4gKyAgICAgICAgICAgICBwb3J0Kys7Cj4gPiArICAgICBpZiAoIXBvcnRbMF0pCj4gPiAr
ICAgICAgICAgICAgIHJldHVybiBmYWxzZTsKPiA+ICAKPiA+IC0gICAgIHJldHVybiBsYXN0ICYm
IG5lZWRfdGltZXNsaWNlKGVuZ2luZSwgbGFzdCk7Cj4gPiArICAgICBoaW50ID0gZW5naW5lLT5l
eGVjbGlzdHMucXVldWVfcHJpb3JpdHlfaGludDsKPiA+ICsgICAgIGlmIChwb3J0WzFdKQo+ID4g
KyAgICAgICAgICAgICBoaW50ID0gbWF4KHJxX3ByaW8ocG9ydFsxXSksIGhpbnQpOwo+ID4gKwo+
ID4gKyAgICAgLyogQ29tcGFyZSB0aGUgdHdvIGVuZC1wb2ludHMgYXMgYW4gdW5sb2NrZWQgYXBw
cm94aW1hdGlvbiAqLwo+ID4gKyAgICAgcmV0dXJuIGhpbnQgPj0gZWZmZWN0aXZlX3ByaW8ocG9y
dFswXSk7Cj4gCj4gV2hhdCBoYXBwZW5zIGlmIHdlIGdldCBpdCB3cm9uZz8KClNvIHRoZSBsYXN0
IGVsZW1lbnQgaW4gdGhlIG5leHQgY29udGV4dCBpcyBhbHdheXMgdGhlIGxvd2VzdCBwcmlvcml0
eQoobm9ybWFsbHkgdGhleSBhcmUgYWxsIHRoZSBzYW1lIHByaW9yaXR5KS4gSWYgdGhlcmUgaXMg
YSB2YXJpYXRpb24gaW4KcHJpb3JpdHkgYWxvbmcgdGhlIHJlcXVlc3RzIGluIHRoZSBzZWNvbmQg
Y29udGV4dCwgdGhhdCBtYXkgbWFzayB0aGF0CnRoZSBmaXJzdCByZXF1ZXN0IHRoZXJlIHNob3Vs
ZCB0cmlnZ2VyIGEgdGltZXNsaWNlLgoKU3RvcmluZyBhbiBleGVjbGlzdHMuc3dpdGNoX3ByaW9y
aXR5X2hpbnQgc2hvdWxkIHJlbW92ZSB0aGUgYW1iaWd1aXR5LgoKPiA+IEBAIC0xNDk0LDkgKzE1
MjcsMTIgQEAgc3RhdGljIHZvaWQgZXhlY2xpc3RzX3N1Ym1pc3Npb25fdGFza2xldCh1bnNpZ25l
ZCBsb25nIGRhdGEpCj4gPiAgICAgICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICogY29uc3QgZW5n
aW5lID0gKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKilkYXRhOwo+ID4gICAgICAgdW5zaWduZWQg
bG9uZyBmbGFnczsKPiA+ICAKPiA+IC0gICAgIHNwaW5fbG9ja19pcnFzYXZlKCZlbmdpbmUtPmFj
dGl2ZS5sb2NrLCBmbGFncyk7Cj4gPiAtICAgICBfX2V4ZWNsaXN0c19zdWJtaXNzaW9uX3Rhc2ts
ZXQoZW5naW5lKTsKPiA+IC0gICAgIHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmVuZ2luZS0+YWN0
aXZlLmxvY2ssIGZsYWdzKTsKPiA+ICsgICAgIHByb2Nlc3NfY3NiKGVuZ2luZSk7Cj4gPiArICAg
ICBpZiAoIWVuZ2luZS0+ZXhlY2xpc3RzLnBlbmRpbmdbMF0pIHsKPiAKPiAhUkVBRF9PTkNFKC4u
Lik/IFdvdWxkIGF0bGVhc3QgcGFpciBkb2N1bWVudGF0aWNhbGx5LgoKSG93IGFib3V0IGlmIChw
cm9jZXNzX2NzYigpKSB7Cgo+ID4gKyAgICAgICAgICAgICBzcGluX2xvY2tfaXJxc2F2ZSgmZW5n
aW5lLT5hY3RpdmUubG9jaywgZmxhZ3MpOwo+ID4gKyAgICAgICAgICAgICBfX2V4ZWNsaXN0c19z
dWJtaXNzaW9uX3Rhc2tsZXQoZW5naW5lKTsKPiA+ICsgICAgICAgICAgICAgc3Bpbl91bmxvY2tf
aXJxcmVzdG9yZSgmZW5naW5lLT5hY3RpdmUubG9jaywgZmxhZ3MpOwo+ID4gKyAgICAgfQo+ID4g
IH0KPiA+ICAKPiA+ICBzdGF0aWMgdm9pZCBleGVjbGlzdHNfc3VibWlzc2lvbl90aW1lcihzdHJ1
Y3QgdGltZXJfbGlzdCAqdGltZXIpCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV91dGlscy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oCj4gPiBp
bmRleCBkNjUyYmE1ZDIzMjAuLjU2MmY3NTZkYTQyMSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuaAo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV91dGlscy5oCj4gPiBAQCAtMTYxLDE3ICsxNjEsMTUgQEAgX19jaGVja19zdHJ1Y3Rfc2l6
ZShzaXplX3QgYmFzZSwgc2l6ZV90IGFyciwgc2l6ZV90IGNvdW50LCBzaXplX3QgKnNpemUpCj4g
PiAgICAgICAoKHR5cGVvZihwdHIpKSgodW5zaWduZWQgbG9uZykocHRyKSB8IF9fYml0cykpOyAg
ICAgICAgICAgICAgICAgXAo+ID4gIH0pCj4gPiAgCj4gPiAtI2RlZmluZSBwdHJfY291bnRfZGVj
KHBfcHRyKSBkbyB7ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAo+ID4gLSAg
ICAgdHlwZW9mKHBfcHRyKSBfX3AgPSAocF9wdHIpOyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIFwKPiA+IC0gICAgIHVuc2lnbmVkIGxvbmcgX192ID0gKHVuc2lnbmVkIGxvbmcp
KCpfX3ApOyAgICAgICAgICAgICAgICAgICAgICBcCj4gPiAtICAgICAqX19wID0gKHR5cGVvZigq
cF9wdHIpKSgtLV9fdik7ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAo+ID4gLX0g
d2hpbGUgKDApCj4gPiAtCj4gPiAtI2RlZmluZSBwdHJfY291bnRfaW5jKHBfcHRyKSBkbyB7ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAo+ID4gLSAgICAgdHlwZW9mKHBfcHRy
KSBfX3AgPSAocF9wdHIpOyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFwKPiA+
IC0gICAgIHVuc2lnbmVkIGxvbmcgX192ID0gKHVuc2lnbmVkIGxvbmcpKCpfX3ApOyAgICAgICAg
ICAgICAgICAgICAgICBcCj4gPiAtICAgICAqX19wID0gKHR5cGVvZigqcF9wdHIpKSgrK19fdik7
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAo+ID4gLX0gd2hpbGUgKDApCj4gPiAr
I2RlZmluZSBwdHJfZGVjKHB0cikgKHsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBcCj4gPiArICAgICB1bnNpZ25lZCBsb25nIF9fdiA9ICh1bnNp
Z25lZCBsb25nKShwdHIpOyAgICAgICAgICAgICAgICAgICAgICAgXAo+ID4gKyAgICAgKHR5cGVv
ZihwdHIpKShfX3YgLSAxKTsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IFwKPiA+ICt9KQo+ID4gKwo+ID4gKyNkZWZpbmUgcHRyX2luYyhwdHIpICh7ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAo+ID4gKyAgICAgdW5z
aWduZWQgbG9uZyBfX3YgPSAodW5zaWduZWQgbG9uZykocHRyKTsgICAgICAgICAgICAgICAgICAg
ICAgIFwKPiA+ICsgICAgICh0eXBlb2YocHRyKSkoX192ICsgMSk7ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBcCj4gPiArfSkKPiAKPiBTaG91bGQgd2UgYWRkIEdFTV9E
RUJVR19XQVJOX09OIGlmIHdlIG92ZXJmbG93IG9yIGRvIHdlCj4gZGV0ZWN0IHRocm91Z2ggb3Ro
ZXIgbWVhbnM/CgpXaGF0J3MgYW4gb3ZlcmZsb3c/IFdoYXQncyB0aGUgYWxpZ25tZW50IG9mIHRo
ZSB0YXJnZXQgcG9pbnRlcj8gUGVyaGFwcwp0aGUgdXNlciBpbnRlbmRlZCB0aGF0IGV2ZXJ5IDgg
dXNlcyBzdGFydHMgYXQgdGhlIG5leHQgbG9jYXRpb24uIFRoYXQncwpub3Qga25vd24gYXQgdGhp
cyBiYXNpYyBsZXZlbC4gQW5kIHRoZXNlIGFyZSBkZWNpZGVkbHkKdXNlLWF0LXlvdS1vd24tcmlz
ayA6KQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
