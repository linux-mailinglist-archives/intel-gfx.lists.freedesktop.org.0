Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E0D3C7796
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 21:59:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 641BE892FB;
	Tue, 13 Jul 2021 19:59:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com
 [IPv6:2607:f8b0:4864:20::229])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E03B892FB
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 19:59:29 +0000 (UTC)
Received: by mail-oi1-x229.google.com with SMTP id t143so10739342oie.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 12:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=xnQQUXc3QMGZAz8RD89dQUszF69iaN4BV55ilY+w0jw=;
 b=Hby+7cPnaRos0wbhI1gC0V3k/Lk5NljyIb3hHXs6gjvazDu81hEtlnv0YZr4b4SWjT
 un2oVRUTl89CKhW0dKwOmlu3gInGtcaINyWcXZJQ/80lJpYDIH6Qjvnbp82LPFwxp8j6
 gu9OE1T5mqIWZ6na7GLnEPxB3HkYgNIjLFNww=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xnQQUXc3QMGZAz8RD89dQUszF69iaN4BV55ilY+w0jw=;
 b=X2f5vXdjEO3NgujAZiFTxV7d+AF0sS6fYL6Obbqmya9fufXaN7EsrZJs9YlHUyXwXD
 Dc+qyuiA/NbAfAYjtjgrYEM5OohsO/m5VQyJjuQv9MB2Lkko7OCch7w6XGZvnGVQZmM+
 J5bpOaNwtZQy4e0LYXh1B0ccSOYx3IkGeUUuSNOxNKVJ+aXOl79ZFO9xeA/M1b5MKwMq
 CjjeGzMYzUsLsjEyVFV/DeU9n8k6CzXkYYT6H94aqvv1mN8BwKVsFc+H1sRUw2HBk0Z+
 +6PDRy2VrVG9RmOlgF2yycusRmfjR2saOEYVpml+J33fIB8jsxd62dIUUPTj3cYV2oEi
 U/Pw==
X-Gm-Message-State: AOAM530pTepfE7asyCK6dXG5fni7zFeHWxYoL7VmkTXJpOCEkOR2wu/u
 gV8fXY4+MyRqCo7IqbN/JjtGBzC8aPu/bYYxNyEbMA==
X-Google-Smtp-Source: ABdhPJyKWw9l5Jy4vGJ871uTbkCaIb4FsSAwkk9RDaqxUotmeEunyw2fH3DRu0oMkTSlg4DTK2iLVS9OyKmOmkJJqu4=
X-Received: by 2002:aca:d4cf:: with SMTP id l198mr866791oig.14.1626206369052; 
 Tue, 13 Jul 2021 12:59:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210630164413.25481-1-ville.syrjala@linux.intel.com>
 <2edf584b-3835-53ed-f6e3-76c7e8d581ed@linux.intel.com>
 <CAKMK7uFTYgK9rmXTNSczPdBWPTNaLBp-GitzBQb0-gX5wZWHNQ@mail.gmail.com>
In-Reply-To: <CAKMK7uFTYgK9rmXTNSczPdBWPTNaLBp-GitzBQb0-gX5wZWHNQ@mail.gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 13 Jul 2021 21:59:18 +0200
Message-ID: <CAKMK7uFjgu_TkPFYs0DTdAh9tdDbdpUc0S1n5XUfHJaq_0FHVw@mail.gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 dri-devel <dri-devel@lists.freedesktop.org>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Fix -EDEADLK handling
 regression
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@intel.com>,
 stable <stable@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdWwgMTMsIDIwMjEgYXQgOTo1OCBQTSBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3
bGwuY2g+IHdyb3RlOgo+Cj4gT24gVGh1LCBKdWwgMSwgMjAyMSBhdCA5OjA3IEFNIE1hYXJ0ZW4g
TGFua2hvcnN0Cj4gPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4g
PiBPcCAzMC0wNi0yMDIxIG9tIDE4OjQ0IHNjaHJlZWYgVmlsbGUgU3lyamFsYToKPiA+ID4gRnJv
bTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+ID4K
PiA+ID4gVGhlIGNvbnZlcnNpb24gdG8gd3cgbXV0ZXhlcyBmYWlsZWQgdG8gYWRkcmVzcyB0aGUg
ZmVuY2UgY29kZSB3aGljaAo+ID4gPiBhbHJlYWR5IHJldHVybnMgLUVERUFETEsgd2hlbiB3ZSBy
dW4gb3V0IG9mIGZlbmNlcy4gV3cgbXV0ZXhlcyBvbgo+ID4gPiB0aGUgb3RoZXIgaGFuZCB0cmVh
dCAtRURFQURMSyBhcyBhbiBpbnRlcm5hbCBlcnJubyB2YWx1ZSBpbmRpY2F0aW5nCj4gPiA+IGEg
bmVlZCB0byByZXN0YXJ0IHRoZSBvcGVyYXRpb24gZHVlIHRvIGEgZGVhZGxvY2suIFNvIG5vdyB3
aGVuIHRoZQo+ID4gPiBmZW5jZSBjb2RlIHJldHVybnMgLUVERUFETEsgdGhlIGhpZ2hlciBsZXZl
bCBjb2RlIGVycm9uZW91c2x5Cj4gPiA+IHJlc3RhcnRzIGV2ZXJ5dGhpbmcgaW5zdGVhZCBvZiBy
ZXR1cm5pbmcgdGhlIGVycm9yIHRvIHVzZXJzcGFjZQo+ID4gPiBhcyBpcyBleHBlY3RlZC4KPiA+
ID4KPiA+ID4gVG8gcmVtZWR5IHRoaXMgbGV0J3Mgc3dpdGNoIHRoZSBmZW5jZSBjb2RlIHRvIHVz
ZSBhIGRpZmZlcmVudCBlcnJubwo+ID4gPiB2YWx1ZSBmb3IgdGhpcy4gLUVOT0JVRlMgc2VlbXMg
bGlrZSBhIHNlbWktcmVhc29uYWJsZSB1bmlxdWUgY2hvaWNlLgo+ID4gPiBBcGFydCBmcm9tIGln
dCB0aGUgb25seSB1c2VyIG9mIHRoaXMgSSBjb3VsZCBmaW5kIGlzIHNuYSwgYW5kIGV2ZW4KPiA+
ID4gdGhlcmUgYWxsIHdlIGRvIGlzIGR1bXAgdGhlIGN1cnJlbnQgZmVuY2UgcmVnaXN0ZXJzIGZy
b20gZGVidWdmcwo+ID4gPiBpbnRvIHRoZSBYIHNlcnZlciBsb2cuIFNvIG5vIHVzZXIgdmlzaWJs
ZSBmdW5jdGlvbmFsaXR5IGlzIGFmZmVjdGVkLgo+ID4gPiBJZiB3ZSByZWFsbHkgY2FyZWQgYWJv
dXQgcHJlc2VydmluZyB0aGlzIHdlIGNvdWxkIG9mIGNvdXJzZSBjb252ZXJ0Cj4gPiA+IGJhY2sg
dG8gLUVERUFETEsgaGlnaGVyIHVwLCBidXQgZG9lc24ndCBzZWVtIGxpa2UgdGhhdCdzIHdvcnRo
Cj4gPiA+IHRoZSBoYXNzbGUgaGVyZS4KPiA+ID4KPiA+ID4gTm90IHF1aXRlIHN1cmUgd2hpY2gg
Y29tbWl0IHNwZWNpZmljYWxseSBicm9rZSB0aGlzLCBidXQgSSdsbAo+ID4gPiBqdXN0IGF0dHJp
YnV0ZSBpdCB0byB0aGUgZ2VuZXJhbCBnZW0gd3cgbXV0ZXggd29yay4KPiA+ID4KPiA+ID4gQ2M6
IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiA+ID4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFy
dGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gPiA+IENjOiBUaG9tYXMgSGVsbHN0csO2
bSA8dGhvbWFzLmhlbGxzdHJvbUBpbnRlbC5jb20+Cj4gPiA+IFRlc3RjYXNlOiBpZ3QvZ2VtX3By
ZWFkL2V4aGF1c3Rpb24KPiA+ID4gVGVzdGNhc2U6IGlndC9nZW1fcHdyaXRlL2Jhc2ljLWV4aGF1
c3Rpb24KPiA+ID4gVGVzdGNhc2U6IGlndC9nZW1fZmVuY2VkX2V4ZWNfdGhyYXNoL3Rvby1tYW55
LWZlbmNlcwo+ID4gPiBGaXhlczogODBmMGI2NzlkNmYwICgiZHJtL2k5MTU6IEFkZCBhbiBpbXBs
ZW1lbnRhdGlvbiBmb3IgaTkxNV9nZW1fd3dfY3R4IGxvY2tpbmcsIHYyLiIpCj4gPiA+IFNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ2d0dF9mZW5j
aW5nLmMgfCAyICstCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKPiA+ID4KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2dndHRfZmVuY2luZy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ2d0
dF9mZW5jaW5nLmMKPiA+ID4gaW5kZXggY2FjN2YzZjQ0NjQyLi5mODk0OGRlNzIwMzYgMTAwNjQ0
Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHRfZmVuY2luZy5j
Cj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHRfZmVuY2luZy5j
Cj4gPiA+IEBAIC0zNDgsNyArMzQ4LDcgQEAgc3RhdGljIHN0cnVjdCBpOTE1X2ZlbmNlX3JlZyAq
ZmVuY2VfZmluZChzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQo+ID4gPiAgICAgICBpZiAoaW50ZWxf
aGFzX3BlbmRpbmdfZmJfdW5waW4oZ2d0dC0+dm0uaTkxNSkpCj4gPiA+ICAgICAgICAgICAgICAg
cmV0dXJuIEVSUl9QVFIoLUVBR0FJTik7Cj4gPiA+Cj4gPiA+IC0gICAgIHJldHVybiBFUlJfUFRS
KC1FREVBRExLKTsKPiA+ID4gKyAgICAgcmV0dXJuIEVSUl9QVFIoLUVOT0JVRlMpOwo+ID4gPiAg
fQo+ID4gPgo+ID4gPiAgaW50IF9faTkxNV92bWFfcGluX2ZlbmNlKHN0cnVjdCBpOTE1X3ZtYSAq
dm1hKQo+ID4KPiA+IE1ha2VzIHNlbnNlLi4KPiA+Cj4gPiBSZXZpZXdlZC1ieTogTWFhcnRlbiBM
YW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiA+Cj4gPiBJcyBp
dCBhIHNsaWdodGx5IG1vcmUgcmVlbnQgY29tbWl0PyBNaWdodCBwcm9iYWJseSBiZSB0aGUgcGFy
dCB0aGF0IGNvbnZlcnRzIGV4ZWNidWZmZXIgdG8gdXNlIHd3IGxvY2tzLgo+Cj4gLSBwbGVhc2Ug
Y2M6IGRyaS1kZXZlbCBvbiBhbnl0aGluZyBnZW0vZ3QgcmVsYXRlZC4KPiAtIHRoaXMgc2hvdWxk
IHByb2JhYmx5IGJlIEVOT1NQQyBvciBzb21ldGhpbmcgbGlrZSB0aGF0IGZvciBhdCBsZWFzdCBh
Cj4gc2VlbWluZyByZXRlbnRpb24gb2YgZXJybm8gY29uc2lzdGVudGN5Ogo+Cj4gaHR0cHM6Ly9k
cmkuZnJlZWRlc2t0b3Aub3JnL2RvY3MvZHJtL2dwdS9kcm0tdWFwaS5odG1sI3JlY29tbWVuZGVk
LWlvY3RsLXJldHVybi12YWx1ZXMKCk90aGVyIG9wdGlvbiB3b3VsZCBiZSB0byBtYXAgdGhhdCBi
YWNrIHRvIEVERUFETEsgaW4gdGhlIGV4ZWNidWYgaW9jdGwKc29tZXdoZXJlLCBzbyB3ZSByZXRh
aW4gYSBkaXN0aW5jdCBlcnJubyBjb2RlLgotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3
YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
