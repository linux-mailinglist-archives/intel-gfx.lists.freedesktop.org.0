Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A83563B8
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 09:53:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 020026E2B8;
	Wed, 26 Jun 2019 07:53:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com
 [IPv6:2607:f8b0:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E12D86E2BC
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 07:53:06 +0000 (UTC)
Received: by mail-ot1-x343.google.com with SMTP id x21so1557992otq.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 00:53:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=gK6sTyPGkQBsRICOrU/v96WJmqJIHrnWAm3pchdZ41g=;
 b=sUWMv187Fil/vORRo8bdwOtAuPgfljfsofO6frfQ7Rj+uZbJjKoWDRVCL9NJSMEnbC
 o1x5PlvEmqtN2zgoY7uR4K/9seUng8sgx0Hl0Qgqc2wjMDMZHq53Zny2/B7lN4DrRlwe
 CYk01NJg7hGcv1YJpjjP6R25iA7gdMd77/BlZyVRQe6HjwKXygBZ+xhc+j/iU0iu91RK
 ti7gCIaFTzuTjuWP/kZEmBeApTGvwD9FPj5n5+xCdE25o6Hlq/SBAjz83wmqAa5gPho0
 aXlWNGxoWeqpVXxhaj0ZV2p14zTo5XcXywhnwobmc8BTU6QwPF7wfgjdOze7cUmJpUNy
 Sn9g==
X-Gm-Message-State: APjAAAWdhUI+OUDquO4X0mD85zrJHpb1F9UoPkB2tw3uy3JxogbbSbi/
 XGuDLhlZs0/yicF/ODBITJNYNJ+LqasdrY/XD2Y2CA==
X-Google-Smtp-Source: APXvYqyUs3Td+S7saRzPYCnaOjLCKshI6la+7/TjmiLqpBi3SV2mdzqTgrEw6uzagAHcAMFWXHb9UganSr1nLrAuZHo=
X-Received: by 2002:a9d:6e8d:: with SMTP id a13mr2161271otr.303.1561535585757; 
 Wed, 26 Jun 2019 00:53:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190619020750.swzerehjbvx6sbk2@smtp.gmail.com>
 <20190619074856.GJ12905@phenom.ffwll.local>
 <20190619075059.GK12905@phenom.ffwll.local>
 <20190626020005.vb5gmqcvkyzgcjee@smtp.gmail.com>
In-Reply-To: <20190626020005.vb5gmqcvkyzgcjee@smtp.gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 26 Jun 2019 09:52:54 +0200
Message-ID: <CAKMK7uEd71XTeuZeu1Km8Vq1K1VJJbgANyaZNWm4v18Qh-OqVw@mail.gmail.com>
To: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=gK6sTyPGkQBsRICOrU/v96WJmqJIHrnWAm3pchdZ41g=;
 b=dhnixGsyA2slTRiz9/IZXqyzJj+DNdLVG1xw0yaJZotw9dcpV5jLJAP5lOCnVQaycl
 j14Xs78Ap7s+m7sNn+ZBOpLwEUsTo1zP8VjLSDWRxxQXbeo8lz8SaArHZJyMC6Uvo9gv
 EmmGw0RuonOrOcm9M0DS3CBlhVro4tLFcehNk=
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

T24gV2VkLCBKdW4gMjYsIDIwMTkgYXQgNDowMCBBTSBSb2RyaWdvIFNpcXVlaXJhCjxyb2RyaWdv
c2lxdWVpcmFtZWxvQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiAwNi8xOSwgRGFuaWVsIFZldHRl
ciB3cm90ZToKPiA+IE9uIFdlZCwgSnVuIDE5LCAyMDE5IGF0IDA5OjQ4OjU2QU0gKzAyMDAsIERh
bmllbCBWZXR0ZXIgd3JvdGU6Cj4gPiA+IE9uIFR1ZSwgSnVuIDE4LCAyMDE5IGF0IDExOjA3OjUw
UE0gLTAzMDAsIFJvZHJpZ28gU2lxdWVpcmEgd3JvdGU6Cj4gPiA+ID4gRm9yIGhpc3RvcmljYWwg
cmVhc29uLCB0aGUgZnVuY3Rpb24gZHJtX3dhaXRfdmJsYW5rX2lvY3RsIGFsd2F5cyByZXR1cm4K
PiA+ID4gPiAtRUlOVkFMIGlmIHNvbWV0aGluZyBnZXRzIHdyb25nLiBUaGlzIHNjZW5hcmlvIGxp
bWl0cyB0aGUgZmxleGliaWxpdHkKPiA+ID4gPiBmb3IgdGhlIHVzZXJzcGFjZSBtYWtlIGRldGFp
bGVkIHZlcmlmaWNhdGlvbiBvZiB0aGUgcHJvYmxlbSBhbmQgdGFrZQo+ID4gPiA+IHNvbWUgYWN0
aW9uLiBJbiBwYXJ0aWN1bGFyLCB0aGUgdmFsaWRhdGlvbiBvZiDigJxpZiAoIWRldi0+aXJxX2Vu
YWJsZWQp4oCdCj4gPiA+ID4gaW4gdGhlIGRybV93YWl0X3ZibGFua19pb2N0bCBpcyByZXNwb25z
aWJsZSBmb3IgY2hlY2tpbmcgaWYgdGhlIGRyaXZlcgo+ID4gPiA+IHN1cHBvcnQgdmJsYW5rIG9y
IG5vdC4gSWYgdGhlIGRyaXZlciBkb2VzIG5vdCBzdXBwb3J0IFZCbGFuaywgdGhlCj4gPiA+ID4g
ZnVuY3Rpb24gZHJtX3dhaXRfdmJsYW5rX2lvY3RsIHJldHVybnMgRUlOVkFMIHdoaWNoIGRvZXMg
bm90IHJlcHJlc2VudAo+ID4gPiA+IHRoZSByZWFsIGlzc3VlOyB0aGlzIHBhdGNoIGNoYW5nZXMg
dGhpcyBiZWhhdmlvciBieSByZXR1cm4gRU9QTk9UU1VQUC4KPiA+ID4gPiBBZGRpdGlvbmFsbHks
IHNvbWUgb3BlcmF0aW9ucyBhcmUgdW5zdXBwb3J0ZWQgYnkgdGhpcyBmdW5jdGlvbiwgYW5kCj4g
PiA+ID4gcmV0dXJucyBFSU5WQUw7IHRoaXMgcGF0Y2ggYWxzbyBjaGFuZ2VzIHRoZSByZXR1cm4g
dmFsdWUgdG8gRU9QTk9UU1VQUAo+ID4gPiA+IGluIHRoaXMgY2FzZS4gTGFzdGx5LCB0aGUgZnVu
Y3Rpb24gZHJtX3dhaXRfdmJsYW5rX2lvY3RsIGlzIGludm9rZWQgYnkKPiA+ID4gPiBsaWJkcm0s
IHdoaWNoIGlzIHVzZWQgYnkgbWFueSBjb21wb3NpdG9yczsgYmVjYXVzZSBvZiB0aGlzLCBpdCBp
cwo+ID4gPiA+IGltcG9ydGFudCB0byBjaGVjayBpZiB0aGlzIGNoYW5nZSBicmVha3MgYW55IGNv
bXBvc2l0b3IuIEluIHRoaXMgc2Vuc2UsCj4gPiA+ID4gdGhlIGZvbGxvd2luZyBwcm9qZWN0cyB3
ZXJlIGV4YW1pbmVkOgo+ID4gPiA+Cj4gPiA+ID4gKiBEcm0taHdjb21wb3Nlcgo+ID4gPiA+ICog
S3dpbgo+ID4gPiA+ICogU3dheQo+ID4gPiA+ICogV2xyb290cwo+ID4gPiA+ICogV2F5bGFuZC1j
b3JlCj4gPiA+ID4gKiBXZXN0b24KPiA+ID4gPiAqIFhvcmcgKDY3IGRpZmZlcmVudCBkcml2ZXJz
KQo+ID4gPiA+Cj4gPiA+ID4gRm9yIGVhY2ggcmVwb3NpdG9yeSB0aGUgdmVyaWZpY2F0aW9uIGhh
cHBlbmVkIGluIHRocmVlIHN0ZXBzOgo+ID4gPiA+Cj4gPiA+ID4gKiBVcGRhdGUgdGhlIG1haW4g
YnJhbmNoCj4gPiA+ID4gKiBMb29rIGZvciBhbnkgb2NjdXJyZW5jZSAiZHJtV2FpdFZCbGFuayIg
d2l0aCB0aGUgY29tbWFuZDoKPiA+ID4gPiAgIGdpdCBncmVwIC1uICJkcm1XYWl0VkJsYW5rIgo+
ID4gPiA+ICogTG9vayBpbiB0aGUgZ2l0IGhpc3Rvcnkgb2YgdGhlIHByb2plY3Qgd2l0aCB0aGUg
Y29tbWFuZDoKPiA+ID4gPiAgIGdpdCBsb2cgLVNkcm1XYWl0VkJsYW5rCj4gPiA+ID4KPiA+ID4g
PiBGaW5hbGx5LCBub25lIG9mIHRoZSBhYm92ZSBwcm9qZWN0cyB2YWxpZGF0ZSB0aGUgdXNlIG9m
IEVJTlZBTCB3aGljaAo+ID4gPiA+IG1ha2Ugc2FmZSwgYXQgbGVhc3QgZm9yIHRoZXNlIHByb2pl
Y3RzLCB0byBjaGFuZ2UgdGhlIHJldHVybiB2YWx1ZXMuCj4gPiA+ID4KPiA+ID4gPiBDaGFuZ2Ug
c2luY2UgVjM6Cj4gPiA+ID4gIC0gUmV0dXJuIEVJTlZBTCBmb3IgX0RSTV9WQkxBTktfU0lHTkFM
IChEYW5pZWwpCj4gPiA+ID4KPiA+ID4gPiBDaGFuZ2Ugc2luY2UgVjI6Cj4gPiA+ID4gIERhbmll
bCBWZXR0ZXIgYW5kIENocmlzIFdpbHNvbgo+ID4gPiA+ICAtIFJlcGxhY2UgRU5PVFRZIGJ5IEVP
UE5PVFNVUFAKPiA+ID4gPiAgLSBSZXR1cm4gRUlOVkFMIGlmIHRoZSBwYXJhbWV0ZXJzIGFyZSB3
cm9uZwo+ID4gPiA+Cj4gPiA+Cj4gPiA+IFJldmlld2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5p
ZWwudmV0dGVyQGZmd2xsLmNoPgo+ID4gPgo+ID4gPiBBcG9sb2dpZXMgZm9yIHRoZSBjb25mdXNp
b24gb24gdGhlIGxhc3QgdGltZSBhcm91bmQuIGJ0dyBpZiBzb21lb25lIHRlbGxzCj4gPiA+IHlv
dSAici1iIChvciBhLWIpIHdpdGggdGhlc2UgY2hhbmdlcyIsIHRoZW4ganVzdCBhcHBseSB0aGUg
ci1iL2EtYiB0YWcKPiA+ID4gbmV4dCB0aW1lIGFyb3VuZC4gT3RoZXJ3aXNlIHBlb3BsZSB3aWxs
IHJlLXJldmlldyB0aGUgc2FtZSB0aGluZyBvdmVyIGFuZAo+ID4gPiBvdmVyIGFnYWluLgo+ID4K
PiA+IGJ0dyB3aGVuIHJlc2VuZGluZyBwYXRjaGVzIGl0J3MgZ29vZCBwcmFjdGljZSB0byBhZGQg
YW55b25lIHdobyBjb21tZW50ZWQKPiA+IG9uIGl0IChvciB3aG8gY29tbWVudGVkIG9uIHRoZSBp
Z3QgdGVzdCBmb3IgdGhlIHNhbWUgcGF0Y2ggYW5kIG90aGVyIHdheQo+ID4gcm91bmQpIG9udG8g
dGhlIGV4cGxpY2l0IENjOiBsaXN0IG9mIHRoZSBwYXRjaC4gVGhhdCB3YXkgaXQncyBlYXNpZXIg
Zm9yCj4gPiB0aGVtIHRvIGZvbGxvdyB0aGUgcGF0Y2ggZXZvbHV0aW9uIGFuZCBkbyBhIHF1aWNr
IHItYiBvbmNlIHRoZXkncmUgaGFwcHkuCj4KPiBUaGFua3MgZm9yIHRoZXNlIHZhbHVhYmxlIHRp
cHMuCj4gRG8geW91IHRoaW5rIHRoYXQgaXMgYSBnb29kIGlkZWEgdG8gcmVzZW5kIHRoaXMgcGF0
Y2ggQ0MncyBldmVyeWJvZHk/IE9yCj4gaXMgaXQgb2sgaWYgSSBqdXN0IGFwcGx5IGl0PwoKSG0g
SSB0aG91Z2h0IEkgYW5zd2VyZWQgdGhhdCBvbiBpcmMgLi4uIGJ1dCBqdXN0IHRvZGF5IEkgcmVh
bGl6ZWQgdGhhdAp3ZSBtaXNzZWQgMiBpb2N0bHMuIFRoZXJlJ3MgYWxzbyBkcm1fY3J0Y19nZXRf
c2VxdWVuY2VfaW9jdGwgYW5kCmRybV9jcnRjX3F1ZXVlX3NlcXVlbmNlX2lvY3RsIHdoaWNoIGhh
dmUgdGhlIHNhbWUgZGV2LT5pcnFfZW5hYmxlZApjaGVjayBhbmQgSSB0aGluayBzaG91bGQgYmUg
dHJlYXRlZCB0aGUgc2FtZS4KCkNhbiB5b3UgcGxzIHJlc2VuZCB3aXRoIHRob3NlIGFkZHJlc3Nl
ZCB0b28/IFRoZW4geW91IGNhbiBhbHNvIHJlc2VuZAp3aXRoIHRoZSBjYydzIGFsbCBhZGRlZC4K
LURhbmllbAoKPgo+ID4gSWYgeW91IGRvbid0IGRvIHRoYXQgdGhlbiBtdWNoIGJpZ2dlciBjaGFu
Y2VzIHlvdXIgcGF0Y2ggZ2V0cyBpZ25vcmVkLgo+ID4gLURhbmllbAo+ID4gPgo+ID4gPiA+IFNp
Z25lZC1vZmYtYnk6IFJvZHJpZ28gU2lxdWVpcmEgPHJvZHJpZ29zaXF1ZWlyYW1lbG9AZ21haWwu
Y29tPgo+ID4gPiA+IC0tLQo+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX3ZibGFuay5jIHwg
MiArLQo+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKPiA+ID4gPgo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3ZibGFu
ay5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV92YmxhbmsuYwo+ID4gPiA+IGluZGV4IDYwM2FiMTA1
MTI1ZC4uYmVkMjMzMzYxNjE0IDEwMDY0NAo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9k
cm1fdmJsYW5rLmMKPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3ZibGFuay5jCj4g
PiA+ID4gQEAgLTE1ODIsNyArMTU4Miw3IEBAIGludCBkcm1fd2FpdF92YmxhbmtfaW9jdGwoc3Ry
dWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKPiA+ID4gPiAgIHVuc2lnbmVkIGludCBm
bGFncywgcGlwZSwgaGlnaF9waXBlOwo+ID4gPiA+Cj4gPiA+ID4gICBpZiAoIWRldi0+aXJxX2Vu
YWJsZWQpCj4gPiA+ID4gLSAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+ID4gPiA+ICsgICAgICAg
ICByZXR1cm4gLUVPUE5PVFNVUFA7Cj4gPiA+ID4KPiA+ID4gPiAgIGlmICh2Ymx3YWl0LT5yZXF1
ZXN0LnR5cGUgJiBfRFJNX1ZCTEFOS19TSUdOQUwpCj4gPiA+ID4gICAgICAgICAgIHJldHVybiAt
RUlOVkFMOwo+ID4gPiA+IC0tCj4gPiA+ID4gMi4yMS4wCj4gPiA+Cj4gPiA+IC0tCj4gPiA+IERh
bmllbCBWZXR0ZXIKPiA+ID4gU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCj4g
PiA+IGh0dHA6Ly9ibG9nLmZmd2xsLmNoCj4gPgo+ID4gLS0KPiA+IERhbmllbCBWZXR0ZXIKPiA+
IFNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgo+ID4gaHR0cDovL2Jsb2cuZmZ3
bGwuY2gKPgo+IC0tCj4gUm9kcmlnbyBTaXF1ZWlyYQo+IGh0dHBzOi8vc2lxdWVpcmEudGVjaAo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKCgot
LSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KKzQx
ICgwKSA3OSAzNjUgNTcgNDggLSBodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
