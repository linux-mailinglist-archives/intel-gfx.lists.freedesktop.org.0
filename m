Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B21332804D
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 15:09:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 598526E5BB;
	Mon,  1 Mar 2021 14:09:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-xc30.google.com (mail-oo1-xc30.google.com
 [IPv6:2607:f8b0:4864:20::c30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6609D6E5BB
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Mar 2021 14:09:22 +0000 (UTC)
Received: by mail-oo1-xc30.google.com with SMTP id z22so3972367oop.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Mar 2021 06:09:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=YUH5EUIda5YK6DlSSkyKQ01IANDb2D8ORYQ3oKUgDRU=;
 b=JDYqqj5BCDgXUs9H8YJS+WiJEsUO/1Xz8Hm0bpPZjjOo+PArWrSvKYG8VFPofOLI4C
 Smk48dW8RZWHWsbj+LWVY9URQLhMBrlM5kldi7vwixYCk4nlIg64t3c/c6laTGNKiylk
 o4m8ppWmLC+fQjzKSI2wafX8x6RJybyT4QqWQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=YUH5EUIda5YK6DlSSkyKQ01IANDb2D8ORYQ3oKUgDRU=;
 b=Nu8/A3ocL8gVSE7E5gV8eyAAgEdN6YwMl84d+W93tO71uBcLNIRZeD5uOV4I4k2yK3
 4o0HR0HzpFBGEErVwuY6/Q27xHYqNBxDyXEaHTvDIk6xEpa1NcHTcAuWxUAJNKsqveww
 i37m0c6IUXPuJR3zuNEgSsQjZS5I4huTYNVRFSyP2W+dNCpXcU4SUBjrfXxk0AGv/kYE
 QFz8+Hl4SHx3MvlIEiyHqCgxm0L9D04Q3injl7l62zXoCSfxd8ztzP5OPjrNrOLIHCu6
 U+3VQDxZgvK7+mSLMdSWx9gc/TEvZeDucgmSoRZeX1CHjkyuNId4u3FFr9mQfKdls9rv
 0SNg==
X-Gm-Message-State: AOAM5332sig//WwgxYfaIyat24w9up0mPu3ngCu2iSYPIR6U4g/JUSEy
 Qx6wzdvOPtq9zhqtbRTuB8YSEDt3yeg7m4HQ7x2hZQ==
X-Google-Smtp-Source: ABdhPJwkM0Aff6KrgWWtKBeNRy3YzaeWNgL3B+GtsV5wTxsdWSxfooBVoV90lMA7mmrq/te6cx87TRRZycoTxwMtQLo=
X-Received: by 2002:a4a:c697:: with SMTP id m23mr12664957ooq.28.1614607761471; 
 Mon, 01 Mar 2021 06:09:21 -0800 (PST)
MIME-Version: 1.0
References: <f43311c8-a02a-1a29-a53b-88e599c92187@shipmail.org>
 <CAKMK7uE2UrOruQPWG9KPBQ781f9Bq9xpVRNserAC9BZ2VzDutQ@mail.gmail.com>
 <b30dacb0-edea-0a3c-6163-0f329e58ba61@gmail.com>
 <YDd/hlf8uM3+lxhr@phenom.ffwll.local>
 <CAKMK7uFezcV52oTZbHeve2HFFATeCGyK6zTT6nE1KVP69QRr0A@mail.gmail.com>
 <61c5c371-debe-4ca0-a067-ce306e51ef88@shipmail.org>
 <CAKMK7uFUiJyMP0E5JUzMOx=NyMW+ZObGsaFOh409x0LOvGbnzg@mail.gmail.com>
 <0d69bd00-e673-17cf-c9e3-ccbcd52649a6@shipmail.org>
 <CAKMK7uE=8+hj-MUFXHFoG_hAbz_Obi8a99+DE5_d1K+KZaG+tQ@mail.gmail.com>
 <b367b7e8-f202-4d23-d672-a5c9bc7fcec1@shipmail.org>
 <YDyuYk8x5QeX83s6@phenom.ffwll.local>
 <be8f2503-ffcb-eb58-83be-26fa0fc1837a@shipmail.org>
 <648556e6-2d99-950d-c940-706eb5a8f6cc@amd.com>
In-Reply-To: <648556e6-2d99-950d-c940-706eb5a8f6cc@amd.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 1 Mar 2021 15:09:10 +0100
Message-ID: <CAKMK7uHOe=LacUkvGC75dyWAt9TRm7ce8vgxasXOXn-6wJTVnA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Subject: Re: [Intel-gfx] [Linaro-mm-sig] [PATCH 1/2] dma-buf: Require
 VM_PFNMAP vma for mmap
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
Cc: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Matthew Wilcox <willy@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, John Stultz <john.stultz@linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBNYXIgMSwgMjAyMSBhdCAxMToxNyBBTSBDaHJpc3RpYW4gS8O2bmlnCjxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOgo+Cj4KPgo+IEFtIDAxLjAzLjIxIHVtIDEwOjIxIHNj
aHJpZWIgVGhvbWFzIEhlbGxzdHLDtm0gKEludGVsKToKPiA+Cj4gPiBPbiAzLzEvMjEgMTA6MDUg
QU0sIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPj4gT24gTW9uLCBNYXIgMDEsIDIwMjEgYXQgMDk6
Mzk6NTNBTSArMDEwMCwgVGhvbWFzIEhlbGxzdHLDtm0gKEludGVsKQo+ID4+IHdyb3RlOgo+ID4+
PiBIaSwKPiA+Pj4KPiA+Pj4gT24gMy8xLzIxIDk6MjggQU0sIERhbmllbCBWZXR0ZXIgd3JvdGU6
Cj4gPj4+PiBPbiBTYXQsIEZlYiAyNywgMjAyMSBhdCA5OjA2IEFNIFRob21hcyBIZWxsc3Ryw7Zt
IChJbnRlbCkKPiA+Pj4+IDx0aG9tYXNfb3NAc2hpcG1haWwub3JnPiB3cm90ZToKPiA+Pj4+PiBP
biAyLzI2LzIxIDI6MjggUE0sIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPj4+Pj4+IFNvIEkgdGhp
bmsgaXQgc3RvcHMgZ3VwLiBCdXQgSSBoYXZlbid0IHZlcmlmaWVkIGF0IGFsbC4gV291bGQgYmUK
PiA+Pj4+Pj4gZ29vZAo+ID4+Pj4+PiBpZiBDaHJpc3RpYW4gY2FuIGNoZWNrIHRoaXMgd2l0aCBz
b21lIGRpcmVjdCBpbyB0byBhIGJ1ZmZlciBpbgo+ID4+Pj4+PiBzeXN0ZW0KPiA+Pj4+Pj4gbWVt
b3J5Lgo+ID4+Pj4+IEhtbSwKPiA+Pj4+Pgo+ID4+Pj4+IERvY3MgKGFnYWluIHZtX25vcm1hbF9w
YWdlKCkgc2F5KQo+ID4+Pj4+Cj4gPj4+Pj4gICAgICogVk1fTUlYRURNQVAgbWFwcGluZ3MgY2Fu
IGxpa2V3aXNlIGNvbnRhaW4gbWVtb3J5IHdpdGggb3IKPiA+Pj4+PiB3aXRob3V0ICJzdHJ1Y3QK
PiA+Pj4+PiAgICAgKiBwYWdlIiBiYWNraW5nLCBob3dldmVyIHRoZSBkaWZmZXJlbmNlIGlzIHRo
YXQgX2FsbF8gcGFnZXMKPiA+Pj4+PiB3aXRoIGEgc3RydWN0Cj4gPj4+Pj4gICAgICogcGFnZSAo
dGhhdCBpcywgdGhvc2Ugd2hlcmUgcGZuX3ZhbGlkIGlzIHRydWUpIGFyZSByZWZjb3VudGVkCj4g
Pj4+Pj4gYW5kCj4gPj4+Pj4gY29uc2lkZXJlZAo+ID4+Pj4+ICAgICAqIG5vcm1hbCBwYWdlcyBi
eSB0aGUgVk0uIFRoZSBkaXNhZHZhbnRhZ2UgaXMgdGhhdCBwYWdlcyBhcmUKPiA+Pj4+PiByZWZj
b3VudGVkCj4gPj4+Pj4gICAgICogKHdoaWNoIGNhbiBiZSBzbG93ZXIgYW5kIHNpbXBseSBub3Qg
YW4gb3B0aW9uIGZvciBzb21lIFBGTk1BUAo+ID4+Pj4+IHVzZXJzKS4gVGhlCj4gPj4+Pj4gICAg
ICogYWR2YW50YWdlIGlzIHRoYXQgd2UgZG9uJ3QgaGF2ZSB0byBmb2xsb3cgdGhlIHN0cmljdAo+
ID4+Pj4+IGxpbmVhcml0eSBydWxlIG9mCj4gPj4+Pj4gICAgICogUEZOTUFQIG1hcHBpbmdzIGlu
IG9yZGVyIHRvIHN1cHBvcnQgQ09XYWJsZSBtYXBwaW5ncy4KPiA+Pj4+Pgo+ID4+Pj4+IGJ1dCBp
dCdzIHRydWUgX192bV9pbnNlcnRfbWl4ZWQoKSBlbmRzIHVwIGluIHRoZSBpbnNlcnRfcGZuKCkK
PiA+Pj4+PiBwYXRoLCBzbwo+ID4+Pj4+IHRoZSBhYm92ZSBpc24ndCByZWFsbHkgdHJ1ZSwgd2hp
Y2ggbWFrZXMgbWUgd29uZGVyIGlmIGFuZCBpbiB0aGF0Cj4gPj4+Pj4gY2FzZQo+ID4+Pj4+IHdo
eSB0aGVyZSBjb3VsZCBhbnkgbG9uZ2VyIGV2ZXIgYmUgYSBzaWduaWZpY2FudCBwZXJmb3JtYW5j
ZQo+ID4+Pj4+IGRpZmZlcmVuY2UKPiA+Pj4+PiBiZXR3ZWVuIE1JWEVETUFQIGFuZCBQRk5NQVAu
Cj4gPj4+PiBZZWFoIGl0J3MgZGVmaW5pdGVseSBjb25mdXNpbmcuIEkgZ3Vlc3MgSSdsbCBoYWNr
IHVwIGEgcGF0Y2ggYW5kIHNlZQo+ID4+Pj4gd2hhdCBzdGlja3MuCj4gPj4+Pgo+ID4+Pj4+IEJU
VyByZWdhcmRpbmcgdGhlIFRUTSBodWdlcHRlcywgSSBkb24ndCB0aGluayB3ZSBldmVyIGxhbmRl
ZCB0aGF0Cj4gPj4+Pj4gZGV2bWFwCj4gPj4+Pj4gaGFjaywgc28gdGhleSBhcmUgKGZvciB0aGUg
bm9uLWd1cCBjYXNlKSByZWx5aW5nIG9uCj4gPj4+Pj4gdm1hX2lzX3NwZWNpYWxfaHVnZSgpLiBG
b3IgdGhlIGd1cCBjYXNlLCBJIHRoaW5rIHRoZSBidWcgaXMgc3RpbGwKPiA+Pj4+PiB0aGVyZS4K
PiA+Pj4+IE1heWJlIHRoZXJlJ3MgYW5vdGhlciBkZXZtYXAgaGFjaywgYnV0IHRoZSB0dG1fdm1f
aW5zZXJ0IGZ1bmN0aW9ucyBkbwo+ID4+Pj4gdXNlIFBGTl9ERVYgYW5kIGFsbCB0aGF0LiBBbmQg
SSB0aGluayB0aGF0IHN0b3BzIGd1cF9mYXN0IGZyb20gdHJ5aW5nCj4gPj4+PiB0byBmaW5kIHRo
ZSB1bmRlcmx5aW5nIHBhZ2UuCj4gPj4+PiAtRGFuaWVsCj4gPj4+IEhtbSBwZXJoYXBzIGl0IG1p
Z2h0LCBidXQgSSBkb24ndCB0aGluayBzby4gVGhlIGZpeCBJIHRyaWVkIG91dCB3YXMKPiA+Pj4g
dG8gc2V0Cj4gPj4+Cj4gPj4+IFBGTl9ERVYgfCBQRk5fTUFQIGZvciBodWdlIFBURXMgd2hpY2gg
Y2F1c2VzIHBmbl9kZXZtYXAoKSB0byBiZQo+ID4+PiB0cnVlLCBhbmQKPiA+Pj4gdGhlbgo+ID4+
Pgo+ID4+PiBmb2xsb3dfZGV2bWFwX3BtZCgpLT5nZXRfZGV2X3BhZ2VtYXAoKSB3aGljaCByZXR1
cm5zIE5VTEwgYW5kCj4gPj4+IGd1cF9mYXN0KCkKPiA+Pj4gYmFja3Mgb2ZmLAo+ID4+Pgo+ID4+
PiBpbiB0aGUgZW5kIHRoYXQgd291bGQgbWVhbiBzZXR0aW5nIGluIHN0b25lIHRoYXQgImlmIHRo
ZXJlIGlzIGEgaHVnZQo+ID4+PiBkZXZtYXAKPiA+Pj4gcGFnZSB0YWJsZSBlbnRyeSBmb3Igd2hp
Y2ggd2UgaGF2ZW4ndCByZWdpc3RlcmVkIGFueSBkZXZtYXAgc3RydWN0Cj4gPj4+IHBhZ2VzCj4g
Pj4+IChnZXRfZGV2X3BhZ2VtYXAgcmV0dXJucyBOVUxMKSwgd2Ugc2hvdWxkIHRyZWF0IHRoYXQg
YXMgYSAic3BlY2lhbCIKPiA+Pj4gaHVnZQo+ID4+PiBwYWdlIHRhYmxlIGVudHJ5Ii4KPiA+Pj4K
PiA+Pj4gIEZyb20gd2hhdCBJIGNhbiB0ZWxsLCBhbGwgY29kZSBjYWxsaW5nIGdldF9kZXZfcGFn
ZW1hcCgpIGFscmVhZHkKPiA+Pj4gZG9lcyB0aGF0LAo+ID4+PiBpdCdzIGp1c3QgYSBxdWVzdGlv
biBvZiBnZXR0aW5nIGl0IGFjY2VwdGVkIGFuZCBmb3JtYWxpemluZyBpdC4KPiA+PiBPaCBJIHRo
b3VnaHQgdGhhdCdzIGFscmVhZHkgaG93IGl0IHdvcmtzLCBzaW5jZSBJIGRpZG4ndCBzcG90IGFu
eXRoaW5nCj4gPj4gZWxzZSB0aGF0IHdvdWxkIGJsb2NrIGd1cF9mYXN0IGZyb20gZmFsbGluZyBv
dmVyLiBJIGd1ZXNzIHJlYWxseSB3b3VsZAo+ID4+IG5lZWQgc29tZSB0ZXN0Y2FzZXMgdG8gbWFr
ZSBzdXJlIGRpcmVjdCBpL28gKHRoYXQncyB0aGUgZWFzaWVzdCB0byB0ZXN0KQo+ID4+IGZhaWxz
IGxpa2Ugd2UgZXhwZWN0Lgo+ID4KPiA+IFllYWgsIElJUkMgdGhlICJ8IFBGTl9NQVAiIGlzIHRo
ZSBtaXNzaW5nIHBpZWNlIGZvciBUVE0gaHVnZSBwdGVzLgo+ID4gT3RoZXJ3aXNlIHBtZF9kZXZt
YXAoKSB3aWxsIG5vdCByZXR1cm4gdHJ1ZSBhbmQgc2luY2UgdGhlcmUgaXMgbm8KPiA+IHBtZF9z
cGVjaWFsKCkgdGhpbmdzIGJyZWFrLgo+Cj4gSXMgdGhhdCBtYXliZSB0aGUgaXNzdWUgd2UgaGF2
ZSBzZWVuIHdpdGggYW1kZ3B1IGFuZCBodWdlIHBhZ2VzPwoKWWVhaCwgZXNzZW50aWFsbHkgd2hl
biB5b3UgaGF2ZSBhIGh1Z2VwdGUgaW5zZXJ0ZWQgYnkgdHRtLCBhbmQgaXQKaGFwcGVucyB0byBw
b2ludCBhdCBzeXN0ZW0gbWVtb3J5LCB0aGVuIGd1cCB3aWxsIHdvcmsgb24gdGhhdC4gQW5kCmNy
ZWF0ZSBhbGwga2luZHMgb2YgaGF2b2MuCgo+IEFwYXJ0IGZyb20gdGhhdCBJJ20gbG9zdCBndXlz
LCB0aGF0IGRldm1hcCBhbmQgZ3VwIHN0dWZmIGlzIG5vdAo+IHNvbWV0aGluZyBJIGhhdmUgYSBn
b29kIGtub3dsZWRnZSBvZiBhcGFydCBmcm9tIGEgb25lIG1pbGUgaGlnaCB2aWV3LgoKSSdtIG5v
dCByZWFsbHkgYmV0dGVyLCBoZW5jZSB3b3VsZCBiZSBnb29kIHRvIGRvIGEgdGVzdGNhc2UgYW5k
IHNlZS4KVGhpcyBzaG91bGQgcHJvdm9rZSBpdDoKLSBhbGxvY2F0ZSBuaWNlbHkgYWxpZ25lZCBi
byBpbiBzeXN0ZW0gbWVtb3J5Ci0gbW1hcCwgYWdhaW4gbmljZWx5IGFsaWduZWQgdG8gMk0KLSBk
byBzb21lIGRpcmVjdCBpbyBmcm9tIGEgZmlsZXN5c3RlbSBpbnRvIHRoYXQgbW1hcCwgdGhhdCBz
aG91bGQgdHJpZ2dlciBndXAKLSBiZWZvcmUgdGhlIGd1cCBjb21wbGV0ZXMgZnJlZSB0aGUgbW1h
cCBhbmQgYm8gc28gdGhhdCB0dG0gcmVjeWNsZXMKdGhlIHBhZ2VzLCB3aGljaCBzaG91bGQgdHJp
cCB1cCBvbiB0aGUgZWxldmF0ZWQgcmVmY291bnQuIElmIHlvdSB3YWl0CnVudGlsIHRoZSBkaXJl
Y3QgaW8gaXMgY29tcGxldGVseSwgdGhlbiBJIHRoaW5rIG5vdGhpbmcgYmFkIGNhbiBiZQpvYnNl
cnZlZC4KCk9mYyBpZiB5b3VyIGFtZGdwdStodWdlcHRlIGlzc3VlIGlzIHNvbWV0aGluZyBlbHNl
LCB0aGVuIG1heWJlIHdlIGhhdmUKYW5vdGhlciBpc3N1ZS4KCkFsc28gdXN1YWwgY2F2ZWF0OiBJ
J20gbm90IGFuIG1tIGhhY2tlciBlaXRoZXIsIHNvIG1pZ2h0IGJlIGNvbXBsZXRlbHkgd3Jvbmcu
Ci1EYW5pZWwKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBv
cmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
