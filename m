Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC8B8F459
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 21:20:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48E996E45F;
	Thu, 15 Aug 2019 19:20:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB3076E45F
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 19:20:25 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id j25so2159111vsq.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 12:20:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3dcKDdv0qZm2T/lI6tq1vDKf2Z6Oiv2k0qv0OTtMUic=;
 b=bDUfFgujd6gIQpUkl0Ce0SxJVpICrcf9rE4q+q/u4SRtaEWFyH44FC4/Lf6M7VgVyI
 akczTyjyrUCcojAV0HoKvrcQ13y6vb4lMvBI0P3gJFoitvFGJNhqa3Py7Y9yYoE4/gdn
 TT2lE22TF/MDIUDZRbdlZgNpreovtsgm5V1vmavqI1opyr9rXCcYD/0vfemJ+ydtC1w8
 X87ZSjpUfr/B6KndtIO0zJj+mMCWq8HqudEA7nh8HeA36o7rZAe+lErU7qetsL0Bx+tP
 Kk30WI55ZJz6LUyxc214Xae4+AKWR5Y4W0hU6ygRYJnb9dbxy+knja/8A6Ug1lWzou88
 1y8w==
X-Gm-Message-State: APjAAAXjSs9WhJihUYS+SLWhGjZRdSskNzpkBWJihPIxgfFr5XiOGpc4
 cEsirUJN5Z10ueg6kx3eoEro+03FIsJNKp8Tor8=
X-Google-Smtp-Source: APXvYqw6oavY+k8e58v+sMPpU6LjEdigwaiFbrGZgEybV5slPXeKyD4cSldoDEUivN5ExUqNPGbeHdKsPZMHfO+1h00=
X-Received: by 2002:a67:2d08:: with SMTP id t8mr4329513vst.178.1565896824745; 
 Thu, 15 Aug 2019 12:20:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190814092643.1908-1-chris@chris-wilson.co.uk>
 <20190814092643.1908-4-chris@chris-wilson.co.uk>
In-Reply-To: <20190814092643.1908-4-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 15 Aug 2019 20:19:58 +0100
Message-ID: <CAM0jSHN5u-SpR0MisOVmyaWeBn-eGbtqUzJquHC8GOrmEFxmdA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=3dcKDdv0qZm2T/lI6tq1vDKf2Z6Oiv2k0qv0OTtMUic=;
 b=WsuoQQx0lC/pzGw6iqltNmjNoKwUEjRWi7xpknMEXc3lCClpD+CFh1xYnwHZddUc/z
 iCYfJx1QVPsQrrUGvUnnbSs16O7Qbd4hL4NH4ESRdlIIM+Ci9Hlw8TlNBg0xz8uO8kpa
 FE+9tR8JlW5U8n5PQBgb1ivBWUAzOernwgJRCgcNYeowOEYNAi6NHsoLRqD+dPXkU9sq
 xoyNbQcuYin3YzvQyN0bIhb0Vdwru0dD/H8lzDVy93Mc3rkAN55nZgwURJ5PmxbBaBS5
 uIisHrtpRIH3v2FtBtw11BLFxZ43w4KgsVlYcWdtv1EEuJKQEDdtL3pmNF6wgIhQ5bxK
 5lWA==
Subject: Re: [Intel-gfx] [PATCH 4/8] drm/i915/gt: Guard timeline pinning
 with its own mutex
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

T24gV2VkLCAxNCBBdWcgMjAxOSBhdCAxMDoyOCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gSW4gcHJlcGFyYXRpb24gZm9yIHJlbW92aW5nIHN0cnVj
dF9tdXRleCBmcm9tIGFyb3VuZCBjb250ZXh0IHJldGlyZW1lbnQsCj4gd2UgbmVlZCB0byBtYWtl
IHRpbWVsaW5lIHBpbm5pbmcgc2FmZS4gU2luY2UgbXVsdGlwbGUgZW5naW5lcy9jb250ZXh0cwo+
IGNhbiBzaGFyZSBhIHNpbmdsZSB0aW1lbGluZSwgaXQgbmVlZHMgdG8gYmUgcHJvdGVjdGVkIGJ5
IGEgbXV0ZXguCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KCldpdGggYSBtb3JlIGFjY3VyYXRlIGNvbW1pdCBtZXNzYWdlLApSZXZpZXdl
ZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
