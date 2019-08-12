Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE678A31A
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 18:14:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFCAD6E573;
	Mon, 12 Aug 2019 16:14:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3E3F6E573
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 16:14:08 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id g67so92065wme.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 09:14:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b7X0LBxkImLuy0BZ6zXLcUies4V6r0SCoYtOxiVscDw=;
 b=W0vNUHKZ5lJjoiCQip8TgFeFqVijGq6rwR4JzMLsJQzQsQLZ7xZPuyoMI0c5/l6pEY
 H5w2Ekbjt6tFvhsQcHpglvtQTbT6QU7dR8jy8i6ymKDRC6NKZQDIkc/Uiu2k7dGO0qgD
 +N60ow/rpE5Iy2+CjdKqRoCgb3IgE9pb+ZS82Hl7j/9EYeZFy6Ss+EHZsHl864CGvWAV
 4Q2RCVwtGpcQimeNLIXvM48ENypkL7gkekTaHBJj9cmpayBzzRhEq2dLOM6c1B3tGfSF
 RMGeGl9qwtbbdeIy/z0ssNjASYlv+6jR870JeiETKAwXiBshH8+3kn1GPpe96EFYur/w
 ljyQ==
X-Gm-Message-State: APjAAAXgugSTbjOIEbMOnDjCu9DF1ORVeAP+2Hat9v3v2cbS0BESOSfH
 XhQ5sCLvHIpcNHLiGFMW6ixzwr8JoLwWGeAeVeU=
X-Google-Smtp-Source: APXvYqwiFi7Uu71+UsOWFpll+J5gSIyTHgFJTLv4UmdP9vFtzLlgr1Jv0C3y2USBGvpX3ibOJuh616LPpcBsnmKVBsA=
X-Received: by 2002:a1c:4e10:: with SMTP id g16mr54185wmh.67.1565626447296;
 Mon, 12 Aug 2019 09:14:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190725235643.6870-1-lucas.demarchi@intel.com>
In-Reply-To: <20190725235643.6870-1-lucas.demarchi@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Mon, 12 Aug 2019 09:13:55 -0700
Message-ID: <CAKi4VAJZ9qtgKMMN8+3=e3Y2xzY8HtL72GksM4SeTrRi4jR2TA@mail.gmail.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=b7X0LBxkImLuy0BZ6zXLcUies4V6r0SCoYtOxiVscDw=;
 b=rbmYxsqvi2DUR5jiDAaop/nJJhGvOaSk+R6q5V8qjRQoXBLwZZSpJXeeVslSkCDdkO
 yPqv4ARGhCYHTgGsB2EVl3n9fQJ8Kt7o40xdSInG5QEJUG2XdB5MsG0kpukG78haLNQ3
 aWljJKvUyYZasmsMwLkdXNSn66ikhjR38aPzy1QXUlC9mSfykiFzSv0B9nY0VbK+H/pc
 5d96Ni+1w4SUqIuOrscDi+UYDgj96hS62CQqDbSLwhqBubqOI1H+L5OWwq3EeMxT2PIN
 BRPDnZIdtSexJdHeGMA3MZroE9FhdUTD/7ucXd+9ZGzghwokiuOk3PjHPTAf+uGkvP1n
 djJw==
Subject: Re: [Intel-gfx] [PATCH 0/5] Tiger Lake: DKL phy PLLs
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

K1ZhbmRpdGEKCk9uIFRodSwgSnVsIDI1LCAyMDE5IGF0IDQ6NTcgUE0gTHVjYXMgRGUgTWFyY2hp
CjxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+IHdyb3RlOgo+Cj4gTW9zdGx5IHRoZSBzYW1lIHBh
dGNoZXMgYXMgaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MzY3MC8u
Cj4gUmViYXNlZC4KPgo+IEx1Y2FzIERlIE1hcmNoaSAoMik6Cj4gICBkcm0vaTkxNS90Z2w6IHJl
LWluZGVudCBjb2RlIHRvIHByZXBhcmUgZm9yIERLTCBjaGFuZ2VzCj4gICBkcm0vaTkxNS90Z2w6
IHN0YXJ0IGFkZGluZyB0aGUgREtMIFBMTHMgdG8gdXNlIG9uIFRDIHBvcnRzCgpWYW5kaXRhLCBj
YW4geW91IHJldmlldyB0aGVzZSAyIHBhdGNoZXMgc2luY2UgdGhleSBhcmUgcmVsYXRlZCB0byB5
b3Vycz8KClRoYW5rcwpMdWNhcyBEZSBNYXJjaGkKCj4KPiBWYW5kaXRhIEt1bGthcm5pICgzKToK
PiAgIGRybS9pOTE1L3RnbDogQWRkIERLTCBwaHkgcGxsIHJlZ2lzdGVycwo+ICAgZHJtL2k5MTUv
dGdsOiBBZGQgREtMIHBoeSBwbGwgc3RhdGUgY2FsY3VsYXRpb25zCj4gICBkcm0vaTkxNS90Z2w6
IEFkZCBzdXBwb3J0IGZvciBka2wgcGxsIHdyaXRlCj4KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIHwgMzM1ICsrKysrKysrKysrKysrLS0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAgOTQgKysrKysKPiAg
MiBmaWxlcyBjaGFuZ2VkLCAzNjggaW5zZXJ0aW9ucygrKSwgNjEgZGVsZXRpb25zKC0pCj4KPiAt
LQo+IDIuMjEuMAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4CgoKCi0tIApMdWNhcyBEZSBNYXJjaGkKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
