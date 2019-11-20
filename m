Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D14103767
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 11:24:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 112AD6E1FB;
	Wed, 20 Nov 2019 10:24:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A09466E20B
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 10:24:15 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id 190so16459014vss.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 02:24:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qU5lHqcWhYXiFi29Q+wih3yqMxMp3IOLVLXyWR4f/pU=;
 b=EvJb5jXVvpvQ1UK3jQ7SlCqBkPSggqaxJyf3kgb0mgiXfHEW9gWITnbYy9k8xoMw/N
 SgUgKSE7iV20SADIlwUHOYfG+lyg6+g71pSbh/0lPsBNllE2q9ZcAe2qGGOs67BR6HKV
 aXmeDOG1qBHRLlE36vhUZtBNEYGsWECeboQpEJ/QXNbZjw6/LXh4hGaE3eCrKW3chAdm
 /guoTjL794XR5JgjDC/Ga+y+gRTtfL/ol5FrmxbnXRm6Yesu+iDdskNP+5vTJwD8+VFa
 u0yL8956QSJKXDz0yFGA/KKF9yus6OFy/6JU4IL3BfxFdpzag/eS7XrQ8dPyyOxEgt9n
 4Yjw==
X-Gm-Message-State: APjAAAUBEdk/JweHW7O8ATNgKuYjNCRrclM7C0qx6XijVXSgUfd67Va0
 cgJGT/2cHqBpaNNUMqJS5AgYQigKzbqYoxM89k0=
X-Google-Smtp-Source: APXvYqzZehkXKyafUrnTY4lQdSSx/IkQYRlSFzneDiaY4+VMFTNd1b2Wjk/uH5wIDWcqlcGNYkDzaE+nRNqNzjTLo10=
X-Received: by 2002:a67:c097:: with SMTP id x23mr1104920vsi.164.1574245454819; 
 Wed, 20 Nov 2019 02:24:14 -0800 (PST)
MIME-Version: 1.0
References: <20191120093302.3723715-1-chris@chris-wilson.co.uk>
 <20191120093302.3723715-8-chris@chris-wilson.co.uk>
In-Reply-To: <20191120093302.3723715-8-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 20 Nov 2019 10:23:48 +0000
Message-ID: <CAM0jSHPx=gwm7DvW5LXAmKzgGLh1hUiXWp4bA9xVKaJZKYsCyg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=qU5lHqcWhYXiFi29Q+wih3yqMxMp3IOLVLXyWR4f/pU=;
 b=lhc7/RsEn/0qEndHW+d/N+ZCvJ8tSTQ4U+Y6hGdXq2xAEWtXqRlz7WUpm8yFVirXb/
 tsNzSdfBFgRtHPJVfO4nEMYCymhEq4wNIRKZ4NZtGfkXorQ5DUQz9b0P8LzUra3+SFM9
 6KmKhPDYpLBAgs59hXsBkmKSP1vDvqfVureSRGpJvlnXOiIiMz1tozZ7T+s9XGpaxzEy
 xbzIzeEaD1nGWyOmaoHeqeDlUkYQ0s1x5dpXvB05UBJ9nVpg/YfJN670XKHcHNQoiQmm
 mAD1EhlSIZHLuH/jViNXuDkDud1V/oe4fs8QrlzglvpSDAICYnee6WvCfiqBcqWyqyL+
 g5DQ==
Subject: Re: [Intel-gfx] [PATCH 8/9] drm/i915/selftests: Be explicit in
 ERR_PTR handling
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
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMCBOb3YgMjAxOSBhdCAwOTozMywgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gV2hlbiBzZXR0aW5nIHVwIGEgZnVsbCBHR1RULCB3ZSBl
eHBlY3QgdGhlIG5leHQgaW5zZXJ0IHRvIGZhaWwgd2l0aAo+IC1FTk9TUEMuIFNpbXBsaWZ5IHRo
ZSB1c2Ugb2YgRVJSX1BUUiB0byBub3QgY29uZnVzZSBlaXRoZXIgdGhlIHJlYWRlciBvcgo+IHNt
YXRjaC4KPgo+IFJlcG9ydGVkLWJ5OiBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVyQG9yYWNs
ZS5jb20+Cj4gUmVmZXJlbmNlczogZjQwYTdiNzU1OGVmICgiZHJtL2k5MTU6IEluaXRpYWwgc2Vs
ZnRlc3RzIGZvciBleGVyY2lzaW5nIGV2aWN0aW9uIikKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVs
ZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
