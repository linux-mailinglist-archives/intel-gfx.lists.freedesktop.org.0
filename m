Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9295227FF3
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jul 2020 14:32:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 569146E1BB;
	Tue, 21 Jul 2020 12:32:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se
 [213.80.101.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14E776E1BB
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jul 2020 12:32:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id E4D443F9F2;
 Tue, 21 Jul 2020 14:32:23 +0200 (CEST)
Authentication-Results: ste-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=jw7Au1BH; 
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
 with ESMTP id woAKvw8Sa_Ty; Tue, 21 Jul 2020 14:32:22 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 04C113F9F8;
 Tue, 21 Jul 2020 14:32:21 +0200 (CEST)
Received: from [192.168.0.100] (h-205-35.A357.priv.bahnhof.se [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 02A3536014B;
 Tue, 21 Jul 2020 14:32:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1595334742; bh=B2oUIMu9XD2PeWEgSYH4SU2OxrUNjErjvrHYr2C14MA=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=jw7Au1BHIRtqq4QRX2hYKBsm7HwcuH36unEg/9qR7kZZfbfTayN70T/W/kaECmYZ5
 Tr/H9kkQt5yhLIG3UBJ+aNO7ibC4FmXOTolgRO5vB9cqTrBFAVfKUDzrzdYJMpU/WA
 Efvkqy1SSz6Yw09yEuXsF6ba+aWSXz4fCqQCoGQk=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-5-chris@chris-wilson.co.uk>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <464215ff-b19a-6bc5-ee5d-376e3d4c04ac@shipmail.org>
Date: Tue, 21 Jul 2020 14:32:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200715115147.11866-5-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 05/66] drm/i915: Skip taking acquire mutex
 for no ref->active callback
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

Ck9uIDIwMjAtMDctMTUgMTM6NTAsIENocmlzIFdpbHNvbiB3cm90ZToKPiBJZiBubyBhY3RpdmUg
Y2FsbGJhY2sgaXMgZGVmaW5lZCBmb3IgaTkxNV9hY3RpdmUsIHdlIGRvIG5vdCBuZWVkIHRvCj4g
c2VyaWFsaXNlIGl0cyBlbmFibGluZyB3aXRoIHRoZSBtdXRleC4gV2Ugc3RpbGwgZG8gb25seSB3
YW50IHRvIGNhbGwgdGhlCj4gZGVidWcgYWN0aXZhdGUgb25jZSwgYW5kIG11c3Qgc3RpbGwgc2Vy
aWFsaXNlIHdpdGggYSBjb25jdXJyZW50IHJldGlyZS4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKTWlub3Igbml0IGJlbG93LAoKT3Ro
ZXJ3aXNlCgpSZXZpZXdlZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21A
aW50ZWwuY29tPgoKPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMg
fCAyNSArKysrKysrKysrKysrKysrLS0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMTYgaW5z
ZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2FjdGl2ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUu
Ywo+IGluZGV4IGQ5NjBkMGJlNWJkMi4uODQxYjVjMzA5NTBhIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2FjdGl2ZS5jCj4gQEAgLTQxNiw2ICs0MTYsMTQgQEAgYm9vbCBpOTE1X2FjdGl2ZV9h
Y3F1aXJlX2lmX2J1c3koc3RydWN0IGk5MTVfYWN0aXZlICpyZWYpCj4gICAJcmV0dXJuIGF0b21p
Y19hZGRfdW5sZXNzKCZyZWYtPmNvdW50LCAxLCAwKTsKPiAgIH0KPiAgIAo+ICtzdGF0aWMgdm9p
ZCBfX2k5MTVfYWN0aXZlX2FjdGl2YXRlKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQo+ICt7Cj4g
KwlzcGluX2xvY2tfaXJxKCZyZWYtPnRyZWVfbG9jayk7IC8qIF9fYWN0aXZlX3JldGlyZSgpICov
Cj4gKwlpZiAoIWF0b21pY19mZXRjaF9pbmMoJnJlZi0+Y291bnQpKQo+ICsJCWRlYnVnX2FjdGl2
ZV9hY3RpdmF0ZShyZWYpOwo+ICsJc3Bpbl91bmxvY2tfaXJxKCZyZWYtPnRyZWVfbG9jayk7Cj4g
K30KPiArCj4gICBpbnQgaTkxNV9hY3RpdmVfYWNxdWlyZShzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJl
ZikKPiAgIHsKPiAgIAlpbnQgZXJyOwo+IEBAIC00MjMsMjMgKzQzMSwyMiBAQCBpbnQgaTkxNV9h
Y3RpdmVfYWNxdWlyZShzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikKPiAgIAlpZiAoaTkxNV9hY3Rp
dmVfYWNxdWlyZV9pZl9idXN5KHJlZikpCj4gICAJCXJldHVybiAwOwo+ICAgCj4gKwlpZiAoIXJl
Zi0+YWN0aXZlKSB7Cj4gKwkJX19pOTE1X2FjdGl2ZV9hY3RpdmF0ZShyZWYpOwo+ICsJCXJldHVy
biAwOwo+ICsJfQo+ICsKPiAgIAllcnIgPSBtdXRleF9sb2NrX2ludGVycnVwdGlibGUoJnJlZi0+
bXV0ZXgpOwo+ICAgCWlmIChlcnIpCj4gICAJCXJldHVybiBlcnI7Cj4gICAKPiAgIAlpZiAobGlr
ZWx5KCFpOTE1X2FjdGl2ZV9hY3F1aXJlX2lmX2J1c3kocmVmKSkpIHsKPiAtCQlpZiAocmVmLT5h
Y3RpdmUpCj4gLQkJCWVyciA9IHJlZi0+YWN0aXZlKHJlZik7Cj4gLQkJaWYgKCFlcnIpIHsKPiAt
CQkJc3Bpbl9sb2NrX2lycSgmcmVmLT50cmVlX2xvY2spOyAvKiBfX2FjdGl2ZV9yZXRpcmUoKSAq
Lwo+IC0JCQlkZWJ1Z19hY3RpdmVfYWN0aXZhdGUocmVmKTsKPiAtCQkJYXRvbWljX2luYygmcmVm
LT5jb3VudCk7Cj4gLQkJCXNwaW5fdW5sb2NrX2lycSgmcmVmLT50cmVlX2xvY2spOwo+IC0JCX0K
PiArCQllcnIgPSByZWYtPmFjdGl2ZShyZWYpOwo+ICsJCWlmICghZXJyKQo+ICsJCQlfX2k5MTVf
YWN0aXZlX2FjdGl2YXRlKHJlZik7Cj4gICAJfQo+ICAgCj4gICAJbXV0ZXhfdW5sb2NrKCZyZWYt
Pm11dGV4KTsKPiAtCgpVbnJlbGF0ZWQKCj4gICAJcmV0dXJuIGVycjsKPiAgIH0KPiAgIApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
