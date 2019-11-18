Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9757B100A23
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 18:22:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAFA6897F0;
	Mon, 18 Nov 2019 17:22:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com
 [IPv6:2a00:1450:4864:20::141])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0F3F896AF
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 12:02:33 +0000 (UTC)
Received: by mail-lf1-x141.google.com with SMTP id v24so2689165lfi.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 04:02:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9zemU0Ret8hy73TuASMPdNzZzCjITdClWv1i4Z7fGh8=;
 b=XQivO1clvMwEEv/MS6DEMIfxeKQ9QZ+n6NXTCW3NOvn5z0c9/EqEzm1im4wat63AYv
 /5c7tdbA2VNpQoeLIb0IzRf7bHl8lKgRaNi+xQvrWt0TZ049vIbsehqjjWixN/1DkwYy
 EfEhedhsVYGeOtKV+8YtAXDWAsHDUI2gJbPaXKzwaj/5U4iVnS1tbmiASilAITdUz+5y
 IHFYqlBeEhZFpTSSY9jqgWBf1lJ1FW7qyqFdZ3WDSdJtjriV3eqn26TO8Bh65waRrayN
 4yBfLqPSAWruq5sWRfjRzQG2JMljiLk1Iwz9iLo+Lejz1Ix3MOqnv9qPF5S6SUto6Ghy
 +4Gg==
X-Gm-Message-State: APjAAAUYZJxfMa4Q+nAS7I91S3n6ZNuZmp6bjyISukOwDyW3vz/2RKxc
 1J+XwrukAHs/4F8CrxGHlozYUA==
X-Google-Smtp-Source: APXvYqyUEv8dyYpl2Gdm4JIZ6XKFL+s2//7LyWv6qU0qfhlsxxj40NBWfsMTGqlqft6/fQUxx1Iukg==
X-Received: by 2002:ac2:5c4e:: with SMTP id s14mr20516359lfp.23.1574078551394; 
 Mon, 18 Nov 2019 04:02:31 -0800 (PST)
Received: from jax (h-249-223.A175.priv.bahnhof.se. [98.128.249.223])
 by smtp.gmail.com with ESMTPSA id q20sm8500681ljg.104.2019.11.18.04.02.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 18 Nov 2019 04:02:30 -0800 (PST)
Date: Mon, 18 Nov 2019 13:02:28 +0100
From: Jens Wiklander <jens.wiklander@linaro.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20191118120227.GA25677@jax>
References: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
 <20191118103536.17675-13-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191118103536.17675-13-daniel.vetter@ffwll.ch>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Mailman-Approved-At: Mon, 18 Nov 2019 17:22:54 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9zemU0Ret8hy73TuASMPdNzZzCjITdClWv1i4Z7fGh8=;
 b=OhMUMSWA889W5wvOc/J6XRdF0ZzWI4eQ7m+jVmcdiyT1aVWDJo1wiXarH+V0+J042v
 IteeAo0TdSUmw0t4FMTt6qw/je/LY7CXNw64GxzzcY0uIwMIpabYc39G2DKSKmwTKdJo
 c2mW1joJgzZO0mcsfd3qTyATNJ4L4L66LpBI9u5fq2e3E2D/eYqXa6jk3hF3rJYHvm0B
 dfHFbvfBlHwpuDWAqLbgSNGFclkmIZx1A8CrPNDmZ6hW0MIZSktFHJIqSdn3i23OilbT
 RCdtl2ba1w7iLnsI41Wvru79zKVZLmg5q+tbPN6S4WBg8wvfkU4X/2sN3NgfxTt4y+dH
 itWA==
Subject: Re: [Intel-gfx] [PATCH 12/15] drm/tee_shm: Drop dma_buf_k(unmap)
 support
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>, tee-dev@lists.linaro.org,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBOb3YgMTgsIDIwMTkgYXQgMTE6MzU6MzNBTSArMDEwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBUaGVyZSdzIG5vIGluLXRyZWUgdXNlcnMgYW55bW9yZS4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPiBDYzogQXJuZCBC
ZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KPiBDYzogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hA
bGludXhmb3VuZGF0aW9uLm9yZz4KPiBDYzogSmVucyBXaWtsYW5kZXIgPGplbnMud2lrbGFuZGVy
QGxpbmFyby5vcmc+Cj4gQ2M6IHRlZS1kZXZAbGlzdHMubGluYXJvLm9yZwo+IC0tCj4gQWNrIGZv
ciBtZXJnaW5nIHRoaXMgdGhyb3VnaCBkcm0gdHJlZXMgdmVyeSBtdWNoIGFwcHJlY2lhdGVkLgo+
IC1EYW5pZWwKCkFja2VkLWJ5OiBKZW5zIFdpa2xhbmRlciA8amVucy53aWtsYW5kZXJAbGluYXJv
Lm9yZz4KCkNoZWVycywKSmVucwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
