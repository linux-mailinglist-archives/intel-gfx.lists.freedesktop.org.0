Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE67A64F9
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 11:19:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4E56897E8;
	Tue,  3 Sep 2019 09:19:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E20C897E8
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 09:19:32 +0000 (UTC)
Received: by mail-lj1-x244.google.com with SMTP id e17so4267245ljf.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2019 02:19:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1rnJc09Czv/mFttwzyRgXKw3rbdc8+Sm1KH9H/LWYFg=;
 b=BnR+VTP59pm/1ygmfxhvO+LbKXUJar3mXuKQKExR8VWYajn/eLHBOqaJPD/UHnCHA0
 +UDLKNgETvsA7QUhagf3UaBA9FCVqxDS3sAID8gbxDg9C8IR6rTAy1fY65Kh0ItN9JzE
 s/Dmv4Rp4t/CpL/y0YPPCAd/dTG0q1gd6LX81EPdkezDqttWYYP1X1FPXoJPjH0kbzP+
 xc1ryhBLHYu3gJajaTDTWIXcLZ7E3raC+FNntwIIe+CiESkEDmrwSyvmgywn5HxYtJ7G
 3IlsWIB2uq5Wdk6o87DVhYpO/9aTxBrzf1KrFcclFj7TGfLBnIsbamptTPw/etjJnVuz
 mnHQ==
X-Gm-Message-State: APjAAAVfGJWtOaD10OOb4Pd9+fmBw4rLLJOCCnticfz8QiJ0YW32Flop
 HpdR2j67pDoLKCF3LoNC7tAMDYqX4vfK3h9CdT9IhQ==
X-Google-Smtp-Source: APXvYqxUYJysKDRzKPPsnSMdwGuqqTASi5WWZqdgeBxygT76bseAFLh5oXOmnW3JsUmDBCm+DlRE3gzWOpAJe3XIEN8=
X-Received: by 2002:a2e:42c9:: with SMTP id h70mr9479161ljf.88.1567502370654; 
 Tue, 03 Sep 2019 02:19:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190814171518.GL7444@phenom.ffwll.local>
 <20190902142412.27846-1-heinrich.fink@daqri.com>
 <20190902142412.27846-2-heinrich.fink@daqri.com>
 <20190903074644.GI2112@phenom.ffwll.local>
In-Reply-To: <20190903074644.GI2112@phenom.ffwll.local>
From: Heinrich Fink <heinrich.fink@daqri.com>
Date: Tue, 3 Sep 2019 11:19:19 +0200
Message-ID: <CAB6MLDY3q_w2Gv+x3mjriFjGvg0BuJk3w-1pJ8xfEg_3m+q90w@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daqri.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=1rnJc09Czv/mFttwzyRgXKw3rbdc8+Sm1KH9H/LWYFg=;
 b=ZraBRTjJN2qDVEQX50A1i9iOXcDzWf2H54ALhWbg6nz7euVRsiAsFC9BFpavSGhcXh
 4ITMIWGpNWzDmcl7FLSA0F5/tQ3phNRSFBovfej7bvPIEj94b2InNfXrzxhvKdjkQ4e0
 piO9gOPMwtJugy7jM++5wNnARIgYuOBv+c/OY=
Subject: Re: [Intel-gfx] [PATCH v2] drm: Add high-precision time to vblank
 trace event
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAzIFNlcCAyMDE5IGF0IDA5OjQ2LCBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwu
Y2g+IHdyb3RlOgo+Cj4gT24gTW9uLCBTZXAgMDIsIDIwMTkgYXQgMDQ6MjQ6MTJQTSArMDIwMCwg
SGVpbnJpY2ggRmluayB3cm90ZToKPiA+IFN0b3JlIHRoZSB0aW1lc3RhbXAgb2YgdGhlIGN1cnJl
bnQgdmJsYW5rIGluIHRoZSBuZXcgZmllbGQgJ3RpbWUnIG9mIHRoZQo+ID4gdmJsYW5rIHRyYWNl
IGV2ZW50LiBJZiB0aGUgdGltZXN0YW1wIGlzIGNhbGN1bGF0ZWQgYnkgYSBkcml2ZXIgdGhhdAo+
ID4gc3VwcG9ydHMgaGlnaC1wcmVjaXNpb24gdmJsYW5rIHRpbWluZywgc2V0IHRoZSBmaWVsZCAn
aGlnaC1wcmVjJyB0bwo+ID4gJ3RydWUnLgo+ID4KPiA+IFVzZXIgc3BhY2UgY2FuIG5vdyBhY2Nl
c3MgYWN0dWFsIGhhcmR3YXJlIHZibGFuayB0aW1lcyB2aWEgdGhlIHRyYWNpbmcKPiA+IGluZnJh
c3RydWN0dXJlLiBUcmFjaW5nIGFwcGxpY2F0aW9ucyAoc3VjaCBhcyBHUFVWaXMsIHNlZSBbMF0g
Zm9yCj4gPiByZWxhdGVkIGRpc2N1c3Npb24pLCBjYW4gdXNlIHRoZSBuZXdseSBhZGRlZCBpbmZv
cm1hdGlvbiB0byBjb25kdWN0IGEKPiA+IG1vcmUgYWNjdXJhdGUgYW5hbHlzaXMgb2YgZGlzcGxh
eSB0aW1pbmcuCj4gPgo+ID4gdjIgRml4IGF1dGhvciBuYW1lIChtaXNzaW5nIGxhc3QgbmFtZSkK
PiA+Cj4gPiBbMF0gaHR0cHM6Ly9naXRodWIuY29tL21pa2VzYXJ0L2dwdXZpcy9pc3N1ZXMvMzAK
PiA+Cj4gPiBSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5j
aD4KPiA+IFNpZ25lZC1vZmYtYnk6IEhlaW5yaWNoIEZpbmsgPGhlaW5yaWNoLmZpbmtAZGFxcmku
Y29tPgo+Cj4gQXBwbGllZCwgdGhhbmtzLgoKdGhhbmtzISBPbmUgcXVlc3Rpb246IEFmdGVyIHNl
bmRpbmcgdjIsIEkgZ290IGFuIGVtYWlsIGZyb20gcGF0Y2h3b3JrCnBvaW50aW5nIGF0IHNvbWUg
ZmFpbGVkIHN0eWxlIGNoZWNrcyAoQ0hFQ0s6UEFSRU5USEVTSVNfQUxJR05NRU5ULApDSEVDSzpD
T01QQVJJU09OX1RPX05VTEwpLiBKdXN0IHNvIEkga25vdyBmb3IgdGhlIGZ1dHVyZSwgYXJlIHRo
ZXNlCmNoZWNrcyBtYW5kYXRvcnkgdG8gYmUgYWRkcmVzc2VkPyBJIGhhdmVuJ3QgaGFkIGEgY2hh
bmNlIHRvIGFkZHJlc3MKdGhlbSB5ZXQuIEZXSVcsIGxpbnV4LXRyZWUvc2NyaXB0cy9jaGVja3Bh
dGNoLnBsIGRpZCBub3QgY29tcGxhaW4uCgotIEhlaW5yaWNoCgo+IC1EYW5pZWwKPgo+ID4gLS0t
Cj4gPiAgZHJpdmVycy9ncHUvZHJtL2RybV90cmFjZS5oICB8IDE0ICsrKysrKysrKystLS0tCj4g
PiAgZHJpdmVycy9ncHUvZHJtL2RybV92YmxhbmsuYyB8ICAzICsrLQo+ID4gIDIgZmlsZXMgY2hh
bmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2RybV90cmFjZS5oIGIvZHJpdmVycy9ncHUvZHJtL2RybV90cmFj
ZS5oCj4gPiBpbmRleCA0NzFlYjkyNzQ3NGIuLjExYzZkZDU3N2U4ZSAxMDA2NDQKPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9kcm1fdHJhY2UuaAo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2Ry
bV90cmFjZS5oCj4gPiBAQCAtMTMsMTcgKzEzLDIzIEBAIHN0cnVjdCBkcm1fZmlsZTsKPiA+ICAj
ZGVmaW5lIFRSQUNFX0lOQ0xVREVfRklMRSBkcm1fdHJhY2UKPiA+Cj4gPiAgVFJBQ0VfRVZFTlQo
ZHJtX3ZibGFua19ldmVudCwKPiA+IC0gICAgICAgICBUUF9QUk9UTyhpbnQgY3J0YywgdW5zaWdu
ZWQgaW50IHNlcSksCj4gPiAtICAgICAgICAgVFBfQVJHUyhjcnRjLCBzZXEpLAo+ID4gKyAgICAg
ICAgIFRQX1BST1RPKGludCBjcnRjLCB1bnNpZ25lZCBpbnQgc2VxLCBrdGltZV90IHRpbWUsIGJv
b2wgaGlnaF9wcmVjKSwKPiA+ICsgICAgICAgICBUUF9BUkdTKGNydGMsIHNlcSwgdGltZSwgaGln
aF9wcmVjKSwKPiA+ICAgICAgICAgICBUUF9TVFJVQ1RfX2VudHJ5KAo+ID4gICAgICAgICAgICAg
ICAgICAgX19maWVsZChpbnQsIGNydGMpCj4gPiAgICAgICAgICAgICAgICAgICBfX2ZpZWxkKHVu
c2lnbmVkIGludCwgc2VxKQo+ID4gKyAgICAgICAgICAgICAgICAgX19maWVsZChrdGltZV90LCB0
aW1lKQo+ID4gKyAgICAgICAgICAgICAgICAgX19maWVsZChib29sLCBoaWdoX3ByZWMpCj4gPiAg
ICAgICAgICAgICAgICAgICApLAo+ID4gICAgICAgICAgIFRQX2Zhc3RfYXNzaWduKAo+ID4gICAg
ICAgICAgICAgICAgICAgX19lbnRyeS0+Y3J0YyA9IGNydGM7Cj4gPiAgICAgICAgICAgICAgICAg
ICBfX2VudHJ5LT5zZXEgPSBzZXE7Cj4gPiAtICAgICAgICAgICAgICAgICApLAo+ID4gLSAgICAg
ICAgIFRQX3ByaW50aygiY3J0Yz0lZCwgc2VxPSV1IiwgX19lbnRyeS0+Y3J0YywgX19lbnRyeS0+
c2VxKQo+ID4gKyAgICAgICAgICAgICAgICAgX19lbnRyeS0+dGltZSA9IHRpbWU7Cj4gPiArICAg
ICAgICAgICAgICAgICBfX2VudHJ5LT5oaWdoX3ByZWMgPSBoaWdoX3ByZWM7Cj4gPiArICAgICAg
ICAgICAgICAgICAgICAgKSwKPiA+ICsgICAgICAgICBUUF9wcmludGsoImNydGM9JWQsIHNlcT0l
dSwgdGltZT0lbGxkLCBoaWdoLXByZWM9JXMiLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgIF9f
ZW50cnktPmNydGMsIF9fZW50cnktPnNlcSwgX19lbnRyeS0+dGltZSwKPiA+ICsgICAgICAgICAg
ICAgICAgICAgICBfX2VudHJ5LT5oaWdoX3ByZWMgPyAidHJ1ZSIgOiAiZmFsc2UiKQo+ID4gICk7
Cj4gPgo+ID4gIFRSQUNFX0VWRU5UKGRybV92YmxhbmtfZXZlbnRfcXVldWVkLAo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fdmJsYW5rLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJt
X3ZibGFuay5jCj4gPiBpbmRleCBmZDFmYmM3Nzg3MWYuLmM5OWZlZGEyNWRlYSAxMDA2NDQKPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fdmJsYW5rLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9kcm1fdmJsYW5rLmMKPiA+IEBAIC0xNzMxLDcgKzE3MzEsOCBAQCBzdGF0aWMgdm9pZCBk
cm1faGFuZGxlX3ZibGFua19ldmVudHMoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdW5zaWduZWQg
aW50IHBpcGUpCj4gPiAgICAgICAgICAgICAgIHNlbmRfdmJsYW5rX2V2ZW50KGRldiwgZSwgc2Vx
LCBub3cpOwo+ID4gICAgICAgfQo+ID4KPiA+IC0gICAgIHRyYWNlX2RybV92YmxhbmtfZXZlbnQo
cGlwZSwgc2VxKTsKPiA+ICsgICAgIHRyYWNlX2RybV92YmxhbmtfZXZlbnQocGlwZSwgc2VxLCBu
b3csCj4gPiArICAgICAgICAgICAgICAgICAgICAgZGV2LT5kcml2ZXItPmdldF92YmxhbmtfdGlt
ZXN0YW1wICE9IE5VTEwpOwo+ID4gIH0KPiA+Cj4gPiAgLyoqCj4gPiAtLQo+ID4gMi4yMy4wLnJj
MQo+ID4KPgo+IC0tCj4gRGFuaWVsIFZldHRlcgo+IFNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBD
b3Jwb3JhdGlvbgo+IGh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
