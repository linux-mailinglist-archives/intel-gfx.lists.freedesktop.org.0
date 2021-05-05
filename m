Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB62373785
	for <lists+intel-gfx@lfdr.de>; Wed,  5 May 2021 11:28:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BA1A89F2A;
	Wed,  5 May 2021 09:28:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD7CB89F61
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 May 2021 09:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620206892;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=X7xKwX6v4PMm4/k0xFSWl0nT4DfqJdoqHqiM6H5M1x4=;
 b=d8abD5Ae0nJUULa1PtqoncZWB0yp27CUaMYYbXI9C1DtbS5AHe5fXhrPaMpbAdJPrcQhwp
 iQUP3nAhwMgUKOGV7Y06Rn5Fe1RkN39dydP4sAoNnTWWzECcBTuH6wAyUp3IFVrO9DzSqf
 mcRHxTWtwyyHJiGy3ATzzd1BdvzCwzA=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-148-2LHXQUwQN6aNtfFsx7-SRg-1; Wed, 05 May 2021 05:28:09 -0400
X-MC-Unique: 2LHXQUwQN6aNtfFsx7-SRg-1
Received: by mail-ed1-f72.google.com with SMTP id
 i2-20020a0564020542b02903875c5e7a00so559905edx.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 May 2021 02:28:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=X7xKwX6v4PMm4/k0xFSWl0nT4DfqJdoqHqiM6H5M1x4=;
 b=Rxp8SdDxDXTwkrRpQnhUjtJ12qbSo1ySiClHSHIJt6QWMTJgdM79m0XUbJNqB7SXm+
 ZNAQOma5BCkwNOuRnbuLT2/12KW+nbv1mVJ5Uc3i3Q+yM6q7PbYB/jWVuNV/ynkciG6j
 5YTvInEB9ADg/qV2j0VAiJOj9kHSDneuwyTiOUvjteuRTLSof8fizXHYMOjHeNr0RMJr
 o8y+KgvQ6P6+o5gNnp8xKD1WdQmrrhwhI5Wd5xvtt7RtnyGXoksbTlpdY83G549a14/d
 Xt5a2svNhHbg0RJqA5Jlcb8kZ6tnmHlrpQoeXPn6Uo96pGwwCJYsk0a0vqYdZn18R1N8
 dh4w==
X-Gm-Message-State: AOAM530XQC0hXtRy6e2DmHcmyk1ISx/o0Xi1CuYJdDmAmOIQeOegAnz7
 JIQpoQJA3IyMlIiFkrlOBLuR1SH5vWJYxBhGTxmVEBVXMI1iRKYFxqc/axpiiEDUmmkMG++rwan
 KzLptau+StZ4pqxRD2f93ons2FHy8
X-Received: by 2002:a50:eb0d:: with SMTP id y13mr30642609edp.326.1620206887944; 
 Wed, 05 May 2021 02:28:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxL8R18B7f6TGeGdHnyj4jzSTwnOyOMPSZu8SztxEcW3w1BfHZ6h5V+WGLd4L2A7kUFD3DMpQ==
X-Received: by 2002:a50:eb0d:: with SMTP id y13mr30642572edp.326.1620206887660; 
 Wed, 05 May 2021 02:28:07 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id u1sm15344385edv.90.2021.05.05.02.28.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 05 May 2021 02:28:07 -0700 (PDT)
To: Andy Shevchenko <andy.shevchenko@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
References: <20210503154647.142551-1-hdegoede@redhat.com>
 <20210503154647.142551-6-hdegoede@redhat.com>
 <CAHp75VcS5nvzBzjbSytqD6qsSURyzdEdmDi934y=5W2SCNyo9A@mail.gmail.com>
 <ee230261-423d-0e2f-16b0-852d264afa2b@redhat.com>
 <CAHp75VcfkcaVAu2-8-5he7PN=W_tRHiHAgXYn04gRnLehDVsyQ@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <ffb46bb6-3548-4ec2-f176-99f3674e7f6d@redhat.com>
Date: Wed, 5 May 2021 11:28:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAHp75VcfkcaVAu2-8-5he7PN=W_tRHiHAgXYn04gRnLehDVsyQ@mail.gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/i915: Associate ACPI connector
 nodes with connector entries
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
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiA1LzUvMjEgMTE6MTcgQU0sIEFuZHkgU2hldmNoZW5rbyB3cm90ZToKPiBPbiBXZWQs
IE1heSA1LCAyMDIxIGF0IDEyOjA3IFBNIEhhbnMgZGUgR29lZGUgPGhkZWdvZWRlQHJlZGhhdC5j
b20+IHdyb3RlOgo+PiBPbiA1LzQvMjEgOTo1MiBBTSwgQW5keSBTaGV2Y2hlbmtvIHdyb3RlOgo+
Pj4gT24gTW9uZGF5LCBNYXkgMywgMjAyMSwgSGFucyBkZSBHb2VkZSA8aGRlZ29lZGVAcmVkaGF0
LmNvbSA8bWFpbHRvOmhkZWdvZWRlQHJlZGhhdC5jb20+PiB3cm90ZToKPiAKPiAuLi4KPiAKPj4+
ICAgICArICAgICAgICAgICAgICAgZndub2RlID0gZGV2aWNlX2dldF9uZXh0X2NoaWxkX25vZGUo
a2RldiwgZndub2RlKTsKPiAKPj4+IFdobyBpcyBkcm9wcGluZyByZWZlcmVuY2UgY291bnRpbmcg
b24gZndub2RlID8KPj4KPj4gV2UgYXJlIGRlYWxpbmcgd2l0aCBBQ1BJIGZ3bm9kZS1zIGhlcmUg
YW5kIHRob3NlIGFyZSBub3QgcmVmLWNvdW50ZWQsIHRoZXkKPj4gYXJlIGVtYmVkZGVkIGluc2lk
ZSBhIHN0cnVjdCBhY3BpX2RldmljZSBhbmQgdGhlaXIgbGlmZXRpbWUgaXMgdGllZCB0bwo+PiB0
aGF0IHN0cnVjdC4gVGhleSBzaG91bGQgcHJvYmFibHkgc3RpbGwgYmUgcmVmLWNvdW50ZWQgKHdp
dGggdGhlIGNvdW50Cj4+IG5ldmVyIGRyb3BwaW5nIHRvIDApIHNvIHRoYXQgdGhlIGdlbmVyaWMg
Zndub2RlIGZ1bmN0aW9ucyBiZWhhdmUgdGhlIHNhbWUKPj4gYW55d2hlcmUgYnV0IGF0bSB0aGUg
QUNQSSBub2RlcyBhcmUgbm90IHJlZmNvdW50ZWQsIHNlZTogYWNwaV9nZXRfbmV4dF9zdWJub2Rl
KCkKPj4gaW4gZHJpdmVycy9hY3BpL3Byb3BlcnR5LmMgd2hpY2ggaXMgdGhlIGdldF9uZXh0X2No
aWxkX25vZGUoKSBpbXBsZW1lbnRhdGlvbgo+PiBmb3IgQUNQSSBmd25vZGUtcy4KPiAKPiBZZXMs
IEFDUEkgY3VycmVudGx5IGlzIGV4Y2VwdGlvbmFsLCBidXQgZndub2RlIEFQSSBpcyBub3QuCj4g
SWYgeW91IG1heSBndWFyYW50ZWUgdGhhdCB0aGlzIGNhc2Ugd29uJ3QgZXZlciBiZSBvdXRzaWRl
IG9mIEFDUEkKClllcyBJIGNhbiBndWFyYW50ZWUgdGhhdCBjdXJyZW50bHkgdGhpcyBjb2RlICh3
aGljaCBpcyBmb3IgdGhlIGk5MTUKZHJpdmVyIG9ubHkpIG9ubHkgZGVhbHMgd2l0aCBBQ1BJIGZ3
bm9kZXMuCgo+IGFuZAo+IGV2ZW4gdGhvdWdoIGlmIEFDUEkgd29uJ3QgZXZlciBnYWluIGEgcmVm
ZXJlbmNlIGNvdW50aW5nIGZvciBmd25vZGVzLAo+IHdlIGNhbiBsZWF2ZSBpdCBhcyBpcy4KCldv
dWxkIGl0IG5vdCBiZSBiZXR0ZXIgdG8gYWRkIGZha2UgcmVmLWNvdW50aW5nIHRvIHRoZSBBQ1BJ
IGZ3bm9kZQpuZXh0X2NoaWxkX25vZGUoKSBvcCB0aG91Z2guIEkgYmVsaWV2ZSBqdXN0IGdldHRp
bmcgYSByZWZlcmVuY2UKb24gdGhlIHJldHVybiB2YWx1ZSB0aGVyZSBzaG91bGQgd29yayBmaW5l
OyBhbmQgdGhlbiBhbGwgZndub2RlCmltcGxlbWVudGF0aW9ucyB3b3VsZCBiZSBjb25zaXN0ZW50
ID8KCihub3RlIEkgZGlkIG5vdCBjaGVjayB0aGF0IHRoZSBvZiBhbmQgc3dub2RlIGNvZGUgZG8g
cmV0dXJuCmEgcmVmZXJlbmNlIGJ1dCBJIHdvdWxkIGFzc3VtZSBzbykuCgo+Pj4gSeKAmW0gaW4g
dGhlIG1pZGRsZSBvZiBhIHBpbGUgb2YgZml4ZXMgZm9yIGZ3bm9kZSByZWZjb3VudGluZyB3aGVu
IGZvcl9lYWNoX2NoaWxkIG9yIGdldF9uZXh0X2NoaWxkIGlzIHVzZWQuIFNvLCBwbGVhc2UgZG91
YmxlIGNoZWNrIHlvdSBkcm9wIGEgcmVmZXJlbmNlLgo+Pgo+PiBUaGUga2RvYyBjb21tZW50cyBv
biBkZXZpY2VfZ2V0X25leHRfY2hpbGRfbm9kZSgpIC8gZndub2RlX2dldF9uZXh0X2NoaWxkX25v
ZGUoKQo+PiBkbyBub3QgbWVudGlvbiBhbnl0aGluZyBhYm91dCB0aGVzZSBmdW5jdGlvbnMgcmV0
dXJuaW5nIGEgcmVmZXJlbmNlLgo+IAo+IEl0J3MgcG9zc2libGUuIEkgZHVubm8gaWYgaXQgaGFk
IHRvIGJlIGRvbmUgZWFybGllci4gU2FrYXJpPwo+IAo+PiBTbyBJIHRoaW5rIHdlIG5lZWQgdG8g
Zmlyc3QgbWFrZSB1cCBvdXIgbWluZCBoZXJlIGhvdyB3ZSB3YW50IHRoaXMgYWxsIHRvCj4+IHdv
cmsgYW5kIHRoZW4gZml4IHRoZSBhY3R1YWwgaW1wbGVtZW50YXRpb24gYW5kIGRvY3MgYmVmb3Jl
IGZpeGluZyBjYWxsZXJzLgo+IAo+IFdlIGhhdmUgYWxyZWFkeSBpc3N1ZXMsIHNvIEkgcHJlZmVy
IG5vdCB0byB3YWl0IGZvciBhIGRvY3VtZW50YXRpb24KPiB1cGRhdGUsIGJlY2F1c2UgZm9yIG9s
ZCBrZXJuZWxzIGl0IHdpbGwgc3RpbGwgYmUgYW4gaXNzdWUuCgpJIHdvbmRlciBpZiB3ZSByZWFs
bHkgaGF2ZSBpc3N1ZXMgdGhvdWdoLCBpbiBwcmFjdGljZSBmd25vZGVzIGFyZQpnZW5lcmF0ZWQg
ZnJvbSBhbiBkZXZpY2V0cmVlIG9yIEFDUEkgdGFibGVzIChvciBieSBwbGF0Zm9ybSBjb2Rlcwph
ZGRpbmcgc3dub2RlcykgYW5kIHRoZW4gdGhlc2UgcHJldHR5IG11Y2ggc3RpY2sgYXJvdW5kIGZv
ciBldmVyLgoKSU9XIHRoZSBpbml0aWFsIHJlZmNvdW50IG9mIDEgaXMgbmV2ZXIgZHJvcHBlZCBh
dCBsZWFzdCBmb3Igb2Ytbm9kZXMKYW5kIEFDUEkgbm9kZXMuICBJIGtub3cgdGhlcmUgYXJlIHNv
bWUgZXhjZXB0aW9ucyBsaWtlIGRldmljZS10cmVlCm92ZXJsYXlzIHdoaWNoIEkgZ3Vlc3MgbWF5
IGFsc28gYmUgZHluYW1pY2FsbHkgcmVtb3ZlZCBhZ2FpbiwgYnV0IHRob3NlCmV4Y2VwdGlvbnMg
YXJlIG5vdCB3aWRlbHkgdXNlZC4KCkFuZCBpZiB3ZSBmb3JnZXQgdG8gZHJvcCBhIHJlZmVyZW5j
ZSBpbiB0aGUgd29yc3QgY2FzZSB3ZSBoYXZlIGEgc21hbGwKbm9uLXJlLW9jY3VyaW5nIChzbyBu
b3QgZ3Jvd2luZykgbWVtbGVhay4gV2hlcmUgYXMgaWYgd2Ugc3RhcnQgYWRkaW5nCnB1dCgpIGNh
bGxzIGV2ZXJ5d2hlcmUgd2UgbWF5IGVuZCB1cCBmcmVlaW5nIHRoaW5ncyB3aGljaCBhcmUgc3Rp
bGwKaW4gdXNlOyBvciBkcm9wcGluZyByZWZjb3VudHMgYmVsb3cgMCB0cmlnZ2VyaW5nIFdBUk5z
IGluIHZhcmlvdXMKcGxhY2VzIChJSVJDKS4KClNvIGl0IHNlZW1zIHRoZSBjdXJlIGlzIHBvdGVu
dGlhbGx5IHdvcnNlIHRoZW4gdGhlIGRpc2Vhc2UgaW4gdGhpcwpjYXNlLgoKU28gaWYgeW91IHdh
bnQgdG8gd29yayBvbiB0aGlzLCB0aGVuIElNSE8gaXQgd291bGQgYmUgYmVzdCB0byBmaXJzdCBt
YWtlCnN1cmUgdGhhdCBhbGwgdGhlIGZ3bm9kZSBpbXBsZW1lbnRhdGlvbnMgYmVoYXZlIGluIHRo
ZSBzYW1lIHdheSB3cnQKcmVmLWNvdW50aW5nLCBiZWZvcmUgYWRkaW5nIHRoZSBtaXNzaW5nIHB1
dCgpIGNhbGxzIGluIHZhcmlvdXMKcGxhY2VzLgoKQW5kIG9uY2UgdGhlIGJlaGF2aW9yIGlzIGNv
bnNpc3RlbnQgdGhlbiB3ZSBjYW4gYWxzbyBkb2N1bWVudCB0aGlzCnByb3Blcmx5IG1ha2luZyBp
dCBlYXNpZXIgZm9yIG90aGVyIHBlb3BsZSB0byBkbyB0aGUgcmlnaHQgdGhpbmcKd2hlbiB1c2lu
ZyB0aGVzZSBmdW5jdGlvbnMuCgpSZWdhcmRzLAoKSGFucwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
