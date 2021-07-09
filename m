Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8A33C1FE4
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 09:14:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B30E6E9BD;
	Fri,  9 Jul 2021 07:14:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com
 [IPv6:2607:f8b0:4864:20::22b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8FC76E9BD
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jul 2021 07:14:37 +0000 (UTC)
Received: by mail-oi1-x22b.google.com with SMTP id z3so10261676oib.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 09 Jul 2021 00:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Ya8GlcHq82Sssvq9vPLaah0EzxkfAPc2tlFitRK0CdU=;
 b=VCe65SJpcjspdUebPHi/+qMmZawvGSigUEUVCUlx9MZVLM2Hsp+wv7jan7uW+OPNIK
 lGP/FoW/vQRQMAoTZ1SSsg/beZwy3JnMlnLVgpw31WNoD7TcT6RAlABYjeoouanvVng+
 fIcUPyVoav380hegRQo4m8hMI596Ehw6192jc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Ya8GlcHq82Sssvq9vPLaah0EzxkfAPc2tlFitRK0CdU=;
 b=GaNtFxhb8xxbGPZH/OSAsJpxPvweDLj35TrgBMngkOn++bsv4tLyTjEZ0dHWkzXaZv
 Leo7C9MNHPhgGqlYApHZzplh90UEvjLjPtbgo5G5PJvJQMvFX2ZcTj6BRlMQ1zak4Itp
 5AUEliYSe7h5WC69vM2EIkR++0QZ6FF3n+h8IBklNUieXr6ftXPYjkRvrbvmBhfby8vw
 StKu5mcaG+2KfQ5KzWVyyiAM7isKV4hYbIPt3xftMblcy626OEwK1oa4VI/Yrr0ssPDT
 bE+QOtVB6nM0gxHwM+Hu6wMJ/pjdr7C07WAJHUMEJqy820H1RH0jd8qB9N0Es2zK/cVH
 dM2A==
X-Gm-Message-State: AOAM53207aWsgfVNAtPsg1PlTkBUViYuimhIGcQ9QrKQR6KTz2V5+PS5
 IVgH6HEvrLNdxU3f7zngJUgBBCe3Tm+Fy5OyVqCyRw==
X-Google-Smtp-Source: ABdhPJz76zXNo14DrkjBixLf9bl4gs4ommvlhJ1tZH33nN7ajPByODdzrFWDoql7dvT+mECZ8eaHtcPERcFT540eHL0=
X-Received: by 2002:aca:4b55:: with SMTP id y82mr2267340oia.14.1625814877133; 
 Fri, 09 Jul 2021 00:14:37 -0700 (PDT)
MIME-Version: 1.0
References: <20210708173754.3877540-1-daniel.vetter@ffwll.ch>
 <20210708173754.3877540-2-daniel.vetter@ffwll.ch>
 <5588d1c3-833b-bd95-69e6-a103f2e8affa@amd.com>
In-Reply-To: <5588d1c3-833b-bd95-69e6-a103f2e8affa@amd.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 9 Jul 2021 09:14:25 +0200
Message-ID: <CAKMK7uFuqXdbvqDCerXHW5kiT=LUZEoyrjFMgHjkUQdS1eidDw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Subject: Re: [Intel-gfx] [PATCH v3 01/20] drm/sched: entity->rq selection
 cannot fail
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
Cc: Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 Jack Zhang <Jack.Zhang1@amd.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Luben Tuikov <luben.tuikov@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdWwgOSwgMjAyMSBhdCA4OjUzIEFNIENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6Cj4gQW0gMDguMDcuMjEgdW0gMTk6Mzcgc2NocmllYiBE
YW5pZWwgVmV0dGVyOgo+ID4gSWYgaXQgZG9lcywgc29tZW9uZSBtYW5hZ2VkIHRvIHNldCB1cCBh
IHNjaGVkX2VudGl0eSB3aXRob3V0Cj4gPiBzY2hlZHVsZXJzLCB3aGljaCBpcyBqdXN0IGEgZHJp
dmVyIGJ1Zy4KPgo+IE5BSywgaXQgaXMgcGVyZmVjdGx5IHZhbGlkIGZvciBycSBzZWxlY3Rpb24g
dG8gZmFpbC4KClRoZXJlIGlzbid0IGEgYmV0dGVyIHdheSB0byBleHBsYWluIHN0dWZmIHRvIHNv
bWVvbmUgd2hvJ3MgbmV3IHRvIHRoZQpjb2RlIGFuZCB0cmllcyB0byBpbXByb3ZlIGl0IHdpdGgg
ZG9jcyB0aGFuIHRvIE5BSyBzdHVmZiB3aXRoCmluY29tcGxldGUgZXhwbGFuYXRpb25zPwoKPiBT
ZWUgZHJtX3NjaGVkX3BpY2tfYmVzdCgpOgo+Cj4gICAgICAgICAgICAgICAgICBpZiAoIXNjaGVk
LT5yZWFkeSkgewo+ICAgICAgICAgICAgICAgICAgICAgICAgICBEUk1fV0FSTigic2NoZWR1bGVy
ICVzIGlzIG5vdCByZWFkeSwgc2tpcHBpbmciLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBzY2hlZC0+bmFtZSk7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVl
Owo+ICAgICAgICAgICAgICAgICAgfQo+Cj4gVGhpcyBjYW4gaGFwcGVuIHdoZW4gYSBkZXZpY2Ug
cmVzZXQgZmFpbHMgZm9yIHNvbWUgZW5naW5lLgoKV2VsbCB5ZWFoIEkgZGlkbid0IGV4cGVjdCBh
bWRncHUgdG8ganVzdCBjaGFuZ2UgdGhpcyBkaXJlY3RseSwgc28gSQpkaWRuJ3QgZmluZCBpdC4g
R2V0dGluZyBhbiBFTk9FTlQgb24gYSBodyBmYWlsdXJlIGluc3RlYWQgb2YgYW4gRUlPIGlzCmEg
Yml0IGludGVyZXN0aW5nIHNlbWFudGljcyBJIGd1ZXNzLCBhbHNvIHdoYXQgaGFwcGVucyB3aXRo
IHRoZSBqb2JzCndoaWNoIHJhY2VkIGFnYWluc3QgdGhlIHNjaGVkdWxlciBub3QgYmVpbmcgcmVh
ZHk/IEknbSBub3Qgc2VlaW5nIGFueQpjaGVja3MgZm9yIHJlYWR5IGluIHRoZSBtYWluIHNjaGVk
dWxlciBsb2dpYyBzbyB0aGlzIGF0IGxlYXN0IGxvb2tzCnNvbWV3aGF0IGFjY2lkZW50YWwgYXMg
YSBzaWRlIGVmZmVjdCwgYWxzbyBubyBvdGhlciBkcml2ZXIgdGhhbiBhbWRncHUKY29tbXVuaXRj
YXRlcyB0aGF0IHJlc2V0IGZhaWxlZCBiYWNrIHRvIGRybS9zY2hlZCBsaWtlIHRoaXMuIFRoZXkg
c2VlbQp0byBqdXN0IG5vdCwgYW5kIEkgZ3Vlc3MgdGltZW91dCBvbiB0aGUgbmV4dCByZXF1ZXN0
IHdpbGwgZ2V0IHVzIGludG8KYW4gZW5kbGVzcyByZXNldCBsb29wPwotRGFuaWVsCgoKPgo+IFJl
Z2FyZHMsCj4gQ2hyaXN0aWFuLgo+Cj4gPgo+ID4gV2UgQlVHX09OKCkgaGVyZSBiZWNhdXNlIGlu
IHRoZSBuZXh0IHBhdGNoIGRybV9zY2hlZF9qb2JfaW5pdCgpIHdpbGwKPiA+IGJlIHNwbGl0IHVw
LCB3aXRoIGRybV9zY2hlZF9qb2JfYXJtKCkgbmV2ZXIgZmFpbGluZy4gQW5kIHRoYXQncyB0aGUK
PiA+IHBhcnQgd2hlcmUgdGhlIHJxIHNlbGVjdGlvbiB3aWxsIGVuZCB1cCBpbi4KPiA+Cj4gPiBO
b3RlIHRoYXQgaWYgaGF2aW5nIGFuIGVtcHR5IHNjaGVkX2xpc3Qgc2V0IG9uIGFuIGVudGl0eSBp
cyBpbmRlZWQgYQo+ID4gdmFsaWQgdXNlLWNhc2UsIHdlIGNhbiBrZWVwIHRoYXQgY2hlY2sgaW4g
am9iX2luaXQgZXZlbiBhZnRlciB0aGUgc3BsaXQKPiA+IGludG8gam9iX2luaXQvYXJtLgo+ID4K
PiA+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29t
Pgo+ID4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+
ID4gQ2M6IEx1YmVuIFR1aWtvdiA8bHViZW4udHVpa292QGFtZC5jb20+Cj4gPiBDYzogRGFuaWVs
IFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPiA+IENjOiBTdGV2ZW4gUHJpY2UgPHN0
ZXZlbi5wcmljZUBhcm0uY29tPgo+ID4gQ2M6IEFuZHJleSBHcm9kem92c2t5IDxhbmRyZXkuZ3Jv
ZHpvdnNreUBhbWQuY29tPgo+ID4gQ2M6IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9u
QGNvbGxhYm9yYS5jb20+Cj4gPiBDYzogSmFjayBaaGFuZyA8SmFjay5aaGFuZzFAYW1kLmNvbT4K
PiA+IC0tLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jIHwg
MiArLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYyAgIHwgMyAr
LS0KPiA+ICAgMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0p
Cj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50
aXR5LmMgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jCj4gPiBpbmRl
eCA3OTU1NGFhNGRiYjEuLjZmYzExNmVlNzMwMiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9z
Y2hlZHVsZXIvc2NoZWRfZW50aXR5LmMKPiA+IEBAIC00NSw3ICs0NSw3IEBACj4gPiAgICAqIEBn
dWlsdHk6IGF0b21pY190IHNldCB0byAxIHdoZW4gYSBqb2Igb24gdGhpcyBxdWV1ZQo+ID4gICAg
KiAgICAgICAgICBpcyBmb3VuZCB0byBiZSBndWlsdHkgY2F1c2luZyBhIHRpbWVvdXQKPiA+ICAg
ICoKPiA+IC0gKiBOb3RlOiB0aGUgc2NoZWRfbGlzdCBzaG91bGQgaGF2ZSBhdCBsZWFzdCBvbmUg
ZWxlbWVudCB0byBzY2hlZHVsZQo+ID4gKyAqIE5vdGU6IHRoZSBzY2hlZF9saXN0IG11c3QgaGF2
ZSBhdCBsZWFzdCBvbmUgZWxlbWVudCB0byBzY2hlZHVsZQo+ID4gICAgKiAgICAgICB0aGUgZW50
aXR5Cj4gPiAgICAqCj4gPiAgICAqIFJldHVybnMgMCBvbiBzdWNjZXNzIG9yIGEgbmVnYXRpdmUg
ZXJyb3IgY29kZSBvbiBmYWlsdXJlLgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9z
Y2hlZHVsZXIvc2NoZWRfbWFpbi5jIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9t
YWluLmMKPiA+IGluZGV4IDMzYzQxNGQ1NWZhYi4uMDFkZDQ3MTU0MTgxIDEwMDY0NAo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMKPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jCj4gPiBAQCAtNTg2LDggKzU4Niw3IEBA
IGludCBkcm1fc2NoZWRfam9iX2luaXQoc3RydWN0IGRybV9zY2hlZF9qb2IgKmpvYiwKPiA+ICAg
ICAgIHN0cnVjdCBkcm1fZ3B1X3NjaGVkdWxlciAqc2NoZWQ7Cj4gPgo+ID4gICAgICAgZHJtX3Nj
aGVkX2VudGl0eV9zZWxlY3RfcnEoZW50aXR5KTsKPiA+IC0gICAgIGlmICghZW50aXR5LT5ycSkK
PiA+IC0gICAgICAgICAgICAgcmV0dXJuIC1FTk9FTlQ7Cj4gPiArICAgICBCVUdfT04oIWVudGl0
eS0+cnEpOwo+ID4KPiA+ICAgICAgIHNjaGVkID0gZW50aXR5LT5ycS0+c2NoZWQ7Cj4gPgo+CgoK
LS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0
dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
