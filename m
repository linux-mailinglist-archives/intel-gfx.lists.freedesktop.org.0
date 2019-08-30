Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEF2A3CE1
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 19:20:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 765186E388;
	Fri, 30 Aug 2019 17:20:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com
 [IPv6:2607:f8b0:4864:20::e41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D04406E388
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 17:20:08 +0000 (UTC)
Received: by mail-vs1-xe41.google.com with SMTP id q16so5240061vsm.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 10:20:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oS5a/WRBg2uRzVHO+Q8CHo70ux8JI6R3ZZNSC/PbYvo=;
 b=qu5wF5ZpVZSzQeHiUdgWFZhAiAnGxCBR4UJc9+6CVT1WqTePiQJmE5A43c0GpQ0TtD
 geFP28qWhrEZWuWzqpRw0pTrMu39aaMN5hMRGiNdRSSIBrMPJqns3pP9klKEadisOq1V
 6BZwNegnf68eTO8X0o0hQlyy8WXKF4ZgID7PmkVg2PN/ZZOoER6JfGQyWYdjh+YaivcO
 8PHPDNHQDYSOEUBT9N1B8akvc+Aov24YIv0JVnaVxYJr/vVtHSvx+lkywo/CTUghY3Ki
 JYDnayGoo1M5CdWVe/9NkT8nHTYxSpFzIYhlS+7IZ+MU3CBogDim6Dh83c7f5EBsSKuT
 3P1Q==
X-Gm-Message-State: APjAAAXiLY8KGTwcxTYnvnzPkxbN4A1trpxM4lfHIwMwKwenx4xUJQQL
 vaT6oNc0hQ/jCDnTF+tjBwuFywB5HI9oY78MeSg=
X-Google-Smtp-Source: APXvYqwdCrfR5xySGh1QQfW89hhm+oBE1h/N6+nXC3pRyOqRrxIIKskr4QfuHIl5YFsjq0hCs38Fzvwdp3/gcfPv2a0=
X-Received: by 2002:a67:f450:: with SMTP id r16mr9844171vsn.119.1567185607878; 
 Fri, 30 Aug 2019 10:20:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190830061204.21206-1-chris@chris-wilson.co.uk>
 <20190830061204.21206-2-chris@chris-wilson.co.uk>
In-Reply-To: <20190830061204.21206-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 30 Aug 2019 18:19:41 +0100
Message-ID: <CAM0jSHMUNtW6JxG50f1ebXPWaWw-dG7DCU-8P6OPVGUdA3__DA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=oS5a/WRBg2uRzVHO+Q8CHo70ux8JI6R3ZZNSC/PbYvo=;
 b=aeJQV10N74Npjw4oOqZwR7Mvzaq7cX4NpeRoh0iUUflyPTjKpVT1Q2OFriwwFuN67y
 yYXVaGNOIZD7H5VIMIsV7WT2BizGlTjqCzHzyj2FtMdHHL+O2bzcYgd6sutlda2Ba8zE
 BZz5AojidO16f4igl0h8dcwCZ7vKFD8iJXnuasAllJGECDdxDC9Posk5k1lveZUI5U42
 1jDvacNBoYLE2sjfB/Jy4SQNMEzyC/k0T4jxCX+0W4z/yFlIEAR/NXh3+Rz4VnHwKebb
 kKBggzvlicm7SYE0cLKAKFFuSKuqP17/3oBgZC8tP/lTdhPpyfReqtBHFoT+6ejd47he
 nV6Q==
Subject: Re: [Intel-gfx] [PATCH 02/21] drm/i915/gtt: Downgrade Cherryview
 back to aliasing-ppgtt
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

T24gRnJpLCAzMCBBdWcgMjAxOSBhdCAwNzoxMiwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gV2l0aCB0aGUgdXBjb21pbmcgY2hhbmdlIGluIHRpbWlu
ZyAoZHJhbWF0aWNhbGx5IHJlZHVjaW5nIHRoZSBsYXRlbmN5Cj4gYmV0d2VlbiBtYW5pcHVsYXRp
bmcgdGhlIHBwR1RUIGFuZCBleGVjdXRpb24pLCBubyBhbW91bnQgb2YgdHdlYWtpbmcKPiBjb3Vs
ZCBzYXZlIENoZXJyeXZpZXcsIGl0IHdvdWxkIGFsd2F5cyBmYWlsIHRvIGludmFsaWRhdGUgaXRz
IFRMQi4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgpBY2tlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
