Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 290AB373846
	for <lists+intel-gfx@lfdr.de>; Wed,  5 May 2021 12:02:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72B586E487;
	Wed,  5 May 2021 10:02:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com
 [IPv6:2607:f8b0:4864:20::631])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F8376E486;
 Wed,  5 May 2021 10:02:52 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id h20so845712plr.4;
 Wed, 05 May 2021 03:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=LurxNA03dT5novdyKmb3mGZS5twFC2ifcGcAHDuYJ00=;
 b=AXzh+xUSsydhWsIlWIe7uD1WFBqX2wrKz6VaS2mQpB+XYJ2B3lu1lhgt7DIPZgVphI
 9EvLhwld0ANpLA2nSGI6FckoFLT1kNO7y7Fpsr1QzW9P06Bj83tpiqvEWWrHAE7sX/V9
 8CNlWCMJqIlOsn+xt2Fi3xGEw0J0Zq1ET7uxIe0yGIbbQAEtdEIcKx4zOBw5/CNlsWUX
 cWZlM+8Agmm0Rh0Y6H1+Mw3flJv1dTmkI4T7Ipp8wQuiARq+I+4abrJSAfnyYl3T+fqG
 04PtTHMGt2G1d4tPoubIwmgKd7M9PSFcVk5+2MPbVM7Jwv0YxMBIL+xl1oVAt49RWjhh
 18OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=LurxNA03dT5novdyKmb3mGZS5twFC2ifcGcAHDuYJ00=;
 b=KZz/5nvx3di/ZUK9XhnwX9/zP/RxUkZ/i/vQhDJSanQwrqy2aMjgTw3e7nGxaNBHdB
 B73bI7E+v0hdb6M+9YEXyburxkloOaCLoBSUPHL7Cn3/VnYyX97o4+QFlDq5cCdCB4Q1
 N1U3JeRLOIGjCZm9UQVdONilSi5HNg9FvXoUecTzpW2dL8xCiGi5iOQp4N/7bN0GBG5e
 W64uOQ0vMzB/4tK48Am9WJCDTSk3G/zdq3hBRrAJI3VgqYkWwlVguSYcCJeURN9Oor85
 3vzQAwKPEahErqtAqBwYv0rjoj9jP2FSt1sO6O/rMeLGcNiH5LztQev5dbc3H4vghZBk
 xf0A==
X-Gm-Message-State: AOAM533Lsg6imiB93kMw9y99n5uiuAmGh+foAnhl2YBtP/77NhRB5AIe
 Cvc/Pi64/rSeipRKqqYTTMaXMA7BhEVkmk4SVpQ=
X-Google-Smtp-Source: ABdhPJyGY7J5ctyTPbUeAOqmX10pwlFAu9jY3mzvxAizq5nUTWv09hBUcr7gAYUPzjPDZf0oMrMVZ1M/Lubs++loGlY=
X-Received: by 2002:a17:90a:d90c:: with SMTP id
 c12mr10976677pjv.129.1620208971725; 
 Wed, 05 May 2021 03:02:51 -0700 (PDT)
MIME-Version: 1.0
References: <20210503154647.142551-1-hdegoede@redhat.com>
 <20210503154647.142551-6-hdegoede@redhat.com>
 <CAHp75VcS5nvzBzjbSytqD6qsSURyzdEdmDi934y=5W2SCNyo9A@mail.gmail.com>
 <ee230261-423d-0e2f-16b0-852d264afa2b@redhat.com>
 <CAHp75VcfkcaVAu2-8-5he7PN=W_tRHiHAgXYn04gRnLehDVsyQ@mail.gmail.com>
 <ffb46bb6-3548-4ec2-f176-99f3674e7f6d@redhat.com>
In-Reply-To: <ffb46bb6-3548-4ec2-f176-99f3674e7f6d@redhat.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 5 May 2021 13:02:35 +0300
Message-ID: <CAHp75VcHEMaZ67yy7TD8f8Nk=+oiLT-vRCt9A6fT9K6LeR78Ew@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
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
 Maxime Ripard <mripard@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBNYXkgNSwgMjAyMSBhdCAxMjoyOCBQTSBIYW5zIGRlIEdvZWRlIDxoZGVnb2VkZUBy
ZWRoYXQuY29tPiB3cm90ZToKPiBPbiA1LzUvMjEgMTE6MTcgQU0sIEFuZHkgU2hldmNoZW5rbyB3
cm90ZToKPiA+IE9uIFdlZCwgTWF5IDUsIDIwMjEgYXQgMTI6MDcgUE0gSGFucyBkZSBHb2VkZSA8
aGRlZ29lZGVAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPj4gT24gNS80LzIxIDk6NTIgQU0sIEFuZHkg
U2hldmNoZW5rbyB3cm90ZToKPiA+Pj4gT24gTW9uZGF5LCBNYXkgMywgMjAyMSwgSGFucyBkZSBH
b2VkZSA8aGRlZ29lZGVAcmVkaGF0LmNvbSA8bWFpbHRvOmhkZWdvZWRlQHJlZGhhdC5jb20+PiB3
cm90ZToKPiA+Cj4gPiAuLi4KPiA+Cj4gPj4+ICAgICArICAgICAgICAgICAgICAgZndub2RlID0g
ZGV2aWNlX2dldF9uZXh0X2NoaWxkX25vZGUoa2RldiwgZndub2RlKTsKPiA+Cj4gPj4+IFdobyBp
cyBkcm9wcGluZyByZWZlcmVuY2UgY291bnRpbmcgb24gZndub2RlID8KPiA+Pgo+ID4+IFdlIGFy
ZSBkZWFsaW5nIHdpdGggQUNQSSBmd25vZGUtcyBoZXJlIGFuZCB0aG9zZSBhcmUgbm90IHJlZi1j
b3VudGVkLCB0aGV5Cj4gPj4gYXJlIGVtYmVkZGVkIGluc2lkZSBhIHN0cnVjdCBhY3BpX2Rldmlj
ZSBhbmQgdGhlaXIgbGlmZXRpbWUgaXMgdGllZCB0bwo+ID4+IHRoYXQgc3RydWN0LiBUaGV5IHNo
b3VsZCBwcm9iYWJseSBzdGlsbCBiZSByZWYtY291bnRlZCAod2l0aCB0aGUgY291bnQKPiA+PiBu
ZXZlciBkcm9wcGluZyB0byAwKSBzbyB0aGF0IHRoZSBnZW5lcmljIGZ3bm9kZSBmdW5jdGlvbnMg
YmVoYXZlIHRoZSBzYW1lCj4gPj4gYW55d2hlcmUgYnV0IGF0bSB0aGUgQUNQSSBub2RlcyBhcmUg
bm90IHJlZmNvdW50ZWQsIHNlZTogYWNwaV9nZXRfbmV4dF9zdWJub2RlKCkKPiA+PiBpbiBkcml2
ZXJzL2FjcGkvcHJvcGVydHkuYyB3aGljaCBpcyB0aGUgZ2V0X25leHRfY2hpbGRfbm9kZSgpIGlt
cGxlbWVudGF0aW9uCj4gPj4gZm9yIEFDUEkgZndub2RlLXMuCj4gPgo+ID4gWWVzLCBBQ1BJIGN1
cnJlbnRseSBpcyBleGNlcHRpb25hbCwgYnV0IGZ3bm9kZSBBUEkgaXMgbm90Lgo+ID4gSWYgeW91
IG1heSBndWFyYW50ZWUgdGhhdCB0aGlzIGNhc2Ugd29uJ3QgZXZlciBiZSBvdXRzaWRlIG9mIEFD
UEkKPgo+IFllcyBJIGNhbiBndWFyYW50ZWUgdGhhdCBjdXJyZW50bHkgdGhpcyBjb2RlICh3aGlj
aCBpcyBmb3IgdGhlIGk5MTUKPiBkcml2ZXIgb25seSkgb25seSBkZWFscyB3aXRoIEFDUEkgZndu
b2Rlcy4KPgo+ID4gYW5kCj4gPiBldmVuIHRob3VnaCBpZiBBQ1BJIHdvbid0IGV2ZXIgZ2FpbiBh
IHJlZmVyZW5jZSBjb3VudGluZyBmb3IgZndub2RlcywKPiA+IHdlIGNhbiBsZWF2ZSBpdCBhcyBp
cy4KPgo+IFdvdWxkIGl0IG5vdCBiZSBiZXR0ZXIgdG8gYWRkIGZha2UgcmVmLWNvdW50aW5nIHRv
IHRoZSBBQ1BJIGZ3bm9kZQo+IG5leHRfY2hpbGRfbm9kZSgpIG9wIHRob3VnaC4gSSBiZWxpZXZl
IGp1c3QgZ2V0dGluZyBhIHJlZmVyZW5jZQo+IG9uIHRoZSByZXR1cm4gdmFsdWUgdGhlcmUgc2hv
dWxkIHdvcmsgZmluZTsgYW5kIHRoZW4gYWxsIGZ3bm9kZQo+IGltcGxlbWVudGF0aW9ucyB3b3Vs
ZCBiZSBjb25zaXN0ZW50ID8KCkJ1dCBpdCdzIGFscmVhZHkgdGhlcmUgYnkgYWJzZW50IHB1dC9n
ZXQgY2FsbGJhY2tzLiBPbiBmd25vZGUgbGV2ZWwgaXQKaXMgbGlrZSB5b3UgZGVzY3JpYmVkLiBT
bywgdGFsa2luZyBmb3IgYSBnb29kIHBhdHRlcm4gd2UgaGF2ZSB0byBjYWxsCnRoZSBmd25vZGVf
aGFuZGxlX3B1dCgpIGluZGVwZW5kZW50bHkgYW5kIGFsd2F5cyBmb3IgZm9yX2VhY2hfY2hpbGQK
YW5kIGdldF9uZXh0X2NoaWxkIHVzYWdlcy4KCj4gKG5vdGUgSSBkaWQgbm90IGNoZWNrIHRoYXQg
dGhlIG9mIGFuZCBzd25vZGUgY29kZSBkbyByZXR1cm4KPiBhIHJlZmVyZW5jZSBidXQgSSB3b3Vs
ZCBhc3N1bWUgc28pLgoKWWVzLCBpdCdzIG9ubHkgQUNQSSB0aGF0IHN1cnZpdmVzIHcvbyByZWZl
cmVuY2UgY291bnRpbmcuCgo+ID4+PiBJ4oCZbSBpbiB0aGUgbWlkZGxlIG9mIGEgcGlsZSBvZiBm
aXhlcyBmb3IgZndub2RlIHJlZmNvdW50aW5nIHdoZW4gZm9yX2VhY2hfY2hpbGQgb3IgZ2V0X25l
eHRfY2hpbGQgaXMgdXNlZC4gU28sIHBsZWFzZSBkb3VibGUgY2hlY2sgeW91IGRyb3AgYSByZWZl
cmVuY2UuCj4gPj4KPiA+PiBUaGUga2RvYyBjb21tZW50cyBvbiBkZXZpY2VfZ2V0X25leHRfY2hp
bGRfbm9kZSgpIC8gZndub2RlX2dldF9uZXh0X2NoaWxkX25vZGUoKQo+ID4+IGRvIG5vdCBtZW50
aW9uIGFueXRoaW5nIGFib3V0IHRoZXNlIGZ1bmN0aW9ucyByZXR1cm5pbmcgYSByZWZlcmVuY2Uu
Cj4gPgo+ID4gSXQncyBwb3NzaWJsZS4gSSBkdW5ubyBpZiBpdCBoYWQgdG8gYmUgZG9uZSBlYXJs
aWVyLiBTYWthcmk/Cj4gPgo+ID4+IFNvIEkgdGhpbmsgd2UgbmVlZCB0byBmaXJzdCBtYWtlIHVw
IG91ciBtaW5kIGhlcmUgaG93IHdlIHdhbnQgdGhpcyBhbGwgdG8KPiA+PiB3b3JrIGFuZCB0aGVu
IGZpeCB0aGUgYWN0dWFsIGltcGxlbWVudGF0aW9uIGFuZCBkb2NzIGJlZm9yZSBmaXhpbmcgY2Fs
bGVycy4KPiA+Cj4gPiBXZSBoYXZlIGFscmVhZHkgaXNzdWVzLCBzbyBJIHByZWZlciBub3QgdG8g
d2FpdCBmb3IgYSBkb2N1bWVudGF0aW9uCj4gPiB1cGRhdGUsIGJlY2F1c2UgZm9yIG9sZCBrZXJu
ZWxzIGl0IHdpbGwgc3RpbGwgYmUgYW4gaXNzdWUuCj4KPiBJIHdvbmRlciBpZiB3ZSByZWFsbHkg
aGF2ZSBpc3N1ZXMgdGhvdWdoLCBpbiBwcmFjdGljZSBmd25vZGVzIGFyZQo+IGdlbmVyYXRlZCBm
cm9tIGFuIGRldmljZXRyZWUgb3IgQUNQSSB0YWJsZXMgKG9yIGJ5IHBsYXRmb3JtIGNvZGVzCj4g
YWRkaW5nIHN3bm9kZXMpIGFuZCB0aGVuIHRoZXNlIHByZXR0eSBtdWNoIHN0aWNrIGFyb3VuZCBm
b3IgZXZlci4KCk92ZXJsYXlzLiBOb3QgZm9yIGV2ZXIuCgo+IElPVyB0aGUgaW5pdGlhbCByZWZj
b3VudCBvZiAxIGlzIG5ldmVyIGRyb3BwZWQgYXQgbGVhc3QgZm9yIG9mLW5vZGVzCj4gYW5kIEFD
UEkgbm9kZXMuCgo+ICBJIGtub3cgdGhlcmUgYXJlIHNvbWUgZXhjZXB0aW9ucyBsaWtlIGRldmlj
ZS10cmVlCj4gb3ZlcmxheXMgd2hpY2ggSSBndWVzcyBtYXkgYWxzbyBiZSBkeW5hbWljYWxseSBy
ZW1vdmVkIGFnYWluLCBidXQgdGhvc2UKPiBleGNlcHRpb25zIGFyZSBub3Qgd2lkZWx5IHVzZWQu
CgpBQ1BJIG92ZXJsYXlzIGFyZSBxdWl0ZSB1c2VkIChhdCBsZWFzdCBieSB0d28gcGVvcGxlIEkg
a25vdyBhbmQgYSBmZXcKbW9yZSB0aGF0IGFza2VkIHF1ZXN0aW9ucyBhYm91dCB0aGVtIGhlcmUg
YW5kIHRoZXJlKSwgYnV0IGx1Y2tpbHkgaXQKZG9lc24ndCByZXF1aXJlIHJlZmNvdW50aW5nICh5
ZXQ/KS4KCj4gQW5kIGlmIHdlIGZvcmdldCB0byBkcm9wIGEgcmVmZXJlbmNlIGluIHRoZSB3b3Jz
dCBjYXNlIHdlIGhhdmUgYSBzbWFsbAo+IG5vbi1yZS1vY2N1cmluZyAoc28gbm90IGdyb3dpbmcp
IG1lbWxlYWsuCgpBbmQgaXMgaXQgZ29vZCB0byBwcm92b2tlIGFsbCBraW5kcyBvZiB0b29scyAo
a21lbWxlYWssICpTQU5zLCBldGMpPyBJCmRvIG5vdCB0aGluayBzby4gSWYgd2UgYXJlIHdyaXRp
bmcgZ29vZCBjb2RlIGl0IHNob3VsZCBiZSBnb29kIGVub3VnaC4KCj4gV2hlcmUgYXMgaWYgd2Ug
c3RhcnQgYWRkaW5nCj4gcHV0KCkgY2FsbHMgZXZlcnl3aGVyZSB3ZSBtYXkgZW5kIHVwIGZyZWVp
bmcgdGhpbmdzIHdoaWNoIGFyZSBzdGlsbAo+IGluIHVzZTsgb3IgZHJvcHBpbmcgcmVmY291bnRz
IGJlbG93IDAgdHJpZ2dlcmluZyBXQVJOcyBpbiB2YXJpb3VzCj4gcGxhY2VzIChJSVJDKS4KCldo
aWNoIGlzIGdvb2QuIFRoZW4gd2Ugd2lsbCBkaXNjb3ZlciByZWFsIGlzc3Vlcy4KCj4gU28gaXQg
c2VlbXMgdGhlIGN1cmUgaXMgcG90ZW50aWFsbHkgd29yc2UgdGhlbiB0aGUgZGlzZWFzZSBpbiB0
aGlzCj4gY2FzZS4KCkkgdGVuZCB0byBkaXNhZ3JlZSB3aXRoIHlvdS4gSG93IGluIHRoaXMgY2Fz
ZSB3ZSBjYW4gZ28gYmVsb3cgMCBpbgpjYXNlIHdlIGtub3cgdGhhdCB3ZSB0b29rIGEgY291bnRl
cj8gSWYgc29tZXdoZXJlIGVsc2UgdGhlIGNvZGUgd2lsbApkbyB0aGF0LCBpdCBpcyBhIHByb2Js
ZW0gdGhhdCBoYXMgdG8gYmUgZml4ZWQgb24gY2FzZS1ieS1jYXNlIGJhc2lzLgoKPiBTbyBpZiB5
b3Ugd2FudCB0byB3b3JrIG9uIHRoaXMsIHRoZW4gSU1ITyBpdCB3b3VsZCBiZSBiZXN0IHRvIGZp
cnN0IG1ha2UKPiBzdXJlIHRoYXQgYWxsIHRoZSBmd25vZGUgaW1wbGVtZW50YXRpb25zIGJlaGF2
ZSBpbiB0aGUgc2FtZSB3YXkgd3J0Cj4gcmVmLWNvdW50aW5nLCBiZWZvcmUgYWRkaW5nIHRoZSBt
aXNzaW5nIHB1dCgpIGNhbGxzIGluIHZhcmlvdXMKPiBwbGFjZXMuCj4KPiBBbmQgb25jZSB0aGUg
YmVoYXZpb3IgaXMgY29uc2lzdGVudAoKSXQncyBjb25zaXN0ZW50IG5vdyBpbmRlcGVuZGVudGx5
IG9mIHRoZSBiZW5lYXRoIGxheWVyIGZyb20gZndub2RlIEFQSSBwLm8udi4KCj4gdGhlbiB3ZSBj
YW4gYWxzbyBkb2N1bWVudCB0aGlzCj4gcHJvcGVybHkgbWFraW5nIGl0IGVhc2llciBmb3Igb3Ro
ZXIgcGVvcGxlIHRvIGRvIHRoZSByaWdodCB0aGluZwo+IHdoZW4gdXNpbmcgdGhlc2UgZnVuY3Rp
b25zLgoKCgotLSAKV2l0aCBCZXN0IFJlZ2FyZHMsCkFuZHkgU2hldmNoZW5rbwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
