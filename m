Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1F639BA23
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 15:47:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E50EE6EA71;
	Fri,  4 Jun 2021 13:47:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe31.google.com (mail-vs1-xe31.google.com
 [IPv6:2607:f8b0:4864:20::e31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96A266E5BD;
 Fri,  4 Jun 2021 13:47:28 +0000 (UTC)
Received: by mail-vs1-xe31.google.com with SMTP id z7so1037959vso.3;
 Fri, 04 Jun 2021 06:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=op04Di3PZdwaBM43wkV7mDypOrvb+rZhXxhpmN4buHA=;
 b=uJL73wGFWEV+jOhqR9TLUv8l4zsIKpNu3jBVH/rcaEZWA0Zt/ShlPOUWHoOU9yGDaL
 pQDnaoFe0eX+8Ufr7JPW7h2d1wTVrHNAvPTAIwvtTjfFq4hOxhM0YTqbnAMbUTuJZb1r
 yP5gKN8WfIT2IEZMprUMVlEjC9WXzAcUH13IjItRfAzBPuYVk/zIZLjC2dEVh/riZ4Zn
 ZSva7EnYOLprgsEr1GjX2eEugjCme54OR1EycNZXTrKLshdhgt2L9RubZQn0bLiSyBPO
 CHDHSbiiv8tBWQv5sQ95YQbpTVgB96Fy8t0fXqSZHuk6LhsieUNSDsoBc8Ij6c3S065g
 losA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=op04Di3PZdwaBM43wkV7mDypOrvb+rZhXxhpmN4buHA=;
 b=LTYqFwbDbUvQVom45iUX/3h9UQYUibeNivQTDmIbk62mZZZODiH03RThJUs98C77ow
 8yLAqJ954DdCxTlIS/L1XBlGOp3i6BVlMiuInbE9i2trO6LnJd2Dp25ir+hpzcflKWuD
 qJytmSlex0kGM301VUSlzy45b4zYiH7D7ovMojRIRsUAGxsj6ziB5xHcNKRkX5hnXnWo
 HSBm7tnQ76yw2mKr/uaItCMHCPSFIP1rR1HHld3dDU0ySMZK1UciOm2lzS+WH6DLrJOT
 m4adOb8EGyGS9SDUgeEkm2pTVESMf5YOhuGzioob59ZFboIxs9tIr+NIeCE2RC7DkQ2T
 X4bA==
X-Gm-Message-State: AOAM532/XNEOWvVb2OLSh1gZkk/MGHZeW5nrWDCUDHSfifgg7vIsclsI
 MIFvo9qLZ12tw0oDx6ycFftBQP02445baXce14c=
X-Google-Smtp-Source: ABdhPJxQ/ctDBqtFrWZiAb6a5E5zZSvNln33fiDTOMOoYg7pUqsRD9CM0Hwq8khxERaFai1PpbpDFPxvKaKKLdbhPUw=
X-Received: by 2002:a67:878a:: with SMTP id j132mr2553712vsd.18.1622814447786; 
 Fri, 04 Jun 2021 06:47:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210516171432.1734268-1-emil.l.velikov@gmail.com>
 <YKKmsbvTZBwCUiRu@intel.com>
 <CACvgo53H7GAjN_aFsCBOw+xtVbjcbR1q-U3vdgjT1KUPKoMkkg@mail.gmail.com>
 <YKOiN1EFXz7TfYyV@intel.com>
 <CACvgo52f_8XzkKpzAsgQ-E4VHn9md+rZVbTau5H40PPRVa4SdQ@mail.gmail.com>
In-Reply-To: <CACvgo52f_8XzkKpzAsgQ-E4VHn9md+rZVbTau5H40PPRVa4SdQ@mail.gmail.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Fri, 4 Jun 2021 14:47:16 +0100
Message-ID: <CACvgo53nKn0nKL195FEJ6gRyTyA_23QnLnP-awPXOtv4DwDyiQ@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: only disable default vga device
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 kernel@collabora.com, ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyNiBNYXkgMjAyMSBhdCAxNzoyMSwgRW1pbCBWZWxpa292IDxlbWlsLmwudmVsaWtv
dkBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gSGkgVmlsbGUsCj4KPiBPbiBUdWUsIDE4IE1heSAyMDIx
IGF0IDEyOjE3LCBWaWxsZSBTeXJqw6Rsw6QKPiA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+IHdyb3RlOgo+ID4KPiA+IE9uIFR1ZSwgTWF5IDE4LCAyMDIxIGF0IDEyOjA5OjU2UE0gKzAx
MDAsIEVtaWwgVmVsaWtvdiB3cm90ZToKPiA+ID4gSGkgVmlsbGUsCj4gPiA+Cj4gPiA+IE9uIE1v
biwgMTcgTWF5IDIwMjEgYXQgMTg6MjQsIFZpbGxlIFN5cmrDpGzDpAo+ID4gPiA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gT24gU3VuLCBNYXkg
MTYsIDIwMjEgYXQgMDY6MTQ6MzJQTSArMDEwMCwgRW1pbCBWZWxpa292IHdyb3RlOgo+ID4gPiA+
ID4gRnJvbTogVml2ZWsgRGFzIE1vaGFwYXRyYSA8dml2ZWtAY29sbGFib3JhLmNvbT4KPiA+ID4g
PiA+Cj4gPiA+ID4gPiBUaGlzIHBhdGNoIGlzIHRvIGRvIHdpdGggc2VhbWxlc3MgaGFuZG92ZXIs
IGVnIHdoZW4gdGhlIHNlcXVlbmNlIGlzCj4gPiA+ID4gPiBib290bG9hZGVyIOKGkiBwbHltb3V0
aCDihpIgZGVza3RvcC4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBJdCBzd2l0Y2hlcyB0aGUgdmdhIGFy
Yml0ZXIgZnJvbSB0aGUgIm90aGVyIiBHUFUgdG8gdGhlIGRlZmF1bHQgb25lCj4gPiA+ID4gPiAo
aW50ZWwgaW4gdGhpcyBjYXNlKSwgc28gdGhlIGRyaXZlciBjYW4gaXNzdWUgc29tZSBpbygpLgo+
ID4gPiA+Cj4gPiA+ID4gSSBkb24ndCB1bmRlcnN0YW5kIHdoYXQgdGhpcyBjb21taXQgbWVzc2Fn
ZSBpcyB0cnlpbmcgdG8gc2F5Lgo+ID4gPiA+Cj4gPiA+IEJ1bmNoIG9mIGNvbnRleHQgaXMgbG9z
dCBkdWUgdG8gdGhlIHBhdGNoIGFnZSwgc28gSSdtIG5vdCAxMDAlIHN1cmUgb2YKPiA+ID4gdGhl
IGFjdHVhbCBoYXJkd2FyZSBzZXR1cCB3aGVyZSB0aGlzIG9jY3Vycy4KPiA+ID4gRG9lcyB0aGUg
Zm9sbG93aW5nIG1ha2Ugc2Vuc2U/Cj4gPiA+Cj4gPiA+IEN1cnJlbnRseSBvbiBkdWFsIEdQVSBz
eXN0ZW1zLCB3ZSBkbyBub3QgZ2V0IHNlYW1sZXNzIGhhbmRvdmVyIGFzIHRoZQo+ID4gPiBvdXRw
dXQgZmxpY2tlcnMgZHVyaW5nIHRoZSB0cmFuc2l0aW9uIGJvb3Rsb2FkZXIgLT4gcGx5bW91dGgg
LT4KPiA+ID4gZGVza3RvcC4KPiA+ID4gVGhpcyBoYXBwZW5zIGFzIGEgcmVzdWx0IG9mIHN3aXRj
aGluZyAodmlhIHRoZSBWR0EgYXJiaXRlcikgZnJvbSB0aGUKPiA+ID4gIm90aGVyIiBHUFUgYmFj
ayB0byB0aGUgZGVmYXVsdCBpOTE1IG9uZSBhbmQgaXNzdWluZyBpbygpIGNvbW1hbmRzLgo+ID4K
PiA+IEhtbS4gRG9lcyB0aGlzIHdvcms/Cj4gPgo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF92Z2EuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92Z2EuYwo+ID4gQEAgLTI5LDYgKzI5LDkgQEAgdm9pZCBpbnRlbF92Z2FfZGlz
YWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gPiAgICAgICAgIGk5MTVf
cmVnX3QgdmdhX3JlZyA9IGludGVsX3ZnYV9jbnRybF9yZWcoZGV2X3ByaXYpOwo+ID4gICAgICAg
ICB1OCBzcjE7Cj4gPgo+ID4gKyAgICAgICBpZiAoaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgdmdh
X3JlZykgJiBWR0FfRElTUF9ESVNBQkxFKQo+ID4gKyAgICAgICAgICAgICAgIHJldHVybjsKPiA+
ICsKPiA+ICAgICAgICAgLyogV2FFbmFibGVWR0FBY2Nlc3NUaHJvdWdoSU9Qb3J0OmN0ZyxlbGss
aWxrLHNuYixpdmIsdmx2LGhzdyAqLwo+ID4gICAgICAgICB2Z2FfZ2V0X3VuaW50ZXJydXB0aWJs
ZShwZGV2LCBWR0FfUlNSQ19MRUdBQ1lfSU8pOwo+ID4gICAgICAgICBvdXRiKFNSMDEsIFZHQV9T
Ul9JTkRFWCk7Cj4gPgo+IFdhcyBhYmxlIHRvIHJlcGxpY2F0ZSB0aGUgaXNzdWUgc29tZXdoYXQg
YW5kIHRoZSBhYm92ZSBkb2VzIGhlbHAgcXVpdGUgYSBsb3QuCj4gRmVlbCBmcmVlIHRvIGFkZCBt
eToKPiBSZXZpZXdlZC1ieTogRW1pbCBWZWxpa292IDxlbWlsLnZlbGlrb3ZAY29sbGFib3JhLmNv
bT4KPiBUZXN0ZWQtYnk6IEVtaWwgVmVsaWtvdiA8ZW1pbC52ZWxpa292QGNvbGxhYm9yYS5jb20+
Cj4KSHVtYmxlIHBva2UuCgpDYW5ub3Qgc2VlIHRoaXMgcGF0Y2ggaW4gdGhlIGRybS1taXNjIG9y
IGRybS1pbnRlbCB0cmVlcy4gSXMgdGhlcmUKYW55dGhpbmcgSSBkbyB0byBoZWxwIG1vdmUgaXQg
Zm9yd2FyZD8KClRoYW5rcwotRW1pbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
