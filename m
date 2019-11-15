Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40754FDDF2
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 13:34:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97F526E59B;
	Fri, 15 Nov 2019 12:34:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com
 [IPv6:2607:f8b0:4864:20::a43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 675046E5A0
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 12:34:53 +0000 (UTC)
Received: by mail-vk1-xa43.google.com with SMTP id e205so2311029vke.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 04:34:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5Hs6EFXL7FNW3KCCtVy0RHZqKlD9QROhuZ8gCGkRHi0=;
 b=RQLv91mlJB8jIpk5DgxTR5DOQzyijy94w2+8HjCEevRY6kIbM9wvQ0WR4rym8WJyKt
 9mMPaRJcskUDfvtCf5htyHJgyjOsVWBDF9yWhs0vSqI79JWwUqTbDuwz7iCtDv0/jVbg
 RYmfy363E1GAZIBOVdS2YuJ3vnqO+jT6I3a4YqY8Nu7WxKGlCVb8HqDhItnJKmHOVtDI
 TsZrcxgHGGlCci5dP6PsJxDIJVpSU4oTqR/9eeVc38MQi3pl8RPf2yipw8G4aKSANx0s
 D7GsyQf2/3Ia1JJaqdtru3wYXqfnM1Puc1vK/gKQC6jCLXADiqY7W2XE8utdj/00gcjD
 rCHA==
X-Gm-Message-State: APjAAAUcewFQTH1OMC2nn8ZR+ESbFsFgDiEASjA4007tgoeuj7bC+gCG
 HbzT3l6DzI884hBI9K2DbuWadFarbWg3rhYWl6g=
X-Google-Smtp-Source: APXvYqy/shiqi2o0nft5ZE2LnOMqSVr24+0Goka9QCz008N0mdlctLFC0I6ekwtieU+3xi6RXL9fMSxQmsmFcwNW4dw=
X-Received: by 2002:a05:6122:1074:: with SMTP id
 k20mr8025073vko.57.1573821292365; 
 Fri, 15 Nov 2019 04:34:52 -0800 (PST)
MIME-Version: 1.0
References: <20191115120023.770000-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191115120023.770000-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 15 Nov 2019 12:34:25 +0000
Message-ID: <CAM0jSHM7dPj99W2XZ9d=9HSdsvBmeLtM8=YFBqKXiKOE0nJpEw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=5Hs6EFXL7FNW3KCCtVy0RHZqKlD9QROhuZ8gCGkRHi0=;
 b=jGsPj2S2xCuB6iHGrqWTWOeAc5LP1g346JsTtm5DnExcpT5YXToyLorky7gaNbm9Ti
 rreoZ7e4A2L+1j3fKIeRJ0zOEGKgU2GMS26K4ye4hmUdeXcF+CjIR6zCrr/md7e5MJkE
 GLM9Nc8cuolE2fh5YDmJxM64eEWy4bSavX6iLg+Mn49IPxGjwzt/YOwz3H70jW1dAfsu
 dgMPwkvGMDaaygMhRD/+4xYfYYJlrY72ATgnntUgTm8axx2mDjNAoReXOE2TvIeUfWoB
 tQ/nwmHG9Nn8DGF5rC4PzbpMGfDiOYiPoQUEs3uFy3utb3GsCvfMVTVHtFARx8iqV0aE
 kBxQ==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Purge the sudden reappearance
 of i915_gem_object_pin()
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxNSBOb3YgMjAxOSBhdCAxMjowMCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gVGhpcyBkaWVkIG1hbnkgeWVhcnMgYWdvIGFzIHdlIG5v
dyB1c2UgaTkxNV92bWEgZmlyc3QgYW5kIGZvcmVtb3N0Lgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5h
dWxkQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGlu
dGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
