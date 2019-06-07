Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E9838836
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 12:49:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C32389CAC;
	Fri,  7 Jun 2019 10:49:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com
 [IPv6:2607:f8b0:4864:20::942])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9FFB89CAC
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 10:49:36 +0000 (UTC)
Received: by mail-ua1-x942.google.com with SMTP id v18so455908uad.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 Jun 2019 03:49:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NWPPGioeKGFwSGDageeONwgJNWa5R7c+qACFWMx0AmI=;
 b=LPxklwB9L0coTUjjg5jgpgzHPGPdOcwidpgQLOFziW3b/qKd9Kiuj9issBxt7ue3Bn
 U65U2fk5fWMW5WWVzkcJy1Vq9iSIuwT1Pvklm6JMLUuA85xICiOviaMHL/MWeJ7k/BLt
 BKtgRTmrdlSzCyiAvJbrOpj6fthSJTi2nJmrix3m9h9u4ko9ItDOwPHMsf8Z/XhKwOoS
 Xh6zTo0x3+U8qTuYQ5uwnRamdo6+WtaVNzoqNovQx2X+c+r2XT42tkZZW6f5/+2KKOpN
 xZd1rhfos01WZOOzrRD9iJyCgZdakJG3uKb2qNArWJIIbsyjZUbz89XIfEa4XG84tAQ+
 zzdQ==
X-Gm-Message-State: APjAAAU8IysBdsMAt+vl7l6dbXh+DXj4Nb5yQq1TVgD6L8kOs7VlGbIM
 cI0Rj3IRWj+cVCW5dvHY3cz2NL30yJPg+mwZ0Fk=
X-Google-Smtp-Source: APXvYqypij5yQbvjz1MLzh05eiuVoFXId1JuN+qizB/IgzTLN8jIj7NZTyu/9nMGmh0TAYUa2F8PF6ZjOdq6b5D0nQ8=
X-Received: by 2002:a9f:25e9:: with SMTP id 96mr11893792uaf.95.1559904576015; 
 Fri, 07 Jun 2019 03:49:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190603174935.23982-1-chris@chris-wilson.co.uk>
 <20190603174935.23982-5-chris@chris-wilson.co.uk>
In-Reply-To: <20190603174935.23982-5-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 7 Jun 2019 11:49:09 +0100
Message-ID: <CAM0jSHOkryRn8Wvy9Nxs5b80RX6dJa1tBG=-7xGKavjBzXQO2Q@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=NWPPGioeKGFwSGDageeONwgJNWa5R7c+qACFWMx0AmI=;
 b=fPIAy00QnhCpoROMzjXb7n/hJ/6DVqaRwjmFMOilQjORuhhc2PpQMAi8mfAxKKk8Sa
 ptK8m+ztCMAvmW46hTeibFdFn2ofuUERi2Q9AOhAL6666+oobEIQ1l99sGB0ZJXptO+e
 Q3YZdmgh5QSuVt2lNALANdxJIvDgqZ/yOJVThB4B+GuaPuyNCGC412lo6fQoOlmFIykd
 6epbxu6K+QpExAN1ZHcN+i779/H/zur+hORrbbXx5LN07GpbfOpk4Xu9mpdvz2K7aQO9
 BJUsebxg1pYeEUnwzfFPs1/ANN2ejnI89x686YYKVyfMHW3NRfufCTmemHOwLBMZnex8
 q0Bw==
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915: Pull kref into
 i915_address_space
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

T24gTW9uLCAzIEp1biAyMDE5IGF0IDE4OjQ5LCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBNYWtlIHRoZSBrcmVmIGNvbW1vbiB0byBib3RoIGRlcml2
ZWQgc3RydWN0cyAoaTkxNV9nZ3R0IGFuZCBpOTE1X3BwZ3R0KQo+IHNvIHRoYXQgd2UgY2FuIHNh
ZmVseSByZWZlcmVuY2UgY291bnQgYW4gYWJzdHJhY3QgY3R4LT52bSBhZGRyZXNzIHNwYWNlLgo+
Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
ClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
