Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 565711F3FF9
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jun 2020 17:58:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B5B36E287;
	Tue,  9 Jun 2020 15:58:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 037D889FA0
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jun 2020 15:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591718307;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2sZF8y4dz//CUo1CExXwEiPBS1P6/wt6bNlvClYRcww=;
 b=BC1NTwXLpqZUDGt3BIBG0xVLD/K7qDdq3efDxkeo6ujVF1VwEcwrLbNnPEbmM5ljnHe/jZ
 QuTPA217lsVkAqhe63nehi4XPEZWUGgiBLcirsYxBLVZw2FfpcdWDn9apZU9Svoy6F90e/
 goPtnkwatuqBmfkq6jnmVfs8IiuRXAo=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-7-EnMu1afxNaCW-wbHbGKvdA-1; Tue, 09 Jun 2020 11:58:22 -0400
X-MC-Unique: EnMu1afxNaCW-wbHbGKvdA-1
Received: by mail-qk1-f199.google.com with SMTP id 140so17379193qko.23
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Jun 2020 08:58:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=2sZF8y4dz//CUo1CExXwEiPBS1P6/wt6bNlvClYRcww=;
 b=SS95ewNhYDrBGaoUZEGT3zGQjZiBsRhNm4KtD6ECWv8qphIjVzKzuh6oTnkDLF4GNE
 nzSIJmdxBsvRSbYU9Te9kiZPWHrtey+ppgoLPDOS3psFKGSlzcBvBb4bUIpT3ijN8qTE
 lq0i9Sqg9qVD9WDUqfUYqNexDiJMWtbBZeOID1LyH0ji+PrVAT2dv4y4wFK6yB/lgThG
 KHB7Gth2pvxGB6joGyDATbMwRyh/EJYSDzB15yWC8cPDqtZNmb8D2bTl3ZpJ7LnotkYa
 ETKmYyRZTn/1kxRhopev1V8WOnt854AQGXcyQ6tDebiTbYVbDRno1/Mf+7vDhmTzFTO5
 1oiw==
X-Gm-Message-State: AOAM530W8tqmSZVG0as7KQBK/j+wNbnSQu2oS026Y+Nmy1ABal727xVC
 Tt0zwQsxtHZod+57YmvaYO9XREmOnE5uXDCRV3V+8UQLawDbyTgs9BTJmnDAJdorAEzv+MJ+JLq
 qXFtptgTExwoSoJkeGG8Ysxbo94bj
X-Received: by 2002:ac8:4b79:: with SMTP id g25mr30111908qts.29.1591718300817; 
 Tue, 09 Jun 2020 08:58:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxZFTAQJLiO5W11E+cLqlRJhqguVMWKI7dKMQV2bVDojXiPc9waeAlRdGPJrWT7Kflp7zL59w==
X-Received: by 2002:ac8:4b79:: with SMTP id g25mr30111877qts.29.1591718300444; 
 Tue, 09 Jun 2020 08:58:20 -0700 (PDT)
Received: from Whitewolf.lyude.net
 (static-173-76-190-23.bstnma.ftas.verizon.net. [173.76.190.23])
 by smtp.gmail.com with ESMTPSA id w3sm10323569qkb.85.2020.06.09.08.58.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 08:58:19 -0700 (PDT)
Message-ID: <3ac3e3d05dab3ebb83023e35bb0f5c5b15b0fbd6.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: imre.deak@intel.com, Dave Airlie <airlied@redhat.com>
Date: Tue, 09 Jun 2020 11:58:18 -0400
In-Reply-To: <20200609121556.GF22647@ideak-desk.fi.intel.com>
References: <20200603211040.8190-3-imre.deak@intel.com>
 <20200604184500.23730-2-imre.deak@intel.com>
 <20200609121556.GF22647@ideak-desk.fi.intel.com>
Organization: Red Hat
User-Agent: Evolution 3.36.2 (3.36.2-1.fc32)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v3 3/3] drm/i915/dp_mst: Work around
 out-of-spec adapters filtering short pulses
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
Reply-To: lyude@redhat.com
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkhIEF3ZXNvbWUgcGF0Y2ggc2VyaWVzIQoKUmV2aWV3ZWQtYnk6IEx5dWRlIFBhdWwgPGx5dWRl
QHJlZGhhdC5jb20+CgpBbHNvIHJlIG1lcmdpbmcgdmlhIGRybS1pbnRlbC1uZXh0LXF1ZXVlZCAt
IEkgdGhpbmsgdGhhdCBzaG91bGQgYmUgZmluZSwgZndpdwptZXJnaW5nIHZpYSBkcm0tbWlzYy1u
ZXh0IG1pZ2h0IGJlIGFub3RoZXIgb3B0aW9uIChJJ3ZlIGRlZmluaXRlbHkgZG9uZSB0aGlzIGlu
CnRoZSBwYXN0IGZvciBzZXJpZXMgdGhhdCB0b3VjaGVkIE1TVCBhbmQgZHJpdmVycywgYnV0IEkg
ZG9uJ3QgaGF2ZSBhIGhhcmQKcHJlZmVyZW5jZSBlaXRoZXIgd2F5KS4KCk9uIFR1ZSwgMjAyMC0w
Ni0wOSBhdCAxNToxNSArMDMwMCwgSW1yZSBEZWFrIHdyb3RlOgo+IEhpIERhdmUsIEx5dWRlLAo+
IAo+IGFyZSB5b3Ugb2sgdG8gbWVyZ2UgdGhpcyBwYXRjaHNldCB2aWEgdGhlIGRybS1pbnRlbC1u
ZXh0LXF1ZXVlZCB0cmVlPwo+IAo+IC0tSW1yZQo+IAo+IE9uIFRodSwgSnVuIDA0LCAyMDIwIGF0
IDA5OjQ1OjAwUE0gKzAzMDAsIEltcmUgRGVhayB3cm90ZToKPiA+IFNvbWUgVHlwZUMgLT4gbmF0
aXZlIERQIGFkYXB0ZXJzLCBhdCBsZWFzdCB0aGUgQ2x1YiAzRCBDQUMtMTU1NyBhZGFwdGVyLAo+
ID4gaW5jb3JyZWN0bHkgZmlsdGVyIG91dCBIUEQgc2hvcnQgcHVsc2VzIHdpdGggYSBkdXJhdGlv
biBsZXNzIHRoYW4KPiA+IH41NDAgdXNlYywgbGVhZGluZyB0byBNU1QgcHJvYmUgZmFpbHVyZXMu
Cj4gPiAKPiA+IEFjY29yZGluZyB0byB0aGUgRFAgU3RhbmRhcmQgMi4wIHNlY3Rpb24gNS4xLjQ6
Cj4gPiAtIERQIHNpbmtzIHNob3VsZCBnZW5lcmF0ZSBzaG9ydCBwdWxzZXMgaW4gdGhlIDUwMCB1
c2VjIC0+IDEgbXNlYyByYW5nZQo+ID4gLSBEUCBzb3VyY2VzIHNob3VsZCBkZXRlY3Qgc2hvcnQg
cHVsc2VzIGluIHRoZSAyNTAgdXNlYyAtPiAyIG1zZWMgcmFuZ2UKPiA+IAo+ID4gQWNjb3JkaW5n
IHRvIHRoZSBEUCBBbHQgTW9kZSBvbiBUeXBlQyBTdGFuZGFyZCBzZWN0aW9uIDMuOS4yLCBhZGFw
dGVycwo+ID4gc2hvdWxkIGRldGVjdCBhbmQgZm9yd2FyZCBzaG9ydCBwdWxzZXMgYWNjb3JkaW5n
IHRvIGhvdyBzb3VyY2VzIHNob3VsZAo+ID4gZGV0ZWN0IHRoZW0gYXMgc3BlY2lmaWVkIGluIHRo
ZSBEUCBTdGFuZGFyZCAoMjUwIHVzZWMgLT4gMiBtc2VjKS4KPiA+IAo+ID4gQmFzZWQgb24gdGhl
IGFib3ZlIGZpbHRlcmluZyBvdXQgc2hvcnQgcHVsc2VzIHdpdGggYSBkdXJhdGlvbiBsZXNzIHRo
YW4KPiA+IDU0MCB1c2VjIGlzIGluY29ycmVjdC4KPiA+IAo+ID4gVG8gbWFrZSBzdWNoIGFkYXB0
ZXJzIHdvcmsgYWRkIHN1cHBvcnQgZm9yIGEgZHJpdmVyIHBvbGxpbmcgb24gTVNUCj4gPiBpbmVy
cnVwdCBmbGFncywgYW5kIHdpcmUgdGhpcyB1cCBpbiB0aGUgaTkxNSBkcml2ZXIuIFRoZSBzaW5r
IGNhbiBjbGVhcgo+ID4gYW4gaW50ZXJydXB0IGl0IHJhaXNlZCBhZnRlciAxMTAgbXNlYyBpZiB0
aGUgc291cmNlIGRvZXNuJ3QgcmVzcG9uZCwgc28KPiA+IHVzZSBhIDUwIG1zZWMgcG9sbCBwZXJp
b2QgdG8gYXZvaWQgbWlzc2luZyBhbiBpbnRlcnJ1cHQuIFBvbGxpbmcgb2YgdGhlCj4gPiBNU1Qg
aW50ZXJydXB0IGZsYWdzIGlzIGV4cGxpY2l0bHkgYWxsb3dlZCBieSB0aGUgRFAgU3RhbmRhcmQu
Cj4gPiAKPiA+IFRoaXMgZml4ZXMgTVNUIHByb2JlIGZhaWx1cmVzIEkgc2F3IHVzaW5nIHRoaXMg
YWRhcHRlciBhbmQgYSBERUxMIFUyNTE1SAo+ID4gbW9uaXRvci4KPiA+IAo+ID4gdjI6Cj4gPiAt
IEZpeCB0aGUgd2FpdCBldmVudCB0aW1lb3V0IGZvciB0aGUgbm8tcG9sbCBjYXNlLgo+ID4gdjMg
KFZpbGxlKToKPiA+IC0gRml4IHRoZSBzaG9ydCBwdWxzZSBkdXJhdGlvbiBsaW1pdHMgaW4gdGhl
IGNvbW1pdCBsb2cgcHJlc2NyaWJlZCBieSB0aGUKPiA+ICAgRFAgU3RhbmRhcmQuCj4gPiAtIEFk
ZCBjb2RlIGNvbW1lbnQgZXhwbGFpbmluZyB3aHkvaG93IHBvbGxpbmcgaXMgdXNlZC4KPiA+IC0g
RmFjdG9yIG91dCBhIGhlbHBlciB0byBzY2hlZHVsZSB0aGUgcG9ydCdzIGhwZCBpcnEgaGFuZGxl
ciBhbmQgbW92ZSBpdAo+ID4gICB0byB0aGUgcmVzdCBvZiBob3RwbHVnIGhhbmRsZXJzLgo+ID4g
LSBEb2N1bWVudCB0aGUgbmV3IE1TVCBjYWxsYmFjay4KPiA+IC0gcy91cGRhdGVfaHBkX2lycV9z
dGF0ZS9wb2xsX2hwZF9pcnEvCj4gPiAKPiA+IENjOiBWaWxsZSBTeXJqw4PGksOCwqRsw4PGksOC
wqQgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogSW1y
ZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJt
L2RybV9kcF9tc3RfdG9wb2xvZ3kuYyAgICAgICAgfCAzMiArKysrKysrKysrKysrKysrKystLQo+
ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgIHwgMTAgKysr
KysrCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMgfCAx
OCArKysrKysrKysrKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90
cGx1Zy5oIHwgIDIgKysKPiA+ICBpbmNsdWRlL2RybS9kcm1fZHBfbXN0X2hlbHBlci5oICAgICAg
ICAgICAgICB8ICA5ICsrKysrKwo+ID4gIDUgZmlsZXMgY2hhbmdlZCwgNjggaW5zZXJ0aW9ucygr
KSwgMyBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9k
cm1fZHBfbXN0X3RvcG9sb2d5LmMKPiA+IGIvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3RfdG9w
b2xvZ3kuYwo+ID4gaW5kZXggNWJjNzJlODAwYjg1Li4yYTMwOWZiMmM0Y2MgMTAwNjQ0Cj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jCj4gPiBAQCAtMTE3OCwxMSArMTE3OCwz
NyBAQCBzdGF0aWMgaW50IGRybV9kcF9tc3Rfd2FpdF90eF9yZXBseShzdHJ1Y3QKPiA+IGRybV9k
cF9tc3RfYnJhbmNoICptc3RiLAo+ID4gIAkJCQkgICAgc3RydWN0IGRybV9kcF9zaWRlYmFuZF9t
c2dfdHggKnR4bXNnKQo+ID4gIHsKPiA+ICAJc3RydWN0IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdy
ICptZ3IgPSBtc3RiLT5tZ3I7Cj4gPiArCXVuc2lnbmVkIGxvbmcgd2FpdF90aW1lb3V0ID0gbXNl
Y3NfdG9famlmZmllcyg0MDAwKTsKPiA+ICsJdW5zaWduZWQgbG9uZyB3YWl0X2V4cGlyZXMgPSBq
aWZmaWVzICsgd2FpdF90aW1lb3V0Owo+ID4gIAlpbnQgcmV0Owo+ID4gIAo+ID4gLQlyZXQgPSB3
YWl0X2V2ZW50X3RpbWVvdXQobWdyLT50eF93YWl0cSwKPiA+IC0JCQkJIGNoZWNrX3R4bXNnX3N0
YXRlKG1nciwgdHhtc2cpLAo+ID4gLQkJCQkgKDQgKiBIWikpOwo+ID4gKwlmb3IgKDs7KSB7Cj4g
PiArCQkvKgo+ID4gKwkJICogSWYgdGhlIGRyaXZlciBwcm92aWRlcyBhIHdheSBmb3IgdGhpcywg
Y2hhbmdlIHRvCj4gPiArCQkgKiBwb2xsLXdhaXRpbmcgZm9yIHRoZSBNU1QgcmVwbHkgaW50ZXJy
dXB0IGlmIHdlIGRpZG4ndCByZWNlaXZlCj4gPiArCQkgKiBpdCBmb3IgNTAgbXNlYy4gVGhpcyB3
b3VsZCBjYXRlciBmb3IgY2FzZXMgd2hlcmUgdGhlIEhQRAo+ID4gKwkJICogcHVsc2Ugc2lnbmFs
IGdvdCBsb3N0IHNvbWV3aGVyZSwgZXZlbiB0aG91Z2ggdGhlIHNpbmsgcmFpc2VkCj4gPiArCQkg
KiB0aGUgY29ycmVzcG9uZGluZyBNU1QgaW50ZXJydXB0IGNvcnJlY3RseS4gT25lIGV4YW1wbGUg
aXMgdGhlCj4gPiArCQkgKiBDbHViIDNEIENBQy0xNTU3IFR5cGVDIC0+IERQIGFkYXB0ZXIgd2hp
Y2ggZm9yIHNvbWUgcmVhc29uCj4gPiArCQkgKiBmaWx0ZXJzIG91dCBzaG9ydCBwdWxzZXMgd2l0
aCBhIGR1cmF0aW9uIGxlc3MgdGhhbiB+NTQwIHVzZWMuCj4gPiArCQkgKgo+ID4gKwkJICogVGhl
IHBvbGwgcGVyaW9kIGlzIDUwIG1zZWMgdG8gYXZvaWQgbWlzc2luZyBhbiBpbnRlcnJ1cHQKPiA+
ICsJCSAqIGFmdGVyIHRoZSBzaW5rIGhhcyBjbGVhcmVkIGl0IChhZnRlciBhIDExMG1zZWMgdGlt
ZW91dAo+ID4gKwkJICogc2luY2UgaXQgcmFpc2VkIHRoZSBpbnRlcnJ1cHQpLgo+ID4gKwkJICov
Cj4gPiArCQlyZXQgPSB3YWl0X2V2ZW50X3RpbWVvdXQobWdyLT50eF93YWl0cSwKPiA+ICsJCQkJ
CSBjaGVja190eG1zZ19zdGF0ZShtZ3IsIHR4bXNnKSwKPiA+ICsJCQkJCSBtZ3ItPmNicy0+cG9s
bF9ocGRfaXJxID8KPiA+ICsJCQkJCQltc2Vjc190b19qaWZmaWVzKDUwKSA6Cj4gPiArCQkJCQkJ
d2FpdF90aW1lb3V0KTsKPiA+ICsKPiA+ICsJCWlmIChyZXQgfHwgIW1nci0+Y2JzLT5wb2xsX2hw
ZF9pcnEgfHwKPiA+ICsJCSAgICB0aW1lX2FmdGVyKGppZmZpZXMsIHdhaXRfZXhwaXJlcykpCj4g
PiArCQkJYnJlYWs7Cj4gPiArCj4gPiArCQltZ3ItPmNicy0+cG9sbF9ocGRfaXJxKG1ncik7Cj4g
PiArCX0KPiA+ICsKPiA+ICAJbXV0ZXhfbG9jaygmbWdyLT5xbG9jayk7Cj4gPiAgCWlmIChyZXQg
PiAwKSB7Cj4gPiAgCQlpZiAodHhtc2ctPnN0YXRlID09IERSTV9EUF9TSURFQkFORF9UWF9USU1F
T1VUKSB7Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF9tc3QuYwo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21z
dC5jCj4gPiBpbmRleCBkMThiNDA2ZjJhN2QuLjliZTUyNjQzMjA1ZCAxMDA2NDQKPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKPiA+IEBAIC0zMyw2ICsz
Myw3IEBACj4gPiAgI2luY2x1ZGUgImludGVsX2Nvbm5lY3Rvci5oIgo+ID4gICNpbmNsdWRlICJp
bnRlbF9kZGkuaCIKPiA+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIgo+ID4gKyNp
bmNsdWRlICJpbnRlbF9ob3RwbHVnLmgiCj4gPiAgI2luY2x1ZGUgImludGVsX2RwLmgiCj4gPiAg
I2luY2x1ZGUgImludGVsX2RwX21zdC5oIgo+ID4gICNpbmNsdWRlICJpbnRlbF9kcGlvX3BoeS5o
Igo+ID4gQEAgLTc2NSw4ICs3NjYsMTcgQEAgc3RhdGljIHN0cnVjdCBkcm1fY29ubmVjdG9yCj4g
PiAqaW50ZWxfZHBfYWRkX21zdF9jb25uZWN0b3Ioc3RydWN0IGRybV9kcF9tc3RfdG9wb2xvCj4g
PiAgCXJldHVybiBOVUxMOwo+ID4gIH0KPiA+ICAKPiA+ICtzdGF0aWMgdm9pZAo+ID4gK2ludGVs
X2RwX21zdF9wb2xsX2hwZF9pcnEoc3RydWN0IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyICptZ3Ip
Cj4gPiArewo+ID4gKwlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gY29udGFpbmVyX29mKG1n
ciwgc3RydWN0IGludGVsX2RwLCBtc3RfbWdyKTsKPiA+ICsKPiA+ICsJaW50ZWxfaHBkX3RyaWdn
ZXJfaXJxKGRwX3RvX2RpZ19wb3J0KGludGVsX2RwKSk7Cj4gPiArfQo+ID4gKwo+ID4gIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgZHJtX2RwX21zdF90b3BvbG9neV9jYnMgbXN0X2NicyA9IHsKPiA+ICAJ
LmFkZF9jb25uZWN0b3IgPSBpbnRlbF9kcF9hZGRfbXN0X2Nvbm5lY3RvciwKPiA+ICsJLnBvbGxf
aHBkX2lycSA9IGludGVsX2RwX21zdF9wb2xsX2hwZF9pcnEsCj4gPiAgfTsKPiA+ICAKPiA+ICBz
dGF0aWMgc3RydWN0IGludGVsX2RwX21zdF9lbmNvZGVyICoKPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYwo+ID4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYwo+ID4gaW5kZXggNGY2ZjU2MGUwOTNl
Li42NjRmODgzNTQxMDEgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2hvdHBsdWcuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9ob3RwbHVnLmMKPiA+IEBAIC0zNDcsNiArMzQ3LDI0IEBAIHN0YXRpYyB2b2lkIGk5
MTVfZGlncG9ydF93b3JrX2Z1bmMoc3RydWN0IHdvcmtfc3RydWN0Cj4gPiAqd29yaykKPiA+ICAJ
fQo+ID4gIH0KPiA+ICAKPiA+ICsvKioKPiA+ICsgKiBpbnRlbF9ocGRfdHJpZ2dlcl9pcnEgLSB0
cmlnZ2VyIGFuIGhwZCBpcnEgZXZlbnQgZm9yIGEgcG9ydAo+ID4gKyAqIEBkaWdfcG9ydDogZGln
aXRhbCBwb3J0Cj4gPiArICoKPiA+ICsgKiBUcmlnZ2VyIGFuIEhQRCBpbnRlcnJ1cHQgZXZlbnQg
Zm9yIHRoZSBnaXZlbiBwb3J0LCBlbXVsYXRpbmcgYSBzaG9ydAo+ID4gcHVsc2UKPiA+ICsgKiBn
ZW5lcmF0ZWQgYnkgdGhlIHNpbmssIGFuZCBzY2hlZHVsZSB0aGUgZGlnIHBvcnQgd29yayB0byBo
YW5kbGUgaXQuCj4gPiArICovCj4gPiArdm9pZCBpbnRlbF9ocGRfdHJpZ2dlcl9pcnEoc3RydWN0
IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpCj4gPiArewo+ID4gKwlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYpOwo+ID4g
Kwo+ID4gKwlzcGluX2xvY2tfaXJxKCZpOTE1LT5pcnFfbG9jayk7Cj4gPiArCWk5MTUtPmhvdHBs
dWcuc2hvcnRfcG9ydF9tYXNrIHw9IEJJVChkaWdfcG9ydC0+YmFzZS5wb3J0KTsKPiA+ICsJc3Bp
bl91bmxvY2tfaXJxKCZpOTE1LT5pcnFfbG9jayk7Cj4gPiArCj4gPiArCXF1ZXVlX3dvcmsoaTkx
NS0+aG90cGx1Zy5kcF93cSwgJmk5MTUtPmhvdHBsdWcuZGlnX3BvcnRfd29yayk7Cj4gPiArfQo+
ID4gKwo+ID4gIC8qCj4gPiAgICogSGFuZGxlIGhvdHBsdWcgZXZlbnRzIG91dHNpZGUgdGhlIGlu
dGVycnVwdCBoYW5kbGVyIHByb3Blci4KPiA+ICAgKi8KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuaAo+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuaAo+ID4gaW5kZXggNzc3YjA3NDMyNTdlLi5h
NzA0ZDdjOTRkMTYgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2hvdHBsdWcuaAo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9ob3RwbHVnLmgKPiA+IEBAIC0xMCw2ICsxMCw3IEBACj4gPiAgCj4gPiAgc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGU7Cj4gPiAgc3RydWN0IGludGVsX2Nvbm5lY3RvcjsKPiA+ICtzdHJ1Y3Qg
aW50ZWxfZGlnaXRhbF9wb3J0Owo+ID4gIHN0cnVjdCBpbnRlbF9lbmNvZGVyOwo+ID4gIGVudW0g
cG9ydDsKPiA+ICAKPiA+IEBAIC0xOCw2ICsxOSw3IEBAIGVudW0gaW50ZWxfaG90cGx1Z19zdGF0
ZSBpbnRlbF9lbmNvZGVyX2hvdHBsdWcoc3RydWN0Cj4gPiBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LAo+ID4gIAkJCQkJICAgICAgIHN0cnVjdCBpbnRlbF9jb25uZWN0b3IKPiA+ICpjb25uZWN0b3Ip
Owo+ID4gIHZvaWQgaW50ZWxfaHBkX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwKPiA+ICAJCQkgICB1MzIgcGluX21hc2ssIHUzMiBsb25nX21hc2spOwo+ID4g
K3ZvaWQgaW50ZWxfaHBkX3RyaWdnZXJfaXJxKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRp
Z19wb3J0KTsKPiA+ICB2b2lkIGludGVsX2hwZF9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdik7Cj4gPiAgdm9pZCBpbnRlbF9ocGRfaW5pdF93b3JrKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdik7Cj4gPiAgdm9pZCBpbnRlbF9ocGRfY2FuY2VsX3dvcmsoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRl
L2RybS9kcm1fZHBfbXN0X2hlbHBlci5oCj4gPiBiL2luY2x1ZGUvZHJtL2RybV9kcF9tc3RfaGVs
cGVyLmgKPiA+IGluZGV4IDllMWZmY2Q3Y2I2OC4uYjIzMGZmNmY3MDgxIDEwMDY0NAo+ID4gLS0t
IGEvaW5jbHVkZS9kcm0vZHJtX2RwX21zdF9oZWxwZXIuaAo+ID4gKysrIGIvaW5jbHVkZS9kcm0v
ZHJtX2RwX21zdF9oZWxwZXIuaAo+ID4gQEAgLTQ3NSw2ICs0NzUsMTUgQEAgc3RydWN0IGRybV9k
cF9tc3RfdG9wb2xvZ3lfbWdyOwo+ID4gIHN0cnVjdCBkcm1fZHBfbXN0X3RvcG9sb2d5X2NicyB7
Cj4gPiAgCS8qIGNyZWF0ZSBhIGNvbm5lY3RvciBmb3IgYSBwb3J0ICovCj4gPiAgCXN0cnVjdCBk
cm1fY29ubmVjdG9yICooKmFkZF9jb25uZWN0b3IpKHN0cnVjdCBkcm1fZHBfbXN0X3RvcG9sb2d5
X21ncgo+ID4gKm1nciwgc3RydWN0IGRybV9kcF9tc3RfcG9ydCAqcG9ydCwgY29uc3QgY2hhciAq
cGF0aCk7Cj4gPiArCS8qCj4gPiArCSAqIENoZWNrcyBmb3IgYW55IHBlbmRpbmcgTVNUIGludGVy
cnVwdHMsIHBhc3NpbmcgdGhlbSB0byBNU1QgY29yZSBmb3IKPiA+ICsJICogcHJvY2Vzc2luZywg
dGhlIHNhbWUgd2F5IGFuIEhQRCBJUlEgcHVsc2UgaGFuZGxlciB3b3VsZCBkbyB0aGlzLgo+ID4g
KwkgKiBJZiBwcm92aWRlZCBNU1QgY29yZSBjYWxscyB0aGlzIGNhbGxiYWNrIGZyb20gYSBwb2xs
LXdhaXRpbmcgbG9vcAo+ID4gKwkgKiB3aGVuIHdhaXRpbmcgZm9yIE1TVCBkb3duIG1lc3NhZ2Ug
cmVwbGllcy4gVGhlIGRyaXZlciBpcyBleHBlY3RlZAo+ID4gKwkgKiB0byBndWFyZCBhZ2FpbnN0
IGEgcmFjZSBiZXR3ZWVuIHRoaXMgY2FsbGJhY2sgYW5kIHRoZSBkcml2ZXIncyBIUEQKPiA+ICsJ
ICogSVJRIHB1bHNlIGhhbmRsZXIuCj4gPiArCSAqLwo+ID4gKwl2b2lkICgqcG9sbF9ocGRfaXJx
KShzdHJ1Y3QgZHJtX2RwX21zdF90b3BvbG9neV9tZ3IgKm1ncik7Cj4gPiAgfTsKPiA+ICAKPiA+
ICAjZGVmaW5lIERQX01BWF9QQVlMT0FEIChzaXplb2YodW5zaWduZWQgbG9uZykgKiA4KQo+ID4g
LS0gCj4gPiAyLjIzLjEKPiA+IAo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiA+IEludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
