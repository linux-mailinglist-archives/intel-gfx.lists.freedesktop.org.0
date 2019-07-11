Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6531766092
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 22:28:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FDE56E268;
	Thu, 11 Jul 2019 20:28:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [66.63.167.143])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93E766E268
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 20:28:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id EFEBE8EE2F6;
 Thu, 11 Jul 2019 13:28:02 -0700 (PDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id R5EAXpAep5mT; Thu, 11 Jul 2019 13:28:02 -0700 (PDT)
Received: from jarvis.lan (unknown [50.35.68.20])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 82E568EE0C7;
 Thu, 11 Jul 2019 13:28:02 -0700 (PDT)
Message-ID: <1562876880.2840.12.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "chris@chris-wilson.co.uk"
 <chris@chris-wilson.co.uk>
Date: Thu, 11 Jul 2019 13:28:00 -0700
In-Reply-To: <27a5b2ca8cfc79bf617387a363ea7192acc4e1f0.camel@intel.com>
References: <1561834612.3071.6.camel@HansenPartnership.com>
 <156283735757.12757.8954391372130933707@skylake-alporthouse-com>
 <1562875878.2840.0.camel@HansenPartnership.com>
 <27a5b2ca8cfc79bf617387a363ea7192acc4e1f0.camel@intel.com>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=hansenpartnership.com; 
 s=20151216; t=1562876883;
 bh=tOhs8f4r8n99C7Dwe6jIkqXz79BuqGcsiAAftv+McgI=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=UGq3qb27timwDHMLk7ncnVTghcfVqRM8uIJ2c3VXsxVzeBnSpJ05ifmuo/cKiE913
 +FpMQJzIMwvxxIKr2j5htkqCBzF8LsYIgWLHgXLdRiqGII9tN1IesHtbBNO/psVeD0
 8o+vVV/83poj8tSSKzyMEi9Mzf1C0ID+G9nLhe/w=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=hansenpartnership.com; 
 s=20151216; t=1562876882;
 bh=tOhs8f4r8n99C7Dwe6jIkqXz79BuqGcsiAAftv+McgI=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=sLIy0+6biRRec3aXnsHVZ67zVQyhZ9bymjkyNrSLJ003OZn6lNI8Xc8QPOnE4Tyb9
 KSJt2Whj6igTcZacZIk6ByzN3UrGEexy0n8GPUg/qfRLZ+t8tHk36bBSTHt4Fw/G1+
 ScL5oS9mz5yI1BYyRFDJPiFfYq9Dk9n+HKekW3z0=
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTA3LTExIGF0IDIwOjI1ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToKPiBP
biBUaHUsIDIwMTktMDctMTEgYXQgMTM6MTEgLTA3MDAsIEphbWVzIEJvdHRvbWxleSB3cm90ZToK
PiA+IE9uIFRodSwgMjAxOS0wNy0xMSBhdCAxMDoyOSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3Rl
Ogo+ID4gPiBRdW90aW5nIEphbWVzIEJvdHRvbWxleSAoMjAxOS0wNi0yOSAxOTo1Njo1MikKPiA+
ID4gPiBUaGUgc3ltcHRvbXMgYXJlIHJlYWxseSB3ZWlyZDogdGhlIHNjcmVlbiBpbWFnZSBpcyBs
b2NrZWQgaW4KPiA+ID4gPiBwbGFjZS4gIFRoZSBtYWNoaW5lIGlzIHN0aWxsIGZ1bmN0aW9uYWwg
YW5kIGlmIEkgbG9nIGluIG92ZXIKPiA+ID4gPiB0aGUgbmV0d29yayBjYW4gZG8gYW55dGhpbmcg
SSBsaWtlLCBpbmNsdWRpbmcga2lsbGluZyB0aGUgWAo+ID4gPiA+IHNlcnZlciBhbmQgdGhlIGRp
c3BsYXkgd2lsbCBuZXZlciBhbHRlci4gIEl0IGFsc28gc2VlbXMgdGhhdAo+ID4gPiA+IHRoZSBz
eXN0ZW0gaXMgYWNjZXB0aW5nIGtleWJvYXJkIGlucHV0IGJlY2F1c2Ugd2hlbiBpdCBmcmVlemVz
Cj4gPiA+ID4gSSBjYW4gY2F0IGluZm9ybWF0aW9uIHRvIGEgZmlsZSAoaWYgdGhlIG1vdXNlIHdh
cyBvdmVyIGFuCj4gPiA+ID4geHRlcm0pIGFuZCB2ZXJpZnkgb3ZlciB0aGUgbmV0d29yayB0aGUg
ZmlsZSBjb250ZW50cy4gTm90aGluZwo+ID4gPiA+IHVudXN1YWwgYXBwZWFycyBpbiBkbWVzZyB3
aGVuIHRoZSBsb2NrdXAgaGFwcGVucy4KPiA+ID4gPiAKPiA+ID4gPiBUaGUgbGFzdCBrZXJuZWwg
SSBib290ZWQgc3VjY2Vzc2Z1bGx5IG9uIHRoZSBzeXN0ZW0gd2FzIDUuMCwgc28KPiA+ID4gPiBJ
J2xsIHRyeSBjb21waWxpbmcgNS4xIHRvIG5hcnJvdyBkb3duIHRoZSBjaGFuZ2VzLgo+ID4gPiAK
PiA+ID4gSXQncyBsaWtlbHkgdGhpcyBpcyBwYW5lbCBzZWxmLXJlZnJlc2ggZ29pbmcgaGF5d2ly
ZS4KPiA+ID4gCj4gPiA+IGNvbW1pdCA4ZjZlODdkNmQ1NjFmMTBjZmE0OGE2ODczNDU1MTI0MTk4
MzliNmQ4Cj4gPiA+IEF1dGhvcjogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+Cj4gPiA+IERhdGU6ICAgVGh1IE1hciA3IDE2OjAwOjUwIDIwMTkgLTA4MDAKPiA+
ID4gCj4gPiA+ICAgICBkcm0vaTkxNTogRW5hYmxlIFBTUjIgYnkgZGVmYXVsdAo+ID4gPiAKPiA+
ID4gICAgIFRoZSBzdXBwb3J0IGZvciBQU1IyIHdhcyBwb2xpc2hlZCwgSUdUIHRlc3RzIGZvciBQ
U1IyIHdhcwo+ID4gPiBhZGRlZCBhbmQKPiA+ID4gICAgIGl0IHdhcyB0ZXN0ZWQgcGVyZm9ybWlu
ZyByZWd1bGFyIHVzZXIgd29ya2xvYWRzIGxpa2UKPiA+ID4gYnJvd3NpbmcsCj4gPiA+ICAgICBl
ZGl0aW5nIGRvY3VtZW50cyBhbmQgY29tcGlsaW5nIExpbnV4LCBzbyBpdCBpcyB0aW1lIHRvCj4g
PiA+IGVuYWJsZSBpdCBieQo+ID4gPiAgICAgZGVmYXVsdCBhbmQgZW5qb3kgZXZlbiBtb3JlIHBv
d2VyLXNhdmluZ3MuCj4gPiA+IAo+ID4gPiBUZW1wb3Jhcnkgd29ya2Fyb3VuZCB3b3VsZCBiZSB0
byBzZXQgaTkxNS5lbmFibGVfcHNyPTAKPiA+IAo+ID4gSXQgbG9va3MgcGxhdXNpYmxlLiAgSSBo
YXZlIHRvIHNheSBJIHdhcyBqdXN0IGFib3V0IHRvIG1hcmsgYQo+ID4gYmlzZWN0IGNvbnRhaW5p
bmcgdGhpcyBhcyBnb29kLCBidXQgdGhhdCBwcm9iYWJseSByZWZsZWN0cyBteQo+ID4gZGlmZmlj
dWx0eQo+ID4gcmVwcm9kdWNpbmcgdGhlIGlzc3VlLgo+IAo+IFRha2UgYXQgbG9vayBvZiB3aGF0
IFBTUiB2ZXJzaW9uIGlzIHN1cHBvcnRlZCBieSB5b3VyIHBhbmVsLCBpdAo+IGxpa2VseSB0aGF0
IGEgbm90ZWJvb2sgc2hpcHBlZCB3aXRoIFNreWxha2Ugd2lsbCBoYXZlIHBhbmVsIHRoYXQKPiBz
dXBwb3J0cyBvbmx5IFBTUjEgc28gdGhhdCBwYXRjaCBoYXMgbm8gZWZmZWN0IG9uIHlvdXIgbWFj
aGluZS4KPiAKPiBzdWRvIG1vcmUgL3N5cy9rZXJuZWwvZGVidWcvZHJpLzAvaTkxNV9lZHBfcHNy
X3N0YXR1cwo+IFNpbmsgc3VwcG9ydDogeWVzIFsweDAxXQoKSXQgc2F5cwoKU2luayBzdXBwb3J0
OiB5ZXMgWzB4MDFdClBTUiBtb2RlOiBQU1IxIGVuYWJsZWQKU291cmNlIFBTUiBjdGw6IGVuYWJs
ZWQgWzB4ODFmMDA3MjZdClNvdXJjZSBQU1Igc3RhdHVzOiBJRExFIFsweDA0MDEwMjEyXQpCdXN5
IGZyb250YnVmZmVyIGJpdHM6IDB4MDAwMDAwMDAKCgpJJ3ZlIGFsc28gdXBkYXRlZCB0byB0aGUg
cmVsZWFzZWQgNS4yIGtlcm5lbCBhbmQgYW0gcnVubmluZyB3aXRoIHRoZQpkZWJ1ZyBwYXJhbWV0
ZXJzIHlvdSByZXF1ZXN0ZWQgLi4uIGJ1dCBzbyBmYXIgbm8gcmVwcm9kdWN0aW9uLgoKSmFtZXMK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
