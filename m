Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C398F7B1B
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 19:33:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BAA7893A3;
	Mon, 11 Nov 2019 18:33:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com
 [IPv6:2607:f8b0:4864:20::943])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4826893A3
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 18:33:23 +0000 (UTC)
Received: by mail-ua1-x943.google.com with SMTP id z9so3894309uan.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 10:33:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZLCAsUYV4cl7qi/SLNKtKkEAgRx4Mu6qXR5nbaJZYa0=;
 b=N1MYiqILJi6gMM3xGBuJMC/09b4LiaZkzhwz2tQIClZrSOkRijY2dpj0b1hAn6uEFG
 QhR9csQUTyVMiu98YBYY9h8G0iFRvNj1/4+SpzH+wBOMHr8KSZQG0/wxQ6IsxxeiMx+a
 5UQyC1DeZDaM5ifqnMcf+wgikhYKbcNDsRYoMD+Wv60kafrgxMn5xEwPoL2WxvWVKX13
 UDtcgkrq3+vN9YheSh27LwjWoKzwdK/gdNDvRkb7zqJALEke9t1rOuXBgoLw8tPYFzrb
 Cao0PgyfEYoQJN9IzWKgpfctCayIU+WVwzVNCsUiwxigVp22paqNkqyVe/LoC/n06MK/
 M6Qw==
X-Gm-Message-State: APjAAAWSfRKark5IWjTZ9uCXVtlJKsaEaoy/it2MS82r3jMui8xTaOU9
 EU5C+xlzCMyXaaroQuTWDkVcez9HbrmiJ1RSPUEcDYg2djk=
X-Google-Smtp-Source: APXvYqy/Rt+fAmQJEXwgnwXquESNZI7Ot4cMjbeKJO0mxN6zi1H/kZubl/W76GlCExi4TcWMqMY2u43FzSIFmWCqhWk=
X-Received: by 2002:a9f:3015:: with SMTP id h21mr386731uab.95.1573497202797;
 Mon, 11 Nov 2019 10:33:22 -0800 (PST)
MIME-Version: 1.0
References: <20191111182143.23479-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191111182143.23479-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 11 Nov 2019 18:32:56 +0000
Message-ID: <CAM0jSHNMgUBVMDmw0xUWu2UY2Jwb1C4ewdD5TJrCDVYMiGNvVQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=ZLCAsUYV4cl7qi/SLNKtKkEAgRx4Mu6qXR5nbaJZYa0=;
 b=f2fdTV54TtLspQbzu7GMh50lWz0wh5WUGnBJrsKdEBI59hDvmhlApVXtOlxZxmAD1T
 jVVgO/2wusWkoh5fd0Jde6BonQmKILgOncZsKVVMEFtAtSbtFwrgsmD6IgEAUdv49+Ec
 HYdDhOpiBO1Dk6MwhdTR8JIUPgtFgK0Z1qH5LBQRPzP9xGm67YDMUkcRAgV2pt/tfF2h
 msi6KjsRWW9NemgbvJCSDX0DAZl4f0t4WAelCvBFrq1xk+skj72PjGX2yHRJnm0L2nc4
 Ch35S7CD9dAOfbB/Zalt0rrS/I9wzatxGnZ7H67DIyCmU1JCw6t/cu1fc1IGnlawC9S7
 kIig==
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gem: Replace implicit
 dev_priv->uncore for stolen init
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

T24gTW9uLCAxMSBOb3YgMjAxOSBhdCAxODoyMiwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gUGFzcyBhcm91bmQgdGhlIGludGVuZGVkIGludGVsX3Vu
Y29yZSBmb3IgbW1pbyBhY2Nlc3MgZHVyaW5nIHN0b2xlbgo+IHNldHVwLCBhbmQgYXZvaWQgcmVs
eWluZyBvbiB0aGUgaW1wbGljaXQgbWFnaWMgSTkxNV9SRUFEKCkgbWFjcm9zLgo+Cj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1h
dHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcg
QXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
