Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA70417D0
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 00:02:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE54A891AC;
	Tue, 11 Jun 2019 22:02:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEE08891AC
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 22:02:00 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id v129so8941230vsb.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 15:02:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R9aK4K+mYhxsBGuDL1wSkT9a9QdB+QJqvCcQqCRoZqk=;
 b=G3JDh0n3t9Gvx5MaqfoSjYereVz88DVWdEmW/g0VNbLJFkeIIxE+oAWtFdNcibFzlC
 ZnE7kQn/fW8niX3PPrrgddPyWuHPpaHvGyEgK0+wIXbDeJmEEIkOkiCFLZHKzKdI3+wM
 SLVqFJvjLyYRDs2cjhQcVunIAimN8Ozry2+0ZHyDgF00lzqrkc+O1gK1ebtToi4fFQNq
 gSyutYkXr49E/SI7cLhC7B+6nr5fNq8Tvjq+uz2ovJvIjiABprO2gKOwPnVzhluICbRJ
 hXxoHLysc8rRt+RXbjNUGi8Az1TFib7enyE2a2zXPDaENyIRRSf9+RSoTqEqAF0E9cyU
 4/vQ==
X-Gm-Message-State: APjAAAWKw+5eLCn1bs3aVdhscaYHOVlmRxUuQ+4PYCTz3au7GWO/m+bP
 /sBHOwewkPI5i7dIz397QnOaGEiNXzMZnYtu2Wg8Jw==
X-Google-Smtp-Source: APXvYqw0envY6zW+Lz/LpkpAKuJuPPY1ZENACuLJfRT4NvK+IVqHR36Y7gi5Vlqk+iKUf5BiCUj6/+NTISBNAEyEhIk=
X-Received: by 2002:a67:d384:: with SMTP id b4mr9315081vsj.152.1560290519746; 
 Tue, 11 Jun 2019 15:01:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-3-dbasehore@chromium.org>
 <CAL_JsqLM1CikZ8+NPjLk2CEW-z9vPynZpVG20x0jsa7hVq0LvA@mail.gmail.com>
In-Reply-To: <CAL_JsqLM1CikZ8+NPjLk2CEW-z9vPynZpVG20x0jsa7hVq0LvA@mail.gmail.com>
From: "dbasehore ." <dbasehore@chromium.org>
Date: Tue, 11 Jun 2019 15:01:48 -0700
Message-ID: <CAGAzgsoWGqf0JQPNyRFnv2xZTMxje6idce7Dy5FZzuxj30mQyw@mail.gmail.com>
To: Rob Herring <robh+dt@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=R9aK4K+mYhxsBGuDL1wSkT9a9QdB+QJqvCcQqCRoZqk=;
 b=jynV4LeLSkp8mY/yMLs3t4Pg5sizpYJiXBSRzIWuITTAmY09IkU049XMUREkVXni+g
 JYmm1KjaWGlZolbGVaL1OfPnf3JRGs5E9Tzrgf9suFhpZzr0hUOGtfsAg/LWhL40oakz
 62yF0xRTAYPtIkJav7muvoNoGgY8jAOJHKSgg=
Subject: Re: [Intel-gfx] [PATCH 2/5] dt-bindings: display/panel: Expand
 rotation documentation
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, CK Hu <ck.hu@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sam Ravnborg <sam@ravnborg.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdW4gMTEsIDIwMTkgYXQgODoyNSBBTSBSb2IgSGVycmluZyA8cm9iaCtkdEBrZXJu
ZWwub3JnPiB3cm90ZToKPgo+IE9uIE1vbiwgSnVuIDEwLCAyMDE5IGF0IDEwOjAzIFBNIERlcmVr
IEJhc2Vob3JlIDxkYmFzZWhvcmVAY2hyb21pdW0ub3JnPiB3cm90ZToKPiA+Cj4gPiBUaGlzIGFk
ZHMgdG8gdGhlIHJvdGF0aW9uIGRvY3VtZW50YXRpb24gdG8gZXhwbGFpbiBob3cgZHJpdmVycyBz
aG91bGQKPiA+IHVzZSB0aGUgcHJvcGVydHkgYW5kIGdpdmVzIGFuIGV4YW1wbGUgb2YgdGhlIHBy
b3BlcnR5IGluIGEgZGV2aWNldHJlZQo+ID4gbm9kZS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBE
ZXJlayBCYXNlaG9yZSA8ZGJhc2Vob3JlQGNocm9taXVtLm9yZz4KPiA+IC0tLQo+ID4gIC4uLi9i
aW5kaW5ncy9kaXNwbGF5L3BhbmVsL3BhbmVsLnR4dCAgICAgICAgICB8IDMyICsrKysrKysrKysr
KysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9wYW5l
bC9wYW5lbC50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9w
YW5lbC9wYW5lbC50eHQKPiA+IGluZGV4IGUyZTY4Njc4NTJiOC4uZjM1ZDYyZDkzM2ZjIDEwMDY0
NAo+ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcGFu
ZWwvcGFuZWwudHh0Cj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
ZGlzcGxheS9wYW5lbC9wYW5lbC50eHQKPiA+IEBAIC0yLDMgKzIsMzUgQEAgQ29tbW9uIGRpc3Bs
YXkgcHJvcGVydGllcwo+ID4gIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+Cj4gPiAgLSBy
b3RhdGlvbjogICAgRGlzcGxheSByb3RhdGlvbiBpbiBkZWdyZWVzIGNvdW50ZXIgY2xvY2t3aXNl
ICgwLDkwLDE4MCwyNzApCj4gPiArCj4gPiArUHJvcGVydHkgcmVhZCBmcm9tIHRoZSBkZXZpY2Ug
dHJlZSB1c2luZyBvZiBvZl9kcm1fZ2V0X3BhbmVsX29yaWVudGF0aW9uCj4KPiBEb24ndCBwdXQg
a2VybmVsIHNwZWNpZmljcyBpbnRvIGJpbmRpbmdzLgoKV2lsbCByZW1vdmUgdGhhdC4gSSdsbCBj
bGVhbiB1cCB0aGUgZG9jdW1lbnRhdGlvbiB0byBpbmRpY2F0ZSB0aGF0CnRoaXMgYmluZGluZyBj
cmVhdGVzIGEgcGFuZWwgb3JpZW50YXRpb24gcHJvcGVydHkgdW5sZXNzIHRoZSByb3RhdGlvbgpp
cyBoYW5kbGVkIGluIHRoZSBUaW1pbmcgQ29udHJvbGxlciBvbiB0aGUgcGFuZWwgaWYgdGhhdCBz
b3VuZHMgZmluZS4KCj4KPiA+ICsKPiA+ICtUaGUgcGFuZWwgZHJpdmVyIG1heSBhcHBseSB0aGUg
cm90YXRpb24gYXQgdGhlIFRDT04gbGV2ZWwsIHdoaWNoIHdpbGwKPgo+IFdoYXQncyBUQ09OPyBT
b21ldGhpbmcgTWVkaWF0ZWsgc3BlY2lmaWMgSUlSQy4KClRoZSBUQ09OIGlzIHRoZSBUaW1pbmcg
Y29udHJvbGxlciwgd2hpY2ggaXMgb24gdGhlIHBhbmVsLiBFdmVyeSBwYW5lbApoYXMgb25lLiBJ
J2xsIGFkZCB0byB0aGUgZG9jIHRoYXQgdGhlIFRDT04gaXMgaW4gdGhlIHBhbmVsLCBldGMuCgo+
Cj4gPiArbWFrZSB0aGUgcGFuZWwgbG9vayBsaWtlIGl0IGlzbid0IHJvdGF0ZWQgdG8gdGhlIGtl
cm5lbCBhbmQgYW55IG90aGVyCj4gPiArc29mdHdhcmUuCj4gPiArCj4gPiArSWYgbm90LCBhIHBh
bmVsIG9yaWVudGF0aW9uIHByb3BlcnR5IHNob3VsZCBiZSBhZGRlZCB0aHJvdWdoIHRoZSBTb0MK
PiA+ICt2ZW5kb3IgRFJNIGNvZGUgdXNpbmcgdGhlIGRybV9jb25uZWN0b3JfaW5pdF9wYW5lbF9v
cmllbnRhdGlvbl9wcm9wZXJ0eQo+ID4gK2Z1bmN0aW9uLgo+Cj4gVGhlICdyb3RhdGlvbicgcHJv
cGVydHkgc2hvdWxkIGJlIGRlZmluZWQgcHVyZWx5IGJhc2VkIG9uIGhvdyB0aGUKPiBwYW5lbCBp
cyBtb3VudGVkIHJlbGF0aXZlIHRvIGEgZGV2aWNlJ3Mgb3JpZW50YXRpb24uIElmIHRoZSBkaXNw
bGF5Cj4gcGlwZWxpbmUgaGFzIHNvbWUgYWJpbGl0eSB0byBoYW5kbGUgcm90YXRpb24sIHRoYXQn
cyBhIGZlYXR1cmUgb2YgdGhlCj4gZGlzcGxheSBwaXBlbGluZSBhbmQgbm90IHRoZSBwYW5lbC4K
ClRoaXMgaXMgaG93IHRoZSBwYW5lbCBvcmllbnRhdGlvbiBwcm9wZXJ0eSBpcyBhbHJlYWR5IGhh
bmRsZWQgaW4gdGhlCmtlcm5lbC4gU2VlIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3Zsdl9kc2kuYyBm
b3IgbW9yZSBkZXRhaWxzLgoKPgo+ID4gKwo+ID4gK0V4YW1wbGU6Cj4KPiBUaGlzIGZpbGUgaXMg
YSBjb2xsZWN0aW9uIG9mIGNvbW1vbiBwcm9wZXJ0aWVzLiBJdCBzaG91bGRuJ3QgaGF2ZSBhbgo+
IGV4YW1wbGUgZXNwZWNpYWxseSBhcyB0aGlzIGV4YW1wbGUgaXMgbW9zdGx5IG5vbi1jb21tb24g
cHJvcGVydGllcy4KCkp1c3QgY29waWVkIG9uZSBvZiBvdXIgRFRTIGVudHJpZXMgdGhhdCB1c2Vz
IHRoZSBwcm9wZXJ0eS4gSSdsbCByZW1vdmUKZXZlcnl0aGluZyB1bmRlciBjb21wYXRpYmxlIGV4
Y2VwdCBmb3Igcm90YXRpb24gYW5kIHN0YXR1cy4KCj4KPiA+ICsgICAgICAgcGFuZWw6IHBhbmVs
QDAgewo+ID4gKyAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiYm9lLGhpbWF4ODI3OWQ4cCI7
Cj4gPiArICAgICAgICAgICAgICAgcmVnID0gPDA+Owo+ID4gKyAgICAgICAgICAgICAgIGVuYWJs
ZS1ncGlvcyA9IDwmcGlvIDQ1IDA+Owo+Cj4gPiArICAgICAgICAgICAgICAgcHAzMy1ncGlvcyA9
IDwmcGlvIDM1IDA+Owo+ID4gKyAgICAgICAgICAgICAgIHBwMTgtZ3Bpb3MgPSA8JnBpbyAzNiAw
PjsKPgo+IEJUVywgYXJlIHRoZXNlIHVwc3RyZWFtIGJlY2F1c2UgdGhleSBsb29rIGxpa2UgR1BJ
TyBjb250cm9sbGVkCj4gc3VwcGxpZXMgd2hpY2ggd2UgbW9kZWwgd2l0aCBncGlvLXJlZ3VsYXRv
ciBiaW5kaW5nIHR5cGljYWxseS4KClRoZSBib2UsaGltYXg4Mjc5IGRyaXZlciB3YXMgc2VudCB1
cHN0cmVhbSwgYnV0IGl0IGRvZXNuJ3QgYXBwZWFyIHRvCmJlIG1lcmdlZC4gSSdsbCBsb29rIGlu
dG8gaXQgb24gdGhhdCB0aHJlYWQuCgo+Cj4gPiArICAgICAgICAgICAgICAgcGluY3RybC1uYW1l
cyA9ICJkZWZhdWx0IiwgInN0YXRlXzMzMDBtdiIsICJzdGF0ZV8xODAwbXYiOwo+ID4gKyAgICAg
ICAgICAgICAgIHBpbmN0cmwtMCA9IDwmcGFuZWxfcGluc19kZWZhdWx0PjsKPiA+ICsgICAgICAg
ICAgICAgICBwaW5jdHJsLTEgPSA8JnBhbmVsX3BpbnNfMzMwMG12PjsKPiA+ICsgICAgICAgICAg
ICAgICBwaW5jdHJsLTIgPSA8JnBhbmVsX3BpbnNfMTgwMG12PjsKPiA+ICsgICAgICAgICAgICAg
ICBiYWNrbGlnaHQgPSA8JmJhY2tsaWdodF9sY2QwPjsKPiA+ICsgICAgICAgICAgICAgICByb3Rh
dGlvbiA9IDwxODA+Owo+ID4gKyAgICAgICAgICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPiA+ICsK
PiA+ICsgICAgICAgICAgICAgICBwb3J0IHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHBh
bmVsX2luOiBlbmRwb2ludCB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJl
bW90ZS1lbmRwb2ludCA9IDwmZHNpX291dD47Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICB9
Owo+ID4gKyAgICAgICAgICAgICAgIH07Cj4gPiArICAgICAgIH07Cj4gPiAtLQo+ID4gMi4yMi4w
LnJjMi4zODMuZ2Y0ZmJiZjMwYzItZ29vZwo+ID4KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
