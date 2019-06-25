Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFBD5575E
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 20:48:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B981B6E1D8;
	Tue, 25 Jun 2019 18:48:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52D296E1D8
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 18:48:25 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id v6so11597463vsq.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 11:48:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ayHdfb5fTJ8r49Xp8/l0/CzzEBpgvyJHz0aVnluQmyo=;
 b=J5Ien2Gu7E8WY2Oc5TVzdYoXL68YX8j9tqwzvBFx3TJtkbfWF9VoAEGy3RkKojx3Vt
 4eMhP8P1MLhAP3b9SbZr1K4Jo3ETx3EZcbcXpu04zwrP4tHTt+oscbFQVxjRyNnNoPko
 +xplC3CGAwm7e/F2DIV/PHjSXkqlBpmGBYX8JJJo4s8xndohAnvdY6HhHx3aie0LByiO
 7RlUoqDOh6gwaN4UhkJCLWJWhsS8sSTXANowbMNilWYFSCiNaPdqlARH4NbUq+uOf04E
 nv6cU1itYAbg5O3YsyYuEh6HdM2y4AHT5kzSBhkNYO1GDrJkW0QvEmS3BlXAEu16/OEf
 kBrQ==
X-Gm-Message-State: APjAAAUtEuht5US8UXobRjAQi5gHhDrLLf/ZTgYYJdVwJMf36DXNB1y0
 m0jPP3dpWyqJxe5q+FpIAXh1oEdMkw4LPY4lxYYHXPzf
X-Google-Smtp-Source: APXvYqwktRLID5RNwa2g+qirJy7/QeuM4W/tSjwlFdShBMTldoAVa2suvqyjMPHO6kFmmVULul4vPF2TJ69yCQrqjiA=
X-Received: by 2002:a67:c84:: with SMTP id 126mr209241vsm.178.1561488504432;
 Tue, 25 Jun 2019 11:48:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190625130128.11009-1-chris@chris-wilson.co.uk>
 <20190625130128.11009-17-chris@chris-wilson.co.uk>
In-Reply-To: <20190625130128.11009-17-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 25 Jun 2019 19:47:58 +0100
Message-ID: <CAM0jSHNCb6xrWdHc2YaefwvvndBA79czwAbL2rZQWT-wxRMdEg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=ayHdfb5fTJ8r49Xp8/l0/CzzEBpgvyJHz0aVnluQmyo=;
 b=WPp6j8bNthGfuVdHf/QtbsPLTDPi2n8dGCdTCta1iQzSlyB5W/0glFRbVBSILuC5Df
 6C9GZYttj+1alz7w009oIyakvUzJvEprdf11Y0YHZThqnIzVypJuCdtoqj07T0Wp+4Tv
 tlb5fnIaUnhZj7pLYnw76RTidxmW9ts8oDlZH/3x3NOY90ION3zfWcTMX5MyNKPxUdL9
 rvdJG2+doPwu6ZTx2nks5tYBnO9wtR4FmCu+G52OnpeOV9oqOVx2Es39CyBwos+zsMjB
 3kbvO4vq1sFgL50eOtHuPiA79ny6EJiWpCtU51Z/BHr92ViQKVWl/PeqDmuyZra0trPf
 t6Lw==
Subject: Re: [Intel-gfx] [PATCH 17/20] drm/i915/gt: Add some debug tracing
 for context pinning
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
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gQWRkIHRoZSBjb250ZXh0IHBpbi91bnBpbiBldmVudHMg
dG8gdGhlIHRyYWNlIGZvciBwb3N0LW1vcnRlbSBkZWJ1Z2dpbmcuCj4KPiBTaWduZWQtb2ZmLWJ5
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IE1h
dHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
