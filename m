Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A41B383818
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 19:44:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69F4B6E501;
	Tue,  6 Aug 2019 17:44:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com
 [IPv6:2607:f8b0:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 054BC6E504
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 17:44:04 +0000 (UTC)
Received: by mail-ot1-x343.google.com with SMTP id l15so37334837oth.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 06 Aug 2019 10:44:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DLIIWEz8cCNTBvIaYUtcUn/1Hv0D58e3xUmSnoEjioc=;
 b=nGoT4qd7tb98OlOoPtRo9mDpbSHvcjtf68mWcjVz56OUlvKcxIgDx4mr2P1wv1NP7F
 HZ+TVlUWhnx5OCcqFrSaT09YI6H9j+fw6GE34CjSE8aMBV1qQo34UrSMhyMUp63i5C3e
 JLrpJ6AaXaPhWz3ZIx3yeiuXZItcey+HVScXg15EalKe3tdav04cPhUR3MR1s7BBgTKA
 q5j2aR+7CFHuVHJdWMyYqsghQZmAea+gWL7/Ba7rpqYlQva9VlO0ZfVBJuaAJWuxvRx0
 ngd53BcH4HbDFtejBlPyHphklR2oMXr6uIe+DzUp1ypGT/nreEeI8SdalnDMkV9s4Hpj
 Javg==
X-Gm-Message-State: APjAAAXQnCCIqeILKw5if5QSHWI8YySCb/fXP74q1TYIo7+VUmzQpHf6
 oRAD80Z3KQyC7BKkXlHNIXeTGFew7gYiBp5VG9fd3aLYt79K6Q==
X-Google-Smtp-Source: APXvYqxCID+8ypmtf2GdWjaXGEi4XVqj6PwHUPdDYD7GI1ZDdcix5/Z3WQ4l/7ffqSTDgBk0X0pS2IcUjs/VK+cCNf4=
X-Received: by 2002:a05:6830:4b:: with SMTP id
 d11mr3971657otp.106.1565113443220; 
 Tue, 06 Aug 2019 10:44:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190806125551.25761-1-stanislav.lisovskiy@intel.com>
 <20190806135150.GZ7444@phenom.ffwll.local>
 <8614f54fd742f9f35979768997e416d36b69563a.camel@intel.com>
In-Reply-To: <8614f54fd742f9f35979768997e416d36b69563a.camel@intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 6 Aug 2019 19:43:50 +0200
Message-ID: <CAKMK7uHgfviXTqkHsCVmZX97dWFfbysCHtiRVDpSzJ3aheTQkw@mail.gmail.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=DLIIWEz8cCNTBvIaYUtcUn/1Hv0D58e3xUmSnoEjioc=;
 b=R2JYc7I4CB1C0L0wky0JPwqaTh3+tVSKgXa6h3uVBLYmqeQOG8QV2Riwhr/Y6A0Z08
 Y55D9DkjZ/dS79RqGiZ695M0v80rme56uNDFpu82EcEC3Ok+z9r8MVOFFJBa6t5VUDTb
 xDXR8Uel+g0RvCihJa8GrgHxXbWWoRRTuptMQ=
Subject: Re: [Intel-gfx] [PATCH v3 0/3] Send a hotplug when edid changes
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Peres,
 Martin" <martin.peres@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBBdWcgNiwgMjAxOSBhdCA0OjA2IFBNIExpc292c2tpeSwgU3RhbmlzbGF2CjxzdGFu
aXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4gd3JvdGU6Cj4KPiBPbiBUdWUsIDIwMTktMDgtMDYg
YXQgMTU6NTEgKzAyMDAsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPiBPbiBUdWUsIEF1ZyAwNiwg
MjAxOSBhdCAwMzo1NTo0OFBNICswMzAwLCBTdGFuaXNsYXYgTGlzb3Zza2l5IHdyb3RlOgo+ID4g
PiBUaGlzIHNlcmllcyBpbnRyb2R1Y2UgdG8gZHJtIGEgd2F5IHRvIGRldGVybWluZSBpZiBzb21l
dGhpbmcgZWxzZQo+ID4gPiBleGNlcHQgY29ubmVjdGlvbl9zdGF0dXMgaGFkIGNoYW5nZWQgZHVy
aW5nIHByb2JpbmcsIHdoaWNoCj4gPiA+IGNhbiBiZSB1c2VkIGJ5IG90aGVyIGRyaXZlcnMgYXMg
d2VsbC4gQW5vdGhlciBpOTE1IHNwZWNpZmljIHBhcnQKPiA+ID4gdXNlcyB0aGlzIGFwcHJvYWNo
IHRvIGRldGVybWluZSBpZiBlZGlkIGhhZCBjaGFuZ2VkIHdpdGhvdXQKPiA+ID4gY2hhbmdpbmcg
dGhlIGNvbm5lY3Rpb24gc3RhdHVzIGFuZCBzZW5kIGEgaG90cGx1ZyBldmVudC4KPiA+Cj4gPiBE
aWQgeW91IHJlYWQgdGhyb3VnaCB0aGUgZW50aXJlIGh1Z2UgdGhyZWFkIG9uIGFsbCB0aGlzICh3
aXRoIEkgdGhpbmsKPiA+IFBhdWwsIFBla2thLCBSYW0gYW5kIHNvbWUgb3RoZXJzKT8gSSBmZWVs
IGxpa2UgdGhpcyBpcyBtb3N0bHkgdGFraW5nCj4gPiB0aGF0Cj4gPiBpZGVhLCBidXQgbm90IHRh
a2luZyBhIGxvdCBvZiB0aGUgZGV0YWlscyB3ZSd2ZSBkaXNjdXNzZWQgdGhlcmUuCj4gPiBTcGVj
aWZpY2FsbHkgSSdtIG5vdCBzdXJlIGhvdyB1c2Vyc3BhY2Ugc2hvdWxkIGhhbmRsZSB0aGlzIHdp
dGhvdXQKPiA+IGFsc28KPiA+IGV4cG9zaW5nIHRoZSBlcG9jaCBjb3VudGVyLCBvciBhdCBsZWFz
dCBnZW5lcmF0aW5nIGEgaG90cGx1ZyBldmVudAo+ID4gZm9yIHRoZQo+ID4gc3BlY2lmaWMgY29u
bmVjdG9yLiBBbGwgdGhhdCBhbmQgbW9yZSB3ZSBkaXNjdXNzZWQgdGhlcmUuCj4gPgo+ID4gQW5k
IHRoZW4gdGhlcmUncyB0aGUgZm9sbG93LXVwIHF1ZXN0aW9uOiBXaGF0J3MgdGhlIHVzZXJzcGFj
ZSBmb3IKPiA+IHRoaXM/Cj4gPiBFeGlzdGluZyBleHBlY3RhdGlvbnMgYXJlIGEgbWluZWZpZWxk
IGhlcmUsIHNvIGV2ZW4gaWYgeW91IGRvbid0IHBsYW4KPiA+IHRvCj4gPiBjaGFuZ2UgdXNlcnNw
YWNlIHdlIG5lZWQgdG8ga25vdyB3aGF0IHRoaXMgaXMgYWltZWQgZm9yLCBhbmQgc2VlCj4gPiBh
Ym92ZSBJCj4gPiBkb24ndCB0aGluayB0aGlzIGlzIHBvc3NpYmxlIHRvIHVzZSB3aXRob3V0IHVz
ZXJzcGFjZSBjaGFuZ2VzIC4uLgo+Cj4gWWVzLCBzdXJlIEkgYWdyZWUgYWJvdXQgdXNlcnNwYWNl
LiBIb3dldmVyIEkgZ3Vlc3Mgd2UgbXVzdCBzdGFydCBmcm9tCj4gc29tZXRoaW5nIGF0IGxlYXN0
Lgo+IEkgdGhpbmsgSSBoYXZlIHNlZW4gc29tZSBkaXNjdXNzaW9uIHJlZ2FyZGluZyBleHBvc2lu
ZyB0aGlzIGVwb2NoCj4gY291bnRlciBhcyBhIHByb3BlcnR5LiBXYXMgZXZlbiBpbXBsZW1lbnRp
bmcgdGhpcyBhdCBzb21lIHBvaW50IGJ1dAo+IGRpZG4ndCBkYXJlIHRvIHNlbmQgdG8gbWFpbGlu
ZyBsaXN0IDopCj4KPiBNeSBpZGVhIHdhcyBqdXN0IHRvIGV4cG9zZSB0aGlzIGVwb2NoIGNvdW50
ZXIgYXMgYSBkcm0gcHJvcGVydHksIHRvIGxldAo+IHVzZXJzcGFjZSB0aGVuIHRvIGZpZ3VyZSBv
dXQsIHdoYXQgaGFzIGhhcHBlbmVkLCBhcyBpbWhvIGFkZGluZwo+IGRpZmZlcmVudCBldmVudHMg
Zm9yIHRoaXMgYW5kIHRoYXQgaXMgYSBiaXQgb2YgYW4gb3ZlcmtpbGwgYW5kIGJyaW5ncwo+IGFk
ZGl0aW9uYWwgY29tcGxleGl0eS4uCgpBZGRpbmcgUmFtIGFuZCBsaW5rIHRvIHRoZSAod2Fybmlu
ZywgaHVnZSEpIHRocmVhZDoKCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRj
aC8zMDM5MDUvP3Nlcmllcz01NzIzMiZyZXY9OQoKPiBIb3dldmVyLCBwbGVhc2UgbGV0IG1lIGtu
b3csIHdoYXQgZG8geW91IHRoaW5rIHdlIHNob3VsZCBkbyBmb3IKPiB1c2Vyc3BhY2UuCgpUaGF0
IHNlZW1zIGJhY2t3YXJkcywgc2luY2UgdGhpcyBpcyBhbiB1YXBpIGNoYW5nZSBJJ2QgZXhwZWN0
IHlvdSdyZQpzb2x2aW5nIHNvbWUgc3BlY2lmaWMgaXNzdWUgaW4gc29tZSBzcGVjaWZpYyB1c2Vy
c3BhY2U/IElmIHdlJ3JlIGRvaW5nCnRoaXMganVzdCBiZWNhdXNlIEknbSBub3QgcmVhbGx5IGZv
bGxvd2luZy4KCkNoZWVycywgRGFuaWVsCgo+Cj4KPiAtU3RhbmlzbGF2Cj4KPgo+ID4gLURhbmll
bAo+ID4KPiA+ID4KPiA+ID4gU3RhbmlzbGF2IExpc292c2tpeSAoMyk6Cj4gPiA+ICAgZHJtOiBB
ZGQgaGVscGVyIHRvIGNvbXBhcmUgZWRpZHMuCj4gPiA+ICAgZHJtOiBJbnRyb2R1Y2UgY2hhbmdl
IGNvdW50ZXIgdG8gZHJtX2Nvbm5lY3Rvcgo+ID4gPiAgIGRybS9pOTE1OiBTZW5kIGhvdHBsdWcg
ZXZlbnQgaWYgZWRpZCBoYWQgY2hhbmdlZC4KPiA+ID4KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9k
cm1fY29ubmVjdG9yLmMgICAgICAgICAgICAgIHwgIDEgKwo+ID4gPiAgZHJpdmVycy9ncHUvZHJt
L2RybV9lZGlkLmMgICAgICAgICAgICAgICAgICAgfCAzMwo+ID4gPiArKysrKysrKysrKysrKysr
KysrKwo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2RybV9wcm9iZV9oZWxwZXIuYyAgICAgICAgICAg
fCAyOSArKysrKysrKysrKysrKystCj4gPiA+IC0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICAgIHwgMTYgKysrKysrKysrLQo+ID4gPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgICAgfCAxNiArKysrKysrKy0tCj4gPiA+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYyB8IDIxICsrKysr
KysrKystLS0KPiA+ID4gIGluY2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaCAgICAgICAgICAgICAg
ICAgIHwgIDMgKysKPiA+ID4gIGluY2x1ZGUvZHJtL2RybV9lZGlkLmggICAgICAgICAgICAgICAg
ICAgICAgIHwgIDkgKysrKysrCj4gPiA+ICA4IGZpbGVzIGNoYW5nZWQsIDExNyBpbnNlcnRpb25z
KCspLCAxMSBkZWxldGlvbnMoLSkKPiA+ID4KPiA+ID4gLS0KPiA+ID4gMi4xNy4xCj4gPiA+Cj4g
Pgo+ID4KCgoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBv
cmF0aW9uCis0MSAoMCkgNzkgMzY1IDU3IDQ4IC0gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
