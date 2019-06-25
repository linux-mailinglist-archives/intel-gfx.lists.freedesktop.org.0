Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7875A55751
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 20:40:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A4B56E176;
	Tue, 25 Jun 2019 18:40:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD5C86E176
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 18:40:04 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id l20so11574251vsp.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 11:40:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sl3US8Qv/MQ22R5z6POtjsY4TQFezwy6YLxwKWHzahQ=;
 b=FIPFzdfmrS9N/REsRS+fK5JYeQHSef4Gg0Gmuu+NS9YATQI/ZFt0Cgxtgm27Gaiy7r
 Naxwz9y0VR89Xv5jFBfrnx+XlEvD65qETS40NbsoQ+LdMvU2il5NoCRVJSkAf232OyQf
 27s24bCSWdOsMizN012PwhK3/q/Jx4tE6cne9wNXi4MrLtbbfbxk7fXZDURX9iRfmMMn
 jUcnnCeqaDw7CfpXOMGNV70slYkuw6S5s9M7NsNWoDFHcym74mZzU8VIlUCm4iCqAbXX
 ljggEquWRd1eXCqaPMTCdRiMrDxfB8emtdt3tsivoqMYAFReL71wxMNZymQVwL0ZbnbS
 vIeg==
X-Gm-Message-State: APjAAAWTsghHCjVojujIMWr/b+krI3WGYpolUn2fsCvPoHKbGahqTSXV
 +dLvUikQM0RzrHAxrDdGtrgBvobVplaoBfuKxYO1GBRU
X-Google-Smtp-Source: APXvYqyCENF+A7tJ6tRAc/FzClkaKM+wXKqmjxJCZGkzAx415qJWV5QplCv0BV1D2uTCuzNI2cOVNbiNv7DpXUp1z+w=
X-Received: by 2002:a67:eb12:: with SMTP id a18mr172315vso.119.1561488003785; 
 Tue, 25 Jun 2019 11:40:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190625130128.11009-1-chris@chris-wilson.co.uk>
 <20190625130128.11009-14-chris@chris-wilson.co.uk>
In-Reply-To: <20190625130128.11009-14-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 25 Jun 2019 19:39:37 +0100
Message-ID: <CAM0jSHP1FHSSXF-noKH7p2nC=fgtqVDWmjD6c0w2WLMb9qjxig@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=sl3US8Qv/MQ22R5z6POtjsY4TQFezwy6YLxwKWHzahQ=;
 b=EqzWc3vQxsMAtyORqXfNGslmuxB1gNW54MKPyxbS6DgnMGfTBGSbaguylx7t6JYxYh
 SyD5oyOQzzguoXNzrTKbEd4mGW/vmFmisNeyKBW4d1FNBAQe2KPbnqspv9gPHbwXN47I
 VDJzukhFJiaIp9u32moukSB6DAYLF8QjRoDnef1TZGzNzL/1KdxPnlZf+wFTdZ9dFiMu
 IegtsfOTrkrBfBY7z0ggPejjX7Oqxp22FBtl5IN2RT9ImO5yAUumRpeK7XLS/np0YFFm
 9FT9b3GFe318IBCaeQipxCl5+6LyX6rG3NVfJPfjDiMh3WV+xwmu1P00M5P9hpwpwmkG
 NTXw==
Subject: Re: [Intel-gfx] [PATCH 14/20] drm/i915/selftests: Hold ref on
 request across waits
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyNSBKdW4gMjAxOSBhdCAxNDowMiwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gQXMgd2Ugd2FpdCB1cG9uIHRoZSByZXF1ZXN0LCB3ZSBz
aG91bGQgYmUgc3VyZSB0byBob2xkIG91ciBvd24gcmVmZXJlbmNlCj4gZm9yIG91ciBjaGVja3Mu
Cj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
