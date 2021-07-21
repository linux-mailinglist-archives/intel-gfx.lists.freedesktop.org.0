Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F61B3D0AFE
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 11:12:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E18216E84E;
	Wed, 21 Jul 2021 09:12:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com
 [IPv6:2607:f8b0:4864:20::22c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F1126E84E
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 09:12:31 +0000 (UTC)
Received: by mail-oi1-x22c.google.com with SMTP id y66so2174556oie.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 02:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Yk0pURgu+qIZuk7Nbm3QZWwdVQxw26haEZdX4DxRtQo=;
 b=KshUNjkVZkOw/Hb1O9itdD1JHY0uOQQhG/8EPRsl597CR91dAvieYPXjTjnlzX1DPi
 V2MMs8InEPukBGQmtW+Ri38bq7HGDyoTTL3HCRwS5ulFxx4H0vEaTA/J4qTNHCODViAd
 txZNqfywHTNYytUDwYb/vmrJqqLGAsoKHsBa0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Yk0pURgu+qIZuk7Nbm3QZWwdVQxw26haEZdX4DxRtQo=;
 b=c4GAhbJYHocFgkImQaxM9SU0xvIE+aO4DP+voyHZ5k4MfbKK5iSMatFd4S0wLp2cL4
 Hsr2Da+LA4g462j7qmRbA/IybKjX6idcXB9dpffVobi4P6iSfxlGw2O00jy9FyOSb/th
 gATSJB2arKDXKpml9LzaUm2/WiA4Dz3SG6OyucSaVkaGrsH7zf/OdvE606RpJT1UReaA
 r9QK2miGQSV84vb6hGtxWYJD4Vks1eG8sOV/Nvq3qkI5Pi0rca3Bnju097CPBeJoRKV9
 7hEhJ8NglFPqQYoHT0b7YERKZT/oVx/YMAxJioGsM137QGX+f6vEJJMLhR+4N16Svyjs
 iKkQ==
X-Gm-Message-State: AOAM532OyyQjnn3EaBS2irXWhrtBQIOtgbx8Yxa6Q/LbQvEtQCosSXnw
 hNKlpBnDHF38HbLZdmXRJgdH6RaQXBdGXRII/Q9nbQ==
X-Google-Smtp-Source: ABdhPJxyC2cVRm/X6VHhXUIc3dYl04Y6cXhr68BzX7L1h9a4CNz6rxR+pQuNsty36yHvKNZ6KwiWFmOrMnolRR48Qc4=
X-Received: by 2002:aca:b902:: with SMTP id j2mr24571899oif.128.1626858750655; 
 Wed, 21 Jul 2021 02:12:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210720181357.2760720-1-jason@jlekstrand.net>
 <20210720181357.2760720-5-jason@jlekstrand.net>
 <8c6a14f1-5b42-bca2-ee59-7274667e794c@amd.com>
 <CAKMK7uGjaHes1U+h7-8GTx1rPVBGBJz5dJw7=Nhh5WEUJG1Yqw@mail.gmail.com>
 <acfefe81-1eae-af52-c045-1d2c1dcb162a@amd.com>
In-Reply-To: <acfefe81-1eae-af52-c045-1d2c1dcb162a@amd.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 21 Jul 2021 11:12:19 +0200
Message-ID: <CAKMK7uE1c=nhY9JNpLhky=ty4OXYfM3wcLi6EMhhVSH=otKagg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/ttm: Force re-init if
 ttm_global_init() fails
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
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdWwgMjEsIDIwMjEgYXQgMTE6MDggQU0gQ2hyaXN0aWFuIEvDtm5pZwo8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToKPiBBbSAyMS4wNy4yMSB1bSAxMTowNiBzY2hyaWVi
IERhbmllbCBWZXR0ZXI6Cj4gPiBPbiBXZWQsIEp1bCAyMSwgMjAyMSBhdCA4OjM2IEFNIENocmlz
dGlhbiBLw7ZuaWcKPiA+IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOgo+ID4+IEFt
IDIwLjA3LjIxIHVtIDIwOjEzIHNjaHJpZWIgSmFzb24gRWtzdHJhbmQ6Cj4gPj4+IElmIHdlIGhh
dmUgYSBmYWlsdXJlLCBkZWNyZW1lbnQgdGhlIHJlZmVyZW5jZSBjb3VudCBzbyB0aGF0IHRoZSBu
ZXh0Cj4gPj4+IGNhbGwgdG8gdHRtX2dsb2JhbF9pbml0KCkgd2lsbCBhY3R1YWxseSBkbyBzb21l
dGhpbmcgaW5zdGVhZCBvZiBhc3N1bWUKPiA+Pj4gZXZlcnl0aGluZyBpcyBhbGwgc2V0IHVwLgo+
ID4+Pgo+ID4+PiBTaWduZWQtb2ZmLWJ5OiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFu
ZC5uZXQ+Cj4gPj4+IEZpeGVzOiA2MmI1M2IzN2U0YjEgKCJkcm0vdHRtOiB1c2UgYSBzdGF0aWMg
dHRtX2JvX2dsb2JhbCBpbnN0YW5jZSIpCj4gPj4+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gPj4gSSd2ZSBqdXN0IHB1c2hlZCB0aGlz
IHRvIGRybS1taXNjLWZpeGVzLgo+ID4gRGlkIHlvdSBzZWUgcGF0Y2ggNS82IGhlcmUgd2hpY2gg
aXMgYWxzbyB0b3VjaGluZyB0dG0/Cj4KPiBOb3BlLCBuZWl0aGVyIHdpdGggbXkgQU1EIG5vciB3
aXRoIG15IEdNYWlsIGFjY291bnQuCj4KPiBMb29rcyBsaWtlIHNvbWV0aGluZyBpcyB3cm9uZyB3
aXRoIHRoZSBkaXN0cmlidXRpb24gb2YgbWFpbHMgb3ZlciB0aGUKPiBtYWlsaW5nIGxpc3QgZm9y
IGEgZmV3IGRheXMgbm93LgoKUGluZyBhZG1pbnMgb24gI2ZyZWVkZXNrdG9wIG9uIG9mdGMsIHRo
ZXkgY2FuIHVzdWFsbHkgY2hhc2Ugd2hlcmUKbWFpbHMgYXJlIHN0dWNrLiBJdCB3b3JrcyBhbGwg
ZmluZSBmb3IgbWUsIGJ1dCBJJ3ZlIHNlZW4geW91IGNvbXBsYWluCnRoYXQgeW91IGRpZG4ndCBn
ZXQgYWxsIHRoZSBtc20gcGF0Y2hlcyB0b28sIHNvIGZpZ3VyZWQgYmV0dGVyIEkKaGlnaGxpZ2h0
IGluIGNhc2UgaXQncyBsb3N0LgoKPiBHb2luZyB0byBkb3VibGUgY2hlY2sgcGF0Y2h3b3JrLgoK
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzIwMjEwNzIwMTgxMzU3LjI3NjA3MjAt
Ni1qYXNvbkBqbGVrc3RyYW5kLm5ldC8KCkNoZWVycywgRGFuaWVsCgo+Cj4gQ2hyaXN0aWFuLgo+
Cj4gPiAtRGFuaWVsCj4gPgo+ID4+IFRoYW5rcywKPiA+PiBDaHJpc3RpYW4uCj4gPj4KPiA+Pj4g
LS0tCj4gPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2RldmljZS5jIHwgMiArKwo+ID4+
PiAgICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4gPj4+Cj4gPj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9kZXZpY2UuYyBiL2RyaXZlcnMvZ3B1L2RybS90
dG0vdHRtX2RldmljZS5jCj4gPj4+IGluZGV4IDVmMzFhY2VjM2FkNzYuLjUxOWRlZWE4ZTM5Yjcg
MTAwNjQ0Cj4gPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2RldmljZS5jCj4gPj4+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2RldmljZS5jCj4gPj4+IEBAIC0xMDAsNiAr
MTAwLDggQEAgc3RhdGljIGludCB0dG1fZ2xvYmFsX2luaXQodm9pZCkKPiA+Pj4gICAgICAgIGRl
YnVnZnNfY3JlYXRlX2F0b21pY190KCJidWZmZXJfb2JqZWN0cyIsIDA0NDQsIHR0bV9kZWJ1Z2Zz
X3Jvb3QsCj4gPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmZ2xvYi0+Ym9fY291
bnQpOwo+ID4+PiAgICBvdXQ6Cj4gPj4+ICsgICAgIGlmIChyZXQpCj4gPj4+ICsgICAgICAgICAg
ICAgLS10dG1fZ2xvYl91c2VfY291bnQ7Cj4gPj4+ICAgICAgICBtdXRleF91bmxvY2soJnR0bV9n
bG9iYWxfbXV0ZXgpOwo+ID4+PiAgICAgICAgcmV0dXJuIHJldDsKPiA+Pj4gICAgfQo+ID4+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4gSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdAo+ID4+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+
PiBodHRwczovL25hbTExLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0
cHMlM0ElMkYlMkZsaXN0cy5mcmVlZGVza3RvcC5vcmclMkZtYWlsbWFuJTJGbGlzdGluZm8lMkZp
bnRlbC1nZngmYW1wO2RhdGE9MDQlN0MwMSU3Q2NocmlzdGlhbi5rb2VuaWclNDBhbWQuY29tJTdD
MDVmZjIzMzI3M2E1NGI5ODdiNmIwOGQ5NGMyNmQwYWMlN0MzZGQ4OTYxZmU0ODg0ZTYwOGUxMWE4
MmQ5OTRlMTgzZCU3QzAlN0MwJTdDNjM3NjI0NTUxODY3NDk1MzQxJTdDVW5rbm93biU3Q1RXRnBi
R1pzYjNkOGV5SldJam9pTUM0d0xqQXdNREFpTENKUUlqb2lWMmx1TXpJaUxDSkJUaUk2SWsxaGFX
d2lMQ0pYVkNJNk1uMCUzRCU3QzEwMDAmYW1wO3NkYXRhPTcwUllRNDlRNThWRUQ1ak1wSiUyRlc5
Vnk1aW1VbmRnaEZTMHRRV0llRDdkayUzRCZhbXA7cmVzZXJ2ZWQ9MAo+ID4KPiA+Cj4KCgotLSAK
RGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDov
L2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
