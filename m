Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0762C1B2F4
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2019 11:35:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79F41899A5;
	Mon, 13 May 2019 09:35:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com
 [IPv6:2607:f8b0:4864:20::d43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 921508999A
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2019 09:35:12 +0000 (UTC)
Received: by mail-io1-xd43.google.com with SMTP id s20so9456167ioj.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2019 02:35:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UY6z0cOYgwpAOVarEMrHSkGRwyUZkyHyyixN3TqrPEc=;
 b=XNVzSXFMzsMLprp3NT9Ke9HAyzh9CSPvlMMi+BaecD0cJJgkSlBzM9Oxa0OoI10ekW
 e7qQkvMHW0nvzdd3jDKyMl/7GzYemDUDSdygXxMs23M5Kd18qGoDrQ3INPdrHHxQ5mzH
 1F9bDZRKrBGdIeE1JmdtB1+mgFFb/9KZhXmGgYTHV9ssMcz38YUMPCZ7PYMGo+ZAGV66
 uuZrFkPk05sjNK0lKoKv4lVD1CaP1n0/HAPtV55AIs6rHpOvh1cPjW+iPVQK4RyvVoKF
 yffftcs/XAm3nC5t+JgcSMKpnahMINdSHLASFN09Pn2wEdO+jnj/L+pkILjTnymz/HwB
 4I/w==
X-Gm-Message-State: APjAAAUMc/SI196Sg6k3yqsSmUqpVn+TJcFvyfRKsybrT1S6LvvaeTur
 KU2RzFIhH9NlB5bBYAT/6jCFpmXCe+tYnTShdeNNiA==
X-Google-Smtp-Source: APXvYqxDiKPIGLYOyUVszC/J/EJLGi2lAy7bawAbjjO2Ql1ElUVk4btB9edo+iXNPgzDOAputjAUZf159QKGr8VIm3E=
X-Received: by 2002:a6b:b654:: with SMTP id g81mr17017468iof.34.1557740111818; 
 Mon, 13 May 2019 02:35:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190507162745.25600-1-ramalingam.c@intel.com>
 <20190507162745.25600-10-ramalingam.c@intel.com>
 <31dad9a323382628911c5301a6eec179855aa815.camel@bootlin.com>
 <CAKMK7uEwHZ=As3B4z+WZ1fyd2yP5Krg3hVzfCcCAtv3jOxmTrA@mail.gmail.com>
 <8aa3980a6948b9b2b989c237f8453ca54e72ad95.camel@bootlin.com>
In-Reply-To: <8aa3980a6948b9b2b989c237f8453ca54e72ad95.camel@bootlin.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 13 May 2019 11:34:58 +0200
Message-ID: <CAKMK7uFaEPm+kqYdc=vkb_iRRXDf=P6D98VTMMKtCMQHCixhLg@mail.gmail.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=UY6z0cOYgwpAOVarEMrHSkGRwyUZkyHyyixN3TqrPEc=;
 b=UzSyvGx0Ml+3Eld6L67jY7rMBifnH3hkILvbB5Xy2kEebuqflXvgg/7KjiQZ8WgFgk
 SkvFsex33Nk+BpairJa0t8hQF5NaUsbUxM9ls7jDSoNENF41zx6RneBH4o3XZHUsBf6c
 9MfmJU7FMKqwS7JxnNfoGL8mZTSh7VT5/0x/8=
Subject: Re: [Intel-gfx] [PATCH v7 09/11] drm: uevent for connector status
 change
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
Cc: David Airlie <airlied@linux.ie>, Maxime Ripard <maxime.ripard@bootlin.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, "Ser,
 Simon" <simon.ser@intel.com>, Pekka Paalanen <ppaalanen@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBNYXkgMTMsIDIwMTkgYXQgMTE6MDIgQU0gUGF1bCBLb2NpYWxrb3dza2kKPHBhdWwu
a29jaWFsa293c2tpQGJvb3RsaW4uY29tPiB3cm90ZToKPgo+IEhpLAo+Cj4gT24gRnJpLCAyMDE5
LTA1LTEwIGF0IDE2OjU0ICswMjAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gT24gRnJpLCBN
YXkgMTAsIDIwMTkgYXQgMjoxMiBQTSBQYXVsIEtvY2lhbGtvd3NraQo+ID4gPHBhdWwua29jaWFs
a293c2tpQGJvb3RsaW4uY29tPiB3cm90ZToKPiA+ID4gSGksCj4gPiA+Cj4gPiA+IE9uIFR1ZSwg
MjAxOS0wNS0wNyBhdCAyMTo1NyArMDUzMCwgUmFtYWxpbmdhbSBDIHdyb3RlOgo+ID4gPiA+IERS
TSBBUEkgZm9yIGdlbmVyYXRpbmcgdWV2ZW50IGZvciBhIHN0YXR1cyBjaGFuZ2VzIG9mIGNvbm5l
Y3RvcidzCj4gPiA+ID4gcHJvcGVydHkuCj4gPiA+ID4KPiA+ID4gPiBUaGlzIHVldmVudCB3aWxs
IGhhdmUgZm9sbG93aW5nIGRldGFpbHMgcmVsYXRlZCB0byB0aGUgc3RhdHVzIGNoYW5nZToKPiA+
ID4gPgo+ID4gPiA+ICAgSE9UUExVRz0xLCBDT05ORUNUT1I9PGNvbm5lY3Rvcl9pZD4gYW5kIFBS
T1BFUlRZPTxwcm9wZXJ0eV9pZD4KPiA+ID4gPgo+ID4gPiA+IE5lZWQgQUNLIGZyb20gdGhpcyB1
ZXZlbnQgZnJvbSB1c2Vyc3BhY2UgY29uc3VtZXIuCj4gPiA+Cj4gPiA+IFNvIHdlIGp1c3QgaGFk
IHNvbWUgZGlzY3Vzc2lvbnMgb3ZlciBvbiBJUkMgYW5kIGF0IGFib3V0IHRoZSBob3RwbHVnCj4g
PiA+IGlzc3VlIGFuZCBjYW1lIHVwIHdpdGggc2ltaWxhciBpZGVhczoKPiA+ID4gaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvYXJjaGl2ZXMvZHJpLWRldmVsLzIwMTktTWF5LzIxNzQwOC5o
dG1sCj4gPiA+Cj4gPiA+IFRoZSBjb25jbHVzaW9ucyBvZiB0aGVzZSBkaXNjdXNzaW9ucyBzbyBm
YXIgd291bGQgYmUgdG8gaGF2ZSBhIG1vcmUgb3IKPiA+ID4gbGVzcyBmaW5lIGdyYWluIG9mIHVl
dmVudCByZXBvcnRpbmcgZGVwZW5kaW5nIG9uIHdoYXQgaGFwcGVuZWQuIFRoZQo+ID4gPiBwb2lu
dCBpcyB0aGF0IHdlIG5lZWQgdG8gY292ZXIgZGlmZmVyZW50IGNhc2VzOgo+ID4gPiAtIG9uZSBv
ciBtb3JlIHByb3BlcnRpZXMgY2hhbmdlZDsKPiA+ID4gLSB0aGUgY29ubmVjdG9yIHN0YXR1cyBj
aGFuZ2VkOwo+ID4gPiAtIHNvbWV0aGluZyBlbHNlIGFib3V0IHRoZSBjb25uZWN0b3IgY2hhbmdl
ZCAoZS5nLiBFRElEL21vZGVzKQo+ID4gPgo+ID4gPiBGb3IgdGhlIGZpcnN0IGNhc2UsIHdlIGNh
biBzZW5kIG91dDoKPiA+ID4gSE9UUExVRz0xCj4gPiA+IENPTk5FQ1RPUj08aWQ+Cj4gPiA+IFBS
T1BFUlRZPTxpZD4KPiA+ID4KPiA+ID4gYW5kIG5vIHJlcHJvYmUgaXMgcmVxdWlyZWQuCj4gPiA+
Cj4gPiA+IEZvciB0aGUgc2Vjb25kIG9uZSwgc29tZXRoaW5nIGxpa2U6Cj4gPiA+IEhPVFBMVUc9
MQo+ID4gPiBDT05ORUNUT1I9PGlkPgo+ID4gPiBTVEFUVVM9Q29ubmVjdGVkL0Rpc2Nvbm5lY3Rl
ZAo+ID4gPgo+ID4gPiBhbmQgYSBjb25uZWN0b3IgcHJvYmUgaXMgbmVlZGVkIGZvciBjb25uZWN0
ZWQsIGJ1dCBub3QgZm9yCj4gPiA+IGRpc2Nvbm5lY3RlZDsKPiA+ID4KPiA+ID4gRm9yIHRoZSB0
aGlyZCBvbmUsIHdlIGNhbiBvbmx5IGluZGljYXRlIHRoZSBjb25uZWN0b3I6Cj4gPiA+IEhPVFBM
VUc9MQo+ID4gPiBDT05ORUNUT1I9PGlkPgo+ID4gPgo+ID4gPiBhbmQgYSByZXByb2JlIG9mIHRo
ZSBjb25uZWN0b3IgaXMgYWx3YXlzIG5lZWRlZAo+ID4KPiA+IFRoZXJlJ3Mgbm8gbWF0ZXJpYWwg
ZGlmZmVyZW5jZSBiZXR3ZWVuIHRoaXMgb25lIGFuZCB0aGUgcHJldmlvdXMgb25lLgo+ID4gUGx1
cyB0aGVyZSdzIG5vIGJlZW5maXQgaW4gc3VwcGx5aW5nIHRoZSBhY3R1YWwgdmFsdWUgb2YgdGhl
IHByb3BlcnR5LAo+ID4gaS5lLiB3ZSBjYW4gcmV1c2UgdGhlIHNhbWUgUFJPUEVSVFk9PGlkLW9m
LXN0YXR1cy1wcm9wZXJ0eT4gdHJpY2suCj4KPiBUaGF0J3MgdGhlIGlkZWEsIGJ1dCB3ZSBuZWVk
IHRvIGhhbmRsZSBzdGF0dXMgY2hhbmdlcyBkaWZmZXJlbnRseSB0aGFuCj4gcHJvcGVydGllcywg
c2luY2UgYXMgZmFyIGFzIEkga25vdywgY29ubmVjdGVkL3VuY29ubmVjdGVkIHN0YXR1cyBpcyBu
b3QKPiBleHBvc2VkIGFzIGEgcHJvcCBmb3IgdGhlIGNvbm5lY3Rvci4KCk9vcHMsIHRvdGFsbHkg
bWlzc2VkIHRoYXQuICJFdmVyeXRoaW5nIGlzIGEgcHJvcGVydHkiIGlzIGtpbmRhCm5ldy1pc2gs
IGF0IGxlYXN0IGNvbXBhcmVkIHRvIGttcy4gS2luZGEgdGVtcHRlZCB0byBqdXN0IG1ha2Ugc3Rh
dHVzCmludG8gYSBwcm9wZXJ0eS4gT3IgYW5vdGhlciBleGN1c2Ugd2h5IHdlIHNob3VsZCBleHBv
c2UgdGhlIGVwb2NoCnByb3BlcnR5IDotKQoKPiA+IEhlcmUncyB3aHk6Cj4gPiAtIEEgc2lkZSBl
ZmZlY3Qgb2YgZm9yY2luZyBhIHByb2JlIG9uIGEgY29ubmVjdG9yIGlzIHRoYXQgeW91IGdldCB0
bwo+ID4gcmVhZCBhbGwgdGhlIHByb3BlcnRpZXMsIHNvIHN1cHBseWluZyB0aGVtIGlzIGtpbmRh
IHBvaW50bGVzcy4KPgo+IEFncmVlZCwgZXhjZXB0IGZvciB0aGUgc3RhdHVzIGNhc2Ugd2hlcmUg
aXQncyB1c2VmdWwgdG8ga25vdyBpdCdzIGEKPiBkaXNjb25uZWN0LCBiZWNhdXNlIHdlIGRvbid0
IG5lZWQgYW55IHByb2JlIHN0ZXAgaW4gdGhhdCBjYXNlLgo+Cj4gPiAtIFlvdSBjYW4gcmVhZCBT
VEFUVVMgd2l0aG91dCBmb3JjaW5nIGEgcmVwcm9iZSwgaWYgeW91IHdhbnQgdG8gYXZvaWQKPiA+
IHRoZSByZXByb2JlIGZvciBkaXNjb25uZWN0ZWQuIEknZCBraW5kYSBub3QgcmVjb21tZW5kIHRo
YXQgdGhvdWdoLAo+ID4gZmVlbHMgYSBiaXQgbGlrZSBvdmVyb3B0aW1pemluZy4gQW5kIGZvciBy
ZWFzb25hYmxlIGNvbm5lY3RvcnMgKGkuZS4KPiA+IGRwKSByZXByb2JpbmcgYSBkaXNjb25uZWN0
ZWQgb3V0cHV0IGlzIGZhc3QuIEhETUkgaXMgLi4uIGxlc3MKPiA+IHJlYXNvbmFibGUgdW5mb3J0
dW5hdGVseSwgYnV0IG9oIHdlbGwuCj4KPiBIb3cgd291bGQgdGhhdCBiZSByZXRyZWl2ZWQgdGhl
bj8gRnJvbSB0aGUgbG9va3Mgb2YgaXQsIHRoYXQncyBhCj4gTU9ERV9HRVRDT05ORUNUT1IgaW9j
dGwgYW5kIEkgd2FzIHVuZGVyIHRoZSBpbXByZXNzaW9uIHRoaXMgaXMgd2hhdAo+IGRvZXMgdGhl
IGZ1bGwgcmVwcm9iZS4KCmRybUdldENvbm5lY3RvciB2cyBkcm1HZXRDb25uZWN0b3JDdXJyZW50
LgoKPiBOb3Qgc3VyZSB3aGF0IGlzc3VlcyBjb3VsZCBhcmlzZSBpbiBjYXNlIG9mIGRpc2Nvbm5l
Y3Qgd2l0aG91dCByZXByb2JlCj4gLS0gYXQgbGVhc3QgSSBkb24ndCBzZWUgd2h5IHVzZXJzcGFj
ZSBzaG91bGQgaGF2ZSB0byBkbyBhbnl0aGluZyBpbgo+IHBhcnRpY3VsYXIgZXhjZXB0IG5vIGxv
bmdlciB1c2luZyB0aGUgY29ubmVjdG9yLCBldmVuIGluIGNvbXBsZXggRFAgTVNUCj4gY2FzZXMu
Cgpjb25uZWN0b3ItPnN0YXR1cyBtaWdodCBiZSBhIGxpZSB3aXRob3V0IGEgZnVsbCByZXByb2Jl
LCBhbmQgd3JvbmdseQppbmRpY2F0ZSB0aGF0IHRoZSBjb25uZWN0b3IgaXMgZGlzY29ubmVjdGVk
IHdoaWxlIHRoZXJlJ3Mgc3RpbGwKc29tZXRoaW5nIHBsdWdnZWQgaW4uIEknbSBub3Qgc3VyZSB3
ZSd2ZSBmaXhlZCB0aG9zZSBidWdzIGJ5IG5vdwoodXN1YWxseSBpdCdzIGFyb3VuZCAiaHBkIGlu
ZGljYXRlcyBkaXNjb25uZWN0ZWQiIHZzLiAiaTJjIGluZGljYXRlcwpjb25uZWN0ZWQsIGFuZCB3
ZSBjYW4ndCBicmVhayB0aGlzIGJlY2F1c2UgZXZlcnkgaW50ZWwgcGxhdGZvcm0gZXZlcgpzaGlw
cGVkIGhhcyBhIGZldyBkZXZpY2VzIHdoZXJlIHRoaXMgaXMgc29tZWhvdyBicm9rZW4sIGlycmVz
cGVjdGl2ZQpvZiB0aGUgc2luaykuCgo+ID4gLSBUaGVyZSdzIG5vIHdheSB0byBvbmx5IHJlcHJv
YmUgc3RhdHVzLCB5b3UgY2FuIG9ubHkgZXZlciByZXByb2JlCj4gPiBldmVyeXRoaW5nIHdpdGgg
dGhlIGN1cnJlbnQgaW9jdGwgYW5kIGltcGxlbWVudGF0aW9ucy4gSGF2aW5nIGFuCj4gPiBvcHRp
b24gdG8gcmVwcm9iZSBvbmx5IHBhcnRzIG9mIGl0IGRvZXNuJ3Qgc2VlbSB1c2VmdWwgdG8gbWUg
KHdlIG5lZWQKPiA+IHRvIHJlYWQgdGhlIEVESUQgYW55d2F5LCBhbmQgdGhhdCdzIHRoZSBleHBl
bnNpdmUgcGFydCBvZiByZXByb2JpbmcgaW4KPiA+IGFsbW9zdCBhbGwgY2FzZXMpLgo+Cj4gQWdy
ZWVkLgo+Cj4gPiBJbiBhIHdheSBQUk9QRVJUWT08c3RhdHVzLXByb3AtaWQ+IHNpbXBseSB0ZWxs
cyB1c2Vyc3BhY2UgdGhhdCBpdAo+ID4gbmVlZHMgdG8gcmVwcm9iZSB0aGlzIGNvbm5lY3Rvci4K
Pgo+IEkgdGhvdWdodCB3ZSBjb3VsZCBhY2Nlc3MgdGhlIHByb3BzIGFsb25lLCB3aGljaCBhdm9p
ZHMgZG9pbmcgYSByZXByb2JlCj4gd2hlbiB0aGUga2VybmVsIGtub3dzIHRoYXQgb25seSBhIHBy
b3Agb3IgYSBzZXQgb2YgcHJvcHMgY2hhbmdlZCBhbmQgZG8KPiBub3QgcmVxdWlyZSBhIGZ1bGwg
cmVwcm9iZS4gVGhhdCdzIHRoZSBmaXJzdCBjYXNlIEkgd2FzIG1lbnRpb25uaW5nLgo+Cj4gPiBB
dCB0aGF0IHBvaW50IHdlIG5lZWQgdG8gZmlndXJlIG91dCB3aGV0aGVyIHRoaXMgaXMgYSBnb29k
IHVhcGkgb3IKPiA+IG5vdCwgYW5kIHRoYXQncyB3aGVyZSB0aGUgZXBvY2ggY29tZXMgaW4uIFRo
ZXJlJ3MgdHdvIHJlYXNvbnMgZm9yIGFuCj4gPiBlcG9jaDoKPiA+IC0gV2UgbmVlZCBpdCBpbnRl
cm5hbGx5IGJlY2F1c2UgSSdtIG5vdCBnb2luaWcgdG8gd2lyZSBhIG5ldyByZXR1cm4KPiA+IHZh
bHVlIHRocm91Z2ggaHVuZHJlZHMgb2YgY29ubmVjdG9yIHByb2JlIGZ1bmN0aW9ucy4gSXQncyBt
dWNoIGVhc2llcgo+ID4gdG8gaGF2ZSBhbiBlcG9jaCBjb3VudGVyIHdoaWNoIHdlIHNldCBmcm9t
IGUuZy4gZHJtX3NldF9lZGlkIGFuZAo+ID4gc2ltaWxhciBmdW5jdGlvbnMgdGhhdCB1cGRhdGUg
cHJvYmUgc3RhdGUuCj4KPiBJIGRvbid0IHRoaW5rIEknbSBmb2xsb3dpbmcgd2hhdCBpc3N1ZSB0
aGlzIGlzIHRyeWluZyB0byBzb2x2ZQo+IGludGVybmFsbHkuCgpTbyBJJ20gYXNzdW1pbmcgdGhh
dCBpZiB3ZSBoYW5kbGUgYSBob3RwbHVnLCB3ZSBvbmx5IHdhbnQgdG8gZ2VuZXJhdGUKb25lIHVl
dmVudCBmb3IgdGhhdCwgbm90IG9uZSBmb3IgZXZlcnkgbGl0dGxlIHRoaW5nIHRoYXQgY2hhbmdl
ZC4KVGhlcmUncyB0d28gd2F5cyB0byBpbXBsZW1lbnQgdGhpcyBsb2dpYzoKLSBXaXRoIHNvbWUg
ZXBvY2ggY291bnRlciBhbmQgYSBoZWxwZXIgZnVuY3Rpb24geW91IGNhbiBjYWxsIGV2ZXJ5dGlt
ZQpzb21ldGhpbmcgY2hhbmdlZCAoZS5nLiBzdGF0dXMsIG9yIGVkaWQsIG9yIGFueXRoaW5nIGVs
c2Ugd2UgY2FyZQphYm91dCBlLmcuIGZyb20gZHAgYXV4KS4gVGhpcyB3b24ndCBuZWVkIG11Y2gg
KGlmIGFueSkgZHJpdmVyIGNoYW5nZXMsCmJlY2F1c2Ugd2UgY2FuIGp1c3QgcHV0IHRoZXNlIGlu
dG8gdGhlIHJlbGV2YW50IGhlbHBlci9jb3JlIGZ1bmN0aW9ucwoobGlrZSBlZGlkIHVwZGF0ZSwg
b3IgZHAgYXV4IHJlYWRpbmcgb3Igd2hhdGV2ZXIpLgotIFdpcmluZyBhIG5ldyByZXR1cm4gdmFs
dWUgdGhyb3VnaCB0aGUgZW50aXJlIHN0YWNrIChhbmQgX2FsbF8gdGhlCmttcyBkcml2ZXJzKSBz
byB0aGF0IHRoZSBwcm9iZSBoZWxwZXJzIGNvdWxkIGFnZ3JlZ2F0ZSB0aGlzIGxpa2UgdGhleQpj
dXJyZW50bHkgZG8uCgpPbmUgb2YgdGhlc2UgaXMgYSBsb3QgbGVzcyB0eXBpbmcuCgo+ID4gLSBJ
ZiB1c2Vyc3BhY2UgbWlzc2VzIGFuIGV2ZW50IGFuZCB0aGVyZSdzIG5vIGVwb2NoLCB3ZSdyZSBm
b3JjaW5nCj4gPiB1c2Vyc3BhY2UgdG8gcmVwcm9iZSBldmVyeXRoaW5nLiBVc2UgY2FzZSB3b3Vs
ZCBiZSBpZiBhIGNvbXBvc2l0b3IgaXMKPiA+IHN3aXRjaGVkIGF3YXkgd2UgcHJvYmFibHkgZG9u
J3Qgd2FudCB0byBwaXNzIG9mIHRoZSBjdXJyZW50IGNvbXBvc2l0b3IKPiA+IGJ5IGJsb2NraW5n
IGl0J3Mgb3duIHByb2JlIGtlcm5lbCBjYWxscyBieSBkb2luZyBvdXIgb3duIChwcm9iZSBpcwo+
ID4gc2luZ2xlLXRocmVhZGVkIGluIHRoZSBrZXJuZWwgdGhyb3VnaCB0aGUgZGV2LT5tb2RlX2Nv
bmZpZy5tdXRleCkuIElmCj4gPiBpdCBjYW4gcmVhZCB0aGUgZXBvY2ggcHJvcGVydHkgKHdoaWNo
IGl0IGNhbiBkbyB3aXRob3V0IGZvcmNpbmcgYQo+ID4gcmVwcm9iZSkgdXNlcnNwYWNlIHdvdWxk
IGtub3cgd2hpY2ggY29ubmVjdG9ycyBpdCBuZWVkcyB0byBjaGVjayBhbmQKPiA+IHJlcHJvYmUu
Cj4gPgo+ID4gSGVuY2Ugd2h5IGVwb2NoLCBpdCdzIGEgYml0IG1vcmUgcm9idXN0IHVzZXJzcGFj
ZSBhcGkuIE9mYyB5b3UgY291bGQKPiA+IGFsc28gcmVxdWlyZSB0aGF0IHVzZXJzcGFjZSBuZWVk
cyB0byBrZWVwIHBhcnNpbmcgYWxsIHVldmVudHMgYW5kIG1ha2UKPiA+IGEgbGlzdCBvZiBhbGwg
Y29ubmVjdG9ycyBpdCBuZWVkcyB0byByZXByb2JlIHdoZW4gaXQncyBiYWNrIHRvIGJlaW5nCj4g
PiB0aGUgYWN0aXZlIGNvbXBvc2l0b3IuIEJ1dCBqdXN0IGNvbXBhcmluZyBhIGN1cnJlbnQgZXBv
Y2ggd2l0aCB0aGUgb25lCj4gPiB5b3UgY2FjaGVkIGZyb20gdGhlIGxhc3QgZnVsbCBwcm9iZSBp
cyBtdWNoIGVhc2llci4KPgo+IEZhaXIgZW5vdWdoLCBJIHRoaW5rIGl0J3MgYSBmaW5lIGlkZWEg
Zm9yIHJvYnVzdG5lc3MgeWVzLCBidXQgSSB0aGluawo+IHdlIGNvdWxkIGFsc28gcHJvdmlkZSBl
eHRyYSBpbmZvIGluIHRoZSB1ZXZlbnQgd2hlbiByZWxldmFudCBhbmQgbm90Cj4gcmVseSBvbiB0
aGF0IGVudGlyZWx5LgoKU2VlIGFib3ZlLCB3aXRoIGRybUdldENvbm5lY3RvckN1cnJlbnQgdGhl
cmUncyBubyBuZWVkIHRvIHByb3ZpZGUgbW9yZQp0aGFuIHdoYXQncyBuZWVkZWQgaW4gdGhlIHVl
dmVudCwgc2luY2UgdXNlcnNwYWNlIGNhbiBnZXQgZXZlcnl0aGluZwplbHNlIGF0IHRoZSBjb3N0
IG9mIG9uZSBpb2N0bCwgd2l0aG91dCByZXByb2JpbmcuIFdpdGggYSBiaXQgb2YKZW5naW5lZXJp
bmcgd29yayB3ZSBjb3VsZCBldmVuIGF2b2lkIHRha2luZyB0aGUgZXhwZW5zaXZlCmRldi0+bW9k
ZV9jb25maWcubXV0ZXggbG9jayBmb3IgdGhpcyBmYXN0cGF0aC4KCj4gPiBBbm90aGVyIHRoaW5n
OiBOb25lIG9mIHRoaXMgd2UgY2FuIGZvciBjb25uZWN0b3JzIHdpdGggdW5yZWxpYWJsZSBoZHAu
Cj4gPiBPciBhdCBsZWFzdCB5b3UnbGwgcGlzcyBvZiB1c2VycyBpZiB5b3UgY2FjaGUgYWx3YXlz
LiBUaGUgc2FkIHRoaW5nIGlzCj4gPiB0aGF0IEhETUkgaXMgdW5yZWxpYWJsZSwgYXQgbGVhc3Qg
b24gc29tZSBtYWNoaW5lcy9zY3JlZW4gY29tYm9zICh5b3UKPiA+IG5ldmVyIGdldCBhIGhwZCBp
cnEgaWYgeW91IHBsdWcgaW4vdW5wbHVnKS4gU28gcmVhbCBjb21wb3NpdG9ycyBzdGlsbAo+ID4g
bmVlZCB0byByZXByb2JlIHdoZW4gdGhlIHVzZXIgYXNrcyBmb3IgaXQuIGlndCBjYW4gcHJvYmFi
bHkgZ2V0IGF3YXkKPiA+IHdpdGhvdXQgcmVwcm9iaW5nLgo+Cj4gSSB3b25kZXIgaG93IHRoYXQg
aXMgaGFuZGxlZCBjdXJyZW50bHkgYW5kIGhvdyBhIHVzZXIgYWN0aW9uIGNhbiBzb2x2ZQo+IHRo
ZSBpc3N1ZSB3aXRob3V0IGFueSBub3RpZmljYXRpb24gZnJvbSB0aGUga2VybmVsLiBNYXliZSBh
IG5lZWQgYQo+IGJldHRlciB1bmRlcnN0YW5kaW5nIG9mIHRoYXQgY2FzZSB0byBoYXZlIGEgY2xl
YXJlciBpZGVhLgoKVXNlciBvcGVucyB0aGUgc2NyZWVuIGNvbmZpZ3VyYXRpb24gdG9vbCAtPiB1
c3VhbGx5IGF0IHRoYXQgcG9pbnQgdGhlCnRvb2wvY29tcG9zaXRvciBmb3JjZSBhIGZ1bGwgcmVw
cm9iZSwgd2hpY2ggdGhlbiBvZnRlbiB0cmlnZ2VycyB0aGUKYXV0b21hdGljIHJlY29uZmlndXJp
bmcuIEUuZy4gb24gb25lIGxhcHRvcCBJIGhhdmUgaGVyZSB3aGVuIEkgcGx1ZyBpbgpyYW5kb20g
c2hpdCBwcm9qZWN0b3JzIGF0IGNvbmZlcmVuY2VzIG5vdGhpbmcgaGFwcGVucywgdW50aWwgSSBy
dW4KeHJhbmRyLCB3aGljaCB0cmlnZ2VycyB0aGUgZnVsbCByZXByb2JlLCB3aGljaCB0aGVuIG1h
a2VzIHRoZSBrZXJuZWwKcmVhbGl6ZSBzb21ldGhpbmcgY2hhbmdlLCBzZW5kaW5nIGFuZCB1ZXZl
bnQsIHdoaWNoIHN0YXJ0cyB0aGUKYXV0b21hdGljIHJlY29uZmlndXJlIG1hY2hpbmVyeS4KClRo
ZXJlJ3MgYWxzbyB0aGUgaXNzdWUgdGhhdCB0aGVyZSdzIG1hY2hpbmVzIHdpdGggaHBkIHN0b3Jt
cyAoZXZlbiBvbgpEUCwgd2hlcmUgeW91IHJlYWxseSBuZWVkIGhwZCB0byB3b3JrIHRvIGJlIGNv
bXBsaWFudCksIGFuZCB3ZSBoYXZlIHRvCnR1cm4gb2YgdGhlIGhwZCBpcnEgdG8ga2VlcCB0aGUg
bWFjaGluZSB1c2VhYmxlLgoKQ2hlZXJzLCBEYW5pZWwKCj4KPiBDaGVlcnMsCj4KPiBQYXVsCj4K
PiA+IC1EYW5pZWwKPiA+Cj4gPiA+IFRoZW4gd2Ugc3RpbGwgaGF2ZSB0aGUgbGVnYWN5IGNhc2U6
Cj4gPiA+IEhPVFBMVUc9MQo+ID4gPgo+ID4gPiB3aGVyZSB1c2Vyc3BhY2UgaXMgZXhwZWN0ZWQg
dG8gcmVwcm9iZSBhbGwgdGhlIGNvbm5lY3RvcnMuCj4gPiA+Cj4gPiA+IEkgdGhpbmsgdGhpcyB3
b3VsZCBkZXNlcnZlIHRvIGJlIGEgc2VwYXJhdGUgc2VyaWVzIG9uIGl0cyBvd24uIFNvIEkgYW0K
PiA+ID4gcHJvcG9zaW5nIHRvIHRha2UgdGhpcyBvbmUgb2ZmIHlvdXIgcGxhdGUgYW5kIGNvbWUg
dXAgd2l0aCBhbm90aGVyCj4gPiA+IHNlcmVzIGltcGxlbWVudGluZyB0aGlzIHByb3Bvc2FsLiBX
aGF0IGRvIHlvdSB0aGluaz8KPiA+ID4KPiA+ID4gQ2hlZXJzLAo+ID4gPgo+ID4gPiBQYXVsCj4g
PiA+Cj4gPiA+ID4gdjI6Cj4gPiA+ID4gICBNaW5vciBmaXhlcyBhdCBLRG9jIGNvbW1lbnRzIFtE
YW5pZWxdCj4gPiA+ID4gdjM6Cj4gPiA+ID4gICBDaGVjayB0aGUgcHJvcGVydHkgaXMgcmVhbGx5
IGF0dGFjaGVkIHdpdGggY29ubmVjdG9yIFtEYW5pZWxdCj4gPiA+ID4KPiA+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBSYW1hbGluZ2FtIEMgPHJhbWFsaW5nYW0uY0BpbnRlbC5jb20+Cj4gPiA+ID4gUmV2
aWV3ZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Cj4gPiA+ID4g
LS0tCj4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fc3lzZnMuYyB8IDM1ICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrCj4gPiA+ID4gIGluY2x1ZGUvZHJtL2RybV9zeXNmcy5o
ICAgICB8ICA1ICsrKystCj4gPiA+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMzkgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQo+ID4gPiA+Cj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9kcm1fc3lzZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fc3lzZnMuYwo+ID4gPiA+IGlu
ZGV4IDE4YjFhYzQ0Mjk5Ny4uNjNmYTk1MWEyMGRiIDEwMDY0NAo+ID4gPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9kcm1fc3lzZnMuYwo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1f
c3lzZnMuYwo+ID4gPiA+IEBAIC0yMSw2ICsyMSw3IEBACj4gPiA+ID4gICNpbmNsdWRlIDxkcm0v
ZHJtX3N5c2ZzLmg+Cj4gPiA+ID4gICNpbmNsdWRlIDxkcm0vZHJtUC5oPgo+ID4gPiA+ICAjaW5j
bHVkZSAiZHJtX2ludGVybmFsLmgiCj4gPiA+ID4gKyNpbmNsdWRlICJkcm1fY3J0Y19pbnRlcm5h
bC5oIgo+ID4gPiA+Cj4gPiA+ID4gICNkZWZpbmUgdG9fZHJtX21pbm9yKGQpIGRldl9nZXRfZHJ2
ZGF0YShkKQo+ID4gPiA+ICAjZGVmaW5lIHRvX2RybV9jb25uZWN0b3IoZCkgZGV2X2dldF9kcnZk
YXRhKGQpCj4gPiA+ID4gQEAgLTMyMCw2ICszMjEsOSBAQCB2b2lkIGRybV9zeXNmc19sZWFzZV9l
dmVudChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQo+ID4gPiA+ICAgKiBTZW5kIGEgdWV2ZW50IGZv
ciB0aGUgRFJNIGRldmljZSBzcGVjaWZpZWQgYnkgQGRldi4gIEN1cnJlbnRseSB3ZSBvbmx5Cj4g
PiA+ID4gICAqIHNldCBIT1RQTFVHPTEgaW4gdGhlIHVldmVudCBlbnZpcm9ubWVudCwgYnV0IHRo
aXMgY291bGQgYmUgZXhwYW5kZWQgdG8KPiA+ID4gPiAgICogZGVhbCB3aXRoIG90aGVyIHR5cGVz
IG9mIGV2ZW50cy4KPiA+ID4gPiArICoKPiA+ID4gPiArICogQW55IG5ldyB1YXBpIHNob3VsZCBi
ZSB1c2luZyB0aGUgZHJtX3N5c2ZzX2Nvbm5lY3Rvcl9zdGF0dXNfZXZlbnQoKQo+ID4gPiA+ICsg
KiBmb3IgdWV2ZW50cyBvbiBjb25uZWN0b3Igc3RhdHVzIGNoYW5nZS4KPiA+ID4gPiAgICovCj4g
PiA+ID4gIHZvaWQgZHJtX3N5c2ZzX2hvdHBsdWdfZXZlbnQoc3RydWN0IGRybV9kZXZpY2UgKmRl
dikKPiA+ID4gPiAgewo+ID4gPiA+IEBAIC0zMzIsNiArMzM2LDM3IEBAIHZvaWQgZHJtX3N5c2Zz
X2hvdHBsdWdfZXZlbnQoc3RydWN0IGRybV9kZXZpY2UgKmRldikKPiA+ID4gPiAgfQo+ID4gPiA+
ICBFWFBPUlRfU1lNQk9MKGRybV9zeXNmc19ob3RwbHVnX2V2ZW50KTsKPiA+ID4gPgo+ID4gPiA+
ICsvKioKPiA+ID4gPiArICogZHJtX3N5c2ZzX2Nvbm5lY3Rvcl9zdGF0dXNfZXZlbnQgLSBnZW5l
cmF0ZSBhIERSTSB1ZXZlbnQgZm9yIGNvbm5lY3Rvcgo+ID4gPiA+ICsgKiBwcm9wZXJ0eSBzdGF0
dXMgY2hhbmdlCj4gPiA+ID4gKyAqIEBjb25uZWN0b3I6IGNvbm5lY3RvciBvbiB3aGljaCBwcm9w
ZXJ0eSBzdGF0dXMgY2hhbmdlZAo+ID4gPiA+ICsgKiBAcHJvcGVydHk6IGNvbm5lY3RvciBwcm9w
ZXJ0eSB3aG9lcyBzdGF0dXMgY2hhbmdlZC4KPiA+ID4gPiArICoKPiA+ID4gPiArICogU2VuZCBh
IHVldmVudCBmb3IgdGhlIERSTSBkZXZpY2Ugc3BlY2lmaWVkIGJ5IEBkZXYuICBDdXJyZW50bHkg
d2UKPiA+ID4gPiArICogc2V0IEhPVFBMVUc9MSBhbmQgY29ubmVjdG9yIGlkIGFsb25nIHdpdGgg
dGhlIGF0dGFjaGVkIHByb3BlcnR5IGlkCj4gPiA+ID4gKyAqIHJlbGF0ZWQgdG8gdGhlIHN0YXR1
cyBjaGFuZ2UuCj4gPiA+ID4gKyAqLwo+ID4gPiA+ICt2b2lkIGRybV9zeXNmc19jb25uZWN0b3Jf
c3RhdHVzX2V2ZW50KHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCj4gPiA+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRybV9wcm9wZXJ0eSAqcHJv
cGVydHkpCj4gPiA+ID4gK3sKPiA+ID4gPiArICAgICBzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0g
Y29ubmVjdG9yLT5kZXY7Cj4gPiA+ID4gKyAgICAgY2hhciBob3RwbHVnX3N0cltdID0gIkhPVFBM
VUc9MSIsIGNvbm5faWRbMzBdLCBwcm9wX2lkWzMwXTsKPiA+ID4gPiArICAgICBjaGFyICplbnZw
WzRdID0geyBob3RwbHVnX3N0ciwgY29ubl9pZCwgcHJvcF9pZCwgTlVMTCB9Owo+ID4gPiA+ICsK
PiA+ID4gPiArICAgICBXQVJOX09OKCFkcm1fbW9kZV9vYmpfZmluZF9wcm9wX2lkKCZjb25uZWN0
b3ItPmJhc2UsCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBwcm9wZXJ0eS0+YmFzZS5pZCkpOwo+ID4gPiA+ICsKPiA+ID4gPiArICAgICBzbnByaW50Zihj
b25uX2lkLCBBUlJBWV9TSVpFKGNvbm5faWQpLAo+ID4gPiA+ICsgICAgICAgICAgICAgICJDT05O
RUNUT1I9JXUiLCBjb25uZWN0b3ItPmJhc2UuaWQpOwo+ID4gPiA+ICsgICAgIHNucHJpbnRmKHBy
b3BfaWQsIEFSUkFZX1NJWkUocHJvcF9pZCksCj4gPiA+ID4gKyAgICAgICAgICAgICAgIlBST1BF
UlRZPSV1IiwgcHJvcGVydHktPmJhc2UuaWQpOwo+ID4gPiA+ICsKPiA+ID4gPiArICAgICBEUk1f
REVCVUcoImdlbmVyYXRpbmcgY29ubmVjdG9yIHN0YXR1cyBldmVudFxuIik7Cj4gPiA+ID4gKwo+
ID4gPiA+ICsgICAgIGtvYmplY3RfdWV2ZW50X2VudigmZGV2LT5wcmltYXJ5LT5rZGV2LT5rb2Jq
LCBLT0JKX0NIQU5HRSwgZW52cCk7Cj4gPiA+ID4gK30KPiA+ID4gPiArRVhQT1JUX1NZTUJPTChk
cm1fc3lzZnNfY29ubmVjdG9yX3N0YXR1c19ldmVudCk7Cj4gPiA+ID4gKwo+ID4gPiA+ICBzdGF0
aWMgdm9pZCBkcm1fc3lzZnNfcmVsZWFzZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gPiA+ID4gIHsK
PiA+ID4gPiAgICAgICBrZnJlZShkZXYpOwo+ID4gPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2Ry
bS9kcm1fc3lzZnMuaCBiL2luY2x1ZGUvZHJtL2RybV9zeXNmcy5oCj4gPiA+ID4gaW5kZXggNGYz
MTFlODM2Y2RjLi5kNDU0ZWY2MTdiMmMgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvaW5jbHVkZS9kcm0v
ZHJtX3N5c2ZzLmgKPiA+ID4gPiArKysgYi9pbmNsdWRlL2RybS9kcm1fc3lzZnMuaAo+ID4gPiA+
IEBAIC00LDEwICs0LDEzIEBACj4gPiA+ID4KPiA+ID4gPiAgc3RydWN0IGRybV9kZXZpY2U7Cj4g
PiA+ID4gIHN0cnVjdCBkZXZpY2U7Cj4gPiA+ID4gK3N0cnVjdCBkcm1fY29ubmVjdG9yOwo+ID4g
PiA+ICtzdHJ1Y3QgZHJtX3Byb3BlcnR5Owo+ID4gPiA+Cj4gPiA+ID4gIGludCBkcm1fY2xhc3Nf
ZGV2aWNlX3JlZ2lzdGVyKHN0cnVjdCBkZXZpY2UgKmRldik7Cj4gPiA+ID4gIHZvaWQgZHJtX2Ns
YXNzX2RldmljZV91bnJlZ2lzdGVyKHN0cnVjdCBkZXZpY2UgKmRldik7Cj4gPiA+ID4KPiA+ID4g
PiAgdm9pZCBkcm1fc3lzZnNfaG90cGx1Z19ldmVudChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KTsK
PiA+ID4gPiAtCj4gPiA+ID4gK3ZvaWQgZHJtX3N5c2ZzX2Nvbm5lY3Rvcl9zdGF0dXNfZXZlbnQo
c3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKPiA+ID4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX3Byb3BlcnR5ICpwcm9wZXJ0eSk7Cj4gPiA+
ID4gICNlbmRpZgo+ID4gPiAtLQo+ID4gPiBQYXVsIEtvY2lhbGtvd3NraSwgQm9vdGxpbgo+ID4g
PiBFbWJlZGRlZCBMaW51eCBhbmQga2VybmVsIGVuZ2luZWVyaW5nCj4gPiA+IGh0dHBzOi8vYm9v
dGxpbi5jb20KPiA+ID4KPiA+Cj4gPgo+IC0tCj4gUGF1bCBLb2NpYWxrb3dza2ksIEJvb3RsaW4K
PiBFbWJlZGRlZCBMaW51eCBhbmQga2VybmVsIGVuZ2luZWVyaW5nCj4gaHR0cHM6Ly9ib290bGlu
LmNvbQo+CgoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBv
cmF0aW9uCis0MSAoMCkgNzkgMzY1IDU3IDQ4IC0gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
