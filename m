Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 367EF241F15
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Aug 2020 19:22:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 801C889F92;
	Tue, 11 Aug 2020 17:22:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com
 [IPv6:2607:f8b0:4864:20::141])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23BAD89FA7
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Aug 2020 17:22:15 +0000 (UTC)
Received: by mail-il1-x141.google.com with SMTP id p16so11384689ile.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Aug 2020 10:22:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=1M+kf32o/Yi9wlpmpdXgs1qVvQVnaZM1KEyPesKTtCM=;
 b=Qr2P6NK5hrbR4Ad5mItUt/O0zAn8WzBGfpxjdAqL6+vawZADvrCSQOyIL9bJjSd55J
 eJyMCiIGlTBJP3AJ1KCg0+nlnro05UfsxzUZCre0apLsFWF8JqhW9iEy2yqULkZ605BR
 2EwvbwmLbu0fQvUnSwRHX8lVc8Ln2S6HlCM3uE9GOdO9RuYydsZ/dx1UTu+coHx9G428
 9kPG3yWtxk7lpgO9Mr7A4fSf8x0QdauAzI5JZksOj48afZfd+dHF3YlR8nagmjEs7uHO
 onZ3maVXuxsc23Y3u+8MWTzwIdCxZ0I4Uby5CXSuSGW09/Tdk+B54taEh7whrOIVFpRU
 9oKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=1M+kf32o/Yi9wlpmpdXgs1qVvQVnaZM1KEyPesKTtCM=;
 b=sJ8cETJMoLY8tYqdbtpqN3ImeafFNvWlsc9xFs9NHVeBwNgOQAqwu5ULfljPgqkVES
 EnO64XQFpC14be+5NcJ9r1KHbz3m0Jq0gxgk02LL4V09E+dcoXDdCCrxipdLS2/Llwdq
 AnGJ/svZsui/V66qZaFA2+GFLdiHn4Q7up7CORk5dKSDVRRXBkx3mT8pkOvf6YknelpT
 YsV0afapEEfIVShdKHfnSARi2mKX331TGvjOOv6M7OGKeTILwsEXwctnxX8dSU8NfLgN
 s7l0SjiP/ubqZSzrvxDCxGw/o7pMQpiuKWi1Yqbr6mwy8pkap9Br/uMa9bnr87CopHDf
 5WSQ==
X-Gm-Message-State: AOAM530i6xDjWxKZ5CChtV93nXQRIEndwhPYr6IamI7/MdcM8AIXjoag
 mPoUTcr1NOZbE1iZ4aNO0bnBUcJcFHPWX5df4AVNaA==
X-Google-Smtp-Source: ABdhPJz3eYQV+bGOIW/icha0M8XGzHyPIBhH0plYBoqO9Ghq6DHJ7nuquhdckzUV1TuQzkr1hZ5TGtLJ/fWcdO0FPuM=
X-Received: by 2002:a05:6e02:1107:: with SMTP id
 u7mr15041989ilk.165.1597166534093; 
 Tue, 11 Aug 2020 10:22:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200623155907.22961-1-sean@poorly.run>
 <20200623155907.22961-16-sean@poorly.run>
 <20200630140929.GE15183@intel.com>
 <CAMavQK+mkmUWfV-F_+=qN1RuTDvJ6QF=UhjfPXZFhbk7FQwXwg@mail.gmail.com>
 <20200702143736.GF15183@intel.com> <20200709125826.GQ15183@intel.com>
In-Reply-To: <20200709125826.GQ15183@intel.com>
From: Sean Paul <sean@poorly.run>
Date: Tue, 11 Aug 2020 13:21:38 -0400
Message-ID: <CAMavQK+iEzhT2xXdOUcoMHNDV79mmJuKM1LgPy=EjG14113=1A@mail.gmail.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Subject: Re: [Intel-gfx] [PATCH v7 15/17] drm/mst: Add support for
 QUERY_STREAM_ENCRYPTION_STATUS MST sideband message
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
Cc: "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Sean Paul <seanpaul@chromium.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdWwgOSwgMjAyMCBhdCA5OjA5IEFNIEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5n
dXB0YUBpbnRlbC5jb20+IHdyb3RlOgo+Cj4gT24gMjAyMC0wNy0wMiBhdCAyMDowNzozNiArMDUz
MCwgQW5zaHVtYW4gR3VwdGEgd3JvdGU6Cj4gPiBPbiAyMDIwLTA2LTMwIGF0IDEyOjQ4OjM0IC0w
NDAwLCBTZWFuIFBhdWwgd3JvdGU6Cj4gPiA+IE9uIFR1ZSwgSnVuIDMwLCAyMDIwIGF0IDEwOjIx
IEFNIEFuc2h1bWFuIEd1cHRhCj4gPiA+IDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+IHdyb3Rl
Ogo+ID4gPiA+Cj4gPiA+ID4gT24gMjAyMC0wNi0yMyBhdCAyMToyOTowNSArMDUzMCwgU2VhbiBQ
YXVsIHdyb3RlOgo+ID4gPiA+IEhpIFNlYW4sCj4gPiA+ID4gSSBhbSBuZXcgdG8gRFAgTVNUIHN0
dWZmLCBJIGFtIGxvb2tpbmcgdG8gRFAgTVNUIHNwZWMgRFAgdjEuMmEuCj4gPiA+ID4gSSBoYXZl
IGxvb2tlZCB0aGUgZW50aXJlIHNlcmllcywgaSB3aWxsIHRha2UgdXAgdGhpcyBvcHBvcnR1bml0
eSB0byByZXZpZXcKPiA+ID4gPiB0aGUgc2VyaWVzIGZyb20gSERDUCBvdmVyIERQIE1TVCBQT1Yu
Cj4gPiA+ID4gSSB0aGluayB0aGVvcmV0aWNhbGx5IHRoaXMgc2VyaWVzIHNob3VsZCB3b3JrIG9y
IEdlbjEyIGFzIHdlbGwsIGFzIERQIE1TVCBzdHJlYW1zCj4gPiA+ID4gYXJlIGdldHRpbmcgZW5j
cnlwdGVkIGJ5IFFVRVJZX1NUUkVBTV9FTkNSWVBUSU9OX1NUQVRVUyByZXBseSB0cmFuYWN0aW9u
IG1zZwo+ID4gPiA+IChnZW5lcmF0aW5nIFN0cmVhbSBTdGF0ZSBTaWduYXR1cmUgTOKAmSkuCj4g
PiA+ID4gSSB3aWxsIHRlc3QgdGhpcyBvbiBHZW4xMiBIL1cgd2l0aCBEUCBNU1Qgc3VwcG9ydCBh
bmQgd2lsbCBwcm92aWRlIG15IGlucHV0cy4KPiA+ID4gPgo+ID4gPiA+IE1lYW53aGlsZSB3aGls
ZSBnb2luZyB0aHJvdWdoIERQIE1TVCB2MS4yYSBzcGVjcyhQYWdlIDI2MikgY2FtZSB0byBrbm93
IGFib3V0Cj4gPiA+ID4gYSBEUCBpcnEgdmVjdG9yIExJTktfU0VSVklDRV9JUlFfVkVDVE9SX0VT
STAgKDAyMDA1aCksCj4gPiA+ID4gQml0IDIgOiBTVFJFQU1fU1RBVFVTX0NIQU5HRUQuCj4gPiA+
ID4gV2hlbiB0aGlzIGJpdCBzZXQgdG8g4oCYMeKAmSBpbmRpY2F0ZXMgdGhlIHNvdXJjZSBtdXN0
IHJlLWNoZWNrIHRoZSBTdHJlYW0gU3RhdHVzCj4gPiA+ID4gd2l0aCB0aGUgUVVFUllfU1RSRUFN
X0VOQ1JZUFRJT05fU1RBVFVTIG1lc3NhZ2UuCj4gPiA+ID4gQ3VycmVudGx5IGkgZmVlbCB0aGlz
IGlycSBzdXBwb3J0IGlzIG1pc3NpbmcsIGRvIHdlIHJlcXVpcmUgdG8gc3VwcG9ydAo+ID4gPiA+
IGFib3ZlIElSUSB2ZWN0b3IgZm9yIERQIE1TVCBzdHJlYW0gZW5jcnlwdGlvbi4KPiA+ID4gPgo+
ID4gPgo+ID4gPiBIaSBBbnNodW1hbiwKPiA+ID4gVGhhbmsgeW91IGZvciB5b3VyIGNvbW1lbnRz
Lgo+ID4gPgo+ID4gPiBRVUVSWV9TVFJFQU1fRU5DUllQVElPTl9TVEFUVVMgaXMgbm90IG5lY2Vz
c2FyeSBmb3IgSERDUCAxLngsIEkgYWRkZWQKPiA+ID4gdGhpcyBhcyBhIHNhZmV0eSBjaGVjayB0
byBlbnN1cmUgdGhhdCB0aGUgc3RyZWFtcyB3ZXJlIGJlaW5nCj4gPiA+IGVuY3J5cHRlZC4gQXMg
c3VjaCwgdGhlIGV4aXN0aW5nIGludGVncml0eSBjaGVja3MgaW4gcGxhY2UgZm9yIERQIGFyZQo+
ID4gPiBzdWZmaWNpZW50IHRvIHNhdGlzZnkgc3BlYy4gV2hlbiBIRENQIDIuMiBzdXBwb3J0IGlz
IGFkZGVkIGZvciBNU1QsCj4gPiA+IGhhbmRsaW5nIFFTRVMgd2lsbCBuZWVkIHRvIGJlIGFkZHJl
c3NlZCB0byBtZWV0IHNwZWMuIE5vdGUgYWxzbyB0aGF0Cj4gPiA+IHdlJ3JlIG5vdCB2YWxpZGF0
aW5nIHRoZSBRU0VTIHNpZ25hdHVyZSBmb3IgdGhlIHNhbWUgcmVhc29uLgo+ID4gVGhhbmtzIHNl
YW4gZm9yIHRoZSBleHBsYW5hdGlvbiwKPiA+IG92ZXJhbGwgcGF0Y2ggbG9va3MgZ29vZCB0byBt
ZSBidXQgaSBoYXZlIGNvdXBsZSBvZiBkb3VidCBzZWUgYmVsb3cuCj4gPiA+Cj4gPiA+IFNlYW4K
PiA+ID4KPiA+ID4KPiA+ID4gPiBUaGFua3MsCj4gPiA+ID4gQW5zaHVtYW4gR3VwdGEuCj4gPiA+
ID4KPiA+ID4gPiA+IEZyb206IFNlYW4gUGF1bCA8c2VhbnBhdWxAY2hyb21pdW0ub3JnPgo+ID4g
PiA+ID4KPiA+ID4gPiA+IFVzZWQgdG8gcXVlcnkgd2hldGhlciBhbiBNU1Qgc3RyZWFtIGlzIGVu
Y3J5cHRlZCBvciBub3QuCj4gPiA+ID4gPgo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogU2VhbiBQ
YXVsIDxzZWFucGF1bEBjaHJvbWl1bS5vcmc+Cj4gPiA+ID4gPgo+ID4gPiA+ID4gTGluazogaHR0
cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIwMjAwMjE4MjIwMjQy
LjEwNzI2NS0xNC1zZWFuQHBvb3JseS5ydW4gI3Y0Cj4gPiA+ID4gPiBMaW5rOiBodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAyMDAzMDUyMDEyMzYuMTUyMzA3
LTE1LXNlYW5AcG9vcmx5LnJ1biAjdjUKPiA+ID4gPiA+IExpbms6IGh0dHBzOi8vcGF0Y2h3b3Jr
LmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDIwMDQyOTE5NTUwMi4zOTkxOS0xNS1zZWFu
QHBvb3JseS5ydW4gI3Y2Cj4gPiA+ID4gPgo+ID4gPiA+ID4gQ2hhbmdlcyBpbiB2NDoKPiA+ID4g
PiA+IC1BZGRlZCB0byB0aGUgc2V0Cj4gPiA+ID4gPiBDaGFuZ2VzIGluIHY1Ogo+ID4gPiA+ID4g
LU5vbmUKPiA+ID4gPiA+IENoYW5nZXMgaW4gdjY6Cj4gPiA+ID4gPiAtVXNlIEZJRUxEX1BSRVAg
dG8gZ2VuZXJhdGUgcmVxdWVzdCBidWZmZXIgYml0ZmllbGRzIChMeXVkZSkKPiA+ID4gPiA+IC1B
ZGQgbXN0IHNlbGZ0ZXN0IGFuZCBkdW1wL2RlY29kZV9zaWRlYmFuZF9yZXEgZm9yIFFTRVMgKEx5
dWRlKQo+ID4gPiA+ID4gQ2hhbmdlcyBpbiB2NzoKPiA+ID4gPiA+IC1Ob25lCj4gPiA+ID4gPiAt
LS0KPiA+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jICAgICAg
ICAgfCAxNDIgKysrKysrKysrKysrKysrKysrCj4gPiA+ID4gPiAgLi4uL2RybS9zZWxmdGVzdHMv
dGVzdC1kcm1fZHBfbXN0X2hlbHBlci5jICAgIHwgIDE3ICsrKwo+ID4gPiA+ID4gIGluY2x1ZGUv
ZHJtL2RybV9kcF9oZWxwZXIuaCAgICAgICAgICAgICAgICAgICB8ICAgMyArCj4gPiA+ID4gPiAg
aW5jbHVkZS9kcm0vZHJtX2RwX21zdF9oZWxwZXIuaCAgICAgICAgICAgICAgIHwgIDQ0ICsrKysr
Kwo+ID4gPiA+ID4gIDQgZmlsZXMgY2hhbmdlZCwgMjA2IGluc2VydGlvbnMoKykKPiA+ID4gPiA+
Cj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3RfdG9wb2xv
Z3kuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMKPiA+ID4gPiA+IGlu
ZGV4IGIyZjVhODRiNGNmYi4uZmM2ODQ3OGVhZWI0IDEwMDY0NAo+ID4gPiA+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuYwo+ID4gPiA+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuYwo+ID4gPiA+ID4gQEAgLTIwLDExICsyMCwx
MyBAQAo+ID4gPiA+ID4gICAqIE9GIFRISVMgU09GVFdBUkUuCj4gPiA+ID4gPiAgICovCj4gPiA+
ID4gPgo+ID4gPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9iaXRmaWVsZC5oPgo+ID4gPiA+ID4gICNp
bmNsdWRlIDxsaW51eC9kZWxheS5oPgo+ID4gPiA+ID4gICNpbmNsdWRlIDxsaW51eC9lcnJuby5o
Pgo+ID4gPiA+ID4gICNpbmNsdWRlIDxsaW51eC9pMmMuaD4KPiA+ID4gPiA+ICAjaW5jbHVkZSA8
bGludXgvaW5pdC5oPgo+ID4gPiA+ID4gICNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4KPiA+ID4g
PiA+ICsjaW5jbHVkZSA8bGludXgvcmFuZG9tLmg+Cj4gPiA+ID4gPiAgI2luY2x1ZGUgPGxpbnV4
L3NjaGVkLmg+Cj4gPiA+ID4gPiAgI2luY2x1ZGUgPGxpbnV4L3NlcV9maWxlLmg+Cj4gPiA+ID4g
PiAgI2luY2x1ZGUgPGxpbnV4L2lvcG9sbC5oPgo+ID4gPiA+ID4gQEAgLTQxOSw2ICs0MjEsMjIg
QEAgZHJtX2RwX2VuY29kZV9zaWRlYmFuZF9yZXEoY29uc3Qgc3RydWN0IGRybV9kcF9zaWRlYmFu
ZF9tc2dfcmVxX2JvZHkgKnJlcSwKPiA+ID4gPiA+ICAgICAgICAgICAgICAgbWVtY3B5KCZidWZb
aWR4XSwgcmVxLT51LmkyY193cml0ZS5ieXRlcywgcmVxLT51LmkyY193cml0ZS5udW1fYnl0ZXMp
Owo+ID4gPiA+ID4gICAgICAgICAgICAgICBpZHggKz0gcmVxLT51LmkyY193cml0ZS5udW1fYnl0
ZXM7Cj4gPiA+ID4gPiAgICAgICAgICAgICAgIGJyZWFrOwo+ID4gPiA+ID4gKyAgICAgY2FzZSBE
UF9RVUVSWV9TVFJFQU1fRU5DX1NUQVRVUzogewo+ID4gPiA+ID4gKyAgICAgICAgICAgICBjb25z
dCBzdHJ1Y3QgZHJtX2RwX3F1ZXJ5X3N0cmVhbV9lbmNfc3RhdHVzICptc2c7Cj4gPiA+ID4gPiAr
Cj4gPiA+ID4gPiArICAgICAgICAgICAgIG1zZyA9ICZyZXEtPnUuZW5jX3N0YXR1czsKPiA+ID4g
PiA+ICsgICAgICAgICAgICAgYnVmW2lkeF0gPSBtc2ctPnN0cmVhbV9pZDsKPiA+ID4gPiA+ICsg
ICAgICAgICAgICAgaWR4Kys7Cj4gPiA+ID4gPiArICAgICAgICAgICAgIG1lbWNweSgmYnVmW2lk
eF0sIG1zZy0+Y2xpZW50X2lkLCBzaXplb2YobXNnLT5jbGllbnRfaWQpKTsKPiA+ID4gPiA+ICsg
ICAgICAgICAgICAgaWR4ICs9IHNpemVvZihtc2ctPmNsaWVudF9pZCk7Cj4gPiA+ID4gPiArICAg
ICAgICAgICAgIGJ1ZltpZHhdID0gMDsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgYnVmW2lkeF0g
fD0gRklFTERfUFJFUChHRU5NQVNLKDEsIDApLCBtc2ctPnN0cmVhbV9ldmVudCk7Cj4gPiA+ID4g
PiArICAgICAgICAgICAgIGJ1ZltpZHhdIHw9IG1zZy0+dmFsaWRfc3RyZWFtX2V2ZW50ID8gQklU
KDIpIDogMDsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgYnVmW2lkeF0gfD0gRklFTERfUFJFUChH
RU5NQVNLKDQsIDMpLCBtc2ctPnN0cmVhbV9iZWhhdmlvcik7Cj4gPiA+ID4gPiArICAgICAgICAg
ICAgIGJ1ZltpZHhdIHw9IG1zZy0+dmFsaWRfc3RyZWFtX2JlaGF2aW9yID8gQklUKDUpIDogMDsK
PiA+ID4gPiA+ICsgICAgICAgICAgICAgaWR4Kys7Cj4gPiA+ID4gPiArICAgICAgICAgICAgIH0K
PiA+ID4gPiA+ICsgICAgICAgICAgICAgYnJlYWs7Cj4gPiA+ID4gPiAgICAgICB9Cj4gPiA+ID4g
PiAgICAgICByYXctPmN1cl9sZW4gPSBpZHg7Cj4gPiA+ID4gPiAgfQo+ID4gPiA+ID4gQEAgLTU0
Nyw2ICs1NjUsMjAgQEAgZHJtX2RwX2RlY29kZV9zaWRlYmFuZF9yZXEoY29uc3Qgc3RydWN0IGRy
bV9kcF9zaWRlYmFuZF9tc2dfdHggKnJhdywKPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHJldHVybiAtRU5PTUVNOwo+ID4gPiA+ID4gICAgICAgICAgICAgICB9Cj4gPiA+
ID4gPiAgICAgICAgICAgICAgIGJyZWFrOwo+ID4gPiA+ID4gKyAgICAgY2FzZSBEUF9RVUVSWV9T
VFJFQU1fRU5DX1NUQVRVUzoKPiA+ID4gPiA+ICsgICAgICAgICAgICAgcmVxLT51LmVuY19zdGF0
dXMuc3RyZWFtX2lkID0gYnVmW2lkeCsrXTsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgZm9yIChp
ID0gMDsgaSA8IHNpemVvZihyZXEtPnUuZW5jX3N0YXR1cy5jbGllbnRfaWQpOyBpKyspCj4gPiA+
ID4gPiArICAgICAgICAgICAgICAgICAgICAgcmVxLT51LmVuY19zdGF0dXMuY2xpZW50X2lkW2ld
ID0gYnVmW2lkeCsrXTsKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgcmVxLT51
LmVuY19zdGF0dXMuc3RyZWFtX2V2ZW50ID0gRklFTERfR0VUKEdFTk1BU0soMSwgMCksCj4gPiA+
ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBidWZbaWR4XSk7Cj4gPiA+ID4gPiArICAgICAgICAgICAgIHJlcS0+dS5lbmNfc3RhdHVz
LnZhbGlkX3N0cmVhbV9ldmVudCA9IEZJRUxEX0dFVChCSVQoMiksCj4gPiA+ID4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBi
dWZbaWR4XSk7Cj4gPiA+ID4gPiArICAgICAgICAgICAgIHJlcS0+dS5lbmNfc3RhdHVzLnN0cmVh
bV9iZWhhdmlvciA9IEZJRUxEX0dFVChHRU5NQVNLKDQsIDMpLAo+ID4gPiA+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYnVmW2lk
eF0pOwo+ID4gPiA+ID4gKyAgICAgICAgICAgICByZXEtPnUuZW5jX3N0YXR1cy52YWxpZF9zdHJl
YW1fYmVoYXZpb3IgPSBGSUVMRF9HRVQoQklUKDUpLAo+ID4gPiA+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYnVmW2lk
eF0pOwo+ID4gPiA+ID4gKyAgICAgICAgICAgICBicmVhazsKPiA+ID4gPiA+ICAgICAgIH0KPiA+
ID4gPiA+Cj4gPiA+ID4gPiAgICAgICByZXR1cm4gMDsKPiA+ID4gPiA+IEBAIC02MjUsNiArNjU3
LDE2IEBAIGRybV9kcF9kdW1wX3NpZGViYW5kX21zZ19yZXFfYm9keShjb25zdCBzdHJ1Y3QgZHJt
X2RwX3NpZGViYW5kX21zZ19yZXFfYm9keSAqcmVxCj4gPiA+ID4gPiAgICAgICAgICAgICAgICAg
cmVxLT51LmkyY193cml0ZS5udW1fYnl0ZXMsIHJlcS0+dS5pMmNfd3JpdGUubnVtX2J5dGVzLAo+
ID4gPiA+ID4gICAgICAgICAgICAgICAgIHJlcS0+dS5pMmNfd3JpdGUuYnl0ZXMpOwo+ID4gPiA+
ID4gICAgICAgICAgICAgICBicmVhazsKPiA+ID4gPiA+ICsgICAgIGNhc2UgRFBfUVVFUllfU1RS
RUFNX0VOQ19TVEFUVVM6Cj4gPiA+ID4gPiArICAgICAgICAgICAgIFAoInN0cmVhbV9pZD0ldSBj
bGllbnRfaWQ9JSpwaCBzdHJlYW1fZXZlbnQ9JXggIgo+ID4gPiA+ID4gKyAgICAgICAgICAgICAg
ICJ2YWxpZF9ldmVudD0lZCBzdHJlYW1fYmVoYXZpb3I9JXggdmFsaWRfYmVoYXZpb3I9JWQiLAo+
ID4gPiA+ID4gKyAgICAgICAgICAgICAgIHJlcS0+dS5lbmNfc3RhdHVzLnN0cmVhbV9pZCwKPiA+
ID4gPiA+ICsgICAgICAgICAgICAgICAoaW50KUFSUkFZX1NJWkUocmVxLT51LmVuY19zdGF0dXMu
Y2xpZW50X2lkKSwKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICByZXEtPnUuZW5jX3N0YXR1cy5j
bGllbnRfaWQsIHJlcS0+dS5lbmNfc3RhdHVzLnN0cmVhbV9ldmVudCwKPiA+ID4gPiA+ICsgICAg
ICAgICAgICAgICByZXEtPnUuZW5jX3N0YXR1cy52YWxpZF9zdHJlYW1fZXZlbnQsCj4gPiA+ID4g
PiArICAgICAgICAgICAgICAgcmVxLT51LmVuY19zdGF0dXMuc3RyZWFtX2JlaGF2aW9yLAo+ID4g
PiA+ID4gKyAgICAgICAgICAgICAgIHJlcS0+dS5lbmNfc3RhdHVzLnZhbGlkX3N0cmVhbV9iZWhh
dmlvcik7Cj4gPiA+ID4gPiArICAgICAgICAgICAgIGJyZWFrOwo+ID4gPiA+ID4gICAgICAgZGVm
YXVsdDoKPiA+ID4gPiA+ICAgICAgICAgICAgICAgUCgiPz8/XG4iKTsKPiA+ID4gPiA+ICAgICAg
ICAgICAgICAgYnJlYWs7Cj4gPiA+ID4gPiBAQCAtOTI1LDYgKzk2NywzNCBAQCBzdGF0aWMgYm9v
bCBkcm1fZHBfc2lkZWJhbmRfcGFyc2VfcG93ZXJfdXBkb3duX3BoeV9hY2soc3RydWN0IGRybV9k
cF9zaWRlYmFuZF9tcwo+ID4gPiA+ID4gICAgICAgcmV0dXJuIHRydWU7Cj4gPiA+ID4gPiAgfQo+
ID4gPiA+ID4KPiA+ID4gPiA+ICtzdGF0aWMgYm9vbAo+ID4gPiA+ID4gK2RybV9kcF9zaWRlYmFu
ZF9wYXJzZV9xdWVyeV9zdHJlYW1fZW5jX3N0YXR1cygKPiA+ID4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1fZHBfc2lkZWJhbmRfbXNnX3J4ICpyYXcsCj4gPiA+
ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2RwX3NpZGViYW5k
X21zZ19yZXBseV9ib2R5ICpyZXBtc2cpCj4gPiA+ID4gPiArewo+ID4gPiA+ID4gKyAgICAgc3Ry
dWN0IGRybV9kcF9xdWVyeV9zdHJlYW1fZW5jX3N0YXR1c19hY2tfcmVwbHkgKnJlcGx5Owo+ID4g
PiA+ID4gKwo+ID4gPiA+ID4gKyAgICAgcmVwbHkgPSAmcmVwbXNnLT51LmVuY19zdGF0dXM7Cj4g
PiA+ID4gPiArCj4gPiA+ID4gPiArICAgICByZXBseS0+c3RyZWFtX2lkID0gcmF3LT5tc2dbM107
Cj4gPiBJdCBzZWVtcyBtc2dbMF0gaXMgbm90IHBhcnQgb2YgcmVwbHkgZGF0YSwKPiA+IGNvdWxk
IHlvdSBoZWxwIG1lIHdpdGggcG9pbnRlcnMsIHdoZXJlIG1zZyBpcyBmb3JtYXR0ZWQuCj4gPiA+
ID4gPiArCj4gPiA+ID4gPiArICAgICByZXBseS0+cmVwbHlfc2lnbmVkID0gcmF3LT5tc2dbMl0g
JiBCSVQoMCk7Cj4gVGhpcyB3aG9sZSBwYXRjaCBsb29rcyBnb29kIHRvIG1lIGkgY291bGQgaGF2
ZSBnaXZlbiBSQiBidXQgaSBhbSBoYXZpbmcKPiBzb21lIGNvbmNlcm5zIHJlZ2FyZGluZyBwYXJz
aW5nIG9mIGJpdHMgaGVyZS4KPiByZXBseV9zaWduZWQgaXMgMTV0aCBiaXQgb2YgcmVwbHkgbWVz
c2FnZSBpLmUgTVNCIG9mIG1zZ1syXSBoZXJlLgo+IGl0IHNlZW1zIGJpdCBwYXJzaW5nIGlzIGlu
IHJldmVyc2Ugb3JkZXIgaW4gYWxsIHBsYWNlcy4KPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICsgICAg
IHJlcGx5LT5oZGNwXzF4X2RldmljZV9wcmVzZW50ID0gcmF3LT5tc2dbMl0gJiBCSVQoMyk7Cj4g
PiA+ID4gPiArICAgICByZXBseS0+aGRjcF8yeF9kZXZpY2VfcHJlc2VudCA9IHJhdy0+bXNnWzJd
ICYgQklUKDQpOwo+IEJ1dCB0aGVzZSB0d28gYml0cyBhcmUgbm90IHBhcnNlIGFzIHJldmVyc2Ug
b3JkZXIsIHRoZXNlIGFyZSBwYXJzZQo+IGFzIHNpbWlsYXIgaW4gRFAgc3BlY3MsIGhkY3BfMXgg
MTF0aCBiaXQgKGJpdCAzIG9mIG1zZ1syXSksCj4gaGRjcF8yeCAxMnRoIGJpdCAoYml0IDQgb2Yg
bXNnWzJdKS4KPiBQbGVhc2UgY29ycmVjdCBtZSBpZiBpIGFtIHdyb25nIGhlcmUuCgpJJ20gbm90
IHJlYWxseSBzdXJlIHdoYXQgdG8gbWFrZSBvZiB0aGlzIGZpZWxkIHNpbmNlIHdoZW4gSSBjb25u
ZWN0IGEKZGlzcGxheSB3aGljaCBvbmx5IHN1cHBvcnRzIEhEQ1AgMS54IChubyBIRENQIDIueCks
IEkgZ2V0OgoKbXNnWzJdWzQ6M10gPSAwMWIKCkkndmUgcmVwcm9kdWNlZCB0aGlzIHdpdGggbXVs
dGlwbGUgaHVicy4gSSBkb24ndCBoYXZlIGFuIEhEQ1AgMi54CmRpc3BsYXksIHNvIEkgY2FuJ3Qg
cmVwcm9kdWNlIHRvIHNlZSBpZiB0aGUgb3RoZXIgYml0IGxpZ2h0cyB1cCB1bmRlcgp0aG9zZSBj
b25kaXRpb25zLgoKV2UncmUgbm90IHVzaW5nIHRoZXNlIGZpZWxkcyBhdCB0aGUgbW9tZW50LCBz
byBJIHN1cHBvc2UgSSBjYW4gc3dpdGNoCnRoZW0gYXJvdW5kIGFuZCBsZWF2ZSBhIGNvbW1lbnQg
aW4gY2FzZSBzb21lb25lIG5vdGljZXMgd2VpcmRuZXNzLgoKU2VhbgoKCgo+IFRoYW5rcywKPiBB
bnNodW1hbiBHdXB0YS4KPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICsgICAgIHJlcGx5LT5xdWVyeV9j
YXBhYmxlX2RldmljZV9wcmVzZW50ID0gcmF3LT5tc2dbMl0gJiBCSVQoNSk7Cj4gPiA+ID4gPiAr
ICAgICByZXBseS0+bGVnYWN5X2RldmljZV9wcmVzZW50ID0gcmF3LT5tc2dbMl0gJiBCSVQoNik7
Cj4gPiA+ID4gPiArICAgICByZXBseS0+dW5hdXRob3JpemFibGVfZGV2aWNlX3ByZXNlbnQgPSBy
YXctPm1zZ1syXSAmIEJJVCg3KTsKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICsgICAgIHJlcGx5LT5h
dXRoX2NvbXBsZXRlZCA9ICEhKHJhdy0+bXNnWzFdICYgQklUKDMpKTsKPgo+ID4gPiA+ID4gKyAg
ICAgcmVwbHktPmVuY3J5cHRpb25fZW5hYmxlZCA9ICEhKHJhdy0+bXNnWzFdICYgQklUKDQpKTsK
PiA+ID4gPiA+ICsgICAgIHJlcGx5LT5yZXBlYXRlcl9wcmVzZW50ID0gISEocmF3LT5tc2dbMV0g
JiBCSVQoNSkpOwo+ID4gPiA+ID4gKyAgICAgcmVwbHktPnN0YXRlID0gKHJhdy0+bXNnWzFdICYg
R0VOTUFTSyg3LCA2KSkgPj4gNjsKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICsgICAgIHJldHVybiB0
cnVlOwo+ID4gPiA+ID4gK30KPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICBzdGF0aWMgYm9vbCBkcm1f
ZHBfc2lkZWJhbmRfcGFyc2VfcmVwbHkoc3RydWN0IGRybV9kcF9zaWRlYmFuZF9tc2dfcnggKnJh
dywKPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0
IGRybV9kcF9zaWRlYmFuZF9tc2dfcmVwbHlfYm9keSAqbXNnKQo+ID4gPiA+ID4gIHsKPiA+ID4g
PiA+IEBAIC05NTksNiArMTAyOSw4IEBAIHN0YXRpYyBib29sIGRybV9kcF9zaWRlYmFuZF9wYXJz
ZV9yZXBseShzdHJ1Y3QgZHJtX2RwX3NpZGViYW5kX21zZ19yeCAqcmF3LAo+ID4gPiA+ID4gICAg
ICAgICAgICAgICByZXR1cm4gZHJtX2RwX3NpZGViYW5kX3BhcnNlX3Bvd2VyX3VwZG93bl9waHlf
YWNrKHJhdywgbXNnKTsKPiA+ID4gPiA+ICAgICAgIGNhc2UgRFBfQ0xFQVJfUEFZTE9BRF9JRF9U
QUJMRToKPiA+ID4gPiA+ICAgICAgICAgICAgICAgcmV0dXJuIHRydWU7IC8qIHNpbmNlIHRoZXJl
J3Mgbm90aGluZyB0byBwYXJzZSAqLwo+ID4gPiA+ID4gKyAgICAgY2FzZSBEUF9RVUVSWV9TVFJF
QU1fRU5DX1NUQVRVUzoKPiA+ID4gPiA+ICsgICAgICAgICAgICAgcmV0dXJuIGRybV9kcF9zaWRl
YmFuZF9wYXJzZV9xdWVyeV9zdHJlYW1fZW5jX3N0YXR1cyhyYXcsIG1zZyk7Cj4gPiA+ID4gPiAg
ICAgICBkZWZhdWx0Ogo+ID4gPiA+ID4gICAgICAgICAgICAgICBEUk1fRVJST1IoIkdvdCB1bmtu
b3duIHJlcGx5IDB4JTAyeCAoJXMpXG4iLCBtc2ctPnJlcV90eXBlLAo+ID4gPiA+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAgZHJtX2RwX21zdF9yZXFfdHlwZV9zdHIobXNnLT5yZXFfdHlwZSkp
Owo+ID4gPiA+ID4gQEAgLTExMDksNiArMTE4MSwyNSBAQCBzdGF0aWMgdm9pZCBidWlsZF9wb3dl
cl91cGRvd25fcGh5KHN0cnVjdCBkcm1fZHBfc2lkZWJhbmRfbXNnX3R4ICptc2csCj4gPiA+ID4g
PiAgICAgICBtc2ctPnBhdGhfbXNnID0gdHJ1ZTsKPiA+ID4gPiA+ICB9Cj4gPiA+ID4gPgo+ID4g
PiA+ID4gK3N0YXRpYyBpbnQKPiA+ID4gPiA+ICtidWlsZF9xdWVyeV9zdHJlYW1fZW5jX3N0YXR1
cyhzdHJ1Y3QgZHJtX2RwX3NpZGViYW5kX21zZ190eCAqbXNnLCB1OCBzdHJlYW1faWQsCj4gPiA+
ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgdTggKnFfaWQpCj4gPiA+ID4gPiArewo+
ID4gPiA+ID4gKyAgICAgc3RydWN0IGRybV9kcF9zaWRlYmFuZF9tc2dfcmVxX2JvZHkgcmVxOwo+
ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyAgICAgcmVxLnJlcV90eXBlID0gRFBfUVVFUllfU1RSRUFN
X0VOQ19TVEFUVVM7Cj4gPiA+ID4gPiArICAgICByZXEudS5lbmNfc3RhdHVzLnN0cmVhbV9pZCA9
IHN0cmVhbV9pZDsKPiA+ID4gPiA+ICsgICAgIG1lbWNweShyZXEudS5lbmNfc3RhdHVzLmNsaWVu
dF9pZCwgcV9pZCwKPiA+ID4gPiA+ICsgICAgICAgICAgICBzaXplb2YocmVxLnUuZW5jX3N0YXR1
cy5jbGllbnRfaWQpKTsKPiA+ID4gPiA+ICsgICAgIHJlcS51LmVuY19zdGF0dXMuc3RyZWFtX2V2
ZW50ID0gMDsKPiA+ID4gPiA+ICsgICAgIHJlcS51LmVuY19zdGF0dXMudmFsaWRfc3RyZWFtX2V2
ZW50ID0gZmFsc2U7Cj4gPiA+ID4gPiArICAgICByZXEudS5lbmNfc3RhdHVzLnN0cmVhbV9iZWhh
dmlvciA9IDA7Cj4gPiA+ID4gPiArICAgICByZXEudS5lbmNfc3RhdHVzLnZhbGlkX3N0cmVhbV9i
ZWhhdmlvciA9IGZhbHNlOwo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyAgICAgZHJtX2RwX2VuY29k
ZV9zaWRlYmFuZF9yZXEoJnJlcSwgbXNnKTsKPiA+ID4gPiA+ICsgICAgIHJldHVybiAwOwo+ID4g
PiA+ID4gK30KPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICBzdGF0aWMgaW50IGRybV9kcF9tc3RfYXNz
aWduX3BheWxvYWRfaWQoc3RydWN0IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyICptZ3IsCj4gPiA+
ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1fZHBf
dmNwaSAqdmNwaSkKPiA+ID4gPiA+ICB7Cj4gPiA+ID4gPiBAQCAtMzEzNyw2ICszMjI4LDU3IEBA
IGludCBkcm1fZHBfc2VuZF9wb3dlcl91cGRvd25fcGh5KHN0cnVjdCBkcm1fZHBfbXN0X3RvcG9s
b2d5X21nciAqbWdyLAo+ID4gPiA+ID4gIH0KPiA+ID4gPiA+ICBFWFBPUlRfU1lNQk9MKGRybV9k
cF9zZW5kX3Bvd2VyX3VwZG93bl9waHkpOwo+ID4gPiA+ID4KPiA+ID4gPiA+ICtpbnQgZHJtX2Rw
X3NlbmRfcXVlcnlfc3RyZWFtX2VuY19zdGF0dXMoc3RydWN0IGRybV9kcF9tc3RfdG9wb2xvZ3lf
bWdyICptZ3IsCj4gPiA+ID4gPiArICAgICAgICAgICAgIHN0cnVjdCBkcm1fZHBfbXN0X3BvcnQg
KnBvcnQsCj4gPiA+ID4gPiArICAgICAgICAgICAgIHN0cnVjdCBkcm1fZHBfcXVlcnlfc3RyZWFt
X2VuY19zdGF0dXNfYWNrX3JlcGx5ICpzdGF0dXMpCj4gPiA+ID4gPiArewo+ID4gPiA+ID4gKyAg
ICAgc3RydWN0IGRybV9kcF9zaWRlYmFuZF9tc2dfdHggKnR4bXNnOwo+ID4gPiA+ID4gKyAgICAg
dTggbm9uY2VbN107Cj4gPiA+ID4gPiArICAgICBpbnQgbGVuLCByZXQ7Cj4gPiA+ID4gPiArCj4g
PiA+ID4gPiArICAgICB0eG1zZyA9IGt6YWxsb2Moc2l6ZW9mKCp0eG1zZyksIEdGUF9LRVJORUwp
Owo+ID4gPiA+ID4gKyAgICAgaWYgKCF0eG1zZykKPiA+ID4gPiA+ICsgICAgICAgICAgICAgcmV0
dXJuIC1FTk9NRU07Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArICAgICBwb3J0ID0gZHJtX2RwX21z
dF90b3BvbG9neV9nZXRfcG9ydF92YWxpZGF0ZWQobWdyLCBwb3J0KTsKPiA+ID4gPiA+ICsgICAg
IGlmICghcG9ydCkgewo+ID4gPiA+ID4gKyAgICAgICAgICAgICByZXQgPSAtRUlOVkFMOwo+ID4g
PiA+ID4gKyAgICAgICAgICAgICBnb3RvIG91dF9nZXRfcG9ydDsKPiA+ID4gPiA+ICsgICAgIH0K
PiA+ID4gPiA+ICsKPiA+ID4gPiA+ICsgICAgIGdldF9yYW5kb21fYnl0ZXMobm9uY2UsIHNpemVv
Zihub25jZSkpOwo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyAgICAgLyoKPiA+ID4gPiA+ICsgICAg
ICAqICJTb3VyY2UgZGV2aWNlIHRhcmdldHMgdGhlIFFVRVJZX1NUUkVBTV9FTkNSWVBUSU9OX1NU
QVRVUyBtZXNzYWdlCj4gPiA+ID4gPiArICAgICAgKiAgdHJhbnNhY3Rpb24gYXQgdGhlIE1TVCBC
cmFuY2ggZGV2aWNlIGRpcmVjdGx5IGNvbm5lY3RlZCB0byB0aGUKPiA+ID4gPiA+ICsgICAgICAq
ICBTb3VyY2UiCj4gPiA+ID4gPiArICAgICAgKi8KPiA+ID4gPiA+ICsgICAgIHR4bXNnLT5kc3Qg
PSBtZ3ItPm1zdF9wcmltYXJ5Owo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyAgICAgbGVuID0gYnVp
bGRfcXVlcnlfc3RyZWFtX2VuY19zdGF0dXModHhtc2csIHBvcnQtPnZjcGkudmNwaSwgbm9uY2Up
Owo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyAgICAgZHJtX2RwX3F1ZXVlX2Rvd25fdHgobWdyLCB0
eG1zZyk7Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArICAgICByZXQgPSBkcm1fZHBfbXN0X3dhaXRf
dHhfcmVwbHkobWdyLT5tc3RfcHJpbWFyeSwgdHhtc2cpOwo+ID4gPiA+ID4gKyAgICAgaWYgKHJl
dCA8IDApIHsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgZ290byBvdXQ7Cj4gPiA+ID4gPiArICAg
ICB9IGVsc2UgaWYgKHR4bXNnLT5yZXBseS5yZXBseV90eXBlID09IERQX1NJREVCQU5EX1JFUExZ
X05BSykgewo+ID4gPiA+ID4gKyAgICAgICAgICAgICBEUk1fREVCVUdfS01TKCJxdWVyeSBlbmNy
eXB0aW9uIHN0YXR1cyBuYWsgcmVjZWl2ZWRcbiIpOwo+ID4gPiA+ID4gKyAgICAgICAgICAgICBy
ZXQgPSAtRU5YSU87Cj4gPiA+ID4gPiArICAgICAgICAgICAgIGdvdG8gb3V0Owo+ID4gPiA+ID4g
KyAgICAgfQo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyAgICAgcmV0ID0gMDsKPiA+ID4gPiA+ICsg
ICAgIG1lbWNweShzdGF0dXMsICZ0eG1zZy0+cmVwbHkudS5lbmNfc3RhdHVzLCBzaXplb2YoKnN0
YXR1cykpOwo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gK291dDoKPiA+ID4gPiA+ICsgICAgIGRybV9k
cF9tc3RfdG9wb2xvZ3lfcHV0X3BvcnQocG9ydCk7Cj4gPiA+ID4gPiArb3V0X2dldF9wb3J0Ogo+
ID4gPiA+ID4gKyAgICAga2ZyZWUodHhtc2cpOwo+ID4gPiA+ID4gKyAgICAgcmV0dXJuIHJldDsK
PiA+ID4gPiA+ICt9Cj4gPiA+ID4gPiArRVhQT1JUX1NZTUJPTChkcm1fZHBfc2VuZF9xdWVyeV9z
dHJlYW1fZW5jX3N0YXR1cyk7Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiAgc3RhdGljIGludCBkcm1f
ZHBfY3JlYXRlX3BheWxvYWRfc3RlcDEoc3RydWN0IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyICpt
Z3IsCj4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaW50IGlk
LAo+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBk
cm1fZHBfcGF5bG9hZCAqcGF5bG9hZCkKPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vc2VsZnRlc3RzL3Rlc3QtZHJtX2RwX21zdF9oZWxwZXIuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9zZWxmdGVzdHMvdGVzdC1kcm1fZHBfbXN0X2hlbHBlci5jCj4gPiA+ID4gPiBpbmRleCBiZDk5
MGQxNzg3NjUuLjFkNjk2ZWMwMDFjZiAxMDA2NDQKPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9zZWxmdGVzdHMvdGVzdC1kcm1fZHBfbXN0X2hlbHBlci5jCj4gPiA+ID4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vc2VsZnRlc3RzL3Rlc3QtZHJtX2RwX21zdF9oZWxwZXIuYwo+ID4gPiA+
ID4gQEAgLTUsNiArNSw4IEBACj4gPiA+ID4gPgo+ID4gPiA+ID4gICNkZWZpbmUgUFJFRklYX1NU
UiAiW2RybV9kcF9tc3RfaGVscGVyXSIKPiA+ID4gPiA+Cj4gPiA+ID4gPiArI2luY2x1ZGUgPGxp
bnV4L3JhbmRvbS5oPgo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gICNpbmNsdWRlIDxkcm0vZHJtX2Rw
X21zdF9oZWxwZXIuaD4KPiA+ID4gPiA+ICAjaW5jbHVkZSA8ZHJtL2RybV9wcmludC5oPgo+ID4g
PiA+ID4KPiA+ID4gPiA+IEBAIC0yMzcsNiArMjM5LDIxIEBAIGludCBpZ3RfZHBfbXN0X3NpZGVi
YW5kX21zZ19yZXFfZGVjb2RlKHZvaWQgKnVudXNlZCkKPiA+ID4gPiA+ICAgICAgIGluLnUuaTJj
X3dyaXRlLmJ5dGVzID0gZGF0YTsKPiA+ID4gPiA+ICAgICAgIERPX1RFU1QoKTsKPiA+ID4gPiA+
Cj4gPiA+ID4gPiArICAgICBpbi5yZXFfdHlwZSA9IERQX1FVRVJZX1NUUkVBTV9FTkNfU1RBVFVT
Owo+ID4gPiA+ID4gKyAgICAgaW4udS5lbmNfc3RhdHVzLnN0cmVhbV9pZCA9IDE7Cj4gPiA+ID4g
PiArICAgICBET19URVNUKCk7Cj4gPiA+ID4gPiArICAgICBnZXRfcmFuZG9tX2J5dGVzKGluLnUu
ZW5jX3N0YXR1cy5jbGllbnRfaWQsCj4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgIHNp
emVvZihpbi51LmVuY19zdGF0dXMuY2xpZW50X2lkKSk7Cj4gPiA+ID4gPiArICAgICBET19URVNU
KCk7Cj4gPiA+ID4gPiArICAgICBpbi51LmVuY19zdGF0dXMuc3RyZWFtX2V2ZW50ID0gMzsKPiA+
ID4gPiA+ICsgICAgIERPX1RFU1QoKTsKPiA+ID4gPiA+ICsgICAgIGluLnUuZW5jX3N0YXR1cy52
YWxpZF9zdHJlYW1fZXZlbnQgPSAwOwo+ID4gPiA+ID4gKyAgICAgRE9fVEVTVCgpOwo+ID4gPiA+
ID4gKyAgICAgaW4udS5lbmNfc3RhdHVzLnN0cmVhbV9iZWhhdmlvciA9IDM7Cj4gPiA+ID4gPiAr
ICAgICBET19URVNUKCk7Cj4gPiA+ID4gPiArICAgICBpbi51LmVuY19zdGF0dXMudmFsaWRfc3Ry
ZWFtX2JlaGF2aW9yID0gMTsKPiA+ID4gPiA+ICsgICAgIERPX1RFU1QoKTsKPiA+ID4gPiA+ICsK
PiA+ID4gPiA+ICAjdW5kZWYgRE9fVEVTVAo+ID4gPiA+ID4gICAgICAgcmV0dXJuIDA7Cj4gPiA+
ID4gPiAgfQo+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIu
aCBiL2luY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIuaAo+ID4gPiA+ID4gaW5kZXggZTQ3ZGMyMmVi
ZjUwLi5lMmQyZGY1ZTg2OWUgMTAwNjQ0Cj4gPiA+ID4gPiAtLS0gYS9pbmNsdWRlL2RybS9kcm1f
ZHBfaGVscGVyLmgKPiA+ID4gPiA+ICsrKyBiL2luY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIuaAo+
ID4gPiA+ID4gQEAgLTExMDgsNiArMTEwOCw5IEBACj4gPiA+ID4gPiAgI2RlZmluZSBEUF9QT1dF
Ul9ET1dOX1BIWSAgICAgICAgICAgIDB4MjUKPiA+ID4gPiA+ICAjZGVmaW5lIERQX1NJTktfRVZF
TlRfTk9USUZZICAgICAgICAgMHgzMAo+ID4gPiA+ID4gICNkZWZpbmUgRFBfUVVFUllfU1RSRUFN
X0VOQ19TVEFUVVMgICAweDM4Cj4gPiA+ID4gPiArI2RlZmluZSAgRFBfUVVFUllfU1RSRUFNX0VO
Q19TVEFUVVNfU1RBVEVfTk9fRVhJU1QgICAwCj4gPiA+ID4gPiArI2RlZmluZSAgRFBfUVVFUllf
U1RSRUFNX0VOQ19TVEFUVVNfU1RBVEVfSU5BQ1RJVkUgICAxCj4gPiA+ID4gPiArI2RlZmluZSAg
RFBfUVVFUllfU1RSRUFNX0VOQ19TVEFUVVNfU1RBVEVfQUNUSVZFICAgICAyCj4gPiA+ID4gPgo+
ID4gPiA+ID4gIC8qIERQIDEuMiBNU1Qgc2lkZWJhbmQgcmVwbHkgdHlwZXMgKi8KPiA+ID4gPiA+
ICAjZGVmaW5lIERQX1NJREVCQU5EX1JFUExZX0FDSyAgICAgICAgICAgICAgICAweDAwCj4gPiA+
ID4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX2RwX21zdF9oZWxwZXIuaCBiL2luY2x1
ZGUvZHJtL2RybV9kcF9tc3RfaGVscGVyLmgKPiA+ID4gPiA+IGluZGV4IDhiOWViNGRiMzM4MS4u
MzcxZWVmODc5OGFkIDEwMDY0NAo+ID4gPiA+ID4gLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2RwX21z
dF9oZWxwZXIuaAo+ID4gPiA+ID4gKysrIGIvaW5jbHVkZS9kcm0vZHJtX2RwX21zdF9oZWxwZXIu
aAo+ID4gPiA+ID4gQEAgLTMxMyw2ICszMTMsMzQgQEAgc3RydWN0IGRybV9kcF9yZW1vdGVfaTJj
X3dyaXRlX2Fja19yZXBseSB7Cj4gPiA+ID4gPiAgICAgICB1OCBwb3J0X251bWJlcjsKPiA+ID4g
PiA+ICB9Owo+ID4gPiA+ID4KPiA+ID4gPiA+ICtzdHJ1Y3QgZHJtX2RwX3F1ZXJ5X3N0cmVhbV9l
bmNfc3RhdHVzX2Fja19yZXBseSB7Cj4gPiA+ID4gPiArICAgICAvKiBCaXRbMjM6MTZdLSBTdHJl
YW0gSWQgKi8KPiA+ID4gPiA+ICsgICAgIHU4IHN0cmVhbV9pZDsKPiA+ID4gPiA+ICsKPiA+ID4g
PiA+ICsgICAgIC8qIEJpdFsxNV0tIFNpZ25lZCAqLwo+ID4gPiA+ID4gKyAgICAgYm9vbCByZXBs
eV9zaWduZWQ7Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArICAgICAvKiBCaXRbMTA6OF0tIFN0cmVh
bSBPdXRwdXQgU2luayBUeXBlICovCj4gPiA+ID4gPiArICAgICBib29sIHVuYXV0aG9yaXphYmxl
X2RldmljZV9wcmVzZW50Owo+ID4gPiA+ID4gKyAgICAgYm9vbCBsZWdhY3lfZGV2aWNlX3ByZXNl
bnQ7Cj4gPiA+ID4gPiArICAgICBib29sIHF1ZXJ5X2NhcGFibGVfZGV2aWNlX3ByZXNlbnQ7Cj4g
PiA+ID4gPiArCj4gPiA+ID4gPiArICAgICAvKiBCaXRbMTI6MTFdLSBTdHJlYW0gT3V0cHV0IENQ
IFR5cGUgKi8KPiA+ID4gPiA+ICsgICAgIGJvb2wgaGRjcF8xeF9kZXZpY2VfcHJlc2VudDsKPiA+
ID4gPiA+ICsgICAgIGJvb2wgaGRjcF8yeF9kZXZpY2VfcHJlc2VudDsKPiA+ID4gPiA+ICsKPiA+
ID4gPiA+ICsgICAgIC8qIEJpdFs0XS0gU3RyZWFtIEF1dGhlbnRpY2F0aW9uICovCj4gPiA+ID4g
PiArICAgICBib29sIGF1dGhfY29tcGxldGVkOwo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyAgICAg
LyogQml0WzNdLSBTdHJlYW0gRW5jcnlwdGlvbiAqLwo+ID4gPiA+ID4gKyAgICAgYm9vbCBlbmNy
eXB0aW9uX2VuYWJsZWQ7Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArICAgICAvKiBCaXRbMl0tIFN0
cmVhbSBSZXBlYXRlciBGdW5jdGlvbiBQcmVzZW50ICovCj4gPiA+ID4gPiArICAgICBib29sIHJl
cGVhdGVyX3ByZXNlbnQ7Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArICAgICAvKiBCaXRbMTowXS0g
U3RyZWFtIFN0YXRlICovCj4gPiA+ID4gPiArICAgICB1OCBzdGF0ZTsKPiA+IHJlcGx5IG1zZyBh
bHNvIGhhcyAyMCBieXRlIG9mIHNpZ25hdHVyZSBMJyAoSERDUCAxLjQpLAo+ID4gQUZBSVUgaXQg
aGFzIGxlZnRlZCBvdXQgZm9yIEhEQ1AgMi4yIGltcGxlbWVudGF0aW9uLCB3aGljaCBpcyBvZiAz
MiBieXRlcyBmb3IgSERDUCAyLjIuCj4gPiBQbGVhc2UgY29ycmVjdCBtZSBpZiBpIGFtIHdyb25n
IGhlcmUuCj4gPiBUaGFua3MsCj4gPiBBbnNodW1hbiBHdXB0YS4KPiA+ID4gPiA+ICt9Owo+ID4g
PiA+ID4KPiA+ID4gPiA+ICAjZGVmaW5lIERSTV9EUF9NQVhfU0RQX1NUUkVBTVMgMTYKPiA+ID4g
PiA+ICBzdHJ1Y3QgZHJtX2RwX2FsbG9jYXRlX3BheWxvYWQgewo+ID4gPiA+ID4gQEAgLTM3NCw2
ICs0MDIsMTUgQEAgc3RydWN0IGRybV9kcF9yZW1vdGVfaTJjX3dyaXRlIHsKPiA+ID4gPiA+ICAg
ICAgIHU4ICpieXRlczsKPiA+ID4gPiA+ICB9Owo+ID4gPiA+ID4KPiA+ID4gPiA+ICtzdHJ1Y3Qg
ZHJtX2RwX3F1ZXJ5X3N0cmVhbV9lbmNfc3RhdHVzIHsKPiA+ID4gPiA+ICsgICAgIHU4IHN0cmVh
bV9pZDsKPiA+ID4gPiA+ICsgICAgIHU4IGNsaWVudF9pZFs3XTsgICAgICAgIC8qIDU2LWJpdCBu
b25jZSAqLwo+ID4gPiA+ID4gKyAgICAgdTggc3RyZWFtX2V2ZW50Owo+ID4gPiA+ID4gKyAgICAg
Ym9vbCB2YWxpZF9zdHJlYW1fZXZlbnQ7Cj4gPiA+ID4gPiArICAgICB1OCBzdHJlYW1fYmVoYXZp
b3I7Cj4gPiA+ID4gPiArICAgICB1OCB2YWxpZF9zdHJlYW1fYmVoYXZpb3I7Cj4gPiA+ID4gPiAr
fTsKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICAvKiB0aGlzIGNvdmVycyBFTlVNX1JFU09VUkNFUywg
UE9XRVJfRE9XTl9QSFksIFBPV0VSX1VQX1BIWSAqLwo+ID4gPiA+ID4gIHN0cnVjdCBkcm1fZHBf
cG9ydF9udW1iZXJfcmVxIHsKPiA+ID4gPiA+ICAgICAgIHU4IHBvcnRfbnVtYmVyOwo+ID4gPiA+
ID4gQEAgLTQyMiw2ICs0NTksOCBAQCBzdHJ1Y3QgZHJtX2RwX3NpZGViYW5kX21zZ19yZXFfYm9k
eSB7Cj4gPiA+ID4gPgo+ID4gPiA+ID4gICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2RwX3JlbW90
ZV9pMmNfcmVhZCBpMmNfcmVhZDsKPiA+ID4gPiA+ICAgICAgICAgICAgICAgc3RydWN0IGRybV9k
cF9yZW1vdGVfaTJjX3dyaXRlIGkyY193cml0ZTsKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICsgICAg
ICAgICAgICAgc3RydWN0IGRybV9kcF9xdWVyeV9zdHJlYW1fZW5jX3N0YXR1cyBlbmNfc3RhdHVz
Owo+ID4gPiA+ID4gICAgICAgfSB1Owo+ID4gPiA+ID4gIH07Cj4gPiA+ID4gPgo+ID4gPiA+ID4g
QEAgLTQ0NCw2ICs0ODMsOCBAQCBzdHJ1Y3QgZHJtX2RwX3NpZGViYW5kX21zZ19yZXBseV9ib2R5
IHsKPiA+ID4gPiA+ICAgICAgICAgICAgICAgc3RydWN0IGRybV9kcF9yZW1vdGVfaTJjX3JlYWRf
YWNrX3JlcGx5IHJlbW90ZV9pMmNfcmVhZF9hY2s7Cj4gPiA+ID4gPiAgICAgICAgICAgICAgIHN0
cnVjdCBkcm1fZHBfcmVtb3RlX2kyY19yZWFkX25ha19yZXBseSByZW1vdGVfaTJjX3JlYWRfbmFj
azsKPiA+ID4gPiA+ICAgICAgICAgICAgICAgc3RydWN0IGRybV9kcF9yZW1vdGVfaTJjX3dyaXRl
X2Fja19yZXBseSByZW1vdGVfaTJjX3dyaXRlX2FjazsKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICsg
ICAgICAgICAgICAgc3RydWN0IGRybV9kcF9xdWVyeV9zdHJlYW1fZW5jX3N0YXR1c19hY2tfcmVw
bHkgZW5jX3N0YXR1czsKPiA+ID4gPiA+ICAgICAgIH0gdTsKPiA+ID4gPiA+ICB9Owo+ID4gPiA+
ID4KPiA+ID4gPiA+IEBAIC04MDgsNiArODQ5LDkgQEAgZHJtX2RwX2F0b21pY19yZWxlYXNlX3Zj
cGlfc2xvdHMoc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ID4gPiA+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1fZHBfbXN0X3BvcnQgKnBvcnQpOwo+
ID4gPiA+ID4gIGludCBkcm1fZHBfc2VuZF9wb3dlcl91cGRvd25fcGh5KHN0cnVjdCBkcm1fZHBf
bXN0X3RvcG9sb2d5X21nciAqbWdyLAo+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHN0cnVjdCBkcm1fZHBfbXN0X3BvcnQgKnBvcnQsIGJvb2wgcG93ZXJfdXApOwo+ID4g
PiA+ID4gK2ludCBkcm1fZHBfc2VuZF9xdWVyeV9zdHJlYW1fZW5jX3N0YXR1cyhzdHJ1Y3QgZHJt
X2RwX21zdF90b3BvbG9neV9tZ3IgKm1nciwKPiA+ID4gPiA+ICsgICAgICAgICAgICAgc3RydWN0
IGRybV9kcF9tc3RfcG9ydCAqcG9ydCwKPiA+ID4gPiA+ICsgICAgICAgICAgICAgc3RydWN0IGRy
bV9kcF9xdWVyeV9zdHJlYW1fZW5jX3N0YXR1c19hY2tfcmVwbHkgKnN0YXR1cyk7Cj4gPiA+ID4g
PiAgaW50IF9fbXVzdF9jaGVjayBkcm1fZHBfbXN0X2F0b21pY19jaGVjayhzdHJ1Y3QgZHJtX2F0
b21pY19zdGF0ZSAqc3RhdGUpOwo+ID4gPiA+ID4KPiA+ID4gPiA+ICB2b2lkIGRybV9kcF9tc3Rf
Z2V0X3BvcnRfbWFsbG9jKHN0cnVjdCBkcm1fZHBfbXN0X3BvcnQgKnBvcnQpOwo+ID4gPiA+ID4g
LS0KPiA+ID4gPiA+IFNlYW4gUGF1bCwgU29mdHdhcmUgRW5naW5lZXIsIEdvb2dsZSAvIENocm9t
aXVtIE9TCj4gPiA+ID4gPgo+ID4gPiA+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiA+ID4gPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiA+ID4g
PiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+ID4gPiA+IGh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cj4gPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdAo+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
