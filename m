Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0FB344DF8
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 19:00:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C41589BDB;
	Mon, 22 Mar 2021 18:00:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F43989B69
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 18:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616436044;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xo5xjSMlqkNtJlsetEa7I24Cttps9U4PG6WSIXkN6LU=;
 b=DwBIGJ2dUdLC6FxAN6iWS07LUC8dxFQNZbQnKbJIH+TfkDe7NuN8yzwmv1PGcb0ZXh+gNZ
 /DI5LJagIylv+9nA7gKRcNyS0QiE+NfTRtkgIRyH6ydatDTV+xSe1WCBepQdV9i76Ipaj6
 iDab7YQdJMqi+ApBVci7rLeQLX43i70=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-489-hOytqjkeN-eUYrRcRduK0w-1; Mon, 22 Mar 2021 14:00:41 -0400
X-MC-Unique: hOytqjkeN-eUYrRcRduK0w-1
Received: by mail-ej1-f71.google.com with SMTP id a22so18448423ejx.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 11:00:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xo5xjSMlqkNtJlsetEa7I24Cttps9U4PG6WSIXkN6LU=;
 b=BDKN+u//EITwWXLm7Bj5oatTheyzmJW8G37mcKGOHcN4Yv4vh6t5jCeBeko9/t+4X8
 gIhRJ8e8Pl0dc17oLwJy13JmYNZnDjjQO5nKm8U5D8Cnt7j/mW1qE8qzhqGLb8TW08si
 KLyL/7ThpC+rhkrFAUFXRdB/CBC4AXkWgPMNY/toTjIHBTlHhZmFXOhz5YtORA63a3/s
 SVgsO6QbHJpBip1a5rUiE38RZ1nw3shhU/eq+L6xox+TN6aRKcpfahF38mrJu6CbMdna
 jqQvdN8YiCaHwCdacPU8R0fCv9TrSFKwhFbfYOMOEsAhh0tpAecCeYz8WzDnnNkrL9ph
 gS2Q==
X-Gm-Message-State: AOAM532EKPkdxcH70b/Wxvq8uLqVpnI6gNqCdKSRHqWEYxe2jzERg2rx
 5mJ6LhHZ8A9oKvBcLDDP+r6uxydXGpjGIj75sru0zKRes6QqlIWs7nfpA6gYCJNQU9SNNhC0esS
 J/q4Ojh4laeVrzcvYSZKt27CBnHAafvq6GmIcHhWmtw3BZANc60pw38phOVTT4e3RiRDnSEMKm1
 zRYt1L
X-Received: by 2002:a17:906:5607:: with SMTP id
 f7mr1011133ejq.262.1616436039600; 
 Mon, 22 Mar 2021 11:00:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzn+A3Le2OLMOYWgEqSTZp784iQfnnjvFaU5b90JBOQUWbaeK6q0+x5TcSuWb2XCHGJX/0dlg==
X-Received: by 2002:a17:906:5607:: with SMTP id
 f7mr1011107ejq.262.1616436039410; 
 Mon, 22 Mar 2021 11:00:39 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id c20sm10094614eja.22.2021.03.22.11.00.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 22 Mar 2021 11:00:38 -0700 (PDT)
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <28b8cfd3f29d3e5ed4224c687ef173d6c45e028d.camel@gmx.net>
 <5ad5226b-91ce-8685-4c3f-e6890dd642a2@redhat.com>
 <YFivVDZ/j6sybifB@intel.com>
 <5c73b653-26ff-1e9f-1e38-7379d828a344@redhat.com>
 <YFi/KSwQIh5ISjd2@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <8ad78195-9e33-97d7-ae39-0d51158fd12b@redhat.com>
Date: Mon, 22 Mar 2021 19:00:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <YFi/KSwQIh5ISjd2@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [bug report] drm/i915: Computer does not shutdown,
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
Cc: intel-gfx@lists.freedesktop.org,
 =?UTF-8?Q?Mario_H=c3=bcttel?= <mario.huettel@gmx.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiAzLzIyLzIxIDU6MDAgUE0sIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPiBPbiBNb24s
IE1hciAyMiwgMjAyMSBhdCAwNDo1MToyNlBNICswMTAwLCBIYW5zIGRlIEdvZWRlIHdyb3RlOgo+
PiBIaSwKPj4KPj4gT24gMy8yMi8yMSAzOjUzIFBNLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6Cj4+
PiBPbiBNb24sIE1hciAyMiwgMjAyMSBhdCAxMTo0NTozOUFNICswMTAwLCBIYW5zIGRlIEdvZWRl
IHdyb3RlOgo+Pj4+IEhpLAo+Pj4+Cj4+Pj4gT24gMy8xNC8yMSAxMTozMCBBTSwgTWFyaW8gSMO8
dHRlbCB3cm90ZToKPj4+Pj4gSGVsbG8sCj4+Pj4+Cj4+Pj4+IEl0IHNlZW1zLCBsaWtlIHRoZSBt
YWlsaW5nIGxpc3QsIGRpZG4ndCBhY2NlcHQgbXkgZW1haWwuIFNvIEknbGwgc2VuZAo+Pj4+PiBp
dCBhZ2FpbjoKPj4+Pj4KPj4+Pj4gSSB3YW50IHRvIHJlcG9ydCBhIGJ1Zy4gSSBoYXZlIGEgUEMg
d2l0aCBJbnRlbCBpNy02NzAwSyBwcm9jZXNzb3IgKHdpdGgKPj4+Pj4gaW50ZWdyYXRlZCBncmFw
aGljcykgYW5kIGFuIEFzUm9jayBGYXRhbDF0eSBaMTcwIEdhbWluZyBLNiBtYWluYm9hcmQuIEkK
Pj4+Pj4gdXNlIHRoZSBDUFUncyBpbnRlZ3JhdGVkIGdyYXBoaWNzLgo+Pj4+PiBNeSBzeXN0ZW0g
aXMgQXJjaGxpbnV4IHdpdGggS2VybmVsIHY1LjExLjYuCj4+Pj4+Cj4+Pj4+IFVzaW5nIHRoaXMg
c2V0dXAsIG15IFBDIHdvcmtzIG5vcm1hbGx5LiBIb3dldmVyLCB3aGVuIEkgc2h1dCBpdCBkb3du
LAo+Pj4+PiB0aGUgcG93ZXIgaXMgbm90IGN1dC4gRmFucyBrZWVwIHNwaW5uaW5nIGFuZCBMRURz
IHN0YXkgb24uIEkgY291bGRuJ3QKPj4+Pj4gZGV0ZWN0IGFueSBvdGhlciBwcm9ibGVtIHdoZW4g
c2h1dHRpbmcgZG93bi4gRHJpdmVzIGV0Yy4gc3RvcCBhcwo+Pj4+PiBleHBlY3RlZCBhbmQgdGhl
IHZpZGVvIGlzIGJsYW5rLiBFdmVuIGFmdGVyIHdhaXRpbmcgc2V2ZXJhbCBob3VycywgdGhlCj4+
Pj4+IHN5c3RlbSBkb2Vzbid0IHBvd2VyIGRvd24uCj4+Pj4+Cj4+Pj4+IFJlc3RhcnRzIHdvcmsg
bm9ybWFsbHkuCj4+Pj4+Cj4+Pj4+IEkgaGF2ZW4ndCB5ZXQgZm91bmQgYW55IG90aGVyIHBlb3Bs
ZSBvbiB0aGUgaW50ZXJuZXQgdGhhdCBoYXZlIHRoZSBzYW1lCj4+Pj4+IGJ1Zy4KPj4+Pj4KPj4+
Pj4gSSB1c2VkIGdpdCBiaXNlY3QgdG8gZmluZCB0aGUgY29tbWl0IHRoYXQgY2F1c2VzIHRoaXMg
YmVoYXZpb3Igb24gbXkKPj4+Pj4gbWFjaGluZS4KPj4+Pgo+Pj4+IFRoYW5rIHlvdSBmb3IgZG9p
bmcgYSBiaXNlY3QgdGhhdCBpcyBhbHdheXMgdmVyeSBoZWxwZnVsLgo+Pj4+Cj4+Pj4+IFRoZSBy
ZXN1bHQgaXM6IGZlMGYxZTNiZmRmZWI1M2UxOGYxMjA2YWVhNGY0MGI5YmQxZjI5MWMgaXMgdGhl
Cj4+Pj4+IGZpcnN0IGJhZCBjb21taXQuCj4+Pj4KPj4+PiBUbyBzYXZlIG90aGVycyB0aGUgdHJv
dWJsZSBvZiBoYXZpbmcgdG8gbG9vayB1cCB0aGUgaGFzaiwgdGhhdCBpczoKPj4+Pgo+Pj4+ICJk
cm0vaTkxNTogU2h1dCBkb3duIGRpc3BsYXlzIGdyYWNlZnVsbHkgb24gcmVib290Igo+Pj4+Cj4+
Pj4gV2hpY2ggaXMgdGhlIHNhbWUgY29tbWl0IGFzIHdoaWNoIEkndmUgcmVwb3J0ZWQgaXMgY2F1
c2luZyBpc3N1ZXMKPj4+PiB3aXRoIERTSSBwYW5lbHMgbm90IGxpZ2h0aW5nIHVwIG9uIHJlYm9v
dHMgb24gc29tZSBCWVQvQ0hUIGRldmljZXMuCj4+Pj4KPj4+PiBTaW5jZSB0aGlzIHNlZW1zIHRv
IG1vc3RseSBiZSBpbnRlbmRlZCB0byBmaXggaXNzdWVzIHN1cnJvdW5kaW5nCj4+Pj4gRFAgTVNU
IHN0dWZmLCBtYXliZSB0aGUgZ3JhY2VmdWwgc2h1dGRvd24gc2hvdWxkIG9ubHkgYmUgZG9uZSB3
aGVuCj4+Pj4gTVNUIGlzIGluIHVzZT8KPj4+Cj4+PiBOby4gSXQgYWxzbyBmaXhlcyBXaW5kb3dz
LCBsb2xzLgo+Pgo+PiBPaywgY2FuIHlvdSBhdCBsZWFzdCB0YWtlIGEgbG9vayBhdCBteSBwYXRj
aCB3aGljaCBmaXhlcyAod29ya3MtYXJvdW5kKQo+PiB0aGUgaXNzdWVzIGZvciBEU0kgcGFuZWwg
b24gQllUL0NIVCBEU0kgZGV2aWNlczoKPj4KPj4gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3BhdGNoLzQyMjQ4MS8KPj4KPj4gPwo+IAo+IE5ldmVyIHJlYWNoZWQgbXkgaW5ib3gu
CgpZZXMgSSdtIHNlZWluZyBhIGxvdCBvZiBib3VuY2VzIGZyb20gdGhlIGxpbnV4LmludGVsLmNv
bSBtYWlsc2VydmVyIGxhdGVseQooYW5kIG9ubHkgZnJvbSB0aGF0IG1haWwgc2VydmVyIGFuZCBu
b3QgZnJvbSBhbnkgb3RoZXIgbWFpbHNlcnZlcnMpLgoKWW91IHNob3VsZCBoYXZlIGFsc28gcmVj
ZWl2ZWQgYSBjb3B5IHRocm91Z2ggdGhlIGludGVsLWdmeCBsaXN0cyB0aG91Z2guCgpPciB5b3Ug
Y2FuIGdyYWIgYSByYXcgY29weSBmcm9tIHBhdGNod29yay4KClJlZ2FyZGxlc3Mgb2YgdGhlIG1h
aWwtaXNzdWUgYSByZXZpZXcgd291bGQgYmUgbXVjaCBhcHByZWNpYXRlZC4KClJlZ2FyZHMsCgpI
YW5zCgoKcC5zLgoKV2hpbGUgb24gdGhlIHN1YmplY3RzIG9mIGJvdW5jaW5nIGVtYWlscywgZGlk
IHlvdSBzZWUgSmFuaSdzIHJlcGx5IHRvOgpodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5v
cmcvcGF0Y2gvNDIyNjY5LwoKV2hlcmUgaGUgYXNrcyBmb3IgYSBzZWNvbmQgb3BpbmlvbiBvbiB0
aGF0IHBhdGNoIGZyb20geW91ID8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
