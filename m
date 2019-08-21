Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF9297D58
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 16:43:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 851B36E438;
	Wed, 21 Aug 2019 14:43:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com
 [IPv6:2607:f8b0:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA5DA6E440
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 14:43:01 +0000 (UTC)
Received: by mail-ot1-x343.google.com with SMTP id g17so2299136otl.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 07:43:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6iuRVThww7VxLaYpCNvMXhDIkgtKok16DJgordDbr0Q=;
 b=KyJ6GYCi86CtN7/+yw5KXwmrSHNVNGm5kph3ZP/1ep83/9/t0N1/3UIP8RmIybXsLg
 gACZVrj4A/EW99jNzMQcd5XkoudHZWgzHtipqSapaqc5RfxPy61jht/I62eY5aLH9fgN
 /jfO/aCl8TazEIdo8HCF1U1TPQcq9SBsNuWVjR3BLIDUmPjnl2VRbAJvvDyOxqg+wmdL
 Ny9h1EvJZoV/FS7Ju7YJTVB1zlUgPg06X6UD/uJL+EebGmPFUnE2Eobkuoeh4jyz28cc
 wT+G7gWErbqGikI4gY0DMb/ITO6YpvqMRML8RoMM3FoWUVdxcfuoIcYXmZWOVvrj7zR7
 JKSQ==
X-Gm-Message-State: APjAAAUUUIN1eeb0RhMS9Jc+i1QGC4XxSmtlPrcNjXwIAFKRYha0p8Ve
 F32s2qqDVGv8t83890LvpIypJJS8qwcdnhDHM8XJ6A==
X-Google-Smtp-Source: APXvYqyf3UH0OqIqB9kQUaC6eBNOGxEFRNeGoiwIZ78pHk7lfFm7nVBwiBh5Cl9sS57q8d5L0VfU99engPiXcYyMn/M=
X-Received: by 2002:a9d:590d:: with SMTP id t13mr16672822oth.281.1566398580990; 
 Wed, 21 Aug 2019 07:43:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190820145336.15649-1-daniel.vetter@ffwll.ch>
 <20190820145336.15649-4-daniel.vetter@ffwll.ch>
 <dbe0e8a6-573f-6628-0b9e-1c978611efce@shipmail.org>
 <CAKMK7uH93XWbz7X6VJsvRB+pbgFEjH=iYAAgQc42gcAON8YXVw@mail.gmail.com>
 <d1574611-e51d-e08c-5305-175e0375813e@shipmail.org>
In-Reply-To: <d1574611-e51d-e08c-5305-175e0375813e@shipmail.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 21 Aug 2019 16:42:48 +0200
Message-ID: <CAKMK7uFr0X-wj24j7tGc-AOZHx4Rvqwjax=rZ82ydgWNhFdZ9w@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m_=28VMware=29?= <thomas_os@shipmail.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=6iuRVThww7VxLaYpCNvMXhDIkgtKok16DJgordDbr0Q=;
 b=k+ibYyAfezLlmyA8jqfq9Rj3sX0w50z511I9VP2/fLgL0cjMEI6jfdRP9Wfmj1RXGM
 R7r4mp+lO0h2q5+g/RV37Uy6yffeio3kTOhsji7pxD2EJGpIAHqbw/oxTWoE3VUwWjSB
 lkkhkSgjEeMHck2SHOkkA2PG6AZnqiftY7yFU=
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/ttm: remove ttm_bo_wait_unreserved
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
Cc: Thomas Hellstrom <thellstrom@vmware.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Huang Rui <ray.huang@amd.com>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Christian Koenig <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBBdWcgMjEsIDIwMTkgYXQgNDozMCBQTSBUaG9tYXMgSGVsbHN0csO2bSAoVk13YXJl
KQo8dGhvbWFzX29zQHNoaXBtYWlsLm9yZz4gd3JvdGU6Cj4KPiBPbiA4LzIxLzE5IDQ6MTAgUE0s
IERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPiBPbiBXZWQsIEF1ZyAyMSwgMjAxOSBhdCAzOjE2IFBN
IFRob21hcyBIZWxsc3Ryw7ZtIChWTXdhcmUpCj4gPiA8dGhvbWFzX29zQHNoaXBtYWlsLm9yZz4g
d3JvdGU6Cj4gPj4gT24gOC8yMC8xOSA0OjUzIFBNLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4+
PiBXaXRoIG5vdXZlYXUgZml4ZWQgYWxsIHR0bS11c2luZyBkcml2ZXMgaGF2ZSB0aGUgY29ycmVj
dCBuZXN0aW5nIG9mCj4gPj4+IG1tYXBfc2VtIHZzIGRtYV9yZXN2LCBhbmQgd2UgY2FuIGp1c3Qg
bG9jayB0aGUgYnVmZmVyLgo+ID4+Pgo+ID4+PiBBc3N1bWluZyBJIGRpZG4ndCBzY3JldyB1cCBh
bnl0aGluZyB3aXRoIG15IGF1ZGl0IG9mIGNvdXJzZS4KPiA+Pj4KPiA+Pj4gU2lnbmVkLW9mZi1i
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4gPj4+IENjOiBDaHJp
c3RpYW4gS29lbmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gPj4+IENjOiBIdWFuZyBS
dWkgPHJheS5odWFuZ0BhbWQuY29tPgo+ID4+PiBDYzogR2VyZCBIb2ZmbWFubiA8a3JheGVsQHJl
ZGhhdC5jb20+Cj4gPj4+IENjOiAiVk13YXJlIEdyYXBoaWNzIiA8bGludXgtZ3JhcGhpY3MtbWFp
bnRhaW5lckB2bXdhcmUuY29tPgo+ID4+PiBDYzogVGhvbWFzIEhlbGxzdHJvbSA8dGhlbGxzdHJv
bUB2bXdhcmUuY29tPgo+ID4+PiAtLS0KPiA+Pj4gICAgZHJpdmVycy9ncHUvZHJtL3R0bS90dG1f
Ym8uYyAgICB8IDM0IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4+PiAgICBk
cml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib192bS5jIHwgMjYgKy0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQo+ID4+PiAgICBpbmNsdWRlL2RybS90dG0vdHRtX2JvX2FwaS5oICAgIHwgIDEgLQo+ID4+
PiAgICAzIGZpbGVzIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCA2MCBkZWxldGlvbnMoLSkKPiA+
Pj4KPiA+Pj4KPiA+Pj4gKyAgICAgZG1hX3Jlc3ZfbG9jayhiby0+YmFzZS5yZXN2LCBOVUxMKTsK
PiA+PiBpbnRlcnJ1cHRpYmxlLCBvciBhdCBsZWFzdCBraWxsYWJsZS4gKElJUkMgdGhpbmsga2ls
bGFibGUgaXMgdGhlIHJpZ2h0Cj4gPj4gY2hvaWNlIGluIGZhdWx0IGNvZGUsIGV2ZW4gaWYgVFRN
IGluaXRpYWxseSBpbXBsZW1lbnRlZCBpbnRlcnJ1cHRpYmxlIHRvCj4gPj4gZ2V0IHJlYXNvbmFi
bGUgWG9yZyAic2lsa2VuIG1vdXNlIiBsYXRlbmN5KS4KPiA+IEkgdGhpbmsgaW50ZXJydXB0aWJs
ZSBpcyBmaW5lLiBJIGNoaWNrZW5kIG91dCBvZiB0aGF0IGZvciB2MSBiZWNhdXNlIEkKPiA+IGFs
d2F5cyBtaXggdXAgdGhlIHJldHVybiBjb2RlIGZvciBfbG9ja19pbnRlcnJ1cHRpYmwoKSA6LSkK
Pgo+IDopLiBJSVJDIEkgdGhpbmsgdGhlIGluLWtlcm5lbCB1c2VycyBvZiBmYXVsdCgpIHdlcmUg
dW5oYXBweSB3aXRoCj4gaW50ZXJydXB0aWJsZS4gIChHVVA/KSwgYnV0IEkgZ3Vlc3MgaXQncyBi
ZXR0ZXIgdG8gdXNlIGEgYnVsayBjaGFuZ2UgYXQKPiBzb21lIHBvaW50IGlmIG5lY2Vzc2FyeS4K
CldlJ3ZlIGJlZW4gdXNpbmcgaW50ZXJydXB0aWJsZSBzaW5jZSBmb3JldmVyLCByZXR1cm5pbmcK
Vk1fRkFVTFRfTk9QQUdFIHRvIGdldCB0aGUgc2lnbmFsIGhhbmRsZWQgYW5kIHJlLXJ1bi4gU2Vl
bXMgdG8gbm90CmhhdmUgcGlzc2VkIG9mZiBhbnlvbmUgdGh1cyBmYXIuIEkgdGhpbmsgaWYgd2Ug
ZG8gdGhpcyBJJ2xsIGRvIGl0IGFzIGEKZm9sbG93LXVwLgotRGFuaWVsCi0tIApEYW5pZWwgVmV0
dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5IDM2NSA1
NyA0OCAtIGh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
