Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71FF5373BA
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 14:04:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5DAD89395;
	Thu,  6 Jun 2019 12:04:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com
 [210.131.2.90])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFE5C89471
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 12:04:36 +0000 (UTC)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com
 [209.85.217.51]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id x56C48lI006617
 for <intel-gfx@lists.freedesktop.org>; Thu, 6 Jun 2019 21:04:09 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com x56C48lI006617
X-Nifty-SrcIP: [209.85.217.51]
Received: by mail-vs1-f51.google.com with SMTP id v129so1013648vsb.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 06 Jun 2019 05:04:09 -0700 (PDT)
X-Gm-Message-State: APjAAAXUXemjH24tALxkymFNAzWIxx/vqLKDhWTWMkROOJe6y0XHgo/P
 YXS4kJIxOEIKy9EkZvWVfqmFUJ2e/RH4+GK5Jk0=
X-Google-Smtp-Source: APXvYqwY0xUeBUr7EbsCPCekvc/M3Zdec4O88UwoeXFtRTlXHzBUKgo+5pbz2kIGQDv/4ypXguAqv9rq8qgiMxutrZE=
X-Received: by 2002:a67:de99:: with SMTP id r25mr23847382vsk.215.1559822647909; 
 Thu, 06 Jun 2019 05:04:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190605132137.11818-1-jani.nikula@intel.com>
 <e7f4bcc2f5e64a429b547e2473786abb@SOC-EX01V.e01.socionext.com>
 <878suf2n2a.fsf@intel.com>
 <a1ee368a8fe343788163a85b61b565e5@SOC-EX01V.e01.socionext.com>
 <875zpj2lf8.fsf@intel.com>
In-Reply-To: <875zpj2lf8.fsf@intel.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu, 6 Jun 2019 21:03:32 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR=s8SFjuf7dffZAx3WB7nRvv7xjo_RC4R9K=ht-yxMcw@mail.gmail.com>
Message-ID: <CAK7LNAR=s8SFjuf7dffZAx3WB7nRvv7xjo_RC4R9K=ht-yxMcw@mail.gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nifty.com; s=dec2015msa; t=1559822649;
 bh=dwfQ2t8+69QUotaSg9rtTdLRDKCFmoUzFZVR/Dys77Q=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=kwfPe471kmYuw5dN9hfkkTh4GHpZVu6heYMxzYUYTZEknT01MfsEvbpMAT+q18g+b
 Ofg2UXy7qli2XUAKwgUVESc2Wm9lydC2i1O1oCI5IbksTSPafMhV8w06Mc9vttKDhj
 ym1hCo/e+L8ec7BjQkkJqsMoiZ/GX5BMYnD3XQ2tnI52Cv64yZCJHh9d/zdxJb560z
 Fm9GXPgKqH6TKBYM0ACWi05d1CMyYJgpUxUhUp1Hr1wJ8Fsop+W7Y64cXpLOF/75fw
 JJOadnMbe3sEW+qCPo3LNa/05shUCVUBS0P4XJvf2sO4TbnMSUCEresNBQYr5biMTV
 6uSv6AbzV7Ktg==
Subject: Re: [Intel-gfx] [PATCH] drm/i915: rename header test build commands
 to avoid conflicts
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
Cc: intel-gfx@lists.freedesktop.org, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdW4gNiwgMjAxOSBhdCA0OjU3IFBNIEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBp
bnRlbC5jb20+IHdyb3RlOgo+Cj4gWW91J3JlIHRvdGFsbHkgcmlnaHQsIGl0IG5lZWRzIHRvIGJl
IGZpeGVkIGluIHlvdXIgdHJlZS4gRm9yIHRoYXQsIEkKPiB0aGluayB0aGUgYmVzdCBvcHRpb24g
aXMgeW91ciBmaXh1cCBwYXRjaCAjMi4KCgpPSywgSSB3aWxsIHNxdWFzaCBwYXRjaCAjMi4KCgot
LSAKQmVzdCBSZWdhcmRzCk1hc2FoaXJvIFlhbWFkYQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
