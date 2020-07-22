Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B49229747
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jul 2020 13:19:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 224CB6E0AC;
	Wed, 22 Jul 2020 11:19:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se
 [213.80.101.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 973986E0AC
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jul 2020 11:19:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 9AC853FBBA;
 Wed, 22 Jul 2020 13:19:29 +0200 (CEST)
Authentication-Results: ste-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=ZESlHtDC; 
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
 with ESMTP id jD4aq4WFzEzo; Wed, 22 Jul 2020 13:19:28 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 7B8BA3FB79;
 Wed, 22 Jul 2020 13:19:28 +0200 (CEST)
Received: from [192.168.0.100] (h-205-35.A357.priv.bahnhof.se [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 3FC7B362551;
 Wed, 22 Jul 2020 13:19:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1595416769; bh=Cz6wfOlPIdikJOscKb/y5l0M/cJKB/U+UqOz7ewTzGo=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=ZESlHtDCTDHVdkWCwUiqs3BMLktdPPVL/PhAm587a1F1rFicrI+6MUSDLYmeRl4fB
 kxVW2uAOF+/mb6wGSQFb080hW2VLKUL9zJGOFeWuSRCihqUGaK7yQ1YQVWBR3LvNlQ
 Hgw/ahAPpdbTscNM5pVH2o8JNtWw2rDh1mc5p3qY=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-8-chris@chris-wilson.co.uk>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <305ab51a-2424-10e3-771f-8c4d0935c862@shipmail.org>
Date: Wed, 22 Jul 2020 13:19:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200715115147.11866-8-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 08/66] drm/i915: Make the stale cached
 active node available for any timeline
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

Ck9uIDIwMjAtMDctMTUgMTM6NTAsIENocmlzIFdpbHNvbiB3cm90ZToKPiBSYXRoZXIgdGhhbiBy
ZXF1aXJlIHRoZSBuZXh0IHRpbWVsaW5lIGFmdGVyIGlkbGluZyB0byBtYXRjaCB0aGUgTVJVCj4g
YmVmb3JlIGlkbGluZywgcmVzZXQgdGhlIGluZGV4IG9uIHRoZSBub2RlIGFuZCBhbGxvdyBpdCB0
byBtYXRjaCB0aGUKPiBmaXJzdCByZXF1ZXN0LiBIb3dldmVyLCB0aGlzIHJlcXVpcmVzIGNtcHhj
aGcodTY0KSBhbmQgc28gaXMgbm90IHRyaXZpYWwKPiBvbiAzMmIsIHNvIGZvciBjb21wYXRpYmls
aXR5IHdlIGp1c3QgZmFsbGJhY2sgdG8ga2VlcGluZyB0aGUgY2FjaGVkIG5vZGUKPiBwb2ludGlu
ZyB0byB0aGUgTVJVIHRpbWVsaW5lLgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2FjdGl2ZS5jIHwgMjEgKysrKysrKysrKysrKysrKysrKy0tCj4gICAxIGZpbGUgY2hhbmdl
ZCwgMTkgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9hY3RpdmUuYwo+IGluZGV4IDA4NTRiMTU1MmJjMS4uNjczN2I1NjE1YzBjIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jCj4gQEAgLTE1Nyw2ICsxNTcsMTAgQEAgX19hY3RpdmVf
cmV0aXJlKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQo+ICAgCQlyYl9saW5rX25vZGUoJnJlZi0+
Y2FjaGUtPm5vZGUsIE5VTEwsICZyZWYtPnRyZWUucmJfbm9kZSk7Cj4gICAJCXJiX2luc2VydF9j
b2xvcigmcmVmLT5jYWNoZS0+bm9kZSwgJnJlZi0+dHJlZSk7Cj4gICAJCUdFTV9CVUdfT04ocmVm
LT50cmVlLnJiX25vZGUgIT0gJnJlZi0+Y2FjaGUtPm5vZGUpOwo+ICsKPiArCQkvKiBNYWtlIHRo
ZSBjYWNoZWQgbm9kZSBhdmFpbGFibGUgZm9yIHJldXNlIHdpdGggYW55IHRpbWVsaW5lICovCj4g
KwkJaWYgKElTX0VOQUJMRUQoQ09ORklHXzY0QklUKSkKPiArCQkJcmVmLT5jYWNoZS0+dGltZWxp
bmUgPSAwOyAvKiBuZWVkcyBjbXB4Y2hnKHU2NCkgKi8KPiAgIAl9Cj4gICAKPiAgIAlzcGluX3Vu
bG9ja19pcnFyZXN0b3JlKCZyZWYtPnRyZWVfbG9jaywgZmxhZ3MpOwo+IEBAIC0yMzUsOSArMjM5
LDIyIEBAIHN0YXRpYyBzdHJ1Y3QgYWN0aXZlX25vZGUgKl9fYWN0aXZlX2xvb2t1cChzdHJ1Y3Qg
aTkxNV9hY3RpdmUgKnJlZiwgdTY0IGlkeCkKPiAgIHsKPiAgIAlzdHJ1Y3QgYWN0aXZlX25vZGUg
Kml0Owo+ICAgCj4gKwlHRU1fQlVHX09OKGlkeCA9PSAwKTsgLyogMCBpcyB0aGUgdW5vcmRlcmVk
IHRpbWVsaW5lLCByc3ZkIGZvciBjYWNoZSAqLwo+ICsKPiAgIAlpdCA9IFJFQURfT05DRShyZWYt
PmNhY2hlKTsKPiAtCWlmIChpdCAmJiBpdC0+dGltZWxpbmUgPT0gaWR4KQo+IC0JCXJldHVybiBp
dDsKPiArCWlmIChpdCkgewo+ICsJCXU2NCBjYWNoZWQgPSBSRUFEX09OQ0UoaXQtPnRpbWVsaW5l
KTsKPiArCj4gKwkJaWYgKGNhY2hlZCA9PSBpZHgpCj4gKwkJCXJldHVybiBpdDsKPiArCj4gKyNp
ZmRlZiBDT05GSUdfNjRCSVQgLyogZm9yIGNtcHhjaGcodTY0KSAqLwo+ICsJCWlmICghY2FjaGVk
ICYmICFjbXB4Y2hnKCZpdC0+dGltZWxpbmUsIDAsIGlkeCkpIHsKCkRvZXNuJ3QgY21weGNoZygp
IGFscmVhZHkgZG8gYW4gdW5sb2NrZWQgY29tcGFyZSBiZWZvcmUgYXR0ZW1wdGluZyB0aGUgCmxv
Y2tlZCBjeWNsZT8KCk90aGVyd2lzZSBsZ3RtLgoKUmV2aWV3ZWQtYnk6IFRob21hcyBIZWxsc3Ry
w7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGludGVsLmNvbT4KCgo+ICsJCQlHRU1fQlVHX09OKGk5MTVf
YWN0aXZlX2ZlbmNlX2lzc2V0KCZpdC0+YmFzZSkpOwo+ICsJCQlyZXR1cm4gaXQ7Cj4gKwkJfQo+
ICsjZW5kaWYKPiArCX0KPiAgIAo+ICAgCUJVSUxEX0JVR19PTihvZmZzZXRvZih0eXBlb2YoKml0
KSwgbm9kZSkpOwo+ICAgCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
