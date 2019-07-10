Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF4964AE4
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 18:45:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DED8898CC;
	Wed, 10 Jul 2019 16:45:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lb1-smtp-cloud7.xs4all.net (lb1-smtp-cloud7.xs4all.net
 [194.109.24.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E981898CC
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 16:45:18 +0000 (UTC)
Received: from xps13 ([83.160.161.190]) by smtp-cloud7.xs4all.net with ESMTPSA
 id lFiUhwAZy0SBqlFiXh8vkM; Wed, 10 Jul 2019 18:45:17 +0200
Message-ID: <5245d2b3d82f11d2f988a3154814eb42dcb835c5.camel@tiscali.nl>
From: Paul Bolle <pebolle@tiscali.nl>
To: James Bottomley <James.Bottomley@HansenPartnership.com>, 
 intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 18:45:14 +0200
In-Reply-To: <1562776339.3213.50.camel@HansenPartnership.com>
References: <1561834612.3071.6.camel@HansenPartnership.com>
 <1562770874.3213.14.camel@HansenPartnership.com>
 <93b8a186f4c8b4dae63845a20bd49ae965893143.camel@tiscali.nl>
 <1562776339.3213.50.camel@HansenPartnership.com>
User-Agent: Evolution 3.32.3 (3.32.3-1.fc30) 
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfNbzLWZLuh1XujReLYpRK8CR5zZBk8afhybZyOc0P8XoqWz2+slcd9HGh7xkABVaQu054GrdSrCpN8vNd/JzsrDStYmD4KqONQdh0MUQd3iIrnTw2Wxy
 bi8ZQ3MYREuWcUhh1dSYkbpbf9bECwc/6L/GNcDrpUjqHbc5cTot0/WWX1OKYlXWi6hdtlPO40geBVGzxcBahggrYyx7QUVD2WLrwqVCDarGIXZfWlsfi0RN
 0pdosbU7uXHoz1D3cw11ygFTM8Mc/p3O5TsjWTXVURg=
Subject: Re: [Intel-gfx] screen freeze with 5.2-rc6 Dell XPS-13 skylake i915
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SmFtZXMgQm90dG9tbGV5IHNjaHJlZWYgb3Agd28gMTAtMDctMjAxOSBvbSAwOTozMiBbLTA3MDBd
Ogo+IFlvdSBzZWVtIHRvIGJlIGdldHRpbmcgaXQgdG8gaGFwcGVuIG11Y2ggbW9yZSBvZnRlbiB0
aGFuIEkgY2FuLiBMYXN0Cj4gbmlnaHQsIG9uIHRoZSBiZWxvdyBwdWxsIHJlcXVlc3QgaXQgdG9v
ayBtZSBhIGdvb2QgaG91ciB0byBzZWUgdGhlCj4gZnJlZXplLgoKWWVzLiBTb21ldGltZXMgd2l0
aGluIGEgbWludXRlIG9mIHJlc3VtaW5nLiBUeXBpbmcgc3R1ZmYgaW50byBldm9sdXRpb24gc2Vl
bXMKdG8gaGVscCB3aXRoIHRyaWdnZXJpbmcgdGhpcy4gSXQncyBhbGwgYSBiaXQgbXlzdGVyaW91
cywgYnV0IHRoaXMgbWVzc2FnZQphbG9uZSBmcm9vemUgbXkgbGFwdG9wIGEgZmV3IHRpbWVzLiBT
ZXJpb3VzbHkhCgo+IFN1cmUsIG15IGN1cnJlbnQgdGVzdGluZyBpbmRpY2F0ZXMgaXQncyBzb21l
d2hlcmUgaW5zaWRlIHRoaXMgcHVsbAo+IHJlcXVlc3Q6Cj4gCj4gTWVyZ2U6IDg5YzNiMzdhZjg3
ZSBlYjg1ZDAzZTAxYzMKPiBBdXRob3I6IExpbnVzIFRvcnZhbGRzIDx0b3J2YWxkc0BsaW51eC1m
b3VuZGF0aW9uLm9yZz4KPiBEYXRlOiAgIFdlZCBNYXkgOCAyMTozNToxOSAyMDE5IC0wNzAwCj4g
Cj4gICAgIE1lcmdlIHRhZyAnZHJtLW5leHQtMjAxOS0wNS0wOScgb2YgZ2l0Oi8vYW5vbmdpdC5m
cmVlZGVza3RvcC5vcmcvZHJtL2RybQo+ICAgICAKPiAgICAgUHVsbCBkcm0gdXBkYXRlcyBmcm9t
IERhdmUgQWlybGllOgoKTGF6eSBxdWVzdGlvbjogaG93IGRvZXMgb25lIGRldGVybWluZSB0aGUg
Zmlyc3QgYW5kIGxhc3QgY29tbWl0IGluc2lkZSBhIG1lcmdlCnJlcXVlc3Q/IENhbiBJIHNpbXBs
eSBkbwogICAgZ29vZCAgIGEyZDYzNWRlY2JmYTljMWU0YWUxNWNiMDViNjhiMjU1OWY3ZjgyN2Ne
CiAgICBiYWQgICAgYTJkNjM1ZGVjYmZhOWMxZTRhZTE1Y2IwNWI2OGIyNTU5ZjdmODI3YwoKZm9y
IGdpdCBiaXNlY3Q/Cgo+IFNvIEkgd2FzIGFib3V0IHRvIHRlc3Qgb3V0IHRoZSBpOTE1IGNoYW5n
ZXMgaW4gdGhhdCBidXQgc2luY2UgbXkgbGFwdG9wCj4gaXMgd2hhdCBJIHVzZSBmb3IgZGFpbHkg
d29yaywgaXQncyBhIGJpdCBoYXJkIChjYW4ndCBmcmVlemUgdXAgb24gdmlkZW8KPiBjYWxscyBm
b3IgaW5zdGFuY2UpLgoKSSB1c3VhbGx5IHVzZSBvbmUgb2YgdGhlIFRoaW5rUGFkcyBmcm9tIG15
IGVtYmFycmFzc2luZyBwaWxlIG9mIG91dGRhdGVkCmhhcmR3YXJlIHRvIGRvIG5hc3R5IGJpc2Vj
dHMsIGJ1dCBJJ20gbm90IGFib3V0IHRvIGxvb3NlIGFueSBpbmNvbWUgaWYgbXkgbXVjaAphcHBy
ZWNpYXRlZCBYUFMgMTMgaXMgb3V0IG9mIG9yZGVyIGZvciBhIHdoaWxlLgoKVGhhbmtzLAoKClBh
dWwgQm9sbGUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
