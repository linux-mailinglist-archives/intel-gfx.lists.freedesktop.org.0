Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24FE56EAB3
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 20:34:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C2086E84B;
	Fri, 19 Jul 2019 18:34:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com
 [IPv6:2607:f8b0:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E555A6E85F
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 18:34:02 +0000 (UTC)
Received: by mail-ot1-x344.google.com with SMTP id l15so33739724otn.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 11:34:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xnh3NWcEf+vLvt5o61A/WFHETNCgbXvkL8VuDH3sM10=;
 b=kb+G4MAkzbgASEDW9Ff6NDzP0IjNIz2m+pQVWB4DQ3PIWOTX6g9Uehr5z7rWZDp1Ih
 p2YD2st2If/DwRBLRjrAa97LNjm1If5R9Vw4x1/g87tQA94ITwBEacFvqh8xlzv/xysn
 chq0qvFGjlwgytqn4sBaMp1PK5YYOfS5w5dGMQkkQtlEsUxz1wrPreXYgySUNzEjjWC0
 trII2FSOkGAul+giHCQgrIx6M2jCZ5+MSK6zRiuOJaZwqp4kU90R81CdwNOPHOvIzRgS
 MsL8A+25DBkXgVgDobD3SPGeBdCW0OP7fw7MoqL/ta+NAu8AuXLxZDZ+a5NA0ZR/K1/v
 r0/g==
X-Gm-Message-State: APjAAAWP1DfqdZkt0KLX+wPpuq1SdPwNlINyt8Oo6N4cx/jqXuFVxQkv
 k2+IHumyWVa4lL8SJZUBjk2N3twvbz8FxLuOnKU=
X-Google-Smtp-Source: APXvYqyBPZjQXxC3m/vK0nFSiFQgajqNBX8JAz54ZixxpNse7DYAFguSDJvysolvU1d+sAjJ9OFH26J8PLfu5nVuFTg=
X-Received: by 2002:a05:6830:ce:: with SMTP id
 x14mr21573638oto.188.1563561242015; 
 Fri, 19 Jul 2019 11:34:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190719152314.7706-1-daniel.vetter@ffwll.ch>
 <20190719170654.GQ5942@intel.com>
In-Reply-To: <20190719170654.GQ5942@intel.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 19 Jul 2019 20:33:49 +0200
Message-ID: <CAKMK7uFmF7sMoJj=1C+70nyd5rMoan20hAGb2gtY4o0D8Y4cOQ@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=xnh3NWcEf+vLvt5o61A/WFHETNCgbXvkL8VuDH3sM10=;
 b=NQksJSFkPeLrpXgobFN6Y6LfzRxsk+pbbOjVllkJp+TkZLGu6nn4liFkRAIk6nQub9
 d/vHBMHGshgFMro8p6UWJwepuotaT+2OKnmVwrGfy6Zs7gUrLY1HbfWVb6CLU14N/uvp
 Q8lWlbvT1ajUgGC86HGGx8gCuq1pC5MWDQ9zU=
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/vblank: Document and fix vblank
 count barrier semantics
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdWwgMTksIDIwMTkgYXQgNzowNiBQTSBWaWxsZSBTeXJqw6Rsw6QKPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPiB3cm90ZToKPgo+IE9uIEZyaSwgSnVsIDE5LCAyMDE5IGF0
IDA1OjIzOjEyUE0gKzAyMDAsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPiBOb3RpY2VkIHdoaWxl
IHJldmlld2luZyBjb2RlLiBJJ20gbm90IHN1cmUgd2hldGhlciB0aGlzIG1pZ2h0IG9yIG1pZ2h0
Cj4gPiBub3QgZXhwbGFpbiBzb21lIG9mIHRoZSBtaXNzZWQgdmJsYW5rIGhpbGFyaXR5IHdlJ3Zl
IGJlZW4gc2VlaW5nLiBJCj4gPiB0aGluayB0aG9zZSBhbGwgZ28gdGhyb3VnaCB0aGUgdmJsYW5r
IGNvbXBsZXRpb24gZXZlbnQsIHdoaWNoIGhhcwo+ID4gdW5jb25kaXRpb25hbCBiYXJyaWVycyAt
IGl0IGFsd2F5cyB0YWtlcyB0aGUgc3BpbmxvY2suIFRoZXJlZm9yZSBubwo+ID4gY2Mgc3RhYmxl
Lgo+ID4KPiA+IHYyOgo+ID4gLSBCYXJycmllcnMgYXJlIGhhcmQsIHB1dCB0aGVtIGluIGluIHRo
ZSByaWdodCBvcmRlciAoQ2hyaXMpLgo+ID4gLSBJbXByb3ZlIHRoZSBjb21tZW50cyBhIGJpdC4K
PiA+Cj4gPiBDYzogUm9kcmlnbyBTaXF1ZWlyYSA8cm9kcmlnb3NpcXVlaXJhbWVsb0BnbWFpbC5j
b20+Cj4gPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPiA+
IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fdmJsYW5rLmMgfCAzOCArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKy0KPiA+ICBpbmNsdWRlL2RybS9kcm1fdmJsYW5rLmggICAg
IHwgMTMgKysrKysrKysrKystCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA0OSBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJt
X3ZibGFuay5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV92YmxhbmsuYwo+ID4gaW5kZXggNjAzYWIx
MDUxMjVkLi5lYjJhODMwNDUzNmMgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJt
X3ZibGFuay5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3ZibGFuay5jCj4gPiBAQCAt
Mjk1LDExICsyOTUsMjMgQEAgc3RhdGljIHZvaWQgZHJtX3VwZGF0ZV92YmxhbmtfY291bnQoc3Ry
dWN0IGRybV9kZXZpY2UgKmRldiwgdW5zaWduZWQgaW50IHBpcGUsCj4gPiAgc3RhdGljIHU2NCBk
cm1fdmJsYW5rX2NvdW50KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHVuc2lnbmVkIGludCBwaXBl
KQo+ID4gIHsKPiA+ICAgICAgIHN0cnVjdCBkcm1fdmJsYW5rX2NydGMgKnZibGFuayA9ICZkZXYt
PnZibGFua1twaXBlXTsKPiA+ICsgICAgIHU2NCBjb3VudDsKPiA+Cj4gPiAgICAgICBpZiAoV0FS
Tl9PTihwaXBlID49IGRldi0+bnVtX2NydGNzKSkKPiA+ICAgICAgICAgICAgICAgcmV0dXJuIDA7
Cj4gPgo+ID4gLSAgICAgcmV0dXJuIHZibGFuay0+Y291bnQ7Cj4gPiArICAgICBjb3VudCA9IHZi
bGFuay0+Y291bnQ7Cj4KPiBIbW0uIFRoaXMgaXMgbm93IGEgNjRiaXQgcXVhbnRpdHksIHdoaWNo
IG1lYW5zIG9uIDMyYml0IHRoZSBsb2FkL3N0b3JlCj4gd29uJ3QgYmUgYXRvbWljLiBUaGF0IGRv
ZXNuJ3Qgc2VlbSBwYXJ0aWN1bGFybHkgZ3JlYXQuCgpIbSAuLi4gc28gcmVhZC1zaWRlIHNlcW5v
IGhlcmU/IEF0IGxlYXN0IGZvciAzMmJpdCwgYnV0IG5vdCBzdXJlCnRoYXQncyB3b3J0aCBpdCwg
cHJvYmFibHkgc2ltcGxlciB0byBqdXN0IGRvIGl0IHVuY29uZGl0aW9uYWxseS4gT3RvaAouLi4g
ZG8gd2UgY2FyZT8gVGhpcyBtYXR0ZXJzIGxpa2Ugb25jZSBldmVyeSBldmVyeSB5ZWFyIGF0IDEy
MEh6IC4uLgotRGFuaWVsCgo+Cj4gPiArCj4gPiArICAgICAvKgo+ID4gKyAgICAgICogVGhpcyBy
ZWFkIGJhcnJpZXIgY29ycmVzcG9uZHMgdG8gdGhlIGltcGxpY2l0IHdyaXRlIGJhcnJpZXIgb2Yg
dGhlCj4gPiArICAgICAgKiB3cml0ZSBzZXFsb2NrIGluIHN0b3JlX3ZibGFuaygpLiBOb3RlIHRo
YXQgdGhpcyBpcyB0aGUgb25seSBwbGFjZQo+ID4gKyAgICAgICogd2hlcmUgd2UgbmVlZCBhbiBl
eHBsaWNpdCBiYXJyaWVyLCBzaW5jZSBhbGwgb3RoZXIgYWNjZXNzIGdvZXMKPiA+ICsgICAgICAq
IHRocm91Z2ggZHJtX3ZibGFua19jb3VudF9hbmRfdGltZSgpLCB3aGljaCBhbHJlYWR5IGhhcyB0
aGUgcmVxdWlyZWQKPiA+ICsgICAgICAqIHJlYWQgYmFycmllciBjdXJ0ZXN5IG9mIHRoZSByZWFk
IHNlcWxvY2suCj4gPiArICAgICAgKi8KPiA+ICsgICAgIHNtcF9ybWIoKTsKPiA+ICsKPiA+ICsg
ICAgIHJldHVybiBjb3VudDsKPiA+ICB9Cj4gPgo+ID4gIC8qKgo+Cj4gLS0KPiBWaWxsZSBTeXJq
w6Rsw6QKPiBJbnRlbAoKCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50
ZWwgQ29ycG9yYXRpb24KKzQxICgwKSA3OSAzNjUgNTcgNDggLSBodHRwOi8vYmxvZy5mZndsbC5j
aApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
