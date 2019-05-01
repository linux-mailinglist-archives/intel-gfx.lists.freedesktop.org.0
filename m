Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0E610701
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 12:35:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 037CC8935B;
	Wed,  1 May 2019 10:35:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22F9A8935B
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2019 10:35:01 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id g127so9637297vsd.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 May 2019 03:35:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KmqiFVKQRvofgX5QWwYWwcrAIXC1Zui7d83LLCi+4lk=;
 b=bg1H1g6pkdh8DadHO4dXg3XOuoDGPNxW0fCjlCxll9G6ZZZH+x+OW7Le/RQ0jjO1+V
 +8kQqmGqt/ATIrQN8iYSyTVxHlkLjLbWwZANVC+D2i1ud2IZP3/M/F8g2n9LFIwfRD61
 yWI2mh1nhRm4qUeIw8o2Fqa7DuQJUYRw6cAItxKpK21xn3VXo18CvyVSoKye5uCnfN7i
 UFCRwN8NYgsvGVQNfd6JHOmmwsEWMyaa2RHNU0qJnaUphbPf6G4NgvgdmPCsYi1wsScq
 fNjkO9D9FY3uf/IuijupLLxcIbJdd9o4G3Q4b8gr+iwTtEyBdKoPSEIBQBvLy/Yle9zX
 gS8Q==
X-Gm-Message-State: APjAAAUkChYPAy7h7a0P8x1//54Vy2W+5Q+QyY2W0GxbaVVG7iNEIYBJ
 iobhAYQCHHueI8vMsY1WnPKZG/wjL4RW/9GVClLjwg==
X-Google-Smtp-Source: APXvYqzePgBUGbUWqw865i+I5Rn8P+0NhkGAHx/LLvTjC6g9A9Hco3SuGrZ5Re19UGNZAk3Re1A0tUq0AMWhnllkIrs=
X-Received: by 2002:a67:e9d0:: with SMTP id q16mr8528340vso.178.1556706900182; 
 Wed, 01 May 2019 03:35:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190425092004.9995-1-chris@chris-wilson.co.uk>
 <20190425092004.9995-38-chris@chris-wilson.co.uk>
In-Reply-To: <20190425092004.9995-38-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 1 May 2019 11:34:33 +0100
Message-ID: <CAM0jSHNGr2AY658AxyJtbzeWg6rjjxZpToW7oLkaV5S8bj3_OA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=KmqiFVKQRvofgX5QWwYWwcrAIXC1Zui7d83LLCi+4lk=;
 b=QDdETzJ1Dbw6OC5KADo5ZJhTBN7exuS6NH6JLh/BJI1sbBD4APXiIbf0Y5AlSxmwa2
 T+LLjNk54855bbg+KKAsGYXWYkMwd0gnx4tC8jGC4cf5w2hI3I3mApK3dzbVB0HJU7L6
 6z9wG/pW0zQQiOH/q/RiBXVt5CuEDbq1tcmSuOXX2aY+If/hdO0/WT676+xxwZwt5Jf4
 tP7gDRqi137qk22ysHF5jiCy+Ug85dpvqeW83wQvbnD/E9ItZmWnFLQaWl5XDr+JWDKI
 eBCazhmnzUYKPOxDncQBVNEZEUlls8//va/jdgNtLfy3YgaDlALtt2ovgrMAHMi8opqr
 TUUw==
Subject: Re: [Intel-gfx] [PATCH 38/45] drm/i915: Drop the deferred active
 reference
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

T24gVGh1LCAyNSBBcHIgMjAxOSBhdCAxMDoyMCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gQW4gb2xkIG9wdGltaXNhdGlvbiB0byByZWR1Y2UgdGhl
IG51bWJlciBvZiBhdG9taWNzIHBlciBiYXRjaCBzYWRseQo+IHJlbGllcyBvbiBzdHJ1Y3RfbXV0
ZXggZm9yIGNvb3JkaW5hdGlvbi4gSW4gb3JkZXIgdG8gcmVtb3ZlIHN0cnVjdF9tdXRleAo+IGZy
b20gc2VyaWFsaXNpbmcgb2JqZWN0L2NvbnRleHQgY2xvc2luZywgYWx3YXlzIHRha2luZyBhbmQg
cmVsZWFzaW5nIGFuCj4gYWN0aXZlIHJlZmVyZW5jZSBvbiBmaXJzdCB1c2UgLyBsYXN0IHVzZSBn
cmVhdGx5IHNpbXBsaWZpZXMgdGhlIGxvY2tpbmcuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVs
ZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
