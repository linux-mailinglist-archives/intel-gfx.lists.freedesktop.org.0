Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7A622F882
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jul 2020 20:53:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27A4189A74;
	Mon, 27 Jul 2020 18:53:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F41F89A74
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jul 2020 18:53:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 5F41B3F516;
 Mon, 27 Jul 2020 20:53:51 +0200 (CEST)
Authentication-Results: ste-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=pRe/dn/A; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.449
X-Spam-Level: 
X-Spam-Status: No, score=-2.449 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.35,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5_-Dn6fX7jUf; Mon, 27 Jul 2020 20:53:50 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 897F63F4CB;
 Mon, 27 Jul 2020 20:53:49 +0200 (CEST)
Received: from localhost.localdomain (unknown [134.134.137.77])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 1A480360378;
 Mon, 27 Jul 2020 20:53:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1595876029; bh=lb8439YQaXxUz1c8t3iALi8PR6k0c4s/TY/9vgTwYp8=;
 h=Subject:To:References:Cc:From:Date:In-Reply-To:From;
 b=pRe/dn/AAlQvJYQ8kNPSDgUUY6UKIOPXzhkXelQIAKmPOD629uvxa3i2SvGb+/Oem
 B+nTN0YLb13D81BauXAxrYhdwCA2DFveucG3saOtIGriAD2rplUfNI/jKBa8fJSgZk
 7taJJxlPCtzXbpO4dlpt3gVPs+FiL+UJDTJEwtPM=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <0af5d31f-ed6b-8491-7170-14fe2e076c60@shipmail.org>
Date: Mon, 27 Jul 2020 20:53:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200706061926.6687-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] s/obj->mm.lock//
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

Ck9uIDcvNi8yMCA4OjE5IEFNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gVGhpcyBpcyB0aGUgZWFz
eSBwYXJ0OyBwdWxsaW5nIHJlc2VydmF0aW9uIG9mIG11bHRpcGxlIG9iamVjdHMgdW5kZXIgYW4K
PiB3dyBhY3F1aXJlIGNvbnRleHQuIFdpdGggb25lIHNpbXBsZSBydWxlIHRoYXQgZXZpY3Rpb24g
aXMgaGFuZGxlZCBieSB0aGUKPiB3dyBhY3F1aXJlIGNvbnRleHQsIHdlIGNhbiBjYXJlZnVsbHkg
dHJhbnNpdGlvbiB0aGUgZHJpdmVyIG92ZXIgdG8gdXNpbmcKPiBldmljdGlvbi4gSW5zdGVhZCBv
ZiBmZWVkaW5nIHRoZSBhY3F1aXJlIGNvbnRleHQgZXZlcnl3aGVyZSwgd2UgbWFrZSB0aGUKPiBj
YWxsZXIgZ2F0aGVyIHVwIGFsbCB0aGUgb2JqZWN0cyB0aGV5IG5lZWQgdG8gYWNxdWlyZSBpbnRv
IHRoZSBjb250ZXh0LAo+IHRoZW4gYWNxdWlyZSB0aGVpciBiYWNraW5nIHN0b3JlLiBUaGUgbWFq
b3IgYm9vbiBoZXJlIGlzIHRoYXQgYnkKPiBwcm92aWRpbmcgYSBjbGVhbiBzZXQgb2Ygb2JqZWN0
cyAodGhhdCB3ZSBoYXZlIG5vdCB5ZXQgc3RhcnRlZCB0bwo+IGFjcXVpcmUgYW55IGF1eGlsaWFy
eSBhdHRhY2htZW50cyBmb3IpIHRvIHRoZSBhY3F1aXJlIGNvbnRleHQsIGl0IGNhbgo+IGhhbmRs
ZSBhbGwgdGhlIEVERUFETEsgcHJvY2Vzc2luZyBmb3IgdXMgW3NpbmNlIGl0IGlzIGEgcHVyZSBs
b2NraW5nCj4gb3BlcmF0aW9uIGFuZCBkb2VzIG5vdCBuZWVkIHRvIHJlbGVhc2UgYXR0YWNobWVu
dHMgdXBvbiByZXZva2luZyB0aGUKPiBsb2Nrc10uCj4KPiBBcyBhIHNrZXRjaCBvZiB3aGF0IHRo
YXQgd291bGQgbG9vayBsaWtlLCB0byBpbGx1c3RyYXRlIHRoZSBtYWpvciB3b3JrCj4gcmVtYWlu
aW5nOgo+Cj4gc3RhdGljIGludCBldmljdChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2Jq
LCBzdHJ1Y3QgaTkxNV9hY3F1aXJlX2N0eCAqY3R4KQo+IHsKPiAJc3RydWN0IGludGVsX21lbW9y
eV9yZWdpb24gKm1lbSA9IG9iai0+bW0tPnJlZ2lvbjsKPiAJc3RydWN0IGRybV9pOTE1X2dlbV9v
YmplY3QgKnN3YXA7IC8vIHN0cnVjdCBpOTE1X21tX2JvICpzd2FwCj4gCXN0cnVjdCBpOTE1X3Jl
cXVlc3QgKnJxOwo+IAlpbnQgZXJyOwo+Cj4gCS8qIHN3YXAgPSBtZW0tPmNyZWF0ZV9ldmljdGlv
bl90YXJnZXQob2JqKTsgKi8KPiAJc3dhcCA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc2htZW0o
bWVtLT5pOTE1LCBvYmotPmJhc2Uuc2l6ZSk7Cj4gCWlmIChJU19FUlIoc3dhcCkpCj4gCQlyZXR1
cm4gUFRSX0VSUihzd2FwKTsKPgo+IAllcnIgPSBkbWFfcmVzdl9sb2NrX2ludGVycnVwdGlibGUo
c3dhcCwgJmN0eC0+Y3R4KTsKPiAJR0VNX0JVR19PTihlcnIgPT0gLUVBTFJFQURZKTsKPiAJaWYg
KGVyciA9PSAtRURFQURMSykKPiAJCWdvdG8gb3V0Owo+Cj4gCS8qIE9idmlvdXNseSBzd2FwIGhh
cyB0byBiZSBjYXJlZnVsbHkgY2hvc2VuIHNvIHRoYXQgdGhpcyBtYXkgc3VjY2VlZCAqLwo+IAll
cnIgPSBfX2k5MTVfZ2VtX29iamVjdF9nZXRfcGFnZXNfbG9ja2VkKHN3YXApOwo+IAlpZiAoZXJy
KQo+IAkJZ290byBvdXRfdW5sb2NrOwo+Cj4gCXJxID0gcGlubmVkX2V2aWN0X2NvcHkoY3R4LCBv
YmosIHN3YXApOwo+IAlpZiAoSVNfRVJSKHJxKSkgewo+IAkJZXJyID0gUFRSX0VSUihycSk7Cj4g
CQlnb3RvIG91dF91bmxvY2s7Cj4gCX0KPgo+IAllcnIgPSBpOTE1X2dlbV9yZXZva2VfbW0ob2Jq
KTsKPiAJaWYgKGVycikKPiAJCWdvdG8gb3V0X3JlcXVlc3Q7Cj4KPiAJLyogQWx0ZXJuYXRpdmVs
eSB5b3UgY291bGQgd2FpdCBzeW5jaHJvbm91c2x5ISAqLwo+IAltZW0tPnJlbGVhc2VfYmxvY2tz
KCZvYmotPm1tLT5ibG9ja3MsIHJxKTsKPiAJaTkxNV9tbV9ib19wdXQoeGNoZygmb2JqLT5tbSwg
aTkxNV9tbV9ib19nZXQoc3dhcCkpKTsKPgo+IAlkbWFfcmVzdl9hZGRfZXhjbHVzaXZlX2ZlbmNl
KG9iai0+YmFzZS5yZXN2LCAmcnEtPmZlbmNlKTsKPiBvdXRfcmVxdWVzdDoKPiAJaTkxNV9yZXF1
ZXN0X3B1dChycSk7Cj4gb3V0X3VubG9jazoKPiAJZG1hX3Jlc3ZfdW5sb2NrKHN3YXApOwo+IG91
dDoKPiAJaTkxNV9nZW1fb2JqZWN0X3B1dChzd2FwKTsKPiAJcmV0dXJuIGVycjsKPiB9Cj4KPiBz
dGF0aWMgaW50IHJlbG9ja19hbGwoc3RydWN0IGk5MTVfYWNxdWlyZV9jdHggKmN0eCkKPiB7Cj4g
CXN0cnVjdCBpOTE1X2FjcXVpcmVfbGluayAqbG5rLCAqbG9jazsKPiAJaW50IGVycjsKPgo+IAlm
b3IgKGxuayA9IGN0eC0+bG9ja2VkOyBsbms7IGxuayA9IGxuay0+bmV4dCkKPiAJCWRtYV9yZXN2
X3VubG9jayhsbmstPm9iai0+YmFzZS5yZXN2KTsKPgo+IAlsb2NrID0gZmV0Y2hfYW5kX3plcm8o
JmN0eC0+bG9ja2VkKTsKPiAJd2hpbGUgKChsbmsgPSBsb2NrKSkgewo+IAkJc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iajsKPgo+IAkJb2JqID0gbG5rLT5vYmo7Cj4gCQlsb2NrID0gbG5r
LT5uZXh0Owo+Cj4gCQlpZiAoY3R4LT5sb2NrZWQpCj4gCQkJZXJyID0gZG1hX3Jlc3ZfbG9ja19p
bnRlcnJ1cHRpYmxlKG9iai0+YmFzZS5yZXN2LAo+IAkJCQkJCQkgICZjdHgtPmN0eCk7Cj4gCQll
bHNlCj4gCQkJZXJyID0gZG1hX3Jlc3ZfbG9ja19zbG93X2ludGVycnVwdGlibGUob2JqLT5iYXNl
LnJlc3YsCj4gCQkJCQkJCSAgICAgICAmY3R4LT5jdHgpOwo+IAkJR0VNX0JVR19PTihlcnIgPT0g
LUVBTFJFQURZKTsKPiAJCWlmIChlcnIgPT0gLUVERUFETEspIHsKPiAJCQlzdHJ1Y3QgaTkxNV9h
Y3F1aXJlICpvbGQ7Cj4KPiAJCQl3aGlsZSAoKG9sZCA9IGN0eC0+bG9ja2VkKSkgewo+IAkJCQlk
bWFfcmVzdl91bmxvY2sob2xkLT5vYmotPmJhc2UucmVzdik7Cj4gCQkJCWN0eC0+bG9ja2VkID0g
b2xkLT5uZXh0Owo+IAkJCQlvbGQtPm5leHQgPSBsb2NrOwo+IAkJCQlsb2NrID0gb2xkOwo+IAkJ
CX0KPgo+IAkJCWxuay0+bmV4dCA9IGxvY2s7Cj4gCQkJbG9jayA9IGxuazsKPiAJCQljb250aW51
ZTsKPiAJCX0KPiAJCWlmIChlcnIpIHsKPiAJCQlsb2NrID0gbG5rOwo+IAkJCWJyZWFrOwo+IAkJ
fQo+Cj4gCQlsbmstPm5leHQgPSBjdHgtPmxvY2tlZDsKPiAJCWN0eC0+bG9ja2VkID0gbG5rOwo+
IAl9Cj4KPiAJd2hpbGUgKChsbmsgPSBsb2NrKSkgewo+IAkJbG9jayA9IGxuay0+bmV4dDsKPiAJ
CWk5MTVfZ2VtX29iamVjdF9wdXQobG5rLT5vYmopOwo+IAkJaTkxNV9hY3F1aXJlX2ZyZWUobG5r
KTsKPiAJfQo+Cj4gCXJldHVybiBlcnI7Cj4gfQo+Cj4gaW50IGk5MTVfYWNxdWlyZV9tbShzdHJ1
Y3QgaTkxNV9hY3F1aXJlX2N0eCAqY3R4KQo+IHsKPiAJc3RydWN0IGk5MTVfYWNxdWlyZV9saW5r
ICpsbms7Cj4gCWludCBuLCBlcnI7Cj4KPiByZXN0YXJ0Ogo+IAlmb3IgKGxuayA9IGN0eC0+bG9j
a2VkOyBsbms7IGxuayA9IGxuay0+bmV4dCkgewo+IAkJZm9yIChuID0gMDsKPiAJCSAgICAgIWk5
MTVfZ2VtX29iamVjdF9oYXNfcGFnZXMobG5rLT5vYmopOwo+IAkJICAgICBuKyspIHsKPiAJCQlz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqZXZpY3RlZSA9IE5VTEw7Cj4KPiAJCQltZW0gPSBn
ZXRfcHJlZmVycmVkX21lbXJlZ2lvbl9mb3Jfb2JqZWN0KGxuay0+b2JqLCBuKTsKPiAJCQlpZiAo
IW1lbSkKPiAJCQkJcmV0dXJuIC1FTlhJTzsKPgo+IAkJCXdoaWxlICghaTkxNV9nZW1fb2JqZWN0
X2dldF9wYWdlcyhsbmstPm9iaikpIHsKPiAJCQkJc3RydWN0IGk5MTVfYWNxdWlyZV9saW5rICp0
aGlzOwo+Cj4gCQkJCWV2aWN0ZWUgPSBtZW0tPmdldF9ldmljdGlvbl9jYW5kaWRhdGUobWVtLAo+
IAkJCQkJCQkJICAgICAgZXZpY3RlZSk7Cj4gCQkJCWlmICghZXZpY3RlZSkKPiAJCQkJCWJyZWFr
Owo+Cj4gCQkJCWVyciA9IGRtYV9yZXN2X2xvY2tfaW50ZXJydXB0aWJsZShldmljdGVlLAo+IAkJ
CQkJCQkJICAmY3R4LT5jdHgpOwo+IAkJCQlpZiAoZXJyID09IC1FQUxSRUFEWSkKPiAJCQkJCWNv
bnRpbnVlOyAvKiBYWFggZnJhZ21lbnRhdGlvbj8gKi8KPiAJCQkJaWYgKGVyciA9PSAwKQo+IAkJ
CQkJZXJyID0gZXZpY3QoZXZpY3RlZSk7Cj4gCQkJCWRtYV9yZXN2X3VubG9jayhldmljdGVlKTsK
ClRoZXJlIHdhcyBhIGRpc2N1c3Npb24gb24gZHJpLWRldmVsIG5vdCB0b28gbG9uZyBhZ28sIHdo
ZXJlIENocmlzdGlhbiAKbWVudGlvbmVkIHRoZXJlIGlzIGEgcG9pbnQgaG9sZGluZyBvbiB0byB0
aGUgZXZpY3RlZShzKSBsb2NrcyB1bnRpbMKgIHRoZSAKZ2V0X3BhZ2VzKCkgc3VjY2VlZHMgdG8g
YXZvaWQgcmFjaW5nIHdpdGggdGhyZWFkcyB3YW50aW5nIHRvIG1vdmUgdGhlIApldmljdGVlIGJh
Y2sgaW50byB2cmFtLiBQZXJoYXBzIHNvbWV0aGluZyB3b3J0aCBjb25zaWRlcmluZy4KCi9UaG9t
YXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
