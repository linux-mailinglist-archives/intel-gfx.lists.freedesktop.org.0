Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7C9205588
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 17:09:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA4DD6E445;
	Tue, 23 Jun 2020 15:09:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 536EB6E445
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 15:09:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id A1DD641433;
 Tue, 23 Jun 2020 17:09:16 +0200 (CEST)
Authentication-Results: ste-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=jRueysaD; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level: 
X-Spam-Status: No, score=-2.099 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, URIBL_BLOCKED=0.001]
 autolearn=ham autolearn_force=no
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RhDSyiSMzefs; Tue, 23 Jun 2020 17:09:15 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id EF3B741050;
 Tue, 23 Jun 2020 17:09:14 +0200 (CEST)
Received: from localhost.localdomain (unknown [134.134.139.83])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 17342362166;
 Tue, 23 Jun 2020 17:09:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1592924954; bh=5qRGQAXu2xCtYEFaHKXrjfKYfbTy56GkaZB4TUXZC4Q=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=jRueysaDtZjKpsiTavT4LCvtUjEnVNrV//6Fbyv8VYhvTCcGl9BQny/rIHJJkUhNS
 KEkUwmIoBK+Dhoot6LQy4VUaZBc2wB1esNu3jjleu4/ryIsDPtjbljSTH8Ab8HIX1J
 wBMFnPmpeqWg+gkrXvypWVWQ/xUJTyP6rzEeNlKQ=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200622095921.15530-1-chris@chris-wilson.co.uk>
 <20200622095921.15530-7-chris@chris-wilson.co.uk>
 <1712fc5b-9b1e-0632-13c0-e0bc2c1d889d@shipmail.org>
 <e05ef872-8659-2a11-5c89-c42cf080905b@shipmail.org>
 <159292086189.10607.10450244252436195167@build.alporthouse.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <3ea271d6-3101-62e0-8fb6-d433ba78ff17@shipmail.org>
Date: Tue, 23 Jun 2020 17:09:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <159292086189.10607.10450244252436195167@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/gem: Acquire all vma/objects
 under reservation_ww_class
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

Ck9uIDYvMjMvMjAgNDowMSBQTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgVGhvbWFz
IEhlbGxzdHLDtm0gKEludGVsKSAoMjAyMC0wNi0yMyAxMzo1NzowNikKPj4gT24gNi8yMy8yMCAx
OjIyIFBNLCBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpIHdyb3RlOgo+Pj4gSGksIENocmlzLAo+
Pj4KPj4+IE9uIDYvMjIvMjAgMTE6NTkgQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPj4+PiBJbiBv
cmRlciB0byBhY3R1YWxseSBoYW5kbGUgZXZpY3Rpb24gYW5kIHdoYXQgbm90LCB3ZSBuZWVkIHRv
IHByb2Nlc3MKPj4+PiBhbGwgdGhlIG9iamVjdHMgdG9nZXRoZXIgdW5kZXIgYSBjb21tb24gbG9j
aywgcmVzZXJ2YXRpb25fd3dfY2xhc3MuIEFzCj4+Pj4gc3VjaCwgZG8gYSBtZW1vcnkgcmVzZXJ2
YXRpb24gcGFzcyBhZnRlciBsb29raW5nIHVwIHRoZSBvYmplY3Qvdm1hLAo+Pj4+IHdoaWNoIHRo
ZW4gZmVlZHMgaW50byB0aGUgcmVzdCBvZiBleGVjYnVmIFtyZWxvY2F0aW9uLCBjbWRwYXJzaW5n
LAo+Pj4+IGZsdXNoaW5nIGFuZCBvZmMgZXhlY3V0aW9uXS4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+Pj4+IC0tLQo+Pj4+
ICDCoCAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmPCoMKgwqAgfCA5
MSArKysrKysrKysrKysrKy0tLS0tCj4+Pj4gIMKgIDEgZmlsZSBjaGFuZ2VkLCA3MCBpbnNlcnRp
b25zKCspLCAyMSBkZWxldGlvbnMoLSkKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCj4+Pj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCj4+Pj4gaW5kZXggNDZmY2JkZjgxNjFj
Li44ZGIyZTAxMzQ2NWYgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKPj4+PiBAQCAtNTMsMTAgKzUzLDkgQEAgc3RydWN0IGVi
X3ZtYV9hcnJheSB7Cj4+Pj4gIMKgIMKgICNkZWZpbmUgX19FWEVDX09CSkVDVF9IQVNfUElOwqDC
oMKgwqDCoMKgwqAgQklUKDMxKQo+Pj4+ICDCoCAjZGVmaW5lIF9fRVhFQ19PQkpFQ1RfSEFTX0ZF
TkNFwqDCoMKgwqDCoMKgwqAgQklUKDMwKQo+Pj4+IC0jZGVmaW5lIF9fRVhFQ19PQkpFQ1RfSEFT
X1BBR0VTwqDCoMKgwqDCoMKgwqAgQklUKDI5KQo+Pj4+IC0jZGVmaW5lIF9fRVhFQ19PQkpFQ1Rf
TkVFRFNfTUFQwqDCoMKgwqDCoMKgwqAgQklUKDI4KQo+Pj4+IC0jZGVmaW5lIF9fRVhFQ19PQkpF
Q1RfTkVFRFNfQklBU8KgwqDCoCBCSVQoMjcpCj4+Pj4gLSNkZWZpbmUgX19FWEVDX09CSkVDVF9J
TlRFUk5BTF9GTEFHU8KgwqDCoCAofjB1IDw8IDI3KSAvKiBhbGwgb2YgdGhlCj4+Pj4gYWJvdmUg
Ki8KPj4+PiArI2RlZmluZSBfX0VYRUNfT0JKRUNUX05FRURTX01BUMKgwqDCoMKgwqDCoMKgIEJJ
VCgyOSkKPj4+PiArI2RlZmluZSBfX0VYRUNfT0JKRUNUX05FRURTX0JJQVPCoMKgwqAgQklUKDI4
KQo+Pj4+ICsjZGVmaW5lIF9fRVhFQ19PQkpFQ1RfSU5URVJOQUxfRkxBR1PCoMKgwqAgKH4wdSA8
PCAyOCkgLyogYWxsIG9mIHRoZQo+Pj4+IGFib3ZlICovCj4+Pj4gIMKgIMKgICNkZWZpbmUgX19F
WEVDX0hBU19SRUxPQ8KgwqDCoCBCSVQoMzEpCj4+Pj4gIMKgICNkZWZpbmUgX19FWEVDX0lOVEVS
TkFMX0ZMQUdTwqDCoMKgICh+MHUgPDwgMzEpCj4+Pj4gQEAgLTI0MSw2ICsyNDAsOCBAQCBzdHJ1
Y3QgaTkxNV9leGVjYnVmZmVyIHsKPj4+PiAgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfY29udGV4
dCAqY29udGV4dDsgLyogbG9naWNhbCBzdGF0ZSBmb3IgdGhlIHJlcXVlc3QgKi8KPj4+PiAgwqDC
oMKgwqDCoCBzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqZ2VtX2NvbnRleHQ7IC8qKiBjYWxsZXIn
cyBjb250ZXh0ICovCj4+Pj4gIMKgICvCoMKgwqAgc3RydWN0IGRtYV9mZW5jZSAqbW1fZmVuY2U7
Cj4+Pj4gKwo+Pj4+ICDCoMKgwqDCoMKgIHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJlcXVlc3Q7IC8q
KiBvdXIgcmVxdWVzdCB0byBidWlsZCAqLwo+Pj4+ICDCoMKgwqDCoMKgIHN0cnVjdCBlYl92bWEg
KmJhdGNoOyAvKiogaWRlbnRpdHkgb2YgdGhlIGJhdGNoIG9iai92bWEgKi8KPj4+PiAgwqDCoMKg
wqDCoCBzdHJ1Y3QgaTkxNV92bWEgKnRyYW1wb2xpbmU7IC8qKiB0cmFtcG9saW5lIHVzZWQgZm9y
IGNoYWluaW5nICovCj4+Pj4gQEAgLTMzMSwxMiArMzMyLDcgQEAgc3RhdGljIGlubGluZSB2b2lk
IGViX3VucmVzZXJ2ZV92bWEoc3RydWN0Cj4+Pj4gZWJfdm1hICpldikKPj4+PiAgwqDCoMKgwqDC
oCBpZiAoZXYtPmZsYWdzICYgX19FWEVDX09CSkVDVF9IQVNfUElOKQo+Pj4+ICDCoMKgwqDCoMKg
wqDCoMKgwqAgX19pOTE1X3ZtYV91bnBpbih2bWEpOwo+Pj4+ICDCoCAtwqDCoMKgIGlmIChldi0+
ZmxhZ3MgJiBfX0VYRUNfT0JKRUNUX0hBU19QQUdFUykKPj4+PiAtwqDCoMKgwqDCoMKgwqAgaTkx
NV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKHZtYS0+b2JqKTsKPj4+PiAtCj4+Pj4gLcKgwqDCoCBl
di0+ZmxhZ3MgJj0gfihfX0VYRUNfT0JKRUNUX0hBU19QSU4gfAo+Pj4+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIF9fRVhFQ19PQkpFQ1RfSEFTX0ZFTkNFIHwKPj4+PiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBfX0VYRUNfT0JKRUNUX0hBU19QQUdFUyk7Cj4+Pj4gK8KgwqDC
oCBldi0+ZmxhZ3MgJj0gfihfX0VYRUNfT0JKRUNUX0hBU19QSU4gfCBfX0VYRUNfT0JKRUNUX0hB
U19GRU5DRSk7Cj4+Pj4gIMKgIH0KPj4+PiAgwqAgwqAgc3RhdGljIHZvaWQgZWJfdm1hX2FycmF5
X2Rlc3Ryb3koc3RydWN0IGtyZWYgKmtyZWYpCj4+Pj4gQEAgLTY2Nyw2ICs2NjMsNTUgQEAgZWJf
YWRkX3ZtYShzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiwKPj4+PiAgwqDCoMKgwqDCoCBsaXN0
X2FkZF90YWlsKCZldi0+bG9ja19saW5rLCAmZWItPmxvY2spOwo+Pj4+ICDCoCB9Cj4+Pj4gIMKg
ICtzdGF0aWMgaW50IGViX3ZtYV9nZXRfcGFnZXMoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIs
Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZWJfdm1hICpldiwK
Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHU2NCBpZHgpCj4+Pj4gK3sKPj4+
PiArwqDCoMKgIHN0cnVjdCBpOTE1X3ZtYSAqdm1hID0gZXYtPnZtYTsKPj4+PiArwqDCoMKgIGlu
dCBlcnI7Cj4+Pj4gKwo+Pj4+ICvCoMKgwqAgLyogWFhYIGFsc28gcHJlYWxsb2NhdGUgUEQgZm9y
IHZtYSAqLwo+Pj4+ICsKPj4+PiArwqDCoMKgIGVyciA9IF9fX19pOTE1X2dlbV9vYmplY3RfZ2V0
X3BhZ2VzX2FzeW5jKHZtYS0+b2JqKTsKPj4+PiArwqDCoMKgIGlmIChlcnIpCj4+Pj4gK8KgwqDC
oMKgwqDCoMKgIHJldHVybiBlcnI7Cj4+Pj4gKwo+Pj4+ICvCoMKgwqAgcmV0dXJuIGk5MTVfYWN0
aXZlX3JlZigmdm1hLT5vYmotPm1tLmFjdGl2ZSwgaWR4LCBlYi0+bW1fZmVuY2UpOwo+Pj4+ICt9
Cj4+Pj4gKwo+Pj4+ICtzdGF0aWMgaW50IGViX3Jlc2VydmVfbW0oc3RydWN0IGk5MTVfZXhlY2J1
ZmZlciAqZWIpCj4+Pj4gK3sKPj4+PiArwqDCoMKgIGNvbnN0IHU2NCBpZHggPSBlYi0+Y29udGV4
dC0+dGltZWxpbmUtPmZlbmNlX2NvbnRleHQ7Cj4+Pj4gK8KgwqDCoCBzdHJ1Y3Qgd3dfYWNxdWly
ZV9jdHggYWNxdWlyZTsKPj4+PiArwqDCoMKgIHN0cnVjdCBlYl92bWEgKmV2Owo+Pj4+ICvCoMKg
wqAgaW50IGVycjsKPj4+PiArCj4+Pj4gK8KgwqDCoCBlYi0+bW1fZmVuY2UgPSBfX2RtYV9mZW5j
ZV9jcmVhdGVfcHJveHkoMCwgMCk7Cj4+Pj4gK8KgwqDCoCBpZiAoIWViLT5tbV9mZW5jZSkKPj4+
PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FTk9NRU07Cj4+PiBRdWVzdGlvbjogZWIgaXMgbG9j
YWwgdG8gdGhpcyB0aHJlYWQsIHJpZ2h0LCBzbyBlYi0+bW1fZmVuY2UgaXMgbm90Cj4+PiBjb25z
aWRlcmVkICJwdWJsaXNoZWQiIHlldD8KPj4+Cj4+Pj4gKwo+Pj4+ICvCoMKgwqAgd3dfYWNxdWly
ZV9pbml0KCZhY3F1aXJlLCAmcmVzZXJ2YXRpb25fd3dfY2xhc3MpOwo+Pj4+ICsKPj4+PiArwqDC
oMKgIGVyciA9IGViX2xvY2tfdm1hKGViLCAmYWNxdWlyZSk7Cj4+Pj4gK8KgwqDCoCBpZiAoZXJy
KQo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBnb3RvIG91dDsKPj4+PiArCj4+Pj4gK8KgwqDCoCB3d19h
Y3F1aXJlX2RvbmUoJmFjcXVpcmUpOwo+Pj4+ICsKPj4+PiArwqDCoMKgIGxpc3RfZm9yX2VhY2hf
ZW50cnkoZXYsICZlYi0+bG9jaywgbG9ja19saW5rKSB7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHN0
cnVjdCBpOTE1X3ZtYSAqdm1hID0gZXYtPnZtYTsKPj4+PiArCj4+Pj4gK8KgwqDCoMKgwqDCoMKg
IGlmIChlcnIgPT0gMCkKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlcnIgPSBlYl92bWFf
Z2V0X3BhZ2VzKGViLCBldiwgaWR4KTsKPj4+IEkgZmlndXJlIHRoaXMgaXMgd2hlcmUgeW91IHB1
Ymxpc2ggdGhlIHByb3h5IGZlbmNlPyBJZiBzbywgdGhlIGZlbmNlCj4+PiBzaWduYWxpbmcgY3Jp
dGljYWwgcGF0aCBzdGFydHMgd2l0aCB0aGlzIGxvb3AsIGFuZCB0aGF0IG1lYW5zIGFueSBjb2Rl
Cj4+PiB3ZSBjYWxsIGJldHdlZW4gaGVyZSBhbmQgc3VibWlzc2lvbiBjb21wbGV0ZSAoaW5jbHVk
aW5nIHNwYXduZWQgd29yawo+Pj4gd2UgbmVlZCB0byB3YWl0IGZvciBiZWZvcmUgc3VibWlzc2lv
bikgbWF5IG5vdCBsb2NrIHRoZQo+Pj4gcmVzZXJ2YXRpb25fd3dfY2xhc3Mgbm9yIChzdGlsbCBi
ZWluZyBkaXNjdXNzZWQpIGFsbG9jYXRlIG1lbW9yeS4KPiBZZXMsIGF0IHRoaXMgcG9pbnQgd2Ug
aGF2ZSByZXNlcnZlZCB0aGUgbWVtb3J5IGZvciB0aGUgZXhlY2J1Zi4KPgo+Pj4gSXQKPj4+IGxv
b2tzIGxpa2UgaTkxNV9waW5fdm1hIHRha2VzIGEgcmVzZXJ2YXRpb25fd3dfY2xhc3MuIEFuZCBh
bGwgbWVtb3J5Cj4+PiBwaW5uaW5nIHNlZW1zIHRvIGJlIGluIHRoZSBmZW5jZSBjcml0aWNhbCBw
YXRoIGFzIHdlbGw/Cj4gQ29ycmVjdCwgaXQncyBub3QgbWVhbnQgdG8gYmUgd2FpdGluZyBpbnNp
ZGUgaTkxNV92bWFfcGluKCk7IHRoZQo+IGludGVudGlvbiB3YXMgdG8gcGFzcyBpbiBtZW1vcnks
IGFuZCB0aGVuIHdlIHdvdWxkIG5vdCBuZWVkIHRvCj4gZG8gdGhlIGFjcXVpcmUgb3Vyc2VsdmVz
LiBBcyB3ZSBoYXZlIGp1c3QgcmVzZXJ2ZWQgdGhlIG1lbW9yeSBpbiB0aGUKPiBhYm92ZSBsb29w
LCB0aGlzIHNob3VsZCBub3QgYmUgYW4gaXNzdWUuIEkgd2FzIHRyeWluZyB0byBrZWVwIHRoZQo+
IGNoYW5nZSBtaW5pbWFsIGFuZCBhbGxvdyBpbmNyZW1lbnRhbCBjb252ZXJzaW9ucy4gSXQgZG9l
cyBob3dldmVyIG5lZWQKPiB0byBhZGQgYSByZWZlcmVuY2UgdG8gdGhlIG9iamVjdCBmb3IgdGhl
IHdvcmsgaXQgc3Bhd25zIC0tIGVxdWFsbHkKPiB0aG91Z2ggdGhlcmUgaXMgYW4gYXN5bmMgZXZp
Y3Rpb24gcGFzcyBsYXRlciBpbiBleGVjYnVmLiBUaGUgY2hhbGxlbmdlCj4gaGVyZSBpcyB0aGF0
IHRoZSBncmVlZHkgZ3JhYiBvZiBib3VuZCB2bWEgaXMgZmFzdGVyIHRoYW4gZG9pbmcgdGhlCj4g
dW5ib3VuZCBldmljdGlvbiBoYW5kbGluZyAoZXZlbiB3aGVuIGV2aWN0aW9uIGlzIG5vdCByZXF1
aXJlZCkuCgpTbyBmb3IgdGhlIGk5MTVfdm1hX3BpbiwgaXQgbG9va3MgbGlrZQoKZmVuY2VfY3Jp
dGljYWxfc3RhcnQoZWJfcmVzZXJ2ZV9tbSkgLT4gCmRtYV9yZXN2X2xvY2tfaW50ZXJydXB0aWJs
ZShpOTE1X3ZtYV9waW4pIC0+IGxvY2tkZXAgaXNzdWUuCgpZb3UgY2FuJ3QgdGFrZSB0aGUgZG1h
X3Jlc3ZfbG9jayBpbnNpZGUgYSBmZW5jZSBjcml0aWNhbCBzZWN0aW9uLgoKQW5kIGZvciB0aGUg
bWVtb3J5IGFsbG9jYXRpb24sIGl0IGxvb2tzIGxpa2UgdGhlIGZlbmNlIGlzIHB1Ymxpc2hlZCBp
biAKdGhlIGZpcnN0IGxvb3AgaXRlcmF0aW9uLCBzdGFydGluZyB0aGUgY3JpdGljYWwgc2VjdGlv
biwgbWVhbmluZyB0aGF0IAphbnkgbWVtb3J5IGFsbG9jYXRpb24gdGhhdCBmb2xsb3dzIHdpbGwg
Y2F1c2UgYSBsb2NrZGVwIGlzc3VlLiBUaGF0IAppbmNsdWRlcyB3b3JrZXIgdGhyZWFkcy4gKHdp
dGggdGhlIHByb3Bvc2VkIGRtYV9mZW5jZSBhbm5vdGF0aW9ucykuCgo+Cj4+IEFuZCBJIHRoaW5r
IGV2ZW4gaWYgd2UgYXQgc29tZSBwb2ludCBlbmQgdXAgd2l0aCB0aGUgYWxsb2NhdGlvbgo+PiBh
bm5vdGF0aW9uIHRoZSBvdGhlciB3YXkgYXJvdW5kLCBhbGxvd2luZyBtZW1vcnkgYWxsb2NhdGlv
bnMgaW4gZmVuY2UKPj4gc2lnbmFsbGluZyBjcml0aWNhbCBwYXRocywgYm90aCByZWxvY2F0aW9u
cyBhbmQgdXNlcnBvaW50ZXIgd291bGQgY2F1c2UKPj4gbG9ja2RlcCBwcm9ibGVtcyBiZWNhdXNl
IG9mCj4+Cj4+IG1tYXBfc2VtLT5yZXNlcnZhdGlvbl9vYmplY3QtPmZlbmNlX3dhaXQgKGZhdWx0
IGhhbmRsZXJzLCBsb2NrZGVwIHByaW1pbmcpCj4gV2UgZG9uJ3Qgd2FpdCBpbnNpZGUgbW1hcF9z
ZW0uIE9uZSBjYW5ub3QsIHlvdSBkbyBub3Qga25vdyB0aGUgbG9ja2luZwo+IGNvbnRleHQsIHNv
IHlvdSBjYW4gb25seSB0cnkgdG8gcmVjbGFpbSBpZGxlIHNwYWNlLiBTbyB5b3UgZW5kIHVwIHdp
dGgKPiB0aGUgaXNzdWUgb2YgYSBtdWx0aXR1ZGUgb2YgdGhyZWFkcyBlYWNoIHRyeWluZyB0byBj
bGFpbSB0aGUgbGFzdCBzbGljZQo+IG9mIHRoZSBhcGVydHVyZS9iYWNraW5nIHN0b3JhZ2UsIG5v
dCBiZWluZyBhYmxlIHRvIGRpcmVjdGx5IHJlY2xhaW0gYW5kCj4gc28gaGF2ZSB0byBoaXQgdGhl
IGVxdWl2YWxlbnQgb2Yga3N3YXBkLgoKSSBkb24ndCB0aGluayBJIGZvbGxvdyB5b3UgaGVyZS4g
VGhlcmUgYXJlIGEgbnVtYmVyIG9mIGRyaXZlcnMgdGhhdCB3YWl0IApmb3IgZG1hX2ZlbmNlcyBp
bnNpZGUgdGhlIGZhdWx0IGhhbmRsZXJzIHdpdGggbW1hcF9zZW0gaGVsZCBmb3IgZGF0YSB0byAK
YmUgbWlncmF0ZWQgYmVmb3JlIHRoZSBwdGUgaXMgc2V0IHVwLgoKPgo+PiB2cwo+PiBmZW5jZV9j
cml0aWNhbC0+Z3VwL2NvcHlfZnJvbV91c2VyLT5tbWFwX3NlbQo+IFdoaWNoIGV4aXN0cyB0b2Rh
eSwgZXZlbiB0aGUgYnVzeSB3YWl0IGxvb3AgaXMgaW1wbGljaXQgbGlua2FnZTsgeW91IG9ubHkK
PiBuZWVkIHVzZXJzcGFjZSB0byBiZSBob2xkaW5nIGEgcmVzb3VyY2Ugb24gdGhlIGdwdSB0byBj
cmVhdGUgdGhlIGRlYWRsb2NrLgo+IEkndmUgYmVlbiB1c2luZyB0aGUgdXNlcmZhdWx0IGhhbmRs
ZXIgdG8gZGV2ZWxvcCB0ZXN0IGNhc2VzIHdoZXJlIHdlIGNhbgo+IGFyYml0cmFyaWx5IGJsb2Nr
IHRoZSB1c2VycHRyLgoKWWVzIGJ1dCBpbiBhIGNhc2Ugd2hlcmUgd2UgZG9uJ3QgcHVibGlzaCB0
aGUgZmVuY2UgZWFybHksIHRoZSBhYm92ZSAKd291bGQgYmUgcmVkdWNlZCB0byB0aGUgd2VsbCBr
bm93biByZXNlcnZhdGlvbl93d19jbGFzcyB2cyBtbWFwX3NlbSAKbG9ja2RlcCBpc3N1ZSwgd2hp
Y2ggb3RoZXIgZHJpdmVycyBzZWVtIHRvIGhhdmUgc29sdmVkIGFuZCB3ZSBjb3VsZCBjb3B5IAp3
aGF0IHRoZXkndmUgZG9uZS4KCi9UaG9tYXMKCgoKCj4gLUNocmlzCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
