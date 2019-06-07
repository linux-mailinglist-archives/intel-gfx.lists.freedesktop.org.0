Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C07F0387A7
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 12:07:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F4D189CF5;
	Fri,  7 Jun 2019 10:07:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0059189CF5
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 10:06:58 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id d128so803209vsc.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 Jun 2019 03:06:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CZMU8uMsmsdBo5OxKd4XsbqPo1UFC8QYsmA6VLwQ2gE=;
 b=kWxjGpEKvAWDi/zGnvYNmLjHXaDPvqY1UKLGdUxUNANOQ2ibQ4g4Wp28JHz8s0oRGn
 3SVQU0EpWmYcQjK2IrUko7nk6e6I1qGqTfUqb/7abasbzTt/KZno7FL9AujltovKpJ9a
 27ys7zkQ0J0ElQVKI8g/4NY8GOXTfdUQXmQ9PFHtod+BYJaulAoJ14u5UjpceAeibwSf
 yxyFRF9CaQd/bPijbK7Y+M5dNPdVxYsk3CehqIuQW3LFFnnp+po+c33Bjj91sPLNch9J
 oe6hl+5Rt4UfugLJUon15g73yilbs0AXnPUvyL+nx6u1Km1vs/HA0p2RpScGEXmNfYoF
 h1ew==
X-Gm-Message-State: APjAAAUeMta+w0OCb/I4uICxD2L0i0hh748epyc0lI9/tnu1EnQQ8qsX
 Oh1wMpxx/ia4KsDdbhzz1V3857itpozYgkZijSk=
X-Google-Smtp-Source: APXvYqwaVHQwHt08NoaYDVdBLtSxfHQTGmV4PJ26slXnHBdCl6qQSp2K2f6MRQ2zMB0zdP1W0+YHjdbp9HAoPWA8puI=
X-Received: by 2002:a67:ebc5:: with SMTP id y5mr16654217vso.34.1559902017966; 
 Fri, 07 Jun 2019 03:06:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190603174935.23982-1-chris@chris-wilson.co.uk>
 <20190603174935.23982-2-chris@chris-wilson.co.uk>
In-Reply-To: <20190603174935.23982-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 7 Jun 2019 11:06:31 +0100
Message-ID: <CAM0jSHPG9oRR3HRS=MJLmEq=YCayq3OFO37ZU0kaPvVjhwxMAA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=CZMU8uMsmsdBo5OxKd4XsbqPo1UFC8QYsmA6VLwQ2gE=;
 b=I+c8OMUmhwu/A9K+JZwcqAx8iiX2ML2ivxkUbA1jm2WZEILetlTqqZgw/Fy7UkwLkw
 nNR2TB3zNFptsa1+fgjxCo6uJv3ibwZCuG5D61ws/FOGhwiNxyGnAqjuFLBbC+zlymBE
 dZTKbSWzDEQbBR0hI7OWWbdp4PQM5ZDMtk/ckv7GZq9VqD5NobbdaRWc0dORTXSg1Agk
 fozO18fCtPy+5ueZ6XLhq4hm3/yLwpe5GF1PwWs2FCVuJoR/KImQFzMAJ5IxynFFdsgy
 KFWnY1wYhY9mXylCicW8JfFf/vk1s53JhWovhfSGHGrB8enDnlo9U/x2TtVnRhZ4+jS6
 TF3w==
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915: Propagate fence errors
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
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBFcnJvcnMgc3ByZWFkIGxpa2Ugd2lsZGZpcmUsIGFuZCBt
dXN0IGV2ZW50dWFsbHkgYmUgcmV0dXJuZWQgdG8gdGhlCj4gdXNlci4gVGhleSBuZWVkIHRvIGJl
IGNhcHR1cmVkIGFuZCBwYXNzZWQgYWxvbmcgdGhlIGZsb3cgb2YgZmVuY2VzLAo+IGluZmVjdGlu
ZyBlYWNoIGluIHR1cm4gd2l0aCB0aGUgZXhpc3RpbmcgZXJyb3IsIHVudGlsIGZpbmFsbHkgdGhl
eSBmYWxsCj4gb3V0IG9mIGEgdXNlciB2aXNpYmxlIHJlc3VsdC4KPgo+IFNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogTWF0
dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
