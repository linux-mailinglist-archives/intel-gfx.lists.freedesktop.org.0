Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA9E390D5A
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 02:36:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7404F6EB90;
	Wed, 26 May 2021 00:36:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CBE76EB90;
 Wed, 26 May 2021 00:36:02 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id k14so46650605eji.2;
 Tue, 25 May 2021 17:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=y5MMfJ/ySSUltKMUiPtJcOuxUuoxT1EBY0Rwedl2dhk=;
 b=IoVeiVun6pWtZgw/hiGSwGnxPNdt60msRXno7GEC/lMInQfxkv1A8xDSl/mlw/6xan
 uXpFwKRwLPM+Bn0K6HY6Wznw3hYGRDCTzEcfIcd0JtItkxZgYFrK7drPQSD+0KKEsnNC
 wr50SzXuxQHU5xjAGCV+2LPpGPN2VPiFx847p1ihXSM+K2z8zxp4fu0UfauB4F3o8tzL
 nKgOGT70sn/lS4dWx+ZMxI6lcRrY0aRNXhHq3TYhW/MmhpX8XAOsCuXbA/G/0JogotLW
 PAYWQCRTmLYyCY6pSzd0YWo/EHTU67DR/VJn9L9rH0MT9GfHr8EVhidosKUBaD5m3yvL
 s4LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=y5MMfJ/ySSUltKMUiPtJcOuxUuoxT1EBY0Rwedl2dhk=;
 b=ZlRxGVhcB/3rTOc9NsEvGgmn5MWQWtPWJ1dvEJgrl9V/6FmBRKVXOCJkHYyX8MYuGR
 UOzkCLG9dmvnEADtXH82NFfreLzoCo9lnI443CXgB3BU5sg4P1Tg2Wca6IFZQ4WlTOBM
 Mm4fimaX88f46U5wSkd8BmMhVOE7C/HYhbklmEMLNiy4AJmBjLGHdTyTJ+PghAIxA4oI
 7Z81Y1GN9N8VszHhxnVvQ7UVFMBwlyFRqQEyfCZI3DmOOju36alZ1LgMBJ0F35ZtSJUr
 XszmQzOsKHum+WhidXGWfkxyZ6Q7bShAWlcIPZ8TCBvF+djOBvNFGmnmgWP2S4Cxt9e8
 GIwA==
X-Gm-Message-State: AOAM5320mUjO1MwKoF0aadpJsHXoSL4eaFZmJ29CaI/kiKag2y57Toj+
 imhQa7YBAx/XV4SNY5/Tp1zOw/cR8adTqfWcA94=
X-Google-Smtp-Source: ABdhPJw5YP6gn5ujlbdeQ5mhz+XQTYTH858RjzZnpuhmAG03wDv1aSHglvjBCuLrwa9HfLUdhBVaI6SAaTEgpRTL/jc=
X-Received: by 2002:a17:906:1496:: with SMTP id
 x22mr31769041ejc.419.1621989361060; 
 Tue, 25 May 2021 17:36:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210511083139.54002-1-zbigniew.kempczynski@intel.com>
 <YJq5OHIO8ThIiKCz@phenom.ffwll.local>
In-Reply-To: <YJq5OHIO8ThIiKCz@phenom.ffwll.local>
From: Dave Airlie <airlied@gmail.com>
Date: Wed, 26 May 2021 10:35:49 +1000
Message-ID: <CAPM=9ty84uK-gT3uXZXGOEFno11SBRUh=btXb-B7OYUmnGiRoQ@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add relocation exceptions for two
 other platforms
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
Cc: Dave Airlie <airlied@redhat.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAxMiBNYXkgMjAyMSBhdCAwMzowNSwgRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xs
LmNoPiB3cm90ZToKPgo+IE9uIFR1ZSwgTWF5IDExLCAyMDIxIGF0IDEwOjMxOjM5QU0gKzAyMDAs
IFpiaWduaWV3IEtlbXBjennFhHNraSB3cm90ZToKPiA+IFdlIGhhdmUgZXN0YWJsaXNoZWQgcHJl
dmlvdXNseSB3ZSBzdG9wIHVzaW5nIHJlbG9jYXRpb25zIHN0YXJ0aW5nCj4gPiBmcm9tIGdlbjEy
IHBsYXRmb3JtcyB3aXRoIFRpZ2VybGFrZSBhcyBhbiBleGNlcHRpb24uIFVuZm9ydHVuYXRlbHkK
PiA+IHdlIG5lZWQgZXh0ZW5kIHRyYW5zaXRpb24gcGVyaW9kIGFuZCBzdXBwb3J0IHJlbG9jYXRp
b25zIGZvciB0d28KPiA+IG90aGVyIGlnZnggcGxhdGZvcm1zIC0gUm9ja2V0bGFrZSBhbmQgQWxk
ZXJsYWtlLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFpiaWduaWV3IEtlbXBjennFhHNraSA8emJp
Z25pZXcua2VtcGN6eW5za2lAaW50ZWwuY29tPgo+ID4gQ2M6IERhdmUgQWlybGllIDxhaXJsaWVk
QHJlZGhhdC5jb20+Cj4gPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5j
b20+Cj4gPiBDYzogSmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtzdHJhbmQubmV0Pgo+Cj4gU28g
dGhlIGFubm95aW5nIHRoaW5nIGhlcmUgaXMgdGhhdCBub3cgbWVkaWEtZHJpdmVyIGlzIGZpeGVk
Ogo+Cj4gaHR0cHM6Ly9naXRodWIuY29tL2ludGVsL21lZGlhLWRyaXZlci9jb21taXQvMTQ0MDIw
YzM3NzcwMDgzOTc0YmVkZjU5OTAyYjcwYjhmNDQ0Yzc5OQo+Cj4gV2hpY2ggbWVhbnMgaWd0IGlz
IHJlYWxseSB0aGUgb25seSB0aGluZyBsZWZ0Lgo+Cj4gRGF2ZSwgaXMgdGhpcyBzdGlsbCBvayBm
b3IgYW4gYWNrZWQgZXhjZXB0aW9uLCBvciBpcyB0aGlzIG5vdyBsZWFuaW5nCj4gdG93YXJkcyAi
anVzdCBmaXggaWd0Ij8KCk9oIHRoYXQgaXNuJ3QgZ3JlYXQgaXMgaXQsIEkgaGFkIHRob3VnaHQg
aXQgd2FzIHRoZSBtZWRpYS1kcml2ZXIsCmtlZXBpbmcgYSBiaWcgdUFQSSBsaWtlIHRoaXMgb3Bl
biBqdXN0IGZvciB0aGUgdGVzdCBjb2RlIHNlZW1zIGEgYml0CnNpbGx5LiBJIGdldCB0aGUgdGVz
dHMgYXJlIHRlc3RpbmcgbW9yZSB0aGFuIGp1c3QgcmVsb2NzLCBidXQgaXQncyBhCnByZXR0eSBi
aWcgaW50ZXJmYWNlIHRvIGxlYXZlIGx5aW5nIGFyb3VuZCBpZiB3ZSBjYW4gYXZvaWQgaXQuCgpE
YXZlLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
