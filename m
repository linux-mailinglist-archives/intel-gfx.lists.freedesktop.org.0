Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC555FE12
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 23:14:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A8A46E2D0;
	Thu,  4 Jul 2019 21:14:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com
 [IPv6:2607:f8b0:4864:20::943])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5E156E2D0
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 21:14:01 +0000 (UTC)
Received: by mail-ua1-x943.google.com with SMTP id z13so1504389uaa.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Jul 2019 14:14:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JcP6Ey6BmKJQdOILF1cZPIKCCgsQcSZKkiz9Kk/Ha4A=;
 b=J7ZQh48pzgCoyr+OioNdtXIFH8XbzFsQS0HX3disGtdR+uOWyA3LuFmfgBq0aqIZmK
 2+rCSlm2QG68xWhsmff2osoejHvdIU5bx+1/10oTN/oKew7gMMbiOT741CvA+CgVWYZY
 JeO1Nhjsn5XVzrcuSQ3e6snhe9q5lWxcWN18Gape7MPnpdFzmP3q1kNY/K7FnHXl0qL0
 MV5sJs6nf4Me+x0fxu4drnge2jtiX8S8Z8E5Gl4d8/r3UQRILhAuMs7yVYHvyd16znIV
 jIGzghFqDyE3WrJmsiguL1UFQHoFynSx390nEyK5O3Ov+VG/k22tNDKxbiNFQXZ1m/m0
 f3Ow==
X-Gm-Message-State: APjAAAV5R3OXxvldeu6QPSxMuAHy3EjvK3/zXzzJ7nl4rVms8dRDlOHx
 JXABmPNiRQwIPKjB5TUOhKVPdEvcYE1p7fXd9ReA8jKa
X-Google-Smtp-Source: APXvYqwn4f6jA/+ye2Y7osX0yP+sFnG/rtWDRI+k5UfTYipVEXBapsHf4wbOx8+aB5njtfjTT/Fn54PWpoCFztNHoig=
X-Received: by 2002:ab0:5499:: with SMTP id p25mr2061uaa.2.1562274840844; Thu,
 04 Jul 2019 14:14:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190704200455.14870-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190704200455.14870-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 4 Jul 2019 22:13:34 +0100
Message-ID: <CAM0jSHMPu8DD-8bERpJJsO+ZEBYL98kCT-ztghuWWoCsc1z=VA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=JcP6Ey6BmKJQdOILF1cZPIKCCgsQcSZKkiz9Kk/Ha4A=;
 b=RGkT/yenCi1wybqMLZ1F/8mzTPlAONCCUMQsREvrkLxZ8iLKwWtHIzwGqO/omNE2B7
 2nBqXg5qQMR9+qGh4WKQvdhDqYfYwa8soJ2ryMkCYfHgBG2Sh7RZr+/tr8lW8td6M7al
 TJx9WyrD1mtIqJYbgD6ox+LYZrDRUNtwYs0hFckCVRG8vNhtDC6VzByFNfpPgxC/cNgZ
 zQMKfPIXSNCwQNrJ1kPFdw8dYIY+GpstpNDlHr5uJ3vL7dfIwReDhOxe7h8oEjpSVrw0
 2IPWYnbPrQO0z794zx3oGtKIUnYS270lknsIeFZrQf2hHIUb/P2MfB9BDMwXN52y2HNY
 VqoQ==
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/overlay: Stash the kernel
 context on initialisation
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

T24gVGh1LCA0IEp1bCAyMDE5IGF0IDIxOjA1LCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBTaW1wbGlmeSBydW50aW1lIHJlcXVlc3QgY3JlYXRpb24g
Ynkgc3RvcmluZyB0aGUgY29udGV4dCB3ZSBuZWVkIHRvIHVzZQo+IGR1cmluZyBpbml0aWFsaXNh
dGlvbi4gVGhpcyBhbGxvd3MgdXMgdG8gcmVtb3ZlIG9uZSBtb3JlIGhhcmRjb2RlZAo+IGVuZ2lu
ZSBsb29rdXAuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVs
LmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
