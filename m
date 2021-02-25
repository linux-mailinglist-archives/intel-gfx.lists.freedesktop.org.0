Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B88324C42
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Feb 2021 09:54:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 832766E0EA;
	Thu, 25 Feb 2021 08:54:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com
 [IPv6:2607:f8b0:4864:20::235])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CF1A6E0CA
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Feb 2021 08:54:28 +0000 (UTC)
Received: by mail-oi1-x235.google.com with SMTP id q186so5346810oig.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Feb 2021 00:54:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=NQmjfLWVFY7XdvyL9GTbsg84bQRSr5aGg765gKnTxHY=;
 b=FnBIy5p9SWRMxK366EBxXMsAl027LtxsSDJ03qdjd488XUo6Qjn52nERODsVy0fb6n
 YDmluFRM7ttM8Y7tfzB3Fz8iI5udtEY7kxR8bshnV7b22lV9c/yv1P50XZa2UQdopIC1
 vMAXTLU0CidiojkYtoOxfULyS9JgYbGga5reM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=NQmjfLWVFY7XdvyL9GTbsg84bQRSr5aGg765gKnTxHY=;
 b=mp6mx4mT1Uo+wQVEfhHUvxS38BQ+mIQlDgcCkMIJF+CqkONvQt2NY6Bci10gkuvCcS
 kVlQhx6OXlLUu9L3OouN2JxD7gouCbXz2v/443ZEh/+nApCRKA1F0cbG11ynyyPiKqZ/
 4eecWBjOtUXrJyUQVnV5mcsY1FZeDa03KNGE1Bn9cSVMq+yjEyByadlyQXsDQBL5xDN9
 B7omQZmiyZunXYh7junJ+VHxiifOMwspy3M+gfP4qP4QBloADAezuTG5GbRtqBmiBhF1
 wPtltVLo/cwhZrPSYTRN2wrlR8TpJ0IROc+6ZfaRE0ecKfrWhKjC18WwNnIc+X39cADY
 PlEw==
X-Gm-Message-State: AOAM533mt/TC3v7AzLCoNP/Ov4i/MWs+SHqRJTe7oCP+Tab7P1FdVwX+
 DNtXCrJmxbycTMfsi7dAvGKOJnw8DtDTyNLv+Q8uRA==
X-Google-Smtp-Source: ABdhPJzmSNedC5ZDLviKGrOpi833i0ckhPZ9DW5eAu6HMd5sPW3OXJrxJgLgucBFtYP+vAX6crovOIeOM2hDL3Z3NXE=
X-Received: by 2002:aca:c790:: with SMTP id x138mr357228oif.14.1614243267600; 
 Thu, 25 Feb 2021 00:54:27 -0800 (PST)
MIME-Version: 1.0
References: <YDYqJhsuNDKvD3V/@linux-uq9g>
 <CAPM=9tzu+Sa+1w4LCwdV0wsRCvqPnXSdrCxi-dTMxn+hN_Kz2A@mail.gmail.com>
 <9592f25d-b7fa-5b84-eccf-01af1019ef06@suse.de>
In-Reply-To: <9592f25d-b7fa-5b84-eccf-01af1019ef06@suse.de>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 25 Feb 2021 09:54:16 +0100
Message-ID: <CAKMK7uFhqUCpZkPoFE3Pez7OBXn637OprfGBKVbT0BJ5jFugrw@mail.gmail.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [Intel-gfx] [PULL] drm-misc-fixes
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
Cc: "DRM maintainer tools announcements, discussion,
 and development" <dim-tools@lists.freedesktop.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBGZWIgMjUsIDIwMjEgYXQgODo1MyBBTSBUaG9tYXMgWmltbWVybWFubiA8dHppbW1l
cm1hbm5Ac3VzZS5kZT4gd3JvdGU6Cj4KPiBIaQo+Cj4gQW0gMjUuMDIuMjEgdW0gMDI6NTUgc2No
cmllYiBEYXZlIEFpcmxpZToKPiA+IE9uIFdlZCwgMjQgRmViIDIwMjEgYXQgMjA6MjcsIFRob21h
cyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPiB3cm90ZToKPiA+Pgo+ID4+IEhpIERh
dmUgYW5kIERhbmllbCwKPiA+Pgo+ID4+IGhlcmUncyB0aGlzIHdlZWsncyBQUiBmb3IgZHJtLW1p
c2MtZml4ZXMuIE9uZSBvZiB0aGUgcGF0Y2hlcyBpcyBhIG1lbW9yeQo+ID4+IGxlYWs7IHRoZSBy
ZXN0IGlzIGZvciBoYXJkd2FyZSBpc3N1ZXMuCj4gPj4KPiA+Cj4gPiBUaGlzIGlzIGJhc2VkIG9u
IDUuMTEgYW5kIEknbSBub3QgY3VycmVudGx5IGluIHRoZSBtYXJrZXQgZm9yIGEKPiA+IGJhY2tt
ZWdlIG5vdyBiZWZvcmUgcmMxIHNvIGNhbiB5b3UganVzdCB0b3AgdGhpcyB1cCBuZXh0IHdlZWs/
Cj4KPiBJIGNhbiwgYnV0IEkgdGhpbmsgTWF4aW1lIHdpbGwgdGFrZSBvdmVyIGFmdGVyIC1yYzEu
CgpJIHRoaW5rIHdlIGNvdWxkIGFsc28gY2hlcnJ5LXBpY2sgdGhlc2UgMyBwYXRjaGVzIG92ZXIg
dG8gTWFhcnRlbidzCmRybS1taXNjLW5leHQtZml4ZXMgcHVsbC4gQ29tbWl0dGVycyBwdXNoaW5n
IHN0dWZmIHRvIHRoZSB3cm9uZyBicmFuY2gKaXMga2luZGEgbm9ybWFsLCBpdCdzIGFsd2F5cyBh
IGJpdCB0cmlja3kgYXJvdW5kIHRoZSBtZXJnZSB3aW5kb3cgOi0pCi1EYW5pZWwKCj4KPiBCZXN0
IHJlZ2FyZHMKPiBUaG9tYXMKPgo+ID4KPiA+IFRob3VnaCBtYXliZSB0aGUgdHRtIGZpeCBzaG91
bGQgYmUgZmFzdCB0cmFja2VkLCB3aWxsIGNvbnRlbXBsYXRlIGl0Lgo+ID4KPiA+IERhdmUuCj4g
Pgo+ID4+IEJlc3QgcmVnYXJkcwo+ID4+IFRob21hcwo+ID4+Cj4gPj4gZHJtLW1pc2MtZml4ZXMt
MjAyMS0wMi0yNDoKPiA+PiAgICogZHJtL3BhbmVsOiBrZDM1dDEzMzogV29yayB3aXRoIG5vbi1j
b250aW51b3VzIERTSSBjbG9jawo+ID4+ICAgKiBkcm0vcm9ja2NoaXA6IFJlcXVpcmUgWVRSIG1v
ZGlmaWVyIGZvciBBRkJDCj4gPj4gICAqIGRybS90dG06IEZpeCBhIG1lbW9yeSBsZWFrIGluIGVy
cm9yIGhhbmRsaW5nCj4gPj4gVGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCBmNDBk
ZGNlODg1OTM0ODI5MTk3NjFmNzQ5MTBmNDJmNGI4NGMwMDRiOgo+ID4+Cj4gPj4gICAgTGludXgg
NS4xMSAoMjAyMS0wMi0xNCAxNDozMjoyNCAtMDgwMCkKPiA+Pgo+ID4+IGFyZSBhdmFpbGFibGUg
aW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0Ogo+ID4+Cj4gPj4gICAgZ2l0Oi8vYW5vbmdpdC5mcmVl
ZGVza3RvcC5vcmcvZHJtL2RybS1taXNjIHRhZ3MvZHJtLW1pc2MtZml4ZXMtMjAyMS0wMi0yNAo+
ID4+Cj4gPj4gZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIDU0ZGFiM2E3MThmNzA5NDUz
MmRhZjdkMjVjZDE0MTIxYTBlMDBlMzQ6Cj4gPj4KPiA+PiAgICBkcm0vcGFuZWw6IGtkMzV0MTMz
OiBhbGxvdyB1c2luZyBub24tY29udGludW91cyBkc2kgY2xvY2sgKDIwMjEtMDItMjMgMjI6NDQ6
NTggKzAxMDApCj4gPj4KPiA+PiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPj4gICAqIGRybS9wYW5lbDoga2QzNXQxMzM6
IFdvcmsgd2l0aCBub24tY29udGludW91cyBEU0kgY2xvY2sKPiA+PiAgICogZHJtL3JvY2tjaGlw
OiBSZXF1aXJlIFlUUiBtb2RpZmllciBmb3IgQUZCQwo+ID4+ICAgKiBkcm0vdHRtOiBGaXggYSBt
ZW1vcnkgbGVhayBpbiBlcnJvciBoYW5kbGluZwo+ID4+Cj4gPj4gLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4+IEFseXNz
YSBSb3Nlbnp3ZWlnICgxKToKPiA+PiAgICAgICAgZHJtL3JvY2tjaGlwOiBSZXF1aXJlIHRoZSBZ
VFIgbW9kaWZpZXIgZm9yIEFGQkMKPiA+Pgo+ID4+IEhlaWtvIFN0dWVibmVyICgxKToKPiA+PiAg
ICAgICAgZHJtL3BhbmVsOiBrZDM1dDEzMzogYWxsb3cgdXNpbmcgbm9uLWNvbnRpbnVvdXMgZHNp
IGNsb2NrCj4gPj4KPiA+PiB4aW5odWkgcGFuICgxKToKPiA+PiAgICAgICAgZHJtL3R0bTogRml4
IGEgbWVtb3J5IGxlYWsKPiA+Pgo+ID4+ICAgZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLWVs
aWRhLWtkMzV0MTMzLmMgfCAgMyArKy0KPiA+PiAgIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9y
b2NrY2hpcF9kcm1fdm9wLmggIHwgMTEgKysrKysrKysrKysKPiA+PiAgIGRyaXZlcnMvZ3B1L2Ry
bS90dG0vdHRtX2JvLmMgICAgICAgICAgICAgICAgIHwgIDkgKysrKysrLS0tCj4gPj4gICAzIGZp
bGVzIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gPj4KPiA+PiAt
LQo+ID4+IFRob21hcyBaaW1tZXJtYW5uCj4gPj4gR3JhcGhpY3MgRHJpdmVyIERldmVsb3Blcgo+
ID4+IFNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSAo+ID4+IE1heGZlbGRzdHIu
IDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFueQo+ID4+IChIUkIgMzY4MDksIEFHIE7DvHJuYmVy
ZykKPiA+PiBHZXNjaMOkZnRzZsO8aHJlcjogRmVsaXggSW1lbmTDtnJmZmVyCj4gPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gZHJpLWRldmVsIG1h
aWxpbmcgbGlzdAo+ID4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwKPiA+Cj4K
PiAtLQo+IFRob21hcyBaaW1tZXJtYW5uCj4gR3JhcGhpY3MgRHJpdmVyIERldmVsb3Blcgo+IFNV
U0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSAo+IE1heGZlbGRzdHIuIDUsIDkwNDA5
IE7DvHJuYmVyZywgR2VybWFueQo+IChIUkIgMzY4MDksIEFHIE7DvHJuYmVyZykKPiBHZXNjaMOk
ZnRzZsO8aHJlcjogRmVsaXggSW1lbmTDtnJmZmVyCj4KCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0
d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
