Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2459207064
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 11:50:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DA566EABE;
	Wed, 24 Jun 2020 09:50:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa2.bahnhof.se (pio-pvt-msa2.bahnhof.se [79.136.2.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C11556EABE
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 09:50:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 3D9653F449;
 Wed, 24 Jun 2020 11:50:11 +0200 (CEST)
Authentication-Results: pio-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=RjBINTnv; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level: 
X-Spam-Status: No, score=-2.099 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, URIBL_BLOCKED=0.001]
 autolearn=ham autolearn_force=no
Received: from pio-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sR7qoICB_UBU; Wed, 24 Jun 2020 11:50:10 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id D98AB3F3AC;
 Wed, 24 Jun 2020 11:50:09 +0200 (CEST)
Received: from localhost.localdomain (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 36906360168;
 Wed, 24 Jun 2020 11:50:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1592992209; bh=6H0mf8mfLqI4lEZ8FsLDRMd2lBctyZ/lwD/Pb3O83Ic=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=RjBINTnvFfCuR4V5DCjwhj1SWtLzSwSy12aYSlMZzLYgsK//udMuQederi+U0ZlhF
 mQF+lZN3+SzxcCvpBHCNkyF69GDmQ6z3EvcKL64Lg+UE8ieKrH9UQv1TfZXJdt3E6F
 R/UgEltGq8jIYucZSTM0+X0ogFAuWSh0XYeDEhLY=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200622095921.15530-1-chris@chris-wilson.co.uk>
 <20200622095921.15530-7-chris@chris-wilson.co.uk>
 <1712fc5b-9b1e-0632-13c0-e0bc2c1d889d@shipmail.org>
 <159293017861.3967.12926784772086320588@build.alporthouse.com>
 <60e198c5-bfc1-2bc6-05a3-487763f7a609@shipmail.org>
 <159293768060.3967.16328770521784351822@build.alporthouse.com>
 <88f746c6-c6ad-8c19-7797-856ac6bb2f50@shipmail.org>
 <159294690652.3967.16801810632630360943@build.alporthouse.com>
 <ef797b36-22e9-887b-dca4-5a845c60aed7@shipmail.org>
 <159298610762.26399.7546337779632693043@build.alporthouse.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <5c3295d2-2527-0b0f-8aed-2489204c2722@shipmail.org>
Date: Wed, 24 Jun 2020 11:50:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <159298610762.26399.7546337779632693043@build.alporthouse.com>
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

Ck9uIDYvMjQvMjAgMTA6MDggQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFRob21h
cyBIZWxsc3Ryw7ZtIChJbnRlbCkgKDIwMjAtMDYtMjQgMDY6NDI6MzMpCj4+IE9uIDYvMjMvMjAg
MTE6MTUgUE0sIENocmlzIFdpbHNvbiB3cm90ZToKPj4+IFF1b3RpbmcgVGhvbWFzIEhlbGxzdHLD
tm0gKEludGVsKSAoMjAyMC0wNi0yMyAyMTozMTozOCkKPj4+PiBPbiA2LzIzLzIwIDg6NDEgUE0s
IENocmlzIFdpbHNvbiB3cm90ZToKPj4+Pj4gUXVvdGluZyBUaG9tYXMgSGVsbHN0csO2bSAoSW50
ZWwpICgyMDIwLTA2LTIzIDE5OjIxOjI4KQo+Pj4+Pj4gT24gNi8yMy8yMCA2OjM2IFBNLCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4+Pj4+Pj4gUXVvdGluZyBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwp
ICgyMDIwLTA2LTIzIDEyOjIyOjExKQo+Pj4+Pj4+PiBIaSwgQ2hyaXMsCj4+Pj4+Pj4+Cj4+Pj4+
Pj4+IE9uIDYvMjIvMjAgMTE6NTkgQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPj4+Pj4+Pj4+IElu
IG9yZGVyIHRvIGFjdHVhbGx5IGhhbmRsZSBldmljdGlvbiBhbmQgd2hhdCBub3QsIHdlIG5lZWQg
dG8gcHJvY2Vzcwo+Pj4+Pj4+Pj4gYWxsIHRoZSBvYmplY3RzIHRvZ2V0aGVyIHVuZGVyIGEgY29t
bW9uIGxvY2ssIHJlc2VydmF0aW9uX3d3X2NsYXNzLiBBcwo+Pj4+Pj4+Pj4gc3VjaCwgZG8gYSBt
ZW1vcnkgcmVzZXJ2YXRpb24gcGFzcyBhZnRlciBsb29raW5nIHVwIHRoZSBvYmplY3Qvdm1hLAo+
Pj4+Pj4+Pj4gd2hpY2ggdGhlbiBmZWVkcyBpbnRvIHRoZSByZXN0IG9mIGV4ZWNidWYgW3JlbG9j
YXRpb24sIGNtZHBhcnNpbmcsCj4+Pj4+Pj4+PiBmbHVzaGluZyBhbmQgb2ZjIGV4ZWN1dGlvbl0u
Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4+Pj4+Pj4+PiAtLS0KPj4+Pj4+Pj4+ICAgICAgIC4uLi9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyAgICB8IDkxICsrKysrKysrKysrKysr
LS0tLS0KPj4+Pj4+Pj4+ICAgICAgIDEgZmlsZSBjaGFuZ2VkLCA3MCBpbnNlcnRpb25zKCspLCAy
MSBkZWxldGlvbnMoLSkKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKPj4+Pj4+Pj4+IGluZGV4IDQ2ZmNiZGY4MTYx
Yy4uOGRiMmUwMTM0NjVmIDEwMDY0NAo+Pj4+Pj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwo+Pj4+Pj4+Pj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwo+Pj4+Pj4+Pj4gQEAgLTUzLDEwICs1
Myw5IEBAIHN0cnVjdCBlYl92bWFfYXJyYXkgewo+Pj4+Pj4+Pj4gICAgICAgCj4+Pj4+Pj4+PiAg
ICAgICAjZGVmaW5lIF9fRVhFQ19PQkpFQ1RfSEFTX1BJTiAgICAgICAgICAgICAgIEJJVCgzMSkK
Pj4+Pj4+Pj4+ICAgICAgICNkZWZpbmUgX19FWEVDX09CSkVDVF9IQVNfRkVOQ0UgICAgICAgICAg
ICAgQklUKDMwKQo+Pj4+Pj4+Pj4gLSNkZWZpbmUgX19FWEVDX09CSkVDVF9IQVNfUEFHRVMgICAg
ICAgICAgICAgIEJJVCgyOSkKPj4+Pj4+Pj4+IC0jZGVmaW5lIF9fRVhFQ19PQkpFQ1RfTkVFRFNf
TUFQICAgICAgICAgICAgICBCSVQoMjgpCj4+Pj4+Pj4+PiAtI2RlZmluZSBfX0VYRUNfT0JKRUNU
X05FRURTX0JJQVMgICAgIEJJVCgyNykKPj4+Pj4+Pj4+IC0jZGVmaW5lIF9fRVhFQ19PQkpFQ1Rf
SU5URVJOQUxfRkxBR1MgKH4wdSA8PCAyNykgLyogYWxsIG9mIHRoZSBhYm92ZSAqLwo+Pj4+Pj4+
Pj4gKyNkZWZpbmUgX19FWEVDX09CSkVDVF9ORUVEU19NQVAgICAgICAgICAgICAgIEJJVCgyOSkK
Pj4+Pj4+Pj4+ICsjZGVmaW5lIF9fRVhFQ19PQkpFQ1RfTkVFRFNfQklBUyAgICAgQklUKDI4KQo+
Pj4+Pj4+Pj4gKyNkZWZpbmUgX19FWEVDX09CSkVDVF9JTlRFUk5BTF9GTEFHUyAofjB1IDw8IDI4
KSAvKiBhbGwgb2YgdGhlIGFib3ZlICovCj4+Pj4+Pj4+PiAgICAgICAKPj4+Pj4+Pj4+ICAgICAg
ICNkZWZpbmUgX19FWEVDX0hBU19SRUxPQyAgICBCSVQoMzEpCj4+Pj4+Pj4+PiAgICAgICAjZGVm
aW5lIF9fRVhFQ19JTlRFUk5BTF9GTEFHUyAgICAgICAofjB1IDw8IDMxKQo+Pj4+Pj4+Pj4gQEAg
LTI0MSw2ICsyNDAsOCBAQCBzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyIHsKPj4+Pj4+Pj4+ICAgICAg
ICAgICBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY29udGV4dDsgLyogbG9naWNhbCBzdGF0ZSBmb3Ig
dGhlIHJlcXVlc3QgKi8KPj4+Pj4+Pj4+ICAgICAgICAgICBzdHJ1Y3QgaTkxNV9nZW1fY29udGV4
dCAqZ2VtX2NvbnRleHQ7IC8qKiBjYWxsZXIncyBjb250ZXh0ICovCj4+Pj4+Pj4+PiAgICAgICAK
Pj4+Pj4+Pj4+ICsgICAgIHN0cnVjdCBkbWFfZmVuY2UgKm1tX2ZlbmNlOwo+Pj4+Pj4+Pj4gKwo+
Pj4+Pj4+Pj4gICAgICAgICAgIHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJlcXVlc3Q7IC8qKiBvdXIg
cmVxdWVzdCB0byBidWlsZCAqLwo+Pj4+Pj4+Pj4gICAgICAgICAgIHN0cnVjdCBlYl92bWEgKmJh
dGNoOyAvKiogaWRlbnRpdHkgb2YgdGhlIGJhdGNoIG9iai92bWEgKi8KPj4+Pj4+Pj4+ICAgICAg
ICAgICBzdHJ1Y3QgaTkxNV92bWEgKnRyYW1wb2xpbmU7IC8qKiB0cmFtcG9saW5lIHVzZWQgZm9y
IGNoYWluaW5nICovCj4+Pj4+Pj4+PiBAQCAtMzMxLDEyICszMzIsNyBAQCBzdGF0aWMgaW5saW5l
IHZvaWQgZWJfdW5yZXNlcnZlX3ZtYShzdHJ1Y3QgZWJfdm1hICpldikKPj4+Pj4+Pj4+ICAgICAg
ICAgICBpZiAoZXYtPmZsYWdzICYgX19FWEVDX09CSkVDVF9IQVNfUElOKQo+Pj4+Pj4+Pj4gICAg
ICAgICAgICAgICAgICAgX19pOTE1X3ZtYV91bnBpbih2bWEpOwo+Pj4+Pj4+Pj4gICAgICAgCj4+
Pj4+Pj4+PiAtICAgICBpZiAoZXYtPmZsYWdzICYgX19FWEVDX09CSkVDVF9IQVNfUEFHRVMpCj4+
Pj4+Pj4+PiAtICAgICAgICAgICAgIGk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdlcyh2bWEtPm9i
aik7Cj4+Pj4+Pj4+PiAtCj4+Pj4+Pj4+PiAtICAgICBldi0+ZmxhZ3MgJj0gfihfX0VYRUNfT0JK
RUNUX0hBU19QSU4gfAo+Pj4+Pj4+Pj4gLSAgICAgICAgICAgICAgICAgICAgX19FWEVDX09CSkVD
VF9IQVNfRkVOQ0UgfAo+Pj4+Pj4+Pj4gLSAgICAgICAgICAgICAgICAgICAgX19FWEVDX09CSkVD
VF9IQVNfUEFHRVMpOwo+Pj4+Pj4+Pj4gKyAgICAgZXYtPmZsYWdzICY9IH4oX19FWEVDX09CSkVD
VF9IQVNfUElOIHwgX19FWEVDX09CSkVDVF9IQVNfRkVOQ0UpOwo+Pj4+Pj4+Pj4gICAgICAgfQo+
Pj4+Pj4+Pj4gICAgICAgCj4+Pj4+Pj4+PiAgICAgICBzdGF0aWMgdm9pZCBlYl92bWFfYXJyYXlf
ZGVzdHJveShzdHJ1Y3Qga3JlZiAqa3JlZikKPj4+Pj4+Pj4+IEBAIC02NjcsNiArNjYzLDU1IEBA
IGViX2FkZF92bWEoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsCj4+Pj4+Pj4+PiAgICAgICAg
ICAgbGlzdF9hZGRfdGFpbCgmZXYtPmxvY2tfbGluaywgJmViLT5sb2NrKTsKPj4+Pj4+Pj4+ICAg
ICAgIH0KPj4+Pj4+Pj4+ICAgICAgIAo+Pj4+Pj4+Pj4gK3N0YXRpYyBpbnQgZWJfdm1hX2dldF9w
YWdlcyhzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiwKPj4+Pj4+Pj4+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgc3RydWN0IGViX3ZtYSAqZXYsCj4+Pj4+Pj4+PiArICAgICAgICAgICAgICAg
ICAgICAgICAgIHU2NCBpZHgpCj4+Pj4+Pj4+PiArewo+Pj4+Pj4+Pj4gKyAgICAgc3RydWN0IGk5
MTVfdm1hICp2bWEgPSBldi0+dm1hOwo+Pj4+Pj4+Pj4gKyAgICAgaW50IGVycjsKPj4+Pj4+Pj4+
ICsKPj4+Pj4+Pj4+ICsgICAgIC8qIFhYWCBhbHNvIHByZWFsbG9jYXRlIFBEIGZvciB2bWEgKi8K
Pj4+Pj4+Pj4+ICsKPj4+Pj4+Pj4+ICsgICAgIGVyciA9IF9fX19pOTE1X2dlbV9vYmplY3RfZ2V0
X3BhZ2VzX2FzeW5jKHZtYS0+b2JqKTsKPj4+Pj4+Pj4+ICsgICAgIGlmIChlcnIpCj4+Pj4+Pj4+
PiArICAgICAgICAgICAgIHJldHVybiBlcnI7Cj4+Pj4+Pj4+PiArCj4+Pj4+Pj4+PiArICAgICBy
ZXR1cm4gaTkxNV9hY3RpdmVfcmVmKCZ2bWEtPm9iai0+bW0uYWN0aXZlLCBpZHgsIGViLT5tbV9m
ZW5jZSk7Cj4+Pj4+Pj4+PiArfQo+Pj4+Pj4+Pj4gKwo+Pj4+Pj4+Pj4gK3N0YXRpYyBpbnQgZWJf
cmVzZXJ2ZV9tbShzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYikKPj4+Pj4+Pj4+ICt7Cj4+Pj4+
Pj4+PiArICAgICBjb25zdCB1NjQgaWR4ID0gZWItPmNvbnRleHQtPnRpbWVsaW5lLT5mZW5jZV9j
b250ZXh0Owo+Pj4+Pj4+Pj4gKyAgICAgc3RydWN0IHd3X2FjcXVpcmVfY3R4IGFjcXVpcmU7Cj4+
Pj4+Pj4+PiArICAgICBzdHJ1Y3QgZWJfdm1hICpldjsKPj4+Pj4+Pj4+ICsgICAgIGludCBlcnI7
Cj4+Pj4+Pj4+PiArCj4+Pj4+Pj4+PiArICAgICBlYi0+bW1fZmVuY2UgPSBfX2RtYV9mZW5jZV9j
cmVhdGVfcHJveHkoMCwgMCk7Cj4+Pj4+Pj4+PiArICAgICBpZiAoIWViLT5tbV9mZW5jZSkKPj4+
Pj4+Pj4+ICsgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07Cj4+Pj4+Pj4+IFF1ZXN0aW9uOiBl
YiBpcyBsb2NhbCB0byB0aGlzIHRocmVhZCwgcmlnaHQsIHNvIGViLT5tbV9mZW5jZSBpcyBub3QK
Pj4+Pj4+Pj4gY29uc2lkZXJlZCAicHVibGlzaGVkIiB5ZXQ/Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiAr
Cj4+Pj4+Pj4+PiArICAgICB3d19hY3F1aXJlX2luaXQoJmFjcXVpcmUsICZyZXNlcnZhdGlvbl93
d19jbGFzcyk7Cj4+Pj4+Pj4+PiArCj4+Pj4+Pj4+PiArICAgICBlcnIgPSBlYl9sb2NrX3ZtYShl
YiwgJmFjcXVpcmUpOwo+Pj4+Pj4+Pj4gKyAgICAgaWYgKGVycikKPj4+Pj4+Pj4+ICsgICAgICAg
ICAgICAgZ290byBvdXQ7Cj4+Pj4+Pj4+PiArCj4+Pj4+Pj4+PiArICAgICB3d19hY3F1aXJlX2Rv
bmUoJmFjcXVpcmUpOwo+Pj4+Pj4+Pj4gKwo+Pj4+Pj4+Pj4gKyAgICAgbGlzdF9mb3JfZWFjaF9l
bnRyeShldiwgJmViLT5sb2NrLCBsb2NrX2xpbmspIHsKPj4+Pj4+Pj4+ICsgICAgICAgICAgICAg
c3RydWN0IGk5MTVfdm1hICp2bWEgPSBldi0+dm1hOwo+Pj4+Pj4+Pj4gKwo+Pj4+Pj4+Pj4gKyAg
ICAgICAgICAgICBpZiAoZXJyID09IDApCj4+Pj4+Pj4+PiArICAgICAgICAgICAgICAgICAgICAg
ZXJyID0gZWJfdm1hX2dldF9wYWdlcyhlYiwgZXYsIGlkeCk7Cj4+Pj4+Pj4+IEkgZmlndXJlIHRo
aXMgaXMgd2hlcmUgeW91IHB1Ymxpc2ggdGhlIHByb3h5IGZlbmNlPyBJZiBzbywgdGhlIGZlbmNl
Cj4+Pj4+Pj4+IHNpZ25hbGluZyBjcml0aWNhbCBwYXRoIHN0YXJ0cyB3aXRoIHRoaXMgbG9vcCwK
Pj4+Pj4+PiBIbW0sIGFjdHVhbGx5IGF0IHRoaXMgbW9tZW50LCB0aGUgZmVuY2UgaXMgc3RpbGwg
dmVyeSBtdWNoIGludGVybmFsCj4+Pj4+Pj4gYmVpbmcgb25seSB1c2VkIGFzIGEgcmVmZXJlbmNl
IHRva2VuLAo+Pj4+Pj4gSSB0aGluayBhcyBsb25nIGFzIGFub3RoZXIgdGhyZWFkLCBydW5uaW5n
IGluIHRoaXMgZHJpdmVyIG9yIGFub3RoZXIgZ3B1Cj4+Pj4+PiBkcml2ZXIgY2FuIHRoZW9yZXRp
Y2FsbHkgcmVmZXJlbmNlIHRoZSBmZW5jZSBwb2ludGVyIGZyb20gdGhlCj4+Pj4+PiByZXNlcnZh
dGlvbiBvYmplY3QgYW5kIHdhaXQgZm9yIHRoZSBmZW5jZSBpdCdzIGNvbnNpZGVyZWQgcHVibGlz
aGVkLgo+Pj4+PiBJdCdzIG5vdCBpbiB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0Lgo+Pj4+PiAgICAg
Cj4+Pj4+PiBBbHNvIHRoZSB3d19tdXRleGVzIGluIHRoaXMgY29udGV4dCBhcmUgcmVhbGx5IGFs
bCBhYm91dCBncmFiYmluZyBhCj4+Pj4+PiByYW5kb20gc2V0IG9mIHJlc291cmNlcyBhbmQgYXNz
b2NpYXRlIHRoZW0gd2l0aCBhIHBvaW50IGluIGEgdGltZWxpbmUsCj4+Pj4+PiBhcyB0aGUgd3df
bXV0ZXhlcyBhcmUgcmVsZWFzZWQsIHRoZSBmZW5jZSBwb2ludGVyKHMpIG5lZWQgdG8gcG9pbnQg
dG8KPj4+Pj4+IHB1Ymxpc2hlZCBmZW5jZShzKS4KPj4+Pj4gVGhhdCdzIG5vdCB0aGUgcHVycG9z
ZSBvZiB0aGVzZSBmZW5jZXMsIHRob3VnaC4gVGhleSBleGlzdCB0byBwcm92aWRlCj4+Pj4+IHJl
ZmVyZW5jZSBjb3VudGluZyBvbiB0aGUgYmFja2luZyBzdG9yZSwgYWxvbmcgc2lkZSB0aGUgbWln
cmF0aW9uIGZlbmNlLgo+Pj4+PiBJdCdzIGV4dHJhIGRldGFpbCB0YWNrZWQgb24gdGhlIGVxdWl2
YWxlbnQgb2YgYm8tPm1vdmluZy4KPj4+Pj4KPj4+Pj4gVGhhdCBpcyBub3QgdG8gc2F5IHRoYXQg
b25lIGNvdWxkIGJ1aWxkIHVwIGFuIGFzeW5jIG1pZ3JhdGlvbiBjaGFpbiB3aGljaAo+Pj4+PiBm
b3JtIGEgZ3JhcGggYmFjayB0byB0aGVzZSwgdGhhdCBjaGFpbiBjb3VsZCBvbmx5IGJlIGZvcm1l
ZCBvbmNlIHRoZQo+Pj4+PiBvcGVyYXRpb24gaXRzZWxmIGhhcyBiZWVuIHB1Ymxpc2hlZCBpbiB0
aGUgZG1hX3Jlc3YgdGhvdWdoLgo+Pj4+IEhtbS4gU28gbGV0J3Mgc2F5IGFub3RoZXIgdGhyZWFk
IGdyYWJzIG9uZSBvZiB0aGUganVzdCByZWxlYXNlZAo+Pj4+IHd3X211dGV4ZXMgYW5kIHdhbnRz
IHRvIHNjaGVkdWxlIGEgYmxpdCBmcm9tIG9uZSBvZiB0aGUgYnVmZmVycyBpbiB0aGUKPj4+PiBj
dXJyZW50IG9wZXJhdGlvbiB3aXRoIGhpZ2ggcHJpb3JpdHkuIEhvdyB3b3VsZCB0aGF0IHRocmVh
ZCBrbm93IGhvdyB0bwo+Pj4+IG9yZGVyIHRoYXQgYmxpdCBvcGVyYXRpb24gdyByIHQgdGhlIGN1
cnJlbnQgb3BlcmF0aW9uPwo+Pj4gV2h5IHdvdWxkIGl0IG9yZGVyPwo+PiBTbyBsZXQncyBzYXkg
aXQncyBhbiBldmljdGlvbiBibGl0LCBuZWVkaW5nIHRvIGluY29ycG9yYXRlIHRoZSBkYXRhIGZy
b20KPj4gdGhlIGN1cnJlbnQgb3BlcmF0aW9uLiBPciwgZm9yIHRoYXQgbWF0dGVyIGEgdHRtLXN0
eWxlIGNwdSBjb3B5IGV2aWN0aW9uOgo+Pgo+PiB3d19tdXRleF9sb2NrCj4+IHdhaXRfZm9yX2lk
bGUKPj4gY29weQo+PiB3d19tdXRleF91bmxvY2sKPiBXZSBoYXZlIGEgc2NoZWR1bGVyLiBFdmlj
dGlvbiBkb2VzIG5vdCBibG9jay4gU3VibWlzc2lvbiBuZXZlciBibG9ja3MuClNvIHJlZ2FyZGxl
c3MgaWYgd2UgYmxvY2sgb3Igbm90LCBob3cgZG9lcyB0aGUgc2NoZWR1bGVyIGtub3cgaG93IHRv
IApvcmRlciB0aGUgZXZpY3Rpb24gYmxpdCBhZnRlciB0aGUgY3VycmVudCBvcGVyYXRpb24/IFdv
dWxkbid0IGl0IG5lZWQgdG8gCmxvb2sgYXQgdGhlIHByb3h5IGZlbmNlIHRvIGRldGVybWluZSB0
aGF0PyBCYXNpY2FsbHkgSSdtIHRyeWluZyB0byBnZXQgCmFuIHVuZGVyc3RhbmRpbmcgd2hlcmUg
dGhlIGZlbmNlIHNpZ25hbGluZyBjcml0aWNhbCBzZWN0aW9uIHN0YXJ0cy4KCi9UaG9tYXMKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
