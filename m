Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 291EB3C6CEA
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 11:10:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0499A6E069;
	Tue, 13 Jul 2021 09:10:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com
 [IPv6:2607:f8b0:4864:20::22e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 778BF6E060
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 09:10:12 +0000 (UTC)
Received: by mail-oi1-x22e.google.com with SMTP id w194so4539947oie.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 02:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=nWFZM3/Fd498xYi/NS6bAEMYCbl7QML6DyivQTp/sV0=;
 b=hfkmcHL6Zp08WVE+ecLEDgZcQo/JXziHSDX2ZVGNalK275PCThHNzlraweUnXZwbVB
 DTp4fDhrNyyBVLylo1TXKMiEi5O9x9p57AXa0DCNwLTVwOK6kfL2MggBJYxxq29z3J3X
 9sKbQwju4rcTjCjYqzcaEVlOba0Vy5Cgpkx7I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=nWFZM3/Fd498xYi/NS6bAEMYCbl7QML6DyivQTp/sV0=;
 b=f53A5S54p3PTcLQ/3NyQ/AUx8M4KSawVHQbH4TDo7qR/8N6Hzam9glakOTHcGp+BX1
 DCFng9Kl0VnmrIGSNeHiu+dO7fQykoZu4NFlTHe0m5UJOmaRWBk9Qt8Dy6m9fbKSEpps
 lBMmR1yr+kFjqy8qWsvHYgBDgVeGhoXbXATHsxB1mgk4fhSYJCYt+HrJYN4182KVIJfs
 dCIx/3aZ8+0ph5kfo1M8B4RYrFvJHyHaUF9hgqmRdGgQIgwwbw+329S/PQ82RDAsZ/7Z
 nzqN7C2gAfXma/O9I08JdDzWd+zaSbjeQdk/1UWq3Upeb0HvIo/utQSW7uksVjcwW5aB
 pGQA==
X-Gm-Message-State: AOAM53109xjTXhp/Nbl5UAocgq0CqzUJlhUxoGnJp0/UxK9+F1A7JqHN
 kjbVk5CU7l1zbGhKzjvAEEoDLqik69HFOAm4tjY7a3wMy/yY1A==
X-Google-Smtp-Source: ABdhPJwxd0a2gHUhQe5j3n2+9L7w0s7E41ayASkRMd32FuI7AUCPINKXiWxJTzCTbOFuBg/1zBWsCDmJ5ljAVtR363g=
X-Received: by 2002:aca:d4cf:: with SMTP id l198mr272688oig.14.1626167411714; 
 Tue, 13 Jul 2021 02:10:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
 <20210712175352.802687-3-daniel.vetter@ffwll.ch>
 <2cd9df9e-08e5-d0bd-d4d3-aed00f699e4a@amd.com>
 <CAKMK7uE3dppw2=sVHRKx1b-ehVfiBphoJNJvpoPjt-=KsPp=Yw@mail.gmail.com>
 <5c5ef6ba-49d0-36cc-b537-e6f9c354f6ac@amd.com>
In-Reply-To: <5c5ef6ba-49d0-36cc-b537-e6f9c354f6ac@amd.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 13 Jul 2021 11:10:00 +0200
Message-ID: <CAKMK7uGXVzaH25_spK5Pp8epx8a+9As6tVMcaj3p6Dedg0FH-w@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Subject: Re: [Intel-gfx] [PATCH v4 02/18] drm/sched: Barriers are needed for
 entity->last_scheduled
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdWwgMTMsIDIwMjEgYXQgOToyNSBBTSBDaHJpc3RpYW4gS8O2bmlnCjxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOgo+IEFtIDEzLjA3LjIxIHVtIDA4OjUwIHNjaHJpZWIg
RGFuaWVsIFZldHRlcjoKPiA+IE9uIFR1ZSwgSnVsIDEzLCAyMDIxIGF0IDg6MzUgQU0gQ2hyaXN0
aWFuIEvDtm5pZwo+ID4gPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6Cj4gPj4gQW0g
MTIuMDcuMjEgdW0gMTk6NTMgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+ID4+PiBJdCBtaWdodCBi
ZSBnb29kIGVub3VnaCBvbiB4ODYgd2l0aCBqdXN0IFJFQURfT05DRSwgYnV0IHRoZSB3cml0ZSBz
aWRlCj4gPj4+IHNob3VsZCB0aGVuIGF0IGxlYXN0IGJlIFdSSVRFX09OQ0UgYmVjYXVzZSB4ODYg
aGFzIHRvdGFsIHN0b3JlIG9yZGVyLgo+ID4+Pgo+ID4+PiBJdCdzIGRlZmluaXRlbHkgbm90IGVu
b3VnaCBvbiBhcm0uCj4gPj4+Cj4gPj4+IEZpeCB0aGlzIHByb3BsZXJ5LCB3aGljaCBtZWFucwo+
ID4+PiAtIGV4cGxhaW4gdGhlIG5lZWQgZm9yIHRoZSBiYXJyaWVyIGluIGJvdGggcGxhY2VzCj4g
Pj4+IC0gcG9pbnQgYXQgdGhlIG90aGVyIHNpZGUgaW4gZWFjaCBjb21tZW50Cj4gPj4+Cj4gPj4+
IEFsc28gcHVsbCBvdXQgdGhlICFzY2hlZF9saXN0IGNhc2UgYXMgdGhlIGZpcnN0IGNoZWNrLCBz
byB0aGF0IHRoZQo+ID4+PiBjb2RlIGZsb3cgaXMgY2xlYXJlci4KPiA+Pj4KPiA+Pj4gV2hpbGUg
YXQgaXQgc3ByaW5rbGUgc29tZSBjb21tZW50cyBhcm91bmQgYmVjYXVzZSBpdCB3YXMgdmVyeQo+
ID4+PiBub24tb2J2aW91cyB0byBtZSB3aGF0J3MgYWN0dWFsbHkgZ29pbmcgb24gaGVyZSBhbmQg
d2h5Lgo+ID4+Pgo+ID4+PiBOb3RlIHRoYXQgd2UgcmVhbGx5IG5lZWQgZnVsbCBiYXJyaWVycyBo
ZXJlLCBhdCBmaXJzdCBJIHRob3VnaHQKPiA+Pj4gc3RvcmUtcmVsZWFzZSBhbmQgbG9hZC1hY3F1
aXJlIG9uIC0+bGFzdF9zY2hlZHVsZWQgd291bGQgYmUgZW5vdWdoLAo+ID4+PiBidXQgd2UgYWN0
dWFsbHkgcmVxdWlyaW5nIG9yZGVyaW5nIGJldHdlZW4gdGhhdCBhbmQgdGhlIHF1ZXVlIHN0YXRl
Lgo+ID4+Pgo+ID4+PiB2MjogUHV0IHNtcF9ybXAoKSBpbiB0aGUgcmlnaHQgcGxhY2UgYW5kIGZp
eCB1cCBjb21tZW50IChBbmRyZXkpCj4gPj4+Cj4gPj4+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBW
ZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+ID4+PiBDYzogIkNocmlzdGlhbiBLw7Zu
aWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gPj4+IENjOiBTdGV2ZW4gUHJpY2UgPHN0
ZXZlbi5wcmljZUBhcm0uY29tPgo+ID4+PiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRl
ckBmZndsbC5jaD4KPiA+Pj4gQ2M6IEFuZHJleSBHcm9kem92c2t5IDxhbmRyZXkuZ3JvZHpvdnNr
eUBhbWQuY29tPgo+ID4+PiBDYzogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPiA+
Pj4gQ2M6IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+Cj4g
Pj4+IC0tLQo+ID4+PiAgICBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5j
IHwgMjcgKysrKysrKysrKysrKysrKysrKysrKy0tCj4gPj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCAy
NSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4+Pgo+ID4+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5LmMKPiA+Pj4gaW5kZXggZjczNDdjMjg0ODg2Li44OWUz
ZjZlYWY1MTkgMTAwNjQ0Cj4gPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2No
ZWRfZW50aXR5LmMKPiA+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9l
bnRpdHkuYwo+ID4+PiBAQCAtNDM5LDggKzQzOSwxNiBAQCBzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAq
ZHJtX3NjaGVkX2VudGl0eV9wb3Bfam9iKHN0cnVjdCBkcm1fc2NoZWRfZW50aXR5ICplbnRpdHkp
Cj4gPj4+ICAgICAgICAgICAgICAgIGRtYV9mZW5jZV9zZXRfZXJyb3IoJnNjaGVkX2pvYi0+c19m
ZW5jZS0+ZmluaXNoZWQsIC1FQ0FOQ0VMRUQpOwo+ID4+Pgo+ID4+PiAgICAgICAgZG1hX2ZlbmNl
X3B1dChlbnRpdHktPmxhc3Rfc2NoZWR1bGVkKTsKPiA+Pj4gKwo+ID4+PiAgICAgICAgZW50aXR5
LT5sYXN0X3NjaGVkdWxlZCA9IGRtYV9mZW5jZV9nZXQoJnNjaGVkX2pvYi0+c19mZW5jZS0+Zmlu
aXNoZWQpOwo+ID4+Pgo+ID4+PiArICAgICAvKgo+ID4+PiArICAgICAgKiBJZiB0aGUgcXVldWUg
aXMgZW1wdHkgd2UgYWxsb3cgZHJtX3NjaGVkX2VudGl0eV9zZWxlY3RfcnEoKSB0bwo+ID4+PiAr
ICAgICAgKiBsb2NrbGVzc2x5IGFjY2VzcyAtPmxhc3Rfc2NoZWR1bGVkLiBUaGlzIG9ubHkgd29y
a3MgaWYgd2Ugc2V0IHRoZQo+ID4+PiArICAgICAgKiBwb2ludGVyIGJlZm9yZSB3ZSBkZXF1ZXVl
IGFuZCBpZiB3ZSBhIHdyaXRlIGJhcnJpZXIgaGVyZS4KPiA+Pj4gKyAgICAgICovCj4gPj4+ICsg
ICAgIHNtcF93bWIoKTsKPiA+Pj4gKwo+ID4+IEFnYWluLCBjb25jZXB0dWFsIHRob3NlIGJhcnJp
ZXJzIHNob3VsZCBiZSBwYXJ0IG9mIHRoZSBzcHNjX3F1ZXVlCj4gPj4gY29udGFpbmVyIGFuZCBu
b3QgZXh0ZXJuYWxseS4KPiA+IFRoYXQgd291bGQgYmUgZXh0cmVtZWx5IHVudXN1YWwgYXBpLiBM
ZXQncyBhc3N1bWUgdGhhdCB5b3VyIHF1ZXVlIGlzCj4gPiB2ZXJ5IGR1bWIsIGFuZCBwcm90ZWN0
ZWQgYnkgYSBzaW1wbGUgbG9jay4gVGhhdCdzIGFib3V0IHRoZSBtYXhpbXVtCj4gPiBhbnkgdXNl
ciBjb3VsZCBleHBlY3QuCj4gPgo+ID4gQnV0IHRoZW4geW91IHN0aWxsIG5lZWQgYmFycmllcnMg
aGVyZSwgYmVjYXVzZSBsaW51eCBsb2NrcyAoc3BpbmxvY2ssCj4gPiBtdXRleCkgYXJlIGRlZmlu
ZWQgdG8gYmUgb25lLXdheSBiYXJyaWVyczogU3R1ZmYgdGhhdCdzIGluc2lkZSBpcwo+ID4gZ3Vh
cmFudGVlZCB0byBiZSBkb25lIGluc2luZGUsIGJ1dCBzdHVmZiBvdXRzaWRlIG9mIHRoZSBsb2Nr
ZWQgcmVnaW9uCj4gPiBjYW4gbGVhayBpbi4gVGhleSdyZSBsb2FkLWFjcXVpcmUvc3RvcmUtcmVs
ZWFzZSBiYXJyaWVycy4gU28gbm90IGdvb2QKPiA+IGVub3VnaC4KPiA+Cj4gPiBZb3UgcmVhbGx5
IG5lZWQgdG8gaGF2ZSBiYXJyaWVycyBoZXJlLCBhbmQgdGhleSByZWFsbHkgYWxsIG5lZWQgdG8g
YmUKPiA+IGRvY3VtZW50ZWQgcHJvcGVybHkuIEFuZCB5ZXMgdGhhdCdzIGEgc2hpdC10b24gb2Yg
d29yayBpbiBkcm0vc2NoZWQsCj4gPiBiZWNhdXNlIGl0J3MgZnVsbCBvZiB5b2xvIGxvY2tsZXNz
IHN0dWZmLgo+ID4KPiA+IFRoZSBvdGhlciBjYXNlIHlvdSBjb3VsZCBtYWtlIGlzIHRoYXQgdGhp
cyB3b3JrcyBsaWtlIGEgd2FrZXVwIHF1ZXVlLAo+ID4gb3Igc2ltaWxhci4gVGhlIHJ1bGVzIHRo
ZXJlIGFyZToKPiA+IC0gd2FrZV91cCAoaS5lLiBwdXNoaW5nIHNvbWV0aGluZyBpbnRvIHRoZSBx
dWV1ZSkgaXMgYSBzdG9yZS1yZWxlYXNlIGJhcnJpZXIKPiA+IC0gdGhlIHdha2VkIHVwIChpLmUu
IHBvcHBpbmcgYW4gZW50cnkpIGlzIGEgbG9hZCBhY3F1aXJlIGJhcnJpZXIKPiA+IFdoaWNoIGlz
IG9idml1b3NseSBuZWVkZWQgYmVjYXVzZSBvdGhlcndpc2UgeW91IGRvbid0IGhhdmUgY29oZXJl
bmN5Cj4gPiBmb3IgdGhlIGRhdGEgcXVldWVkIHVwLiBBbmQgYWdhaW4gbm90IHRoZSBiYXJyaWVy
cyB5b3UncmUgbG9ja2luZyBmb3IKPiA+IGhlcmUuCj4KPiBFeGFjdGx5IHRoYXQgd2FzIHRoZSBp
ZGVhLCB5ZXMuCj4KPiA+IEVpdGhlciB3YXksIHdlJ2Qgc3RpbGwgbmVlZCB0aGUgY29tbWVudHMs
IGJlY2F1c2UgaXQncyBzdGlsbCBsb2NrbGVzcwo+ID4gdHJpY2tlcnksIGFuZCBldmVyeSBzaW5n
bGUgb25lIG9mIHRoYXQgbmVlZHMgdG8gaGF2ZSBhIGNvbW1lbnQgb24gYm90aAo+ID4gc2lkZXMg
dG8gZXhwbGFpbiB3aGF0J3MgZ29pbmcgb24uCj4gPgo+ID4gRXNzZW50aWFsbHkgcmVwbGFjZSBz
cHNjX3F1ZXVlIHdpdGggYW4gbGxpc3QgdW5kZXJuZWF0aCwgYW5kIHRoYXQncwo+ID4gdGhlIGFt
b3VudCBvZiBiYXJyaWVycyBhIGRhdGEgc3RydWN0dXJlIHNob3VsZCBwcm92aWRlLiBBbnl0aGlu
ZyBlbHNlCj4gPiBpcyBhc2tpbmcgeW91ciBkYXRhc3RydWN0dXJlIHRvIHBhcGVyIG92ZXIgYnVn
cyBpbiB5b3VyIHVzZXJzLgo+ID4KPiA+IFRoaXMgaXMgc2ltaWxhciB0byBob3cgYXRvbWljX3Qg
aXMgYnkgZGVmYXVsdCBjb21wbGV0ZWx5IHVub3JkZXJlZCwKPiA+IGFuZCB1c2VycyBuZWVkIHRv
IGFkZCBiYXJyaWVycyBhcyBuZWVkZWQsIHdpdGggY29tbWVudHMuCj4KPiBNeSBtYWluIHByb2Js
ZW0gaXMgYXMgYWx3YXlzIHRoYXQga2VybmVsIGF0b21pY3Mgd29yayBkaWZmZXJlbnQgdGhhbgo+
IHVzZXJzcGFjZSBhdG9taWNzLgo+Cj4gPiBJIHRoaW5rIHRoaXMgaXMgYWxsIHRvIG1ha2Ugc3Vy
ZSBwZW9wbGUgZG9uJ3QganVzdCB3cml0ZSBsb2NrbGVzcyBhbGdvcml0aG1zCj4gPiBiZWNhdXNl
IGl0J3MgYSBjb29sIGlkZWEsIGJ1dCBhcmUgZm9yY2VkIHRvIHRoaW5rIHRoaXMgYWxsIHRocm91
Z2guCj4gPiBXaGljaCBzZWVtcyB0byBub3QgaGF2ZSBoYXBwZW5lZCB2ZXJ5IGNvbnNpc3RlbnRs
eSBmb3IgZHJtL3NjaGVkLCBzbyBJCj4gPiBndWVzcyBuZWVkcyB0byBiZSBmaXhlZC4KPgo+IFdl
bGwgYXQgbGVhc3QgaW5pdGlhbGx5IHRoYXQgd2FzIGFsbCBwZXJmZWN0bHkgdGhvdWdodCB0aHJv
dWdoLiBUaGUKPiBwcm9ibGVtIGlzIG5vYm9keSBpcyByZWFsbHkgbWFpbnRhaW5pbmcgdGhhdCBz
dHVmZi4KPgo+ID4gSSdtIGRlZmluaXRlbHkgbm90IGdvaW5nIHRvIGhpZGUgYWxsIHRoYXQgYnkg
bWFraW5nIHRoZSBzcHNjX3F1ZXVlCj4gPiBzdHVmZiBwcm92aWRlIHJhbmRvbSB1bmp1c3RpZmll
ZCBiYXJyaWVycyBqdXN0IGJlY2F1c2UgdGhhdCB3b3VsZAo+ID4gcGFwZXIgb3ZlciBkcm0vc2No
ZWQgYnVncy4gV2UgbmVlZCB0byBmaXggdGhlIGFjdHVhbCBidWdzLCBhbmQKPiA+IHByZWZlcnJh
YmxlIGFsbCBvZiB0aGVtLiBJJ3ZlIGZvdW5kIGEgZmV3LCBidXQgSSB3YXNuJ3QgaW52b2x2ZWQg
aW4KPiA+IGRybS9zY2hlZCB0aHVzIGZhciwgc28gYmVzdCBJIGNhbiBkbyBpcyBkaXNjb3ZlciB0
aGVtIGFzIHdlIGdvLgo+Cj4gSSBkb24ndCB0aGluayB0aGF0IHRob3NlIGFyZSByYW5kb20gdW5q
dXN0aWZpZWQgYmFycmllcnMgYXQgYWxsIGFuZCBpdAo+IHNvdW5kcyBsaWtlIHlvdSBkaWRuJ3Qg
Z3JpcCB3aGF0IEkgc2FpZCBoZXJlLgo+Cj4gU2VlIHRoZSBzcHNjIHF1ZXVlIG11c3QgaGF2ZSB0
aGUgZm9sbG93aW5nIHNlbWFudGljczoKPgo+IDEuIFdoZW4geW91IHBvcCBhIGpvYiBhbGwgY2hh
bmdlcyBtYWRlIGJlZm9yZSB5b3UgcHVzaCB0aGUgam9iIG11c3QgYmUKPiB2aXNpYmxlLgoKVGhp
cyBpcyB0aGUgc3RhbmRhcmQgYmFycmllcnMgdGhhdCBhbHNvIHdha2UtdXAgcXVldWVzIGhhdmUs
IGl0J3MganVzdApzdG9yZS1yZWxlYXNlK2xvYWQtYWNxdWlyZS4KCj4gMi4gV2hlbiB0aGUgcXVl
dWUgYmVjb21lcyBlbXB0eSBhbGwgdGhlIGNoYW5nZXMgbWFkZSBiZWZvcmUgeW91IHBvcCB0aGUK
PiBsYXN0IGpvYiBtdXN0IGJlIHZpc2libGUuCgpUaGlzIGlzIHZlcnkgbXVjaCBub24tc3RhbmRh
cmQgZm9yIGEgcXVldWUuIEkgZ3Vlc3MgeW91IGNvdWxkIG1ha2UKdGhhdCBwYXJ0IG9mIHRoZSBz
cHNjX3F1ZXVlIGFwaSBiZXR3ZWVuIHBvcCBhbmQgaXNfZW1wdHkgKHJlYWxseSB3ZQpzaG91bGRu
J3QgZXhwb3NlIHRoZSBfY291bnQoKSBmdW5jdGlvbiBmb3IgdGhpcyksIGJ1dCB0aGF0J3MgYWxs
IHZlcnkKY2xldmVyLgoKSSB0aGluayBoYXZpbmcgZXhwbGljaXQgYmFycmllcnMgaW4gdGhlIGNv
ZGUsIHdpdGggY29tbWVudHMsIGlzIG11Y2gKbW9yZSByb2J1c3QuIEJlY2F1c2UgaXQgZm9yY2Vz
IHlvdSB0byB0aGluayBhYm91dCBhbGwgdGhpcywgYW5kCmRvY3VtZW50IGl0IHByb3Blcmx5LiBC
ZWNhdXNlIHRoZXJlJ3MgYWxzbyBsb2NrbGVzcyBzdHVmZiBsaWtlCmRybV9zY2hlZC5yZWFkeSwg
d2hpY2ggZG9lc24ndCBsb29rIGF0IGFsbCBsaWtlIGl0J3Mgb3JkZXJlZCBzb21laG93LgoKRS5n
LiB0aGVyZSdzIGFsc28gYW4gcm1iKCk7IGluIGRybV9zY2hlZF9lbnRpdHlfaXNfaWRsZSgpLCB3
aGljaAotIHByb2JhYmx5IHNob3VsZCBiZSBhbiBzbXBfcm1iKCkKLSByZWFsbHkgc2hvdWxkIGRv
Y3VtZW50IHdoYXQgaXQgYWN0dWFsbHkgc3luY2hyb25pemVzIGFnYWluc3QsIGFuZAp0aGUgbGFj
ayBvZiBhbiBzbXBfd21iKCkgc29tZXdoZXJlIGVsc2UgaW5kaWNhdGVzIGl0J3MgcHJvYmFibHkK
YnVzdGVkLiBZb3UgYWx3YXlzIG5lZWQgdHdvIGJhcnJpZXJzLgoKPiBPdGhlcndpc2UgSSBjb21w
bGV0ZWx5IGFncmVlIHdpdGggeW91IHRoYXQgdGhlIHdob2xlIHNjaGVkdWxlciBkb2Vzbid0Cj4g
d29yayBhdCBhbGwgYW5kIHdlIG5lZWQgdG8gYWRkIHRvbnMgb2YgZXh0ZXJuYWwgYmFycmllcnMu
CgpJbW8gdGhhdCdzIHdoYXQgd2UgbmVlZCB0byBkby4gQW5kIHRoZSBtb3N0IGltcG9ydGFudCBw
YXJ0IGZvcgptYWludGFpbmFiaWxpdHkgaXMgdG8gcHJvcGVybHkgZG9jdW1lbnQgdGhpbmcgd2l0
aCBjb21tZW50cywgYW5kIHRoZQptb3N0IGltcG9ydGFudCBwYXJ0IGluIHRoYXQgY29tbWVudCBp
cyBwb2ludGluZyBhdCB0aGUgb3RoZXIgc2lkZSBvZiBhCmJhcnJpZXIgKHNpbmNlIGEgYmFycmll
ciBvbiBvbmUgc2lkZSBvbmx5IG9yZGVycyBub3RoaW5nKS4KCkFsc28sIG9uIHg4NiBhbG1vc3Qg
bm90aGluZyBoZXJlIG1hdHRlcnMsIGJlY2F1c2UgYm90aCBybWIoKSBhbmQgd21iKCkKYXJlIG5v
LW9wLiBBc2lkZSBmcm9tIHRoZSBjb21waWxlciBiYXJyaWVyLCB3aGljaCB0ZW5kcyB0byBub3Qg
YmUgdGhlCmJpZ2dlc3QgaXNzdWUuIE9ubHkgbWIoKSBkb2VzIGFueXRoaW5nLCBiZWNhdXNlIHg4
NiBpcyBvbmx5IGFsbG93ZWQgdG8KcmVvcmRlciByZWFkcyBhaGVhZCBvZiB3cml0ZXMuCgpTbyBp
biBwcmFjdGljZSBpdCdzIG5vdCBxdWl0ZSBhcyBiaWcgYSBkaXNhc3RlciwgaW1vIHRoZSBiaWcg
dGhpbmcKaGVyZSBpcyBtYWludGFpbmFiaWxpdHkgb2YgYWxsIHRoZXNlIHRyaWNrcyBqdXN0IG5v
dCBiZWluZyBkb2N1bWVudGVkLgotRGFuaWVsCgo+IFJlZ2FyZHMsCj4gQ2hyaXN0aWFuLgo+Cj4g
PiAtRGFuaWVsCj4gPgo+ID4KPiA+PiBSZWdhcmRzLAo+ID4+IENocmlzdGlhbi4KPiA+Pgo+ID4+
PiAgICAgICAgc3BzY19xdWV1ZV9wb3AoJmVudGl0eS0+am9iX3F1ZXVlKTsKPiA+Pj4gICAgICAg
IHJldHVybiBzY2hlZF9qb2I7Cj4gPj4+ICAgIH0KPiA+Pj4gQEAgLTQ1OSwxMCArNDY3LDI1IEBA
IHZvaWQgZHJtX3NjaGVkX2VudGl0eV9zZWxlY3RfcnEoc3RydWN0IGRybV9zY2hlZF9lbnRpdHkg
KmVudGl0eSkKPiA+Pj4gICAgICAgIHN0cnVjdCBkcm1fZ3B1X3NjaGVkdWxlciAqc2NoZWQ7Cj4g
Pj4+ICAgICAgICBzdHJ1Y3QgZHJtX3NjaGVkX3JxICpycTsKPiA+Pj4KPiA+Pj4gLSAgICAgaWYg
KHNwc2NfcXVldWVfY291bnQoJmVudGl0eS0+am9iX3F1ZXVlKSB8fCAhZW50aXR5LT5zY2hlZF9s
aXN0KQo+ID4+PiArICAgICAvKiBzaW5nbGUgcG9zc2libGUgZW5naW5lIGFuZCBhbHJlYWR5IHNl
bGVjdGVkICovCj4gPj4+ICsgICAgIGlmICghZW50aXR5LT5zY2hlZF9saXN0KQo+ID4+PiArICAg
ICAgICAgICAgIHJldHVybjsKPiA+Pj4gKwo+ID4+PiArICAgICAvKiBxdWV1ZSBub24tZW1wdHks
IHN0YXkgb24gdGhlIHNhbWUgZW5naW5lICovCj4gPj4+ICsgICAgIGlmIChzcHNjX3F1ZXVlX2Nv
dW50KCZlbnRpdHktPmpvYl9xdWV1ZSkpCj4gPj4+ICAgICAgICAgICAgICAgIHJldHVybjsKPiA+
Pj4KPiA+Pj4gLSAgICAgZmVuY2UgPSBSRUFEX09OQ0UoZW50aXR5LT5sYXN0X3NjaGVkdWxlZCk7
Cj4gPj4+ICsgICAgIC8qCj4gPj4+ICsgICAgICAqIE9ubHkgd2hlbiB0aGUgcXVldWUgaXMgZW1w
dHkgYXJlIHdlIGd1YXJhbnRlZWQgdGhhdCB0aGUgc2NoZWR1bGVyCj4gPj4+ICsgICAgICAqIHRo
cmVhZCBjYW5ub3QgY2hhbmdlIC0+bGFzdF9zY2hlZHVsZWQuIFRvIGVuZm9yY2Ugb3JkZXJpbmcg
d2UgbmVlZAo+ID4+PiArICAgICAgKiBhIHJlYWQgYmFycmllciBoZXJlLiBTZWUgZHJtX3NjaGVk
X2VudGl0eV9wb3Bfam9iKCkgZm9yIHRoZSBvdGhlcgo+ID4+PiArICAgICAgKiBzaWRlLgo+ID4+
PiArICAgICAgKi8KPiA+Pj4gKyAgICAgc21wX3JtYigpOwo+ID4+PiArCj4gPj4+ICsgICAgIGZl
bmNlID0gZW50aXR5LT5sYXN0X3NjaGVkdWxlZDsKPiA+Pj4gKwo+ID4+PiArICAgICAvKiBzdGF5
IG9uIHRoZSBzYW1lIGVuZ2luZSBpZiB0aGUgcHJldmlvdXMgam9iIGhhc24ndCBmaW5pc2hlZCAq
Lwo+ID4+PiAgICAgICAgaWYgKGZlbmNlICYmICFkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2Up
KQo+ID4+PiAgICAgICAgICAgICAgICByZXR1cm47Cj4gPj4+Cj4gPgo+ID4gLS0KPiA+IERhbmll
bCBWZXR0ZXIKPiA+IFNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgo+ID4gaHR0
cHM6Ly9uYW0xMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHAlM0El
MkYlMkZibG9nLmZmd2xsLmNoJTJGJmFtcDtkYXRhPTA0JTdDMDElN0NjaHJpc3RpYW4ua29lbmln
JTQwYW1kLmNvbSU3Q2UwNjAxM2IxNGNmYzQ5ZTNlMTBmMDhkOTQ1Y2E4ZjczJTdDM2RkODk2MWZl
NDg4NGU2MDhlMTFhODJkOTk0ZTE4M2QlN0MwJTdDMCU3QzYzNzYxNzU1ODU3Nzk1MjkxMyU3Q1Vu
a25vd24lN0NUV0ZwYkdac2IzZDhleUpXSWpvaU1DNHdMakF3TURBaUxDSlFJam9pVjJsdU16SWlM
Q0pCVGlJNklrMWhhV3dpTENKWFZDSTZNbjAlM0QlN0MxMDAwJmFtcDtzZGF0YT15S0FJcnp5UlJo
MUFvR00lMkJRWHlyd2Q0cHNUdnlPJTJCY244OTYxUGJjSm1wUSUzRCZhbXA7cmVzZXJ2ZWQ9MAo+
CgoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9u
Cmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
