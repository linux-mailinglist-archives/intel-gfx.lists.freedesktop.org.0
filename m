Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 393F5391CE6
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 18:21:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AFF06EDC2;
	Wed, 26 May 2021 16:21:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x934.google.com (mail-ua1-x934.google.com
 [IPv6:2607:f8b0:4864:20::934])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D0D26EDBF;
 Wed, 26 May 2021 16:21:33 +0000 (UTC)
Received: by mail-ua1-x934.google.com with SMTP id d14so1092420ual.5;
 Wed, 26 May 2021 09:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=TyjCiPAhnrbf2fMWsVTrk+vNWjZDmn66jkggQRHDV8c=;
 b=gNsx/PovsvIHJh6zP3RNNianCSGTUaAHeSnG+PhW5IPBoI55ICu+xSz20fgt94lT5y
 VsjFnMVaaN1ObOjcJt2Z6wOP0CKmwHl+a8xqzA3lX2kvEF7EqKy9xy7SV7LhNyBcMuVN
 z19i+t1ILqT8YPRIk6wJWcOWjNxuvHwsZOZsx+6Ys8RN2D7mL6tvXAsqYMDK9VN6dLZB
 0UkDSkB7YNnmHluph8O8zHG6CYHbyYjNmaJdAoqoJFgagdMhz8LLLROl8CD/cHumePnV
 K7ScuFvZZ2eW8b0DCdQANzHstXq05H+NqpsEWGE/uMgTtDJMbtzh/O/PWfvw/GGtfdvV
 62yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=TyjCiPAhnrbf2fMWsVTrk+vNWjZDmn66jkggQRHDV8c=;
 b=GZKBXpXNHW57YNdDjrB7NvdUJz8tDcpWi8DVrneLOq8f0xHzzW6YvlXyWTJLd6F73t
 WgEdDxfiRpEy2PokMQPhy/skJK/z9P/sP94Li+ch5LDuc2QXt6TMjYa89PXF1fXOmQvD
 QUUDYLRURSI6crTvxNrk/G6bq4bPAkc/2NxEvEbhk9vh8hthSIGqeTqHXThRmaEMNI/V
 qVWfXGmMv79JWrcSmbryWzjmkmrxGb+UpOqko2xaFW4+uCCxAAmlU4mvbH78Kj6J4NPU
 kcPODUree+bbLHw/NHTgFZsh1gg2RwLwJza7Ree+V8RcBwCZU4Q30IGwcgRqn7LAV7sg
 8/aw==
X-Gm-Message-State: AOAM5327oHavNxj6lY/J58okacXX5UDNC3a4R6dKBOhXj51LKUUO7Tq+
 qjXc9oG9GoLNMnwU/IHQbZFFLEtW/zP8cFSMNoA=
X-Google-Smtp-Source: ABdhPJxkFIJHD5G+sHKDDZhetQ7golkfaXMDUXrac4w6e5h1b2229x+b1/izFo1mNEU6RW8ztIANhysBmulXZm1TYlA=
X-Received: by 2002:a1f:b488:: with SMTP id d130mr31749720vkf.17.1622046092243; 
 Wed, 26 May 2021 09:21:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210516171432.1734268-1-emil.l.velikov@gmail.com>
 <YKKmsbvTZBwCUiRu@intel.com>
 <CACvgo53H7GAjN_aFsCBOw+xtVbjcbR1q-U3vdgjT1KUPKoMkkg@mail.gmail.com>
 <YKOiN1EFXz7TfYyV@intel.com>
In-Reply-To: <YKOiN1EFXz7TfYyV@intel.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Wed, 26 May 2021 17:21:20 +0100
Message-ID: <CACvgo52f_8XzkKpzAsgQ-E4VHn9md+rZVbTau5H40PPRVa4SdQ@mail.gmail.com>
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

SGkgVmlsbGUsCgpPbiBUdWUsIDE4IE1heSAyMDIxIGF0IDEyOjE3LCBWaWxsZSBTeXJqw6Rsw6QK
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPiB3cm90ZToKPgo+IE9uIFR1ZSwgTWF5IDE4
LCAyMDIxIGF0IDEyOjA5OjU2UE0gKzAxMDAsIEVtaWwgVmVsaWtvdiB3cm90ZToKPiA+IEhpIFZp
bGxlLAo+ID4KPiA+IE9uIE1vbiwgMTcgTWF5IDIwMjEgYXQgMTg6MjQsIFZpbGxlIFN5cmrDpGzD
pAo+ID4gPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4g
T24gU3VuLCBNYXkgMTYsIDIwMjEgYXQgMDY6MTQ6MzJQTSArMDEwMCwgRW1pbCBWZWxpa292IHdy
b3RlOgo+ID4gPiA+IEZyb206IFZpdmVrIERhcyBNb2hhcGF0cmEgPHZpdmVrQGNvbGxhYm9yYS5j
b20+Cj4gPiA+ID4KPiA+ID4gPiBUaGlzIHBhdGNoIGlzIHRvIGRvIHdpdGggc2VhbWxlc3MgaGFu
ZG92ZXIsIGVnIHdoZW4gdGhlIHNlcXVlbmNlIGlzCj4gPiA+ID4gYm9vdGxvYWRlciDihpIgcGx5
bW91dGgg4oaSIGRlc2t0b3AuCj4gPiA+ID4KPiA+ID4gPiBJdCBzd2l0Y2hlcyB0aGUgdmdhIGFy
Yml0ZXIgZnJvbSB0aGUgIm90aGVyIiBHUFUgdG8gdGhlIGRlZmF1bHQgb25lCj4gPiA+ID4gKGlu
dGVsIGluIHRoaXMgY2FzZSksIHNvIHRoZSBkcml2ZXIgY2FuIGlzc3VlIHNvbWUgaW8oKS4KPiA+
ID4KPiA+ID4gSSBkb24ndCB1bmRlcnN0YW5kIHdoYXQgdGhpcyBjb21taXQgbWVzc2FnZSBpcyB0
cnlpbmcgdG8gc2F5Lgo+ID4gPgo+ID4gQnVuY2ggb2YgY29udGV4dCBpcyBsb3N0IGR1ZSB0byB0
aGUgcGF0Y2ggYWdlLCBzbyBJJ20gbm90IDEwMCUgc3VyZSBvZgo+ID4gdGhlIGFjdHVhbCBoYXJk
d2FyZSBzZXR1cCB3aGVyZSB0aGlzIG9jY3Vycy4KPiA+IERvZXMgdGhlIGZvbGxvd2luZyBtYWtl
IHNlbnNlPwo+ID4KPiA+IEN1cnJlbnRseSBvbiBkdWFsIEdQVSBzeXN0ZW1zLCB3ZSBkbyBub3Qg
Z2V0IHNlYW1sZXNzIGhhbmRvdmVyIGFzIHRoZQo+ID4gb3V0cHV0IGZsaWNrZXJzIGR1cmluZyB0
aGUgdHJhbnNpdGlvbiBib290bG9hZGVyIC0+IHBseW1vdXRoIC0+Cj4gPiBkZXNrdG9wLgo+ID4g
VGhpcyBoYXBwZW5zIGFzIGEgcmVzdWx0IG9mIHN3aXRjaGluZyAodmlhIHRoZSBWR0EgYXJiaXRl
cikgZnJvbSB0aGUKPiA+ICJvdGhlciIgR1BVIGJhY2sgdG8gdGhlIGRlZmF1bHQgaTkxNSBvbmUg
YW5kIGlzc3VpbmcgaW8oKSBjb21tYW5kcy4KPgo+IEhtbS4gRG9lcyB0aGlzIHdvcms/Cj4KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZnYS5jCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Z2EuYwo+IEBAIC0yOSw2ICsyOSw5IEBA
IHZvaWQgaW50ZWxfdmdhX2Rpc2FibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQo+ICAgICAgICAgaTkxNV9yZWdfdCB2Z2FfcmVnID0gaW50ZWxfdmdhX2NudHJsX3JlZyhkZXZf
cHJpdik7Cj4gICAgICAgICB1OCBzcjE7Cj4KPiArICAgICAgIGlmIChpbnRlbF9kZV9yZWFkKGRl
dl9wcml2LCB2Z2FfcmVnKSAmIFZHQV9ESVNQX0RJU0FCTEUpCj4gKyAgICAgICAgICAgICAgIHJl
dHVybjsKPiArCj4gICAgICAgICAvKiBXYUVuYWJsZVZHQUFjY2Vzc1Rocm91Z2hJT1BvcnQ6Y3Rn
LGVsayxpbGssc25iLGl2Yix2bHYsaHN3ICovCj4gICAgICAgICB2Z2FfZ2V0X3VuaW50ZXJydXB0
aWJsZShwZGV2LCBWR0FfUlNSQ19MRUdBQ1lfSU8pOwo+ICAgICAgICAgb3V0YihTUjAxLCBWR0Ff
U1JfSU5ERVgpOwo+CldhcyBhYmxlIHRvIHJlcGxpY2F0ZSB0aGUgaXNzdWUgc29tZXdoYXQgYW5k
IHRoZSBhYm92ZSBkb2VzIGhlbHAgcXVpdGUgYSBsb3QuCkZlZWwgZnJlZSB0byBhZGQgbXk6ClJl
dmlld2VkLWJ5OiBFbWlsIFZlbGlrb3YgPGVtaWwudmVsaWtvdkBjb2xsYWJvcmEuY29tPgpUZXN0
ZWQtYnk6IEVtaWwgVmVsaWtvdiA8ZW1pbC52ZWxpa292QGNvbGxhYm9yYS5jb20+CgpBbHNvIGZl
ZWwgZnJlZSB0byByZXVzZSBhcyBtdWNoL2xpdHRsZSBvZiB0aGUgZm9sbG93aW5nIHNldHVwIGRl
dGFpbHMuCgpUbyByZXByb2R1Y2UgdGhlIGlzc3VlOgoKR2V0IGEgZHVhbCBHUFUgc3lzdGVtIC0g
SW50ZWwrTnZpZGlhIGluIG15IGNhc2UuIFNldCB0aGUgb3RoZXIKKE52aWRpYSkgYXMgZGVmYXVs
dCBpbiBVRUZJIGFuZCBjb25uZWN0IG1vbml0b3JzIHRvIGl0LgpFbnN1cmUgdGhlIGJvb3Rsb2Fk
ZXIgKGFuZCBpZiB1c2luZyBzcGxhc2ggbWFuYWdlciBsaWtlIHBseW1vdXRoKSBhcmUKc2V0IHRv
IGRpc3BsYXkgdGhlIFVFRkkgQkdSVC4gUGVyc29uYWxseSBJIHRlc3RlZCBzeXN0ZW1kLWJvb3Qs
CmFsdGhvdWdoIEdSVUIgc2hvdWxkIGFsc28gd29yay4gSSBjb3VsZG4ndCBnZXQgcGx5bW91dGgg
dG8gd29yay9iZWhhdmUKaGVyZSA6c2hydWc6CgpOb3RlOiBIYXZpbmcgdGhlIE52aWRpYSBkcml2
ZXJzIGluIHRoZSBpbml0cmFtZnMgY2FuIGxlYWQgdG8gZXh0cmEKZmxpY2tlciBzbyBsZWF2ZSB0
aGVtIG91dC4gSW5jbHVkZSB0aGUgaTkxNSBkcml2ZXJzIGluIGluaXRyYW1mcy4KCldpdGhvdXQg
dGhlIHBhdGNoLCB0aGUgZXhpc3RpbmcgYm9vdHNsYXNoIGlzIHdpcGVkIGNsZWFuIGFsbW9zdApp
bnN0YW50YW5lb3VzbHkgYXMgdGhlIGk5MTUgZHJpdmVyIGNhbGxzIGludGVsX3ZnYV9kaXNhYmxl
KCkuCldpdGggeW91ciBwYXRjaCB0aGUgY2FsbCBpcyBhIG5vLW9wLCBhbmQgdGhlIGJvb3RzcGxh
c2ggc3RheXMgYXJvdW5kCnVudGlsIHRoZSBsb2dpbiBtYW5hZ2VyIChhbmQgWCkgaXMgc3Bhd25l
ZC4KCkhUSApFbWlsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
