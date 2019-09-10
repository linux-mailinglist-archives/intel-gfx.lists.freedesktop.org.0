Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EADA2AF215
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 21:55:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38BB26E12B;
	Tue, 10 Sep 2019 19:55:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com
 [IPv6:2607:f8b0:4864:20::a43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 378256E12B
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 19:55:23 +0000 (UTC)
Received: by mail-vk1-xa43.google.com with SMTP id q186so3846838vkb.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 12:55:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ha8wE6mDUO6mAY5nKAxiDBxZIlko5vIO/gDSbpugV5U=;
 b=Mp+2yh1hZpFv83pEmapoE5z4sK0ZHOWBoL3pLrPi8NTkE3tAGlnn0R3Ka/0MtwEdIi
 78ZHjZmSJY6+9nSw6CbjXbwPx4p6Kcs37448VGU61qbu92YDZPfUbPF1jBdQCA3RuM8D
 7N94vlfLsrf7NlWb0iZYfHgrutLlekbfDTMxZUkB3KE8SgLcJly+KqllMorl+dV2COEa
 gF7fr0tClR1xKNSj7iubzmqenwwJZb1OE2jJRyUdmI4ruvPOAen0QUuRyJhyk6KOYszC
 nIUJOVlI4cbi4sK1p5duztPrJ2LCeXAi3CGnuS1W44dQ6wuVdmvJtX4UN5a5NsykEcuY
 PSHQ==
X-Gm-Message-State: APjAAAVNojFSompICxkBIaV5ODTP0iUSR3uObXHzMOjuc9K2NS98OED/
 uGEChFyQI4HO+4IOoBElUTVn+CWfxDoantZnNuvXcg==
X-Google-Smtp-Source: APXvYqyzi/zitOCT4eNtjpazK4TvotuySto6McsdGJePzETB5UbP0HfIM9tEoGW/hkfAoK0YmIog8hciPob+2xzDNbY=
X-Received: by 2002:a1f:19d8:: with SMTP id 207mr12098642vkz.54.1568145322018; 
 Tue, 10 Sep 2019 12:55:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190902040303.14195-1-chris@chris-wilson.co.uk>
 <20190902040303.14195-8-chris@chris-wilson.co.uk>
In-Reply-To: <20190902040303.14195-8-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 10 Sep 2019 20:54:55 +0100
Message-ID: <CAM0jSHNqj76LLVR6VvGsT+uDxwymWsT8Y2U6Po9mBSqjo5-4Dw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=ha8wE6mDUO6mAY5nKAxiDBxZIlko5vIO/gDSbpugV5U=;
 b=qdI9+7oOeAKvGU4/HLave+6yZyXB7G4PdsAx895GSqkgW4AvQaRUM7OCP/swfTKuJt
 QFLG0V4pvHXFgugC0BjuXt0iC6KfXe8VRtolfN8NCZEoiNC5bVtrHS0wXvLpDDsQZmmh
 rXkK+74UOvOScDyzyHn9XhfDy0V/uMxfhnKu72JaWVtmd37/J5uNmwmtWYw31KlL+sZM
 sKsRhn2xbCb+Zqr3TIpdG6SjozfeHEux3/LwQN/DlEuP2ha0oJ3b3bHcprlbOAsJ8t6x
 NaiwlA3lvNGw6KQyVEcjBaH+fc05fwgtAneV/6g8D6HP/D+K7UUSkYQR7fymjvKk3+oR
 VXbA==
Subject: Re: [Intel-gfx] [PATCH 08/21] drm/i915: Make shrink/unshrink be
 atomic
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

T24gTW9uLCAyIFNlcCAyMDE5IGF0IDA1OjAzLCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBBZGQgYW4gYXRvbWljIGNvdW50ZXIgYW5kIGFsd2F5cyB0
YWtlIHRoZSBzcGlubG9jayBhcm91bmQgdGhlIHBpbi91bnBpbgo+IGV2ZW50cywgc28gdGhhdCB3
ZSBjYW4gcGVyZm9ybSB0aGUgbGlzdCBtYW5pcHVsYXRpb24gY29uY3VycmVudGx5Lgo+Cj4gU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClJldmll
d2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
