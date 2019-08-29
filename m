Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A97C9A222C
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 19:25:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA8416E140;
	Thu, 29 Aug 2019 17:25:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com
 [IPv6:2607:f8b0:4864:20::e41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8D686E140
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 17:25:15 +0000 (UTC)
Received: by mail-vs1-xe41.google.com with SMTP id x20so2907248vsx.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 10:25:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DxzR0hD+YDLr9Ibc7K17pTlRvZCESFc4W7sHYrtgqTc=;
 b=UBJlkTkGjIkzpSoi5HtPv2x9vnZpFdZbnEgll4saA7d5Vgl6Iy50SvwG8Cj+zbEHbn
 mLHSzthaisE7vHKIYb3kDeyiWXBBnllSv2c3u8jfGXEl19UpwvHCec8GGneFJROVpfwG
 13vMzMQR2VynzV9NI45AEc9hZhw4zstfakRaHxQD6bzYYm8/nEkaHsLjIppkSX2vNId2
 874LD+MokhHY8Dpo2D9WwH5JZH4ZG5K/y/Eg405uqDEeSFGJFV+EeL3R+CCALIWvoqrc
 gzFdKnEmxpYx97SEWwfwamay0Rt94il/QHRP4WxTSOmX2iNlXIhBAoTIOhbijCwNm0tH
 6H1Q==
X-Gm-Message-State: APjAAAUkLOgSEjAlcd6FRD4n8UryGbNsd78CEYTYvbSm0Ro+ZPADa0p3
 Er/gbNTah5mkvpxJ3zPvIbUXYvhJ5yKeWbbWYYw=
X-Google-Smtp-Source: APXvYqwj5gd4JsQCeHAVCeUCFLo0QRQwBYyCDRRiZqJxOYU1GfvtGUWfyNhy7Ps+3SVZOH8SeYkDIDaYXbyxBwm2voE=
X-Received: by 2002:a67:2d08:: with SMTP id t8mr6693811vst.178.1567099514700; 
 Thu, 29 Aug 2019 10:25:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190829170848.969-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190829170848.969-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 29 Aug 2019 18:24:48 +0100
Message-ID: <CAM0jSHMs6UZieZ0f=BK8mAfDF_e74o5unnRKq-SMhG+37xnQTg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=DxzR0hD+YDLr9Ibc7K17pTlRvZCESFc4W7sHYrtgqTc=;
 b=SlaTM+afMHJApTWIhXHHfF2ET2pHI8Q/wR+VxPURUyq458tYIF+Zx7fXTwqjMv4Dz7
 XYMLaos7e2tss+WAv23nHBEgpLpGTk3ajDMMBgf9iRV52HgF52T/GyCL4m6ysMZ86r71
 s9wLxGjNl2iLgNfQ3Km9kS0Ilvv0Rc7DvGfI/J44OBMA3s89j6i+6BA2xUULWCSN3oS2
 SjpLEqzYj9ollBcChbex1MkxqfUX5elatxypDnp0cppg3Ho+YUUZrBVVLDNVQBVmrnlm
 5ySiZlEG3ZNZoeiq4pulmws2ui9Y+G7Y120enmiSOY9YjpL+jocm2f7M4D4fZWXHEx6f
 JwUA==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: cond_resched() within
 the longer buddy tests
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

T24gVGh1LCAyOSBBdWcgMjAxOSBhdCAxODowOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gTGV0IHRoZSBzY2hlZHVsZXIgaGF2ZSBhIGJyZWF0aGVy
IGluIGJldHdlZW4gcGFzc2VzIG9mIHRoZSBsb25nZXIgYnVkZHkKPiB0ZXN0cy4gSW1wb3J0YW50
IGlmIHdlIGFyZSBydW5uaW5nIHVuZGVyIGthc2FuIGV0YyBhbmQgdGhpcyB0YWtlcyBmYXIKPiBs
b25nZXIgdGhhbiB1c3VhbCEKPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRl
bC5jb20+ClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
