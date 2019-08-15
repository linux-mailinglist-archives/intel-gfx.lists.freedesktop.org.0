Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BA98F3FC
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 20:55:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D77AC6E45E;
	Thu, 15 Aug 2019 18:55:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78A7A6E45E
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 18:55:39 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id i7so2155636vsp.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 11:55:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cHFlfEaKgiZONM4BQnGm3ujim/7pyibkG7QizN75TA8=;
 b=lyQJ/VkpVfh8VZo7TS+2YVCnUwLfoliLUnEyynZwYjgC0O1zPrV6rpJ2CatyZJ/tcp
 cfervLsMvrBTyKAh1MZ/QmYH5MWH5g7ieCR44FHbuiZ+OH/4PRcQY5wn0drDUn1fJO6Z
 dxlMWmIuy4lAAdbeDeXcr50UGLnGdxQeh/9YEDuSk/6LMgdn6juGR2H9CiU62MMituSl
 NaaenhB+yrURX7KoVwG3sdIDJNScyzLeKr2/kYHnr+IPK7/BrSRDRaHfUxGTnnBbFFMe
 K+SRLRErX3b21CFWgMy67Upa3v54AVpM6S01mRbnQZW5nUF4R+VUWnB+/JH1p78Z+tt4
 J68w==
X-Gm-Message-State: APjAAAWENfoYW0NM7ATjOim2dEoOjEc0BF0CoX+b5HKUX0nNMdjgGGOx
 x5D6YyJ2sq5Idd/BYxDlQ9egW473SIp9/Fw/WrWm1Q==
X-Google-Smtp-Source: APXvYqx2S1Bq/HVVeSJXfLPDn4W9U7rSaCZcl3yOZHY9anUhzsMOZCwmNq3CwTi2crE8GZMS8f4p1xH3XmsvHOl0+dc=
X-Received: by 2002:a67:2d08:: with SMTP id t8mr4247183vst.178.1565895338618; 
 Thu, 15 Aug 2019 11:55:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190814092643.1908-1-chris@chris-wilson.co.uk>
 <20190814092643.1908-3-chris@chris-wilson.co.uk>
In-Reply-To: <20190814092643.1908-3-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 15 Aug 2019 19:55:12 +0100
Message-ID: <CAM0jSHNV7SGa-2J6MxhVRC-cTNSCg0TUFVej4WnHZFkHar9TVw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=cHFlfEaKgiZONM4BQnGm3ujim/7pyibkG7QizN75TA8=;
 b=UW26fmDthOY30II3AzRY/fjVL87METO2tTN9T56VZNY0TDYpQYYRfDxTTilr1meZva
 2NBuNBD6hpVEe/+sxrmVwLVT1gqLg/4N3g7fjooaVSp1roRqBduTZ4PvtmjIS5w539j/
 uIjysNeyyNtXHdKWWKIozrivBR84pf9gYEkLEH++/pa1K/yrNoEJ/DddmKsa0pEGVuTB
 q0zC22j2FvgVRdYyk4dqNGUpgrxM5ymYuH2RYrM9bylO7k5BHzNpix4XH+6ecgwpM3Q1
 3946LVwNirxEI9LPSNCm1SS8UAM7E/0EC2kIWbdwEzx0Fzmgtu0hu7D5AC21+1Lf5Zuy
 JrBQ==
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/i915/gt: Convert timeline tracking
 to spinlock
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

T24gV2VkLCAxNCBBdWcgMjAxOSBhdCAxMDoyNywgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gQ29udmVydCB0aGUgbGlzdCBtYW5pcHVsYXRpb24gb2Yg
YWN0aXZlIHRvIHVzZSBzcGlubG9ja3Mgc28gdGhhdCB3ZSBjYW4KYWN0aXZlX2xpc3QKCj4gcGVy
Zm9ybSB0aGUgdXBkYXRlcyBmcm9tIHVuZGVybmVhdGggYSBxdWljayBpbnRlcnJ1cHQgY2FsbGJh
Y2suCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
