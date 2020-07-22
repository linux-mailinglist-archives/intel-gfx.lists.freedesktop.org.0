Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70800229AF9
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jul 2020 17:07:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EBC56E0D6;
	Wed, 22 Jul 2020 15:07:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se
 [213.80.101.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 254826E0D6
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jul 2020 15:07:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id BD9883FA05;
 Wed, 22 Jul 2020 17:07:07 +0200 (CEST)
Authentication-Results: ste-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=mugBPr8F; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.001,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Authentication-Results: ste-ftg-msa2.bahnhof.se (amavisd-new);
 dkim=pass (1024-bit key) header.d=shipmail.org
Received: from ste-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (ste-ftg-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PkpTRslPwkau; Wed, 22 Jul 2020 17:07:06 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 4F51E3F9F9;
 Wed, 22 Jul 2020 17:07:06 +0200 (CEST)
Received: from [192.168.0.100] (h-205-35.A357.priv.bahnhof.se [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 1873D36010A;
 Wed, 22 Jul 2020 17:07:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1595430427; bh=IMsGulzdDApw5iZMMb0/J1VMgxseaXgLqAY3GE6hE64=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=mugBPr8Fk3oMeXRrvYV5CmO0/8kRl7mLFnNQ9sPL1XogGQNrENzVWbT9MLTeJLHHC
 XYbAH3imwcRwTDrlzhtk1zNgsJlDHSlx3SlRJ/kXXrPeV44n7otZC1Rsru+YuBmCNX
 /Oo7i2igiMZGZmOSI6+N50wuvgBoo+MR6kEK6Yus=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-9-chris@chris-wilson.co.uk>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <6659545c-cb63-2075-ee92-cc1699414ac5@shipmail.org>
Date: Wed, 22 Jul 2020 17:07:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200715115147.11866-9-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 09/66] drm/i915: Provide a fastpath for
 waiting on vma bindings
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

Ck9uIDIwMjAtMDctMTUgMTM6NTAsIENocmlzIFdpbHNvbiB3cm90ZToKPiBCZWZvcmUgd2UgY2Fu
IGV4ZWN1dGUgYSByZXF1ZXN0LCB3ZSBtdXN0IHdhaXQgZm9yIGFsbCBvZiBpdHMgdm1hIHRvIGJl
Cj4gYm91bmQuIFRoaXMgaXMgYSBmcmVxdWVudCBvcGVyYXRpb24gZm9yIHdoaWNoIHdlIGNhbiBv
cHRpbWlzZSBhd2F5IGEKPiBmZXcgYXRvbWljIG9wZXJhdGlvbnMgKG5vdGFibHkgYSBjbXB4Y2hn
KSBpbiBsaWV1IG9mIHRoZSBSQ1UgcHJvdGVjdGlvbi4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKTEdUTS4gUmV2aWV3ZWQtYnk6IFRo
b21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGludGVsLmNvbT4KCgo+IC0tLQo+ICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuaCB8IDE1ICsrKysrKysrKysrKysrKwo+
ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYyAgICB8ICA5ICsrKysrKystLQo+ICAg
MiBmaWxlcyBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5oCj4gaW5kZXggYjllMDM5NGUyOTc1Li5mYjE2NWQzZjAx
Y2YgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuaAo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmgKPiBAQCAtMjMxLDQgKzIzMSwx
OSBAQCBzdHJ1Y3QgaTkxNV9hY3RpdmUgKmk5MTVfYWN0aXZlX2NyZWF0ZSh2b2lkKTsKPiAgIHN0
cnVjdCBpOTE1X2FjdGl2ZSAqaTkxNV9hY3RpdmVfZ2V0KHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVm
KTsKPiAgIHZvaWQgaTkxNV9hY3RpdmVfcHV0KHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKTsKPiAg
IAo+ICtzdGF0aWMgaW5saW5lIGludCBfX2k5MTVfcmVxdWVzdF9hd2FpdF9leGNsdXNpdmUoc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqcnEsCj4gKwkJCQkJCSBzdHJ1Y3QgaTkxNV9hY3RpdmUgKmFjdGl2
ZSkKPiArewo+ICsJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7Cj4gKwlpbnQgZXJyID0gMDsKPiAr
Cj4gKwlmZW5jZSA9IGk5MTVfYWN0aXZlX2ZlbmNlX2dldCgmYWN0aXZlLT5leGNsKTsKPiArCWlm
IChmZW5jZSkgewo+ICsJCWVyciA9IGk5MTVfcmVxdWVzdF9hd2FpdF9kbWFfZmVuY2UocnEsIGZl
bmNlKTsKPiArCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKPiArCX0KPiArCj4gKwlyZXR1cm4gZXJy
Owo+ICt9Cj4gKwo+ICAgI2VuZGlmIC8qIF9JOTE1X0FDVElWRV9IXyAqLwo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV92bWEuYwo+IGluZGV4IGJjNjRmNzczZGNkYi4uY2QxMjA0N2M3NzkxIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3ZtYS5jCj4gQEAgLTExNjcsNiArMTE2NywxMiBAQCB2b2lkIGk5MTVfdm1h
X3Jldm9rZV9tbWFwKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQo+ICAgCQlsaXN0X2RlbCgmdm1hLT5v
YmotPnVzZXJmYXVsdF9saW5rKTsKPiAgIH0KPiAgIAo+ICtzdGF0aWMgaW50Cj4gK19faTkxNV9y
ZXF1ZXN0X2F3YWl0X2JpbmQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsIHN0cnVjdCBpOTE1X3Zt
YSAqdm1hKQo+ICt7Cj4gKwlyZXR1cm4gX19pOTE1X3JlcXVlc3RfYXdhaXRfZXhjbHVzaXZlKHJx
LCAmdm1hLT5hY3RpdmUpOwo+ICt9Cj4gKwo+ICAgaW50IF9faTkxNV92bWFfbW92ZV90b19hY3Rp
dmUoc3RydWN0IGk5MTVfdm1hICp2bWEsIHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQo+ICAgewo+
ICAgCWludCBlcnI7Cj4gQEAgLTExNzQsOCArMTE4MCw3IEBAIGludCBfX2k5MTVfdm1hX21vdmVf
dG9fYWN0aXZlKHN0cnVjdCBpOTE1X3ZtYSAqdm1hLCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkK
PiAgIAlHRU1fQlVHX09OKCFpOTE1X3ZtYV9pc19waW5uZWQodm1hKSk7Cj4gICAKPiAgIAkvKiBX
YWl0IGZvciB0aGUgdm1hIHRvIGJlIGJvdW5kIGJlZm9yZSB3ZSBzdGFydCEgKi8KPiAtCWVyciA9
IGk5MTVfcmVxdWVzdF9hd2FpdF9hY3RpdmUocnEsICZ2bWEtPmFjdGl2ZSwKPiAtCQkJCQlJOTE1
X0FDVElWRV9BV0FJVF9FWENMKTsKPiArCWVyciA9IF9faTkxNV9yZXF1ZXN0X2F3YWl0X2JpbmQo
cnEsIHZtYSk7Cj4gICAJaWYgKGVycikKPiAgIAkJcmV0dXJuIGVycjsKPiAgIApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
