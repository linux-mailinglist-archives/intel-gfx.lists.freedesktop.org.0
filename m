Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45CC12726FC
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Sep 2020 16:28:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D907F6E35F;
	Mon, 21 Sep 2020 14:28:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E09B76E353
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Sep 2020 14:28:21 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id g4so13074393edk.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Sep 2020 07:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=VzVFv87gEs+DoQS8yQmlQI7hV0/JZ6iyGje6mT9KAwE=;
 b=r4E87SE8cRmNC5/QVPBZTvtY0WwQCAYq610H3TrqushG0vNVlKdRr1yDB+OGvjsEsh
 S3FMPazSyqly4DhCb4U7Daasb48nWMYCRokGTGWWDWr9Lzd6KgGSzsSL2bf8JN8hSUUg
 fRzGoMda0izTxUfQ1oDoraADyOixRpShNlZWwVuWp+90kzwtm6dXywXfCJwfHNYTDPPC
 BRvwUcCNbRJRVtNCA8XAXeWeF7BEiteuUSc0wY4jwhVuicLkHdBYv1A9LX7rLKMIuKyJ
 4unfy8WbdjnYnXrOLoUKtowSivIVSvfiJ9L/35cPYAO2P/1sV7m+awpIj8vkbInTptyh
 hePw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=VzVFv87gEs+DoQS8yQmlQI7hV0/JZ6iyGje6mT9KAwE=;
 b=kMi6GVM/oFlv1f3yd8l/ejWiBoT5FOGTNCpMzUcF8hG2Y6kG0UT1BsVxaV4AAf7LRu
 QA124SHy32uuqB4OSSuR50usr+bmSZeDe8QKr8I4itYExwIn3dDVfhnK5uY+/JMhr6lN
 KhXiiPrFY1aIR/D4tZS/JugEV6YzhX2+Z5wwsAuXDJPyVH2wKUALi9j8aZ3Olq8+FalR
 xOKOBGju8Chezi4vh2k6I78BK1tY6F+ZkRhyi7ai0yGJrMHZCUUQfJRKFKhwX28j7iIO
 6WOoItAS7xi0Z1D7uIUejBC5h5sFY/cAKYJCVHc8b5t6lJb8YFl9jqBolYxaujF5Dl+e
 I0Yg==
X-Gm-Message-State: AOAM532LGF7bxq5aBnNJbOBFgKlafUwLeT7UGDKVPKbJylJxjYBG+j5g
 vXytUT1CYP60VWWLej96HnSiyxpowq8s5q4iZSSgp1MYdiAV4A==
X-Google-Smtp-Source: ABdhPJxzM6EYIqImTXX3nZVDlcUVt4Reycl0v4NuDxz6VB7H68kqhbvAzdwYiX9PD8RD0OTNupjfeVlIQGuz17LfGtQ=
X-Received: by 2002:aa7:d747:: with SMTP id a7mr51024393eds.304.1600698500267; 
 Mon, 21 Sep 2020 07:28:20 -0700 (PDT)
MIME-Version: 1.0
References: <4eaa69879014a406424b9702dd6574a305f4c98e.camel@igalia.com>
In-Reply-To: <4eaa69879014a406424b9702dd6574a305f4c98e.camel@igalia.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Mon, 21 Sep 2020 09:28:09 -0500
Message-ID: <CAOFGe97CpYKkNC3N=2kxCnFSSw5sQuQCEdkKGudCEL6em3YTGA@mail.gmail.com>
To: =?UTF-8?Q?Samuel_Iglesias_Gons=C3=A1lvez?= <siglesias@igalia.com>
Subject: Re: [Intel-gfx] [Mesa-dev] XDC 2020 feedback and comments
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
Cc: "xorg-devel@lists.freedesktop.org" <xorg-devel@lists.freedesktop.org>,
 "nouveau@lists.freedesktop.org" <nouveau@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "etnaviv@lists.freedesktop.org" <etnaviv@lists.freedesktop.org>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
 "wayland-devel@lists.freedesktop.org" <wayland-devel@lists.freedesktop.org>,
 "board@foundation.x.org" <board@foundation.x.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "events@lists.x.org" <events@lists.x.org>,
 "mesa-dev@lists.freedesktop.org" <mesa-dev@lists.freedesktop.org>,
 "freedreno@lists.freedesktop.org" <freedreno@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rmlyc3Qgb2ZmLCBJIHRoaW5rIHlvdSBhbGwgZGlkIGEgZmFudGFzdGljIGpvYi4gIEkgZmVsdCB0
aGF0IHRoaW5ncwpyYW4gdmVyeSBzbW9vdGhseSBhbmQsIGFzIGZhciBhcyB0aGUgdGFsa3MgdGhl
bXNlbHZlcyBnbywgSSB0aGluayBpdAp3ZW50IGFsbW9zdCBhcyBzbW9vdGhseSBhcyBhbiBpbi1w
ZXJzb24gWERDLiAgSSdtIHJlYWxseSBxdWl0ZQppbXByZXNzZWQuICBJIGRvIGhhdmUgYSBjb3Vw
bGUgcGllY2VzIG9mIG1vcmUgbnVhbmNlZCBmZWVkYmFjazoKCiAxLiBJIHRoaW5rIHdlIHdlcmUg
bWF5YmUgYSBiaXQgdG9vIHNjYXJlZCBvZiBvdmVybG9hZGluZyBqaXRzaS4KSGF2aW5nIG1vcmUg
cGVvcGxlIGluIHRoZSBpbnN0YW5jZSBmb3IgcXVlc3Rpb25zIG1pZ2h0IGhhdmUgbWFkZSB0aGF0
CnBvcnRpb24gZ28gYmV0dGVyLiAgQXMgaXQgd2FzLCB0aGVyZSB3YXMgb25seSBvbmUgb3IgdHdv
IHRhbGtzIHRoYXQKaGFkIGFueSBsaXZlIHF1ZXN0aW9ucy4gIFRoYXQgc2FpZCwgdGhlcmUgYXJl
IGEgZmV3IGFkdmFudGFnZXMgdG8KaGF2aW5nIHRoaW5ncyBmdW5uZWxlZCB0aHJvdWdoIElSQywg
dGhlIG1vc3Qgb2J2aW91cyBvZiB3aGljaCBiZWluZwp0aGF0IHBlb3BsZSBjYW4gYXNrIHRoZWly
IHF1ZXN0aW9uIG1pZC10YWxrIGFuZCBoYXZlIGl0IGhhbmRsZWQgYXQgdGhlCmVuZCBpbnN0ZWFk
IG9mIGhhdmluZyB0byByZW1lbWJlciBpdCBmb3IgMjAgbWludXRlcy4KCiAyLiBJIHJlYWxseSBt
aXNzIHRoZSBoYWxsd2F5IHRyYWNrLiAgT24gVGh1cnNkYXksIGFmdGVyIHRoZQpjb25mZXJlbmNl
LCBCYXMsIENvbm5vciwgYW5kIEkgdXNlZCBqaXRzaSB0byBoYXZlIGEgY2hhdCBhYm91dApyYXkt
dHJhY2luZy4gIFRoYXQgd2FzIHJlYWxseSBmdW4gYW5kIEkgd2lzaCBJJ2QgZG9uZSBzb21ldGhp
bmcgbGlrZQp0aGF0IGV2ZXJ5IGRheSBvZiBYREMuICBNYXliZSBpdCdzIG15IG93biBmYXVsdCBm
b3Igbm90IHNldHRpbmcgdXAKc2FpZCBjaGF0cyBidXQgSSB0aGluayBpdCBjb3VsZCBoYXZlIGJl
ZW4gbWFkZSBtb3JlIGFjY2Vzc2libGUgKEkgaGFkCm5vIGlkZWEgaG93IHRvIGZvcmsgb2ZmIGEg
aml0c2kgaW5zdGFuY2UpIGFuZC9vciBlbmNvdXJhZ2VkIHNvbWVob3cuCgotLUphc29uCgpPbiBN
b24sIFNlcCAyMSwgMjAyMCBhdCAzOjA3IEFNIFNhbXVlbCBJZ2xlc2lhcyBHb25zw6FsdmV6Cjxz
aWdsZXNpYXNAaWdhbGlhLmNvbT4gd3JvdGU6Cj4KPiBIaSBhbGwsCj4KPiBIdWdlIHRoYW5rcyBh
Z2FpbiB0byB0aGUgZW50aXJlIHRlYW0gZnJvbSBJbnRlbCwgZm9yIHRoZWlyIGdyZWF0IHdvcmsK
PiBvcmdhbml6aW5nIFhEQyAyMDIwLCBvdXIgZmlyc3QgdmlydHVhbCBjb25mZXJlbmNlIQo+Cj4g
QXMgdXN1YWwgd2UncmUgbG9va2luZyBmb3IgZmVlZGJhY2sgb24gYm90aCBYREMgaXRzZWxmLCBh
bmQgdGhlIENGUAo+IHByb2Nlc3MgYW5kIHByb2dyYW0gc2VsZWN0aW9uLiBCb3RoIGFib3V0IHdo
YXQgd2FzIGdyZWF0IGFuZCBzaG91bGQgYmUKPiBrZXB0IGZvciBuZXh0IHllYXIncyBlZGl0aW9u
LCBhbmQgd2hlcmUgdGhlcmUncyByb29tIGZvciBpbXByb3ZlbWVudC4KPgo+IFRoZSBib2FyZCBk
b2VzIGtlZXAgc29tZSBub3RlcywgZm9yIHRob3NlIGludGVyZXN0ZWQgaW4gd2hhdCB3ZSBoYXZl
Cj4gYWxyZWFkeToKPgo+IC0gWERDIG5vdGVzIGZvciBwcm9zcGVjdGl2ZSBvcmdhbml6ZXJzOgo+
IGh0dHBzOi8vd3d3Lngub3JnL3dpa2kvRXZlbnRzL1JGUC8KPgo+IC0gQ0ZQIG5vdGVzOiBodHRw
czovL3d3dy54Lm9yZy93aWtpL0V2ZW50cy9QYXBlcnNDb21taXR0ZWUvCj4KPiBJZiB5b3Ugd2Fu
dCB0byBzZW5kIGluIHlvdXIgY29tbWVudHMgaW4gcHJpdmF0ZSwgcGxlYXNlIHNlbmQgdGhlbSB0
bwo+IHRoZSBYLm9yZyBGb3VuZGF0aW9uIGJvYXJkOiBib2FyZEBmb3VuZGF0aW9uLngub3JnCj4K
PiBDaGVlcnMsCj4KPiBTYW0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IG1lc2EtZGV2IG1haWxpbmcgbGlzdAo+IG1lc2EtZGV2QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vbWVzYS1kZXYKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
