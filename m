Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA443BD74D
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jul 2021 14:59:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39DF16E161;
	Tue,  6 Jul 2021 12:59:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com
 [IPv6:2607:f8b0:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 757C78961E
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jul 2021 12:59:01 +0000 (UTC)
Received: by mail-ot1-x334.google.com with SMTP id
 d21-20020a9d72d50000b02904604cda7e66so21441390otk.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 06 Jul 2021 05:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=GEiP9J1UgxQK0/cNY7a9scwAPFd9tZPVnelnU1KrVhE=;
 b=Hgv3qBPK2nCy3ZNB87CQ8tc+cSWS+0u2J/W278UqTqHCeqEAoSdS1uEBZYCpgd5f+J
 O/tsNx3RBhylbep91l5F+vbL0KIXEJh7qjmJNMevHb8JXLNB6D/4P3G521PW7XftANl+
 wKm1pqIsZIdsku4c12xyyOs5TQUCRqpUBjKgU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=GEiP9J1UgxQK0/cNY7a9scwAPFd9tZPVnelnU1KrVhE=;
 b=pQiyfkuXpRQ3YjO6pwCZ0ob4Rge8uX7jdNLwktVo6Bcu4za1opm4vI4PZ8fyf2WCU8
 iFj250IIB3RKX+IPZN3KUPrG9Qi/7DX3I0He3WEnhUUPCva13Qm4vUKMbY6zJM9xznAT
 EQd47qTtbUmxUkFFHcjY3tung6LMYjCAVC+ehcSfgVq/DOeMD6z+ISlI/VyaDp3H1CyR
 4aawQZqQdmhtdGrrvwZ/wMswThJXfKhaknfM2P7GajYtaBQZWJh47hxUXi4bB2F4E1B/
 Y3kNjIdoMiLSyO3PPqqM/ZvRigBo29VsCrNT7loNpAUSVrT88t3nu7tLL/hYgwOB6Zdl
 ZE4g==
X-Gm-Message-State: AOAM531pJjcBHhUNj1b3q5aMlfhw761x30KY68+3nCN7gQAgULaRAk4G
 RAZ7ATmRFMS4pIFCl0YwJr+9Iy+E/z+jX7exQgqFQg==
X-Google-Smtp-Source: ABdhPJxj4Jj7b3TaoQXaiBZj1PDXvEMbPWhPnvR+xXlBweenrnk8QQ+TZI49igbqKY3erA7zqeF/DYFkg8sNi1BARZM=
X-Received: by 2002:a05:6830:1f19:: with SMTP id
 u25mr11412664otg.303.1625576340884; 
 Tue, 06 Jul 2021 05:59:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210706101209.3034092-1-daniel.vetter@ffwll.ch>
 <20210706101209.3034092-6-daniel.vetter@ffwll.ch>
 <CAM0jSHPqCQ58hnCkShZVq93k3y6J6cNJsyfagXdu5Y1zEN7NtA@mail.gmail.com>
In-Reply-To: <CAM0jSHPqCQ58hnCkShZVq93k3y6J6cNJsyfagXdu5Y1zEN7NtA@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 6 Jul 2021 14:58:50 +0200
Message-ID: <CAKMK7uFJBvu-N1W+LbhSGtqkKfOEb7CkgfxtAp2XaHZM93BMiw@mail.gmail.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915: Always wait for the exclusive
 fence
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
Cc: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdWwgNiwgMjAyMSBhdCAyOjQ3IFBNIE1hdHRoZXcgQXVsZAo8bWF0dGhldy53aWxs
aWFtLmF1bGRAZ21haWwuY29tPiB3cm90ZToKPgo+IE9uIFR1ZSwgNiBKdWwgMjAyMSBhdCAxMTox
MiwgRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4gd3JvdGU6Cj4gPgo+ID4g
V2UncmUgbGlmdGluZywgb3Igd2VsbCwgY2xhcmlmeWluZyB0aGF0IHRoZSByZXN0cmljdGlvbiB0
aGF0IHNoYXJlZAo+ID4gZmVuY2VzIGhhdmUgdG8gYmUgc3RyaWN0bHkgYWZ0ZXIgdGhlIGV4Y2x1
c2l2ZSBvbmUgZG9lc24ndCBhcHBseQo+ID4gYW55bW9yZS4KPiA+Cj4gPiBTbyBhZGp1c3QgdGhl
IGNvZGUgdG8gYWx3YXlzIGFsc28gd2FpdCBmb3IgdGhlIGV4Y2x1c2l2ZSBmZW5jZS4KPiA+Cj4g
PiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4K
PiA+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwu
Y29tPgo+ID4gQ2M6ICJUaG9tYXMgSGVsbHN0csO2bSIgPHRob21hcy5oZWxsc3Ryb21AbGludXgu
aW50ZWwuY29tPgo+ID4gQ2M6IEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5kLm5ldD4K
PiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3dfZmVuY2UuYyB8IDQgKyst
LQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4g
Pgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3dfZmVuY2UuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3dfZmVuY2UuYwo+ID4gaW5kZXggOTE3MTFhNDZi
MWM3Li4yNzFkMzIxY2VhODMgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3N3X2ZlbmNlLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3dfZmVu
Y2UuYwo+ID4gQEAgLTYwMSwxMCArNjAxLDEwIEBAIGludCBpOTE1X3N3X2ZlbmNlX2F3YWl0X3Jl
c2VydmF0aW9uKHN0cnVjdCBpOTE1X3N3X2ZlbmNlICpmZW5jZSwKPiA+ICAgICAgICAgICAgICAg
ICBmb3IgKGkgPSAwOyBpIDwgY291bnQ7IGkrKykKPiA+ICAgICAgICAgICAgICAgICAgICAgICAg
IGRtYV9mZW5jZV9wdXQoc2hhcmVkW2ldKTsKPiA+ICAgICAgICAgICAgICAgICBrZnJlZShzaGFy
ZWQpOwo+ID4gLSAgICAgICB9IGVsc2Ugewo+ID4gLSAgICAgICAgICAgICAgIGV4Y2wgPSBkbWFf
cmVzdl9nZXRfZXhjbF91bmxvY2tlZChyZXN2KTsKPiA+ICAgICAgICAgfQo+ID4KPiA+ICsgICAg
ICAgZXhjbCA9IGRtYV9yZXN2X2dldF9leGNsX3VubG9ja2VkKHJlc3YpOwo+ID4gKwo+Cj4gVGhl
IGRtYV9yZXN2X2dldF9mZW5jZXMoKSBjYWxsIGxvb2tzIGxpa2UgaXQgYWxyZWFkeSBmaXNoZXMg
b3V0IHRoZQo+IGV4Y2x1c2l2ZSBmZW5jZS4gRG9lcyB0aGlzIG5vdCBsZWFrIHRoZSBleHRyYSBy
ZWYgbm93PwoKT2ggcmlnaHQgSSBvdmVybG9va2VkIHRoaXMsIHdlIGFscmVhZHkgcGljayB1cCB0
aGUgZXhjbHVzaXZlIGZlbmNlCnVuY29uZGl0aW9uYWxseS4gQ29udHJvbCBmbG93IGhlcmUgd2Fz
IGEgYml0IHRvbyBjbGV2ZXIgZm9yIG15IHBhcnNlci4KSSdsbCBkcm9wIHRoaXMgcGF0Y2ggaW4g
dGhlIG5leHQgcm91bmQuCi1EYW5pZWwKCj4KPiA+ICAgICAgICAgaWYgKHJldCA+PSAwICYmIGV4
Y2wpIHsKPiA+ICAgICAgICAgICAgICAgICBwZW5kaW5nID0gaTkxNV9zd19mZW5jZV9hd2FpdF9k
bWFfZmVuY2UoZmVuY2UsCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGV4Y2wsCj4gPiAtLQo+ID4gMi4zMi4wCj4gPgo+ID4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IEludGVsLWdmeCBt
YWlsaW5nIGxpc3QKPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IGh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgoKCi0t
IApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRw
Oi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
