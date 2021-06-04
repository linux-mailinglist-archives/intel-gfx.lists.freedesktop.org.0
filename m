Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A3339BC4B
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 17:53:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59A676F610;
	Fri,  4 Jun 2021 15:53:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe30.google.com (mail-vs1-xe30.google.com
 [IPv6:2607:f8b0:4864:20::e30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 393C56E0FB;
 Fri,  4 Jun 2021 15:53:40 +0000 (UTC)
Received: by mail-vs1-xe30.google.com with SMTP id s14so5102153vsk.1;
 Fri, 04 Jun 2021 08:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=127yXl/UShns/2wfr5uGoIpOuzw7GyEKyVvhwVQyJtQ=;
 b=kc2SLka9HpEgOq6UnwF1ypcG6AHTDqKeBZ9DL/401PweFnSxe3WCwmPfRHGSHbuDU3
 jqFHQ3Za3LDxzmA0cxZWsYlu5j6yzr2z29OREnL1obbchE5hff8dDrZhMOZEmoAfNj2r
 nA11RZnrz3YIru2gpuCa9mpTw6Ljs2RNmdX1o8H4wT7pugxolAS6Dc/CMBDC8wNUx9eE
 RCeH2tzqXLwzkg+wkd38NMTyTF+b7aY+yahfh+x+kuF4c42T5/5KuRjZ8bID/GPdbTiV
 VrZ5UbLsFRNjTHYUNcKymryF77dzaLDaqpFTCfzpRFlky016ycd9awA4OV8U8QeL6jPq
 3VIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=127yXl/UShns/2wfr5uGoIpOuzw7GyEKyVvhwVQyJtQ=;
 b=S6ssIYY1KM+ysvaKTfZDLBSIwFMmpC2BxwygIvSab00XJH8GOXsUeTP9m5SjcZlx7e
 6ndZIVg6l6KePi8klNuiYp+a0HeGt65E0d5BrdtmJcEDE3OnwQKpggRSa0mdq9MK7kXU
 0hlFYDFIEjIDhD+LYOFdWldyltY1HehNHSfvUIwpgZtg/Pvc3/u+/eBJMxtSBRo2aIT4
 4DsVR3M3fdU60MjPp1BaQnBJFrc9jYDvZLJtV7zWCXhjlZyDfJPXDSbz5uTjltNtd5I7
 xow+zG8P2EWtg6hw/Igy2yyrUgRWTjP72TrWNmZcWDwlVaTJeUJbHtamk8T2gyVGWZyZ
 QixA==
X-Gm-Message-State: AOAM530+r+fd8oXBlD3YbEvBbQLM/5bgJc/8XkqsJT2sVjX5K2cdYOKF
 PAMNolVF65OuAUhE26SJg0NlPIC/citiFsVVWO1nTpNy0uy0Iw==
X-Google-Smtp-Source: ABdhPJwkPZr+IHFzhqCJ7r0KBSOwI9/K6FbGyxR86OmmJ4Yyfrm4QJ5efZ/pc1y1pgsZNRLmO2rOqZEyaQRK988FKMc=
X-Received: by 2002:a67:878a:: with SMTP id j132mr3309449vsd.18.1622822019374; 
 Fri, 04 Jun 2021 08:53:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210516171432.1734268-1-emil.l.velikov@gmail.com>
 <YKKmsbvTZBwCUiRu@intel.com>
 <CACvgo53H7GAjN_aFsCBOw+xtVbjcbR1q-U3vdgjT1KUPKoMkkg@mail.gmail.com>
 <YKOiN1EFXz7TfYyV@intel.com>
 <CACvgo52f_8XzkKpzAsgQ-E4VHn9md+rZVbTau5H40PPRVa4SdQ@mail.gmail.com>
 <CACvgo53nKn0nKL195FEJ6gRyTyA_23QnLnP-awPXOtv4DwDyiQ@mail.gmail.com>
 <YLoz9oZSzdE97OOj@intel.com>
In-Reply-To: <YLoz9oZSzdE97OOj@intel.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Fri, 4 Jun 2021 16:53:28 +0100
Message-ID: <CACvgo51AcM7Xd5p1kZVp41VU2yMfQ_Q7A8VCEGDJQpZ8H9=cow@mail.gmail.com>
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

T24gRnJpLCA0IEp1biAyMDIxIGF0IDE1OjA4LCBWaWxsZSBTeXJqw6Rsw6QKPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPiB3cm90ZToKPgo+IE9uIEZyaSwgSnVuIDA0LCAyMDIxIGF0IDAy
OjQ3OjE2UE0gKzAxMDAsIEVtaWwgVmVsaWtvdiB3cm90ZToKPiA+IE9uIFdlZCwgMjYgTWF5IDIw
MjEgYXQgMTc6MjEsIEVtaWwgVmVsaWtvdiA8ZW1pbC5sLnZlbGlrb3ZAZ21haWwuY29tPiB3cm90
ZToKPiA+ID4KPiA+ID4gSGkgVmlsbGUsCj4gPiA+Cj4gPiA+IE9uIFR1ZSwgMTggTWF5IDIwMjEg
YXQgMTI6MTcsIFZpbGxlIFN5cmrDpGzDpAo+ID4gPiA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gT24gVHVlLCBNYXkgMTgsIDIwMjEgYXQgMTI6
MDk6NTZQTSArMDEwMCwgRW1pbCBWZWxpa292IHdyb3RlOgo+ID4gPiA+ID4gSGkgVmlsbGUsCj4g
PiA+ID4gPgo+ID4gPiA+ID4gT24gTW9uLCAxNyBNYXkgMjAyMSBhdCAxODoyNCwgVmlsbGUgU3ly
asOkbMOkCj4gPiA+ID4gPiA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+
ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBPbiBTdW4sIE1heSAxNiwgMjAyMSBhdCAwNjoxNDozMlBN
ICswMTAwLCBFbWlsIFZlbGlrb3Ygd3JvdGU6Cj4gPiA+ID4gPiA+ID4gRnJvbTogVml2ZWsgRGFz
IE1vaGFwYXRyYSA8dml2ZWtAY29sbGFib3JhLmNvbT4KPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4g
PiA+IFRoaXMgcGF0Y2ggaXMgdG8gZG8gd2l0aCBzZWFtbGVzcyBoYW5kb3ZlciwgZWcgd2hlbiB0
aGUgc2VxdWVuY2UgaXMKPiA+ID4gPiA+ID4gPiBib290bG9hZGVyIOKGkiBwbHltb3V0aCDihpIg
ZGVza3RvcC4KPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IEl0IHN3aXRjaGVzIHRoZSB2Z2Eg
YXJiaXRlciBmcm9tIHRoZSAib3RoZXIiIEdQVSB0byB0aGUgZGVmYXVsdCBvbmUKPiA+ID4gPiA+
ID4gPiAoaW50ZWwgaW4gdGhpcyBjYXNlKSwgc28gdGhlIGRyaXZlciBjYW4gaXNzdWUgc29tZSBp
bygpLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBJIGRvbid0IHVuZGVyc3RhbmQgd2hhdCB0aGlz
IGNvbW1pdCBtZXNzYWdlIGlzIHRyeWluZyB0byBzYXkuCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiBC
dW5jaCBvZiBjb250ZXh0IGlzIGxvc3QgZHVlIHRvIHRoZSBwYXRjaCBhZ2UsIHNvIEknbSBub3Qg
MTAwJSBzdXJlIG9mCj4gPiA+ID4gPiB0aGUgYWN0dWFsIGhhcmR3YXJlIHNldHVwIHdoZXJlIHRo
aXMgb2NjdXJzLgo+ID4gPiA+ID4gRG9lcyB0aGUgZm9sbG93aW5nIG1ha2Ugc2Vuc2U/Cj4gPiA+
ID4gPgo+ID4gPiA+ID4gQ3VycmVudGx5IG9uIGR1YWwgR1BVIHN5c3RlbXMsIHdlIGRvIG5vdCBn
ZXQgc2VhbWxlc3MgaGFuZG92ZXIgYXMgdGhlCj4gPiA+ID4gPiBvdXRwdXQgZmxpY2tlcnMgZHVy
aW5nIHRoZSB0cmFuc2l0aW9uIGJvb3Rsb2FkZXIgLT4gcGx5bW91dGggLT4KPiA+ID4gPiA+IGRl
c2t0b3AuCj4gPiA+ID4gPiBUaGlzIGhhcHBlbnMgYXMgYSByZXN1bHQgb2Ygc3dpdGNoaW5nICh2
aWEgdGhlIFZHQSBhcmJpdGVyKSBmcm9tIHRoZQo+ID4gPiA+ID4gIm90aGVyIiBHUFUgYmFjayB0
byB0aGUgZGVmYXVsdCBpOTE1IG9uZSBhbmQgaXNzdWluZyBpbygpIGNvbW1hbmRzLgo+ID4gPiA+
Cj4gPiA+ID4gSG1tLiBEb2VzIHRoaXMgd29yaz8KPiA+ID4gPgo+ID4gPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmdhLmMKPiA+ID4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZnYS5jCj4gPiA+ID4gQEAgLTI5LDYgKzI5LDkg
QEAgdm9pZCBpbnRlbF92Z2FfZGlzYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCj4gPiA+ID4gICAgICAgICBpOTE1X3JlZ190IHZnYV9yZWcgPSBpbnRlbF92Z2FfY250cmxf
cmVnKGRldl9wcml2KTsKPiA+ID4gPiAgICAgICAgIHU4IHNyMTsKPiA+ID4gPgo+ID4gPiA+ICsg
ICAgICAgaWYgKGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIHZnYV9yZWcpICYgVkdBX0RJU1BfRElT
QUJMRSkKPiA+ID4gPiArICAgICAgICAgICAgICAgcmV0dXJuOwo+ID4gPiA+ICsKPiA+ID4gPiAg
ICAgICAgIC8qIFdhRW5hYmxlVkdBQWNjZXNzVGhyb3VnaElPUG9ydDpjdGcsZWxrLGlsayxzbmIs
aXZiLHZsdixoc3cgKi8KPiA+ID4gPiAgICAgICAgIHZnYV9nZXRfdW5pbnRlcnJ1cHRpYmxlKHBk
ZXYsIFZHQV9SU1JDX0xFR0FDWV9JTyk7Cj4gPiA+ID4gICAgICAgICBvdXRiKFNSMDEsIFZHQV9T
Ul9JTkRFWCk7Cj4gPiA+ID4KPiA+ID4gV2FzIGFibGUgdG8gcmVwbGljYXRlIHRoZSBpc3N1ZSBz
b21ld2hhdCBhbmQgdGhlIGFib3ZlIGRvZXMgaGVscCBxdWl0ZSBhIGxvdC4KPiA+ID4gRmVlbCBm
cmVlIHRvIGFkZCBteToKPiA+ID4gUmV2aWV3ZWQtYnk6IEVtaWwgVmVsaWtvdiA8ZW1pbC52ZWxp
a292QGNvbGxhYm9yYS5jb20+Cj4gPiA+IFRlc3RlZC1ieTogRW1pbCBWZWxpa292IDxlbWlsLnZl
bGlrb3ZAY29sbGFib3JhLmNvbT4KPiA+ID4KPiA+IEh1bWJsZSBwb2tlLgo+ID4KPiA+IENhbm5v
dCBzZWUgdGhpcyBwYXRjaCBpbiB0aGUgZHJtLW1pc2Mgb3IgZHJtLWludGVsIHRyZWVzLiBJcyB0
aGVyZQo+ID4gYW55dGhpbmcgSSBkbyB0byBoZWxwIG1vdmUgaXQgZm9yd2FyZD8KPgo+IENhbiB5
b3UganVzdCByZXNwaW4gdGhlIHBhdGNoIHdpdGggdGhpcz8KPgpJJ3ZlIHVzZWQgeW91ciBzdWdn
ZXN0aW9uIGFuZCByZWRvbmUgdGhlIGNvbW1pdCBtZXNzYWdlIGNvbXBsZXRlbHkuCkhvcGUgaXQn
cyBmYXIgbGVzcyBjcnlwdGljIG5vdy4KUGF0Y2ggaXMgb24gdGhlIE1MIC0gcmVhbGlzZWQgSSBk
aWRuJ3QgQ0MgeW91LCBqdXN0IGFzIGl0IHdlbnQgb3V0LgoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvZHJpLWRldmVsLzIwMjEwNjA0MTU0OTA1LjY2MDE0Mi0xLWVtaWwubC52ZWxpa292QGdtYWls
LmNvbS9ULyN1CgpUaGFua3MKLUVtaWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
