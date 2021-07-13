Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 042753C7790
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 21:58:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44E6589F9F;
	Tue, 13 Jul 2021 19:58:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com
 [IPv6:2607:f8b0:4864:20::330])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CABC289F9F
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 19:58:14 +0000 (UTC)
Received: by mail-ot1-x330.google.com with SMTP id
 w8-20020a0568304108b02904b3da3d49e5so81539ott.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 12:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pz8q3VIqFRU6Z/Otup9y1fbrbnHC3h9yRwEFMSVd4po=;
 b=DGnT4aaklkuoh4XMDUeZRq//7mSWFtV3A0L+iDHT1S+iVnLosPSNCkAyO/1rZQCrSE
 UZ/WJLPpsbZpEl741Nu13cBhXe603O65KeMnC6vjyY7W/tca69MCJW+GDo33EM2wHLLU
 uSb9A0+ximsKFnDz9J4vm+HTRu+BGvxTUIUw4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pz8q3VIqFRU6Z/Otup9y1fbrbnHC3h9yRwEFMSVd4po=;
 b=IM40CoLY0gn32j+jGC18q3duwqpn1pwh1ynrfvOC4jhihFNAiY90SRW3Xgd8qHvGmw
 B4Gh864TfUtn65F7EKI92tWrT9OhFOMA75Sfz8DsWmEdAEzY7VQXyBtwyD9m5Y6kISCC
 BH3AtrYMr4DLPlsMsbSDQvtksiOTbNuCBgt2mdYRkSQRE4l9Qe2Vgq6ZoXx75ag0kg/f
 IuMEx9vaoCrvK/DEw3H+y93zvWCqSUWxCb825gfvDS3eyfv/3IueyOw3nfyrjZhHfNeC
 luKC0a94wuhJ0ynL+8IElBkX2GDIyofZd0HJKcfSMZuuiX+l4f2ttqSawz/5AX+nbYr9
 POhw==
X-Gm-Message-State: AOAM531uRxYTUfzxP9AwAnfSV/2Ut80YDPLlTdY5+WVqqdgnYK7g0dgw
 tTRTBpFq+gJIa7xaExl5FGqH5/7I3yFzoQ5Er6yqfg==
X-Google-Smtp-Source: ABdhPJz9CiL//Tji/Cm8MAeN5UlQhpYrnRkpw3wA2Mbq0SpzZIBAEWBX0CbMXD846uBx7jrpmnzX3myPs/Aypjc7HYs=
X-Received: by 2002:a05:6830:2366:: with SMTP id
 r6mr4902260oth.188.1626206294340; 
 Tue, 13 Jul 2021 12:58:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210630164413.25481-1-ville.syrjala@linux.intel.com>
 <2edf584b-3835-53ed-f6e3-76c7e8d581ed@linux.intel.com>
In-Reply-To: <2edf584b-3835-53ed-f6e3-76c7e8d581ed@linux.intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 13 Jul 2021 21:58:03 +0200
Message-ID: <CAKMK7uFTYgK9rmXTNSczPdBWPTNaLBp-GitzBQb0-gX5wZWHNQ@mail.gmail.com>
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

T24gVGh1LCBKdWwgMSwgMjAyMSBhdCA5OjA3IEFNIE1hYXJ0ZW4gTGFua2hvcnN0CjxtYWFydGVu
Lmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+IE9wIDMwLTA2LTIwMjEgb20gMTg6
NDQgc2NocmVlZiBWaWxsZSBTeXJqYWxhOgo+ID4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+Cj4gPiBUaGUgY29udmVyc2lvbiB0byB3dyBt
dXRleGVzIGZhaWxlZCB0byBhZGRyZXNzIHRoZSBmZW5jZSBjb2RlIHdoaWNoCj4gPiBhbHJlYWR5
IHJldHVybnMgLUVERUFETEsgd2hlbiB3ZSBydW4gb3V0IG9mIGZlbmNlcy4gV3cgbXV0ZXhlcyBv
bgo+ID4gdGhlIG90aGVyIGhhbmQgdHJlYXQgLUVERUFETEsgYXMgYW4gaW50ZXJuYWwgZXJybm8g
dmFsdWUgaW5kaWNhdGluZwo+ID4gYSBuZWVkIHRvIHJlc3RhcnQgdGhlIG9wZXJhdGlvbiBkdWUg
dG8gYSBkZWFkbG9jay4gU28gbm93IHdoZW4gdGhlCj4gPiBmZW5jZSBjb2RlIHJldHVybnMgLUVE
RUFETEsgdGhlIGhpZ2hlciBsZXZlbCBjb2RlIGVycm9uZW91c2x5Cj4gPiByZXN0YXJ0cyBldmVy
eXRoaW5nIGluc3RlYWQgb2YgcmV0dXJuaW5nIHRoZSBlcnJvciB0byB1c2Vyc3BhY2UKPiA+IGFz
IGlzIGV4cGVjdGVkLgo+ID4KPiA+IFRvIHJlbWVkeSB0aGlzIGxldCdzIHN3aXRjaCB0aGUgZmVu
Y2UgY29kZSB0byB1c2UgYSBkaWZmZXJlbnQgZXJybm8KPiA+IHZhbHVlIGZvciB0aGlzLiAtRU5P
QlVGUyBzZWVtcyBsaWtlIGEgc2VtaS1yZWFzb25hYmxlIHVuaXF1ZSBjaG9pY2UuCj4gPiBBcGFy
dCBmcm9tIGlndCB0aGUgb25seSB1c2VyIG9mIHRoaXMgSSBjb3VsZCBmaW5kIGlzIHNuYSwgYW5k
IGV2ZW4KPiA+IHRoZXJlIGFsbCB3ZSBkbyBpcyBkdW1wIHRoZSBjdXJyZW50IGZlbmNlIHJlZ2lz
dGVycyBmcm9tIGRlYnVnZnMKPiA+IGludG8gdGhlIFggc2VydmVyIGxvZy4gU28gbm8gdXNlciB2
aXNpYmxlIGZ1bmN0aW9uYWxpdHkgaXMgYWZmZWN0ZWQuCj4gPiBJZiB3ZSByZWFsbHkgY2FyZWQg
YWJvdXQgcHJlc2VydmluZyB0aGlzIHdlIGNvdWxkIG9mIGNvdXJzZSBjb252ZXJ0Cj4gPiBiYWNr
IHRvIC1FREVBRExLIGhpZ2hlciB1cCwgYnV0IGRvZXNuJ3Qgc2VlbSBsaWtlIHRoYXQncyB3b3J0
aAo+ID4gdGhlIGhhc3NsZSBoZXJlLgo+ID4KPiA+IE5vdCBxdWl0ZSBzdXJlIHdoaWNoIGNvbW1p
dCBzcGVjaWZpY2FsbHkgYnJva2UgdGhpcywgYnV0IEknbGwKPiA+IGp1c3QgYXR0cmlidXRlIGl0
IHRvIHRoZSBnZW5lcmFsIGdlbSB3dyBtdXRleCB3b3JrLgo+ID4KPiA+IENjOiBzdGFibGVAdmdl
ci5rZXJuZWwub3JnCj4gPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0
QGxpbnV4LmludGVsLmNvbT4KPiA+IENjOiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxz
dHJvbUBpbnRlbC5jb20+Cj4gPiBUZXN0Y2FzZTogaWd0L2dlbV9wcmVhZC9leGhhdXN0aW9uCj4g
PiBUZXN0Y2FzZTogaWd0L2dlbV9wd3JpdGUvYmFzaWMtZXhoYXVzdGlvbgo+ID4gVGVzdGNhc2U6
IGlndC9nZW1fZmVuY2VkX2V4ZWNfdGhyYXNoL3Rvby1tYW55LWZlbmNlcwo+ID4gRml4ZXM6IDgw
ZjBiNjc5ZDZmMCAoImRybS9pOTE1OiBBZGQgYW4gaW1wbGVtZW50YXRpb24gZm9yIGk5MTVfZ2Vt
X3d3X2N0eCBsb2NraW5nLCB2Mi4iKQo+ID4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2dndHRfZmVuY2luZy5jIHwgMiArLQo+ID4gIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9nZ3R0X2ZlbmNpbmcuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2dndHRfZmVuY2luZy5jCj4gPiBpbmRleCBjYWM3ZjNmNDQ2NDIu
LmY4OTQ4ZGU3MjAzNiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2dndHRfZmVuY2luZy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9nZ3R0X2ZlbmNpbmcuYwo+ID4gQEAgLTM0OCw3ICszNDgsNyBAQCBzdGF0aWMgc3RydWN0IGk5
MTVfZmVuY2VfcmVnICpmZW5jZV9maW5kKHN0cnVjdCBpOTE1X2dndHQgKmdndHQpCj4gPiAgICAg
ICBpZiAoaW50ZWxfaGFzX3BlbmRpbmdfZmJfdW5waW4oZ2d0dC0+dm0uaTkxNSkpCj4gPiAgICAg
ICAgICAgICAgIHJldHVybiBFUlJfUFRSKC1FQUdBSU4pOwo+ID4KPiA+IC0gICAgIHJldHVybiBF
UlJfUFRSKC1FREVBRExLKTsKPiA+ICsgICAgIHJldHVybiBFUlJfUFRSKC1FTk9CVUZTKTsKPiA+
ICB9Cj4gPgo+ID4gIGludCBfX2k5MTVfdm1hX3Bpbl9mZW5jZShzdHJ1Y3QgaTkxNV92bWEgKnZt
YSkKPgo+IE1ha2VzIHNlbnNlLi4KPgo+IFJldmlld2VkLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8
bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+Cj4gSXMgaXQgYSBzbGlnaHRseSBt
b3JlIHJlZW50IGNvbW1pdD8gTWlnaHQgcHJvYmFibHkgYmUgdGhlIHBhcnQgdGhhdCBjb252ZXJ0
cyBleGVjYnVmZmVyIHRvIHVzZSB3dyBsb2Nrcy4KCi0gcGxlYXNlIGNjOiBkcmktZGV2ZWwgb24g
YW55dGhpbmcgZ2VtL2d0IHJlbGF0ZWQuCi0gdGhpcyBzaG91bGQgcHJvYmFibHkgYmUgRU5PU1BD
IG9yIHNvbWV0aGluZyBsaWtlIHRoYXQgZm9yIGF0IGxlYXN0IGEKc2VlbWluZyByZXRlbnRpb24g
b2YgZXJybm8gY29uc2lzdGVudGN5OgoKaHR0cHM6Ly9kcmkuZnJlZWRlc2t0b3Aub3JnL2RvY3Mv
ZHJtL2dwdS9kcm0tdWFwaS5odG1sI3JlY29tbWVuZGVkLWlvY3RsLXJldHVybi12YWx1ZXMKCkNo
ZWVycywgRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBD
b3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
