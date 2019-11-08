Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB8DF52A2
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 18:35:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A347C6FA38;
	Fri,  8 Nov 2019 17:35:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com
 [IPv6:2607:f8b0:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A50DD6FA38
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 17:35:49 +0000 (UTC)
Received: by mail-oi1-x244.google.com with SMTP id a14so5947017oid.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 08 Nov 2019 09:35:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=EL0UJ5aBNqqKBIWHYLniEpcocBzu/iVqxSiz2HSBFVc=;
 b=Mczzr0tkv+9HlHGgy9+taZGdsJkaX4mKHpMBdldJ0FS24WQYVJmqaEXimvrNn5QBmw
 KXMM+pChuZpy5Qzb8xrUvtUSWOQtutpTw04qFN0PUZv5M5ZJP0DVN75y9MmNMs2fevAT
 v/TAcqmIzQvm4FM3p34keJY6FQhNsH+tEvKJob6RkydIk4QTdwXSeQ8RsRqtJmcX7XuN
 hDehC6SqakcKafg5GAvuDRX/G2CH51t++vv53dNIP4DflTdrQY0gQS1VF2usKoZzYllz
 fsB6K2kiOus/7ORf2+kIBNAEDZrp72bFwj1NdL+XMRpa9GZnc8fBy/LL+qO5nU8CGlyo
 ue7g==
X-Gm-Message-State: APjAAAUQNzbp0YzIxCetc7TZKXcsRxT7Zo3FD3FNAE1iWbSyByyEJeVS
 xZGbb6pdIaw2u0th5v8kVpbElbZwzlXATZKRgdQyUg==
X-Google-Smtp-Source: APXvYqypOxnq3sq8rOLyKTz9ItYkFbTUkgS/xaE6Y/5KmdKEc8etUA9DwD4TkYHG5H66Dj3vIZh6jFpuYI8DnWsOD94=
X-Received: by 2002:aca:3889:: with SMTP id f131mr10726259oia.14.1573234548829; 
 Fri, 08 Nov 2019 09:35:48 -0800 (PST)
MIME-Version: 1.0
References: <20190820170631.26570-1-daniel.vetter@ffwll.ch>
 <20190820195451.15671-1-daniel.vetter@ffwll.ch>
 <055acb8e-8ba4-52b7-8cba-a5fef504e95e@intel.com>
 <20190821135537.GI5942@intel.com>
 <CAKMK7uFBXmDXA32dUhfvkxqxYDidbt0R6rowXBk7BwUBMU9qqA@mail.gmail.com>
 <CAOFGe97==LTH0pUh2idtA0SqQLf=+Tq90h0cBVwhv4gkHLq-7Q@mail.gmail.com>
 <e01a7b6890346444f3fa3f78cca1a2315412a37a.camel@intel.com>
 <156702323116.15406.18211831116094527542@skylake-alporthouse-com>
 <6c22439c4f38d0be6f8183bbe279c9e0f3db983b.camel@intel.com>
 <20190829065004.GG2112@phenom.ffwll.local>
 <f8cefd62-1322-fc16-39b5-e43994387f3e@intel.com>
In-Reply-To: <f8cefd62-1322-fc16-39b5-e43994387f3e@intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 8 Nov 2019 18:35:36 +0100
Message-ID: <CAKMK7uHmnUTe8-OWWX=gKB74RMMp5z9Hwka2BWqUmphDX_1kmQ@mail.gmail.com>
To: Brian Welty <brian.welty@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=EL0UJ5aBNqqKBIWHYLniEpcocBzu/iVqxSiz2HSBFVc=;
 b=N21r2YP7PGHXdVJp1sKQje5nzAKpEqv7CZLLwOXL+XtNiuPspV962gHrwYe/mvtH/g
 BN3dbwDiL3OaeF5LOLbHN5588lq8NBXyVZHMUNOmOhkPwWxq2rsL4/5EiOgfHCegfVK4
 TpK6ki7Ys7CRMMfiVdGwqWVDJLYDQXY6N27cs=
Subject: Re: [Intel-gfx] [PATCH] drm/i915: disable set/get_tiling ioctl on
 gen12+
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "kenneth@whitecape.org" <kenneth@whitecape.org>, "Auld,
 Matthew" <matthew.auld@intel.com>, "Vetter, Daniel" <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgOCwgMjAxOSBhdCAxMjowNyBBTSBCcmlhbiBXZWx0eSA8YnJpYW4ud2VsdHlA
aW50ZWwuY29tPiB3cm90ZToKPgo+Cj4KPiBPbiA4LzI4LzIwMTkgMTE6NTAgUE0sIERhbmllbCBW
ZXR0ZXIgd3JvdGU6Cj4gPiBPbiBXZWQsIEF1ZyAyOCwgMjAxOSBhdCAwODozMToyN1BNICswMDAw
LCBTb3V6YSwgSm9zZSB3cm90ZToKPiA+PiBPbiBXZWQsIDIwMTktMDgtMjggYXQgMjE6MTMgKzAx
MDAsIENocmlzIFdpbHNvbiB3cm90ZToKPiA+Pj4gUXVvdGluZyBTb3V6YSwgSm9zZSAoMjAxOS0w
OC0yOCAyMToxMTo1MykKPiA+Pj4+IFJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiA+Pj4KPiA+Pj4gSXQncyB1c2luZyBhIG5vbi1zdGFu
ZGFyZCBmb3IgaTkxNSBlcnJvciBjb2RlLCBhbmQgZ2V0X3RpbGluZyBpcyBub3QKPiA+Pgo+ID4+
IEh1dW0gc2hvdWxkIGl0IHVzZSBFTk9UU1VQUCB0aGVuPyEKPiA+Cj4gPiBodHRwczovL2RyaS5m
cmVlZGVza3RvcC5vcmcvZG9jcy9kcm0vZ3B1L2RybS11YXBpLmh0bWwjcmVjb21tZW5kZWQtaW9j
dGwtcmV0dXJuLXZhbHVlcwo+ID4KPiA+IFBlciBhYm92ZSAiZmVhdHVyZSBub3Qgc3VwcG9ydGVk
IiAtPiBFT1BOT1RTVVBQLgo+ID4KPiA+Pj4gYWZmZWN0ZWQsIGl0IHdpbGwgYWx3YXlzIHJldHVy
biBMSU5FQVIuIFlvdSBjYW5ub3Qgc2V0IHRpbGluZyBhcwo+ID4+Cj4gPj4gRm9sbG93aW5nIHRo
aXMgc2V0X3RpbGluZygpIExJTkVBUiBzaG91bGQgYmUgYWxsb3dlZCB0b28uCj4gPj4gSSBwcmVm
ZXIgdGhlIGN1cnJlbnQgYXBwcm9hY2ggb2YgcmV0dXJuaW5nIGVycm9yLgo+ID4KPiA+IEknbSBu
b3Qgc2VlaW5nIHRoZSB2YWx1ZSBpbiBrZWVwaW5nIGdldF90aWxpbmcgc3VwcG9ydGVkLiBFaXRo
ZXIgdXNlcnNwYWNlCj4gPiBzdGlsbCB1c2VzIHRoZSBsZWdhY3kgYmFja2hhbm5lbCBhbmQgZHJp
MiwgaW4gd2hpY2ggY2FzZSBpdCBuZWVkcyB0byBiZQo+ID4gZml4ZWQgbm8gbWF0dGVyIHdoYXQu
IE9yIGl0J3MgdXNpbmcgbW9kaWZpZXJzLCBpbiB3aGljaCBjYXNlIHRoaXMgaXMgZGVhZAo+ID4g
Y29kZS4gT25seSBvdGhlciB1c2VyIEkgY2FuIHRoaW5rIG9mIGlzIHRha2VvdmVyIGZvciBmYXN0
Ym9vdCwgYnV0IGlmIHlvdQo+ID4gZ2V0IGFueXRoaW5nIGVsc2UgdGhhbiB1bnRpbGVkIGl0J3Mg
YWxzbyBicm9rZW4gKHdlIGRvbid0IGhhdmUgYW4gaW9jdGwgdG8KPiA+IHJlYWQgb3V0IHRoZSBt
b2RpZmllcnMsIGhlY2sgZXZlbiBhbGwgdGhlIHBsYW5lcywgdGhlcmUncyBubyBnZXRmYjIpLgo+
ID4KPiA+IFNvIHJlYWxseSBub3Qgc2VlaW5nIHRoZSBwb2ludCBpbiBrZWVwaW5nIHRoYXQgd29y
a2luZy4KPgo+IERhbmllbCwgIEkgY2FtZSBhY3Jvc3MgdXNhZ2Ugb2YgR0VUX1RJTElORyBpbiBs
aWJkcm0uCj4gSXMgdXNlZCBpbiBkcm1faW50ZWxfYm9fZ2VtX2NyZWF0ZV9mcm9tX25hbWUoKSBh
bmQgZHJtX2ludGVsX2JvX2dlbV9jcmVhdGVfZnJvbV9wcmltZSgpLgo+IFNob3VsZCB0aGVzZSBi
ZSB1cGRhdGVkIHNvIHRoZXkgZG9uJ3QgZmFpbCB3aGVuIEVPUE5PVFNVUFAgaXMgcmV0dXJuZWQg
b24gZ2VuMTIrPwo+IE1heWJlIGxpYmRybSBzaG91bGQganVzdCBzZXQgdGlsaW5nX21vZGUgdG8g
MCBvbiBFT1BOT1RTVVBQIGVycm9yIGluc3RlYWQgb2YgdGhvc2UgY2FsbHMgZmFpbGluZz8KClll
cywgSSBndWVzcyB0aGF0IHBhcnQgb2YgbWVzYSBoYXNuJ3Qgc2VlbiBtdWNoIHRlc3RpbmcgeWV0
LgotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jw
b3JhdGlvbgorNDEgKDApIDc5IDM2NSA1NyA0OCAtIGh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
