Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D24393A58
	for <lists+intel-gfx@lfdr.de>; Fri, 28 May 2021 02:38:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE6486F52C;
	Fri, 28 May 2021 00:38:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com
 [IPv6:2a00:1450:4864:20::236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5C7F6F52C
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 May 2021 00:38:50 +0000 (UTC)
Received: by mail-lj1-x236.google.com with SMTP id e2so3141258ljk.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 17:38:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3tZvKVXXK1CrsVCEdwk4kRijURbW1gkRo3MklbEt43g=;
 b=dzDstQmFnkHnT2yUIYKLBRRBS9fEvHqlCfVDyb072nsd2XLJcbMC9YytfAlVCe02vE
 w9imrgViRD9UmJFiNPktvwlhL+FSug8rzH1rndJtVlz3QQe+LaHVPjU6VmarHmQVjLz9
 xf8j7GTU197/jPwSsOeFHBpLr83hJSyRTW1TXntHZd/bB1uAuI+WQ+bhSHrv/SWtMmVd
 kyaH7en3LnMLvCu2BrfR+25SZJ37jTDiSZTB3f4yqmQeYCEoZnJSe4DbXuwQ/ieUoyZH
 Yg2q/hN5vESri9Wyb+J0nlja9X++NyijNUy+ePQmji3JkVQ2yCofSythjNO8OPePTRya
 28LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3tZvKVXXK1CrsVCEdwk4kRijURbW1gkRo3MklbEt43g=;
 b=p7PRkBDPkNLVZZsmpyOYaLE6uUR58g3ytNTPo3EmjemfNF1WUAkqLQ6oEdt6Qz7Ap5
 tlJS2vkKWA8dqoaUmxYehUMeSpNKup2jyY9kQh+j5Yfd3jGXqI86UKX3T5W8aqKGyHfv
 wEkVCDfzqPZVdOJpCu6u30bGLw4xYzgzH24EZL63hnTwSMMri3qMPCtksgQqSl6vi/Ey
 08wV2/OY5ole7VTve5M/xG7PlBqA3OHyl8qwuy/TNdT44HxXGYL9hrnAihQomXKPCT2I
 HHkvWZswBap8DUczn97416s97Bdo4RnjSuLe6pMhlrD/5H7U1K7hfzIK++pq16u7N+Yy
 HESw==
X-Gm-Message-State: AOAM532jPeUYBOw12DtG2Hb6k3V447KVdY/sHdQhuz8wv/dKt3Lpw5jj
 NGG/ck1z+TsNVlummmBJUK+OwOw6rKQ8VtpkR5m6wg==
X-Google-Smtp-Source: ABdhPJz7njZd2vaMPN20MaL5HfLauAdefifx8indoEE9qbs7jFDoqG1iIPLF/BJ6sjZMAVRNssGVEUTUE+E+NW+cvHo=
X-Received: by 2002:a05:651c:4c6:: with SMTP id
 e6mr4571492lji.326.1622162328960; 
 Thu, 27 May 2021 17:38:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
 <20210521090959.1663703-11-daniel.vetter@ffwll.ch>
In-Reply-To: <20210521090959.1663703-11-daniel.vetter@ffwll.ch>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 28 May 2021 02:38:38 +0200
Message-ID: <CACRpkdbZf_cTMppxfC4mM6XZ2YySH7dQ0NCY6v_pfwsdRzLPKA@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 11/11] drm/tiny:
 drm_gem_simple_display_pipe_prepare_fb is the default
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Maxime Ripard <mripard@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 David Lechner <david@lechnology.com>, Emma Anholt <emma@anholt.net>,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 Andrew Jeffery <andrew@aj.id.au>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Joel Stanley <joel@jms.id.au>, Thomas Zimmermann <tzimmermann@suse.de>,
 xen-devel@lists.xenproject.org, Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Kamlesh Gurudasani <kamlesh.gurudasani@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBNYXkgMjEsIDIwMjEgYXQgMTE6MTAgQU0gRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZl
dHRlckBmZndsbC5jaD4gd3JvdGU6Cgo+IEdvZXMgdGhyb3VnaCBhbGwgdGhlIGRyaXZlcnMgYW5k
IGRlbGV0ZXMgdGhlIGRlZmF1bHQgaG9vayBzaW5jZSBpdCdzCj4gdGhlIGRlZmF1bHQgbm93Lgo+
Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+
Cj4gQ2M6IEpvZWwgU3RhbmxleSA8am9lbEBqbXMuaWQuYXU+Cj4gQ2M6IEFuZHJldyBKZWZmZXJ5
IDxhbmRyZXdAYWouaWQuYXU+Cj4gQ2M6ICJOb3JhbGYgVHLDuG5uZXMiIDxub3JhbGZAdHJvbm5l
cy5vcmc+Cj4gQ2M6IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4KPiBD
YzogRW1tYSBBbmhvbHQgPGVtbWFAYW5ob2x0Lm5ldD4KPiBDYzogRGF2aWQgTGVjaG5lciA8ZGF2
aWRAbGVjaG5vbG9neS5jb20+Cj4gQ2M6IEthbWxlc2ggR3VydWRhc2FuaSA8a2FtbGVzaC5ndXJ1
ZGFzYW5pQGdtYWlsLmNvbT4KPiBDYzogT2xla3NhbmRyIEFuZHJ1c2hjaGVua28gPG9sZWtzYW5k
cl9hbmRydXNoY2hlbmtvQGVwYW0uY29tPgo+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0
dGVyQGZmd2xsLmNoPgo+IENjOiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+Cj4g
Q2M6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgo+IENjOiBTYW0gUmF2
bmJvcmcgPHNhbUByYXZuYm9yZy5vcmc+Cj4gQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRl
dWNoZXJAYW1kLmNvbT4KPiBDYzogQW5keSBTaGV2Y2hlbmtvIDxhbmRyaXkuc2hldmNoZW5rb0Bs
aW51eC5pbnRlbC5jb20+Cj4gQ2M6IGxpbnV4LWFzcGVlZEBsaXN0cy5vemxhYnMub3JnCj4gQ2M6
IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IENjOiB4ZW4tZGV2ZWxAbGlz
dHMueGVucHJvamVjdC5vcmcKCkFja2VkLWJ5OiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlq
QGxpbmFyby5vcmc+CgpZb3VycywKTGludXMgV2FsbGVpagpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
