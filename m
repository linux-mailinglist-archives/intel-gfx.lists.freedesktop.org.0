Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA4356AC5
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 15:37:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D74CD6E437;
	Wed, 26 Jun 2019 13:37:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com
 [IPv6:2607:f8b0:4864:20::942])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B3B46E437;
 Wed, 26 Jun 2019 13:37:23 +0000 (UTC)
Received: by mail-ua1-x942.google.com with SMTP id 8so751905uaz.11;
 Wed, 26 Jun 2019 06:37:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=is/ujkoZicHG2BibnpnLpAegsLraJDOqvg5EgkUGsS0=;
 b=XZWvweSFwEN2iyaQBHSuPo6Fg1485CYHTlb6P3NVEmwEuCr2gPvE9+3dm7rTAuaM3H
 gZ7/N7srWefvbL1ycxQxGqGpfCpfXTPGhf80GqzEqItCuUykeyZQsXj9z/8VUlC02X01
 rqMZDG5Tp5c0oLvf4i9wLc1onEGI3BjJZ+wVdh0B0M3LrrR8AiciwqObt5sAtAZMsP4+
 eL9K0tAEtqYHmV9qv9B1IoO7eJYJNE06vnHPpNNjtUa6O+0HWq91ZTA5ntYXRf5zNG/k
 YyFO9i1ZiVMxg/p3WQgzAwxX5YHHJyya3iZGygDoAWB8zw0VW6xqktvdUqwPGTKT7vCX
 SZIw==
X-Gm-Message-State: APjAAAW1xxxBXGv/wMKdpI+BksTZoPzlCwIitsNbajj8bbwn0GCXii0o
 bRaL6h+eyiuCWBHcOeRjKkKdrAuPhJuZJ4jxLWk=
X-Google-Smtp-Source: APXvYqy8R5tVK0LIjN1Tts0iTEE7Nh0qNsb/DwSEKJFOqodoXJVgTSYIWTeyUj8o6H0Q5YI9s6QKfHv+8c+bRRTvXLo=
X-Received: by 2002:ab0:2850:: with SMTP id c16mr2498783uaq.128.1561556242469; 
 Wed, 26 Jun 2019 06:37:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190619020750.swzerehjbvx6sbk2@smtp.gmail.com>
 <20190619074856.GJ12905@phenom.ffwll.local>
 <20190619075059.GK12905@phenom.ffwll.local>
 <20190626020005.vb5gmqcvkyzgcjee@smtp.gmail.com>
 <CAKMK7uEd71XTeuZeu1Km8Vq1K1VJJbgANyaZNWm4v18Qh-OqVw@mail.gmail.com>
In-Reply-To: <CAKMK7uEd71XTeuZeu1Km8Vq1K1VJJbgANyaZNWm4v18Qh-OqVw@mail.gmail.com>
From: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
Date: Wed, 26 Jun 2019 10:37:11 -0300
Message-ID: <CADKXj+5+QHr1a0aiVZ1cSiPbtZhUAjmqiTmoQHGyEhodbcA2WQ@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=is/ujkoZicHG2BibnpnLpAegsLraJDOqvg5EgkUGsS0=;
 b=IdUyfzpGPTccHKxZnHQiTAf0O89bmOsqYbavdIQtAOB1kU8BwTZYT15uJkoj/1vEcN
 rm4fS4IbFKYA9KlsN6w6Nk3djG2t7D3mR0MehHmeh4NjwAFi3XUY8R2N1IYSaXcN6zYO
 4jC4eesVaM5c+rhzsoa5ZdtWe8RIFTYZWM3qDnccj8iaPfmk2VGW8EYwKhdqIswvghU2
 2j47Itxu8AdbXZU1WLVO8S9s3IOtTBZMcRKa25dilMyRvlha0OcDa4Eg4leTVu7u/MD6
 g3T+mMhfaVnIhHFrZag/e22PnhEEqGBAVHHSk1oRCxO8rn00KKW2rGEKBtQIi6cQNl5w
 5d2w==
Subject: Re: [Intel-gfx] [PATCH V4] drm/drm_vblank: Change EINVAL by the
 correct errno
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, kernel-janitors@vger.kernel.org,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdW4gMjYsIDIwMTkgYXQgNDo1MyBBTSBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3
bGwuY2g+IHdyb3RlOgo+Cj4gT24gV2VkLCBKdW4gMjYsIDIwMTkgYXQgNDowMCBBTSBSb2RyaWdv
IFNpcXVlaXJhCj4gPHJvZHJpZ29zaXF1ZWlyYW1lbG9AZ21haWwuY29tPiB3cm90ZToKPiA+Cj4g
PiBPbiAwNi8xOSwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+ID4gT24gV2VkLCBKdW4gMTksIDIw
MTkgYXQgMDk6NDg6NTZBTSArMDIwMCwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+ID4gPiBPbiBU
dWUsIEp1biAxOCwgMjAxOSBhdCAxMTowNzo1MFBNIC0wMzAwLCBSb2RyaWdvIFNpcXVlaXJhIHdy
b3RlOgo+ID4gPiA+ID4gRm9yIGhpc3RvcmljYWwgcmVhc29uLCB0aGUgZnVuY3Rpb24gZHJtX3dh
aXRfdmJsYW5rX2lvY3RsIGFsd2F5cyByZXR1cm4KPiA+ID4gPiA+IC1FSU5WQUwgaWYgc29tZXRo
aW5nIGdldHMgd3JvbmcuIFRoaXMgc2NlbmFyaW8gbGltaXRzIHRoZSBmbGV4aWJpbGl0eQo+ID4g
PiA+ID4gZm9yIHRoZSB1c2Vyc3BhY2UgbWFrZSBkZXRhaWxlZCB2ZXJpZmljYXRpb24gb2YgdGhl
IHByb2JsZW0gYW5kIHRha2UKPiA+ID4gPiA+IHNvbWUgYWN0aW9uLiBJbiBwYXJ0aWN1bGFyLCB0
aGUgdmFsaWRhdGlvbiBvZiDigJxpZiAoIWRldi0+aXJxX2VuYWJsZWQp4oCdCj4gPiA+ID4gPiBp
biB0aGUgZHJtX3dhaXRfdmJsYW5rX2lvY3RsIGlzIHJlc3BvbnNpYmxlIGZvciBjaGVja2luZyBp
ZiB0aGUgZHJpdmVyCj4gPiA+ID4gPiBzdXBwb3J0IHZibGFuayBvciBub3QuIElmIHRoZSBkcml2
ZXIgZG9lcyBub3Qgc3VwcG9ydCBWQmxhbmssIHRoZQo+ID4gPiA+ID4gZnVuY3Rpb24gZHJtX3dh
aXRfdmJsYW5rX2lvY3RsIHJldHVybnMgRUlOVkFMIHdoaWNoIGRvZXMgbm90IHJlcHJlc2VudAo+
ID4gPiA+ID4gdGhlIHJlYWwgaXNzdWU7IHRoaXMgcGF0Y2ggY2hhbmdlcyB0aGlzIGJlaGF2aW9y
IGJ5IHJldHVybiBFT1BOT1RTVVBQLgo+ID4gPiA+ID4gQWRkaXRpb25hbGx5LCBzb21lIG9wZXJh
dGlvbnMgYXJlIHVuc3VwcG9ydGVkIGJ5IHRoaXMgZnVuY3Rpb24sIGFuZAo+ID4gPiA+ID4gcmV0
dXJucyBFSU5WQUw7IHRoaXMgcGF0Y2ggYWxzbyBjaGFuZ2VzIHRoZSByZXR1cm4gdmFsdWUgdG8g
RU9QTk9UU1VQUAo+ID4gPiA+ID4gaW4gdGhpcyBjYXNlLiBMYXN0bHksIHRoZSBmdW5jdGlvbiBk
cm1fd2FpdF92YmxhbmtfaW9jdGwgaXMgaW52b2tlZCBieQo+ID4gPiA+ID4gbGliZHJtLCB3aGlj
aCBpcyB1c2VkIGJ5IG1hbnkgY29tcG9zaXRvcnM7IGJlY2F1c2Ugb2YgdGhpcywgaXQgaXMKPiA+
ID4gPiA+IGltcG9ydGFudCB0byBjaGVjayBpZiB0aGlzIGNoYW5nZSBicmVha3MgYW55IGNvbXBv
c2l0b3IuIEluIHRoaXMgc2Vuc2UsCj4gPiA+ID4gPiB0aGUgZm9sbG93aW5nIHByb2plY3RzIHdl
cmUgZXhhbWluZWQ6Cj4gPiA+ID4gPgo+ID4gPiA+ID4gKiBEcm0taHdjb21wb3Nlcgo+ID4gPiA+
ID4gKiBLd2luCj4gPiA+ID4gPiAqIFN3YXkKPiA+ID4gPiA+ICogV2xyb290cwo+ID4gPiA+ID4g
KiBXYXlsYW5kLWNvcmUKPiA+ID4gPiA+ICogV2VzdG9uCj4gPiA+ID4gPiAqIFhvcmcgKDY3IGRp
ZmZlcmVudCBkcml2ZXJzKQo+ID4gPiA+ID4KPiA+ID4gPiA+IEZvciBlYWNoIHJlcG9zaXRvcnkg
dGhlIHZlcmlmaWNhdGlvbiBoYXBwZW5lZCBpbiB0aHJlZSBzdGVwczoKPiA+ID4gPiA+Cj4gPiA+
ID4gPiAqIFVwZGF0ZSB0aGUgbWFpbiBicmFuY2gKPiA+ID4gPiA+ICogTG9vayBmb3IgYW55IG9j
Y3VycmVuY2UgImRybVdhaXRWQmxhbmsiIHdpdGggdGhlIGNvbW1hbmQ6Cj4gPiA+ID4gPiAgIGdp
dCBncmVwIC1uICJkcm1XYWl0VkJsYW5rIgo+ID4gPiA+ID4gKiBMb29rIGluIHRoZSBnaXQgaGlz
dG9yeSBvZiB0aGUgcHJvamVjdCB3aXRoIHRoZSBjb21tYW5kOgo+ID4gPiA+ID4gICBnaXQgbG9n
IC1TZHJtV2FpdFZCbGFuawo+ID4gPiA+ID4KPiA+ID4gPiA+IEZpbmFsbHksIG5vbmUgb2YgdGhl
IGFib3ZlIHByb2plY3RzIHZhbGlkYXRlIHRoZSB1c2Ugb2YgRUlOVkFMIHdoaWNoCj4gPiA+ID4g
PiBtYWtlIHNhZmUsIGF0IGxlYXN0IGZvciB0aGVzZSBwcm9qZWN0cywgdG8gY2hhbmdlIHRoZSBy
ZXR1cm4gdmFsdWVzLgo+ID4gPiA+ID4KPiA+ID4gPiA+IENoYW5nZSBzaW5jZSBWMzoKPiA+ID4g
PiA+ICAtIFJldHVybiBFSU5WQUwgZm9yIF9EUk1fVkJMQU5LX1NJR05BTCAoRGFuaWVsKQo+ID4g
PiA+ID4KPiA+ID4gPiA+IENoYW5nZSBzaW5jZSBWMjoKPiA+ID4gPiA+ICBEYW5pZWwgVmV0dGVy
IGFuZCBDaHJpcyBXaWxzb24KPiA+ID4gPiA+ICAtIFJlcGxhY2UgRU5PVFRZIGJ5IEVPUE5PVFNV
UFAKPiA+ID4gPiA+ICAtIFJldHVybiBFSU5WQUwgaWYgdGhlIHBhcmFtZXRlcnMgYXJlIHdyb25n
Cj4gPiA+ID4gPgo+ID4gPiA+Cj4gPiA+ID4gUmV2aWV3ZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRh
bmllbC52ZXR0ZXJAZmZ3bGwuY2g+Cj4gPiA+ID4KPiA+ID4gPiBBcG9sb2dpZXMgZm9yIHRoZSBj
b25mdXNpb24gb24gdGhlIGxhc3QgdGltZSBhcm91bmQuIGJ0dyBpZiBzb21lb25lIHRlbGxzCj4g
PiA+ID4geW91ICJyLWIgKG9yIGEtYikgd2l0aCB0aGVzZSBjaGFuZ2VzIiwgdGhlbiBqdXN0IGFw
cGx5IHRoZSByLWIvYS1iIHRhZwo+ID4gPiA+IG5leHQgdGltZSBhcm91bmQuIE90aGVyd2lzZSBw
ZW9wbGUgd2lsbCByZS1yZXZpZXcgdGhlIHNhbWUgdGhpbmcgb3ZlciBhbmQKPiA+ID4gPiBvdmVy
IGFnYWluLgo+ID4gPgo+ID4gPiBidHcgd2hlbiByZXNlbmRpbmcgcGF0Y2hlcyBpdCdzIGdvb2Qg
cHJhY3RpY2UgdG8gYWRkIGFueW9uZSB3aG8gY29tbWVudGVkCj4gPiA+IG9uIGl0IChvciB3aG8g
Y29tbWVudGVkIG9uIHRoZSBpZ3QgdGVzdCBmb3IgdGhlIHNhbWUgcGF0Y2ggYW5kIG90aGVyIHdh
eQo+ID4gPiByb3VuZCkgb250byB0aGUgZXhwbGljaXQgQ2M6IGxpc3Qgb2YgdGhlIHBhdGNoLiBU
aGF0IHdheSBpdCdzIGVhc2llciBmb3IKPiA+ID4gdGhlbSB0byBmb2xsb3cgdGhlIHBhdGNoIGV2
b2x1dGlvbiBhbmQgZG8gYSBxdWljayByLWIgb25jZSB0aGV5J3JlIGhhcHB5Lgo+ID4KPiA+IFRo
YW5rcyBmb3IgdGhlc2UgdmFsdWFibGUgdGlwcy4KPiA+IERvIHlvdSB0aGluayB0aGF0IGlzIGEg
Z29vZCBpZGVhIHRvIHJlc2VuZCB0aGlzIHBhdGNoIENDJ3MgZXZlcnlib2R5PyBPcgo+ID4gaXMg
aXQgb2sgaWYgSSBqdXN0IGFwcGx5IGl0Pwo+Cj4gSG0gSSB0aG91Z2h0IEkgYW5zd2VyZWQgdGhh
dCBvbiBpcmMgLi4uIGJ1dCBqdXN0IHRvZGF5IEkgcmVhbGl6ZWQgdGhhdAo+IHdlIG1pc3NlZCAy
IGlvY3Rscy4gVGhlcmUncyBhbHNvIGRybV9jcnRjX2dldF9zZXF1ZW5jZV9pb2N0bCBhbmQKPiBk
cm1fY3J0Y19xdWV1ZV9zZXF1ZW5jZV9pb2N0bCB3aGljaCBoYXZlIHRoZSBzYW1lIGRldi0+aXJx
X2VuYWJsZWQKPiBjaGVjayBhbmQgSSB0aGluayBzaG91bGQgYmUgdHJlYXRlZCB0aGUgc2FtZS4K
CkhpLAoKSSByZWV4YW1pbmVkIGFsbCB0aGUgY29tcG9zZXJzIGRlc2NyaWJlZCBpbiB0aGUgY29t
bWl0IG1lc3NhZ2UgKGxhdGVzdAp2ZXJzaW9ucykgdG8gY2hlY2sgaWYgYW55IHByb2plY3QgdXNl
IGFuZCB2YWxpZGF0ZSB0aGUgcmV0dXJuIHZhbHVlCmZyb20gIGRybV9jcnRjX2dldF9zZXF1ZW5j
ZV9pb2N0bCBhbmQgZHJtX2NydGNfcXVldWVfc2VxdWVuY2VfaW9jdGwuIEkKbm90aWNlZCB0aGF0
IG1lc2EgYW5kIHhzZXJ2ZXIgdXNlIHRoZW0uIEZXSVUgcmVwbGFjZSBFSU5WQUwgYnkKRU9QTk9U
U1VQUCBpcyBoYXJtbGVzcyBmb3IgbWVzYSBwcm9qZWN0LCBob3dldmVyIGl0IGlzIG5vdCB0aGUg
c2FtZQpmb3IgeHNlcnZlci4KClRha2UgYSBsb29rIGF0IGxpbmUgMTg5IGFuZCAyMzggb2YgaHcv
eGZyZWU4Ni9kcml2ZXJzL21vZGVzZXR0aW5nL3ZibGFuay5jCgoqIGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy94b3JnL3hzZXJ2ZXIvYmxvYi9tYXN0ZXIvaHcveGZyZWU4Ni9kcml2ZXJz
L21vZGVzZXR0aW5nL3ZibGFuay5jI0wyMzgKKiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5v
cmcveG9yZy94c2VydmVyL2Jsb2IvbWFzdGVyL2h3L3hmcmVlODYvZHJpdmVycy9tb2Rlc2V0dGlu
Zy92YmxhbmsuYyNMMTg5CgpBIGxpdHRsZSBiaXQgYmVsb3cgdGhlIGFib3ZlIGxpbmVzLCB5b3Ug
Y2FuIHNlZSBhIHZhbGlkYXRpb24gbGlrZSB0aGF0OgoKICBpZiAocmV0ICE9IC0xIHx8IChlcnJu
byAhPSBFTk9UVFkgJiYgZXJybm8gIT0gRUlOVkFMKSkKCkluIG90aGVyIHdvcmRzLCBpZiB3ZSBj
aGFuZ2UgdGhlIEVJTlZBTCBieSBFT1BOT1RTVVBQCmRybV9jcnRjX1tnZXR8cXVldWVdX3NlcXVl
bmNlX2lvY3RsIHdlIGNvdWxkIGJyZWFrIHhzZXJ2ZXIuIEkgbm90aWNlZAp0aGF0IEtlaXRoIFBh
Y2thcmQgaW50cm9kdWNlZCB0aGVzZSBpb2N0bHMgdG8gdGhlIGtlcm5lbCBhbmQgYWxzbyB0bwp0
aGUgeHNlcnZlciwgSSB3aWxsIHByZXBhcmUgYSBuZXcgdmVyc2lvbiBhbmQgQ0MgS2VpdGguIFNo
b3VsZCBJIGRvCmFub3RoZXIgdGhpbmcgdG8gbm90aWZ5IHhzZXJ2ZXIgZGV2ZWxvcGVycz8KClRo
YW5rcwoKPiBDYW4geW91IHBscyByZXNlbmQgd2l0aCB0aG9zZSBhZGRyZXNzZWQgdG9vPyBUaGVu
IHlvdSBjYW4gYWxzbyByZXNlbmQKPiB3aXRoIHRoZSBjYydzIGFsbCBhZGRlZC4KPiAtRGFuaWVs
Cj4KPiA+Cj4gPiA+IElmIHlvdSBkb24ndCBkbyB0aGF0IHRoZW4gbXVjaCBiaWdnZXIgY2hhbmNl
cyB5b3VyIHBhdGNoIGdldHMgaWdub3JlZC4KPiA+ID4gLURhbmllbAo+ID4gPiA+Cj4gPiA+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBSb2RyaWdvIFNpcXVlaXJhIDxyb2RyaWdvc2lxdWVpcmFtZWxvQGdt
YWlsLmNvbT4KPiA+ID4gPiA+IC0tLQo+ID4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fdmJs
YW5rLmMgfCAyICstCj4gPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pCj4gPiA+ID4gPgo+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9kcm1fdmJsYW5rLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3ZibGFuay5jCj4gPiA+ID4g
PiBpbmRleCA2MDNhYjEwNTEyNWQuLmJlZDIzMzM2MTYxNCAxMDA2NDQKPiA+ID4gPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9kcm1fdmJsYW5rLmMKPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9kcm1fdmJsYW5rLmMKPiA+ID4gPiA+IEBAIC0xNTgyLDcgKzE1ODIsNyBAQCBpbnQgZHJt
X3dhaXRfdmJsYW5rX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4g
PiA+ID4gPiAgIHVuc2lnbmVkIGludCBmbGFncywgcGlwZSwgaGlnaF9waXBlOwo+ID4gPiA+ID4K
PiA+ID4gPiA+ICAgaWYgKCFkZXYtPmlycV9lbmFibGVkKQo+ID4gPiA+ID4gLSAgICAgICAgIHJl
dHVybiAtRUlOVkFMOwo+ID4gPiA+ID4gKyAgICAgICAgIHJldHVybiAtRU9QTk9UU1VQUDsKPiA+
ID4gPiA+Cj4gPiA+ID4gPiAgIGlmICh2Ymx3YWl0LT5yZXF1ZXN0LnR5cGUgJiBfRFJNX1ZCTEFO
S19TSUdOQUwpCj4gPiA+ID4gPiAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gPiA+ID4gPiAt
LQo+ID4gPiA+ID4gMi4yMS4wCj4gPiA+ID4KPiA+ID4gPiAtLQo+ID4gPiA+IERhbmllbCBWZXR0
ZXIKPiA+ID4gPiBTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KPiA+ID4gPiBo
dHRwOi8vYmxvZy5mZndsbC5jaAo+ID4gPgo+ID4gPiAtLQo+ID4gPiBEYW5pZWwgVmV0dGVyCj4g
PiA+IFNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgo+ID4gPiBodHRwOi8vYmxv
Zy5mZndsbC5jaAo+ID4KPiA+IC0tCj4gPiBSb2RyaWdvIFNpcXVlaXJhCj4gPiBodHRwczovL3Np
cXVlaXJhLnRlY2gKPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gPiBJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo+Cj4KPgo+IC0tCj4gRGFuaWVsIFZldHRlcgo+IFNvZnR3YXJlIEVu
Z2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgo+ICs0MSAoMCkgNzkgMzY1IDU3IDQ4IC0gaHR0cDov
L2Jsb2cuZmZ3bGwuY2gKCgoKLS0gCgpSb2RyaWdvIFNpcXVlaXJhCmh0dHBzOi8vc2lxdWVpcmEu
dGVjaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
