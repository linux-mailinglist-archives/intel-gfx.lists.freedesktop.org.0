Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3ABE1F8F
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 17:40:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 146156EB0D;
	Wed, 23 Oct 2019 15:40:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa41.google.com (mail-vk1-xa41.google.com
 [IPv6:2607:f8b0:4864:20::a41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F14E6EB0D
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 15:40:45 +0000 (UTC)
Received: by mail-vk1-xa41.google.com with SMTP id z14so1943387vkd.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 08:40:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=9h2bLlE5uiElXoN05sFkiX8cpYZeJb4T7lrsDWBorqE=;
 b=XqRb8MS53TIdcObCpk6fQIszRQLajf8xeKWB3QwThZ6dFPvLMegQ00kSRvAJ/15LFf
 28H5EH7NHVQ34c64r28ZbtM8wnvKSSoIx7eNkmq/cdvFgvtYIuq8D5uQSQUV7wTyJ9/O
 nd0gvbCKFcNVxxCjhPn9x44pT5aYeF/tJBV/pnyRYRC9ArxpNjMBYB9HWV+ezNdBWClo
 ilkl4huEIcNL3NTnWuyMZN9rRIC1DupYGFPLhDmxXU+ay8PrTnRRLbnVBLgBAIKrIk+X
 Co/ZxKwAFzVWSnZrkH5Z3WBXTZNXse1gg5SF2CZ+0InnxBqHu08fxEA83LRV8kokMOT3
 l7CQ==
X-Gm-Message-State: APjAAAUzmjfJwKRTixxsDoj3lwX9TDyP7cLwNTf/5xE6Dah2Msbq7XNl
 cx2mcNsi1o0NXZdftnbV3IvZQu5EdypdyD1eVFOe9g==
X-Google-Smtp-Source: APXvYqzaMIBdBVepIccYwBzdNqs3rmPjsUfK3AV3PIIRWofrSco90CTOzOVF8tSUUK/baA5la1UAjuL99PuFgJcw5Lo=
X-Received: by 2002:a1f:944a:: with SMTP id w71mr3666213vkd.60.1571845243467; 
 Wed, 23 Oct 2019 08:40:43 -0700 (PDT)
MIME-Version: 1.0
References: <20191023101256.20509-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20191023101256.20509-1-daniel.vetter@ffwll.ch>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 23 Oct 2019 17:40:32 +0200
Message-ID: <CACRpkdYfh=9oextiC1rtQ2UQ72OW_0TqjCe4AmvRtXKVv_ZazQ@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=9h2bLlE5uiElXoN05sFkiX8cpYZeJb4T7lrsDWBorqE=;
 b=dz7Jck3bJtS+Q3i9sActcxjLeaJGGZ6fDfedCIA5pyBgDY4IPDQlFJhFT21PyFismE
 lq+2IGol/AMrZDdrr/b3ffMHRJFC52qLVAGiGon/4WQ5Xc8t/YNJJhAdAs1MjtOYDBk+
 TX8WITu1cQTk9oydx2umzGy06BmwQ70PMg3XGDSe/7GlL49s2H9D4xe7s8NeP5HkMsPs
 tMaF+Pnj7Wtowr4+u4wia30/J126VfShkz5+oSnX5MzcnbBJzRSwLdoRNMwjkZf33Oww
 Xy9N/L4lrnflRTgMoPwuOJjRTGIPCSp3w9LP9yOqhD73tobsarHI8UyVJU+9FyxiYBwP
 XifQ==
Subject: Re: [Intel-gfx] [PATCH] drm/simple-kms: Standardize arguments for
 callbacks
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
 DRI Development <dri-devel@lists.freedesktop.org>,
 virtualization@lists.linux-foundation.org,
 =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBPY3QgMjMsIDIwMTkgYXQgMTI6MTMgUE0gRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZl
dHRlckBmZndsbC5jaD4gd3JvdGU6Cgo+IFBhc3NpbmcgdGhlIHdyb25nIHR5cGUgZmVlbHMgaWNr
eSwgZXZlcnl3aGVyZSBlbHNlIHdlIHVzZSB0aGUgcGlwZSBhcwo+IHRoZSBmaXJzdCBwYXJhbWV0
ZXIuIFNwb3R0ZWQgd2hpbGUgZGlzY3Vzc2luZyBwYXRjaGVzIHdpdGggVGhvbWFzCj4gWmltbWVy
bWFubi4KPgo+IHYyOiBNYWtlIHhlbiBjb21waWxlIGNvcnJlY3RseQo+Cj4gQWNrZWQtQnk6IFRo
b21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPiAodjEpCj4gQ2M6IFRob21hcyBa
aW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgo+IENjOiBOb3JhbGYgVHLDuG5uZXMgPG5v
cmFsZkB0cm9ubmVzLm9yZz4KPiBDYzogR2VyZCBIb2ZmbWFubiA8a3JheGVsQHJlZGhhdC5jb20+
Cj4gQ2M6IEVyaWMgQW5ob2x0IDxlcmljQGFuaG9sdC5uZXQ+Cj4gQ2M6IEVtaWwgVmVsaWtvdiA8
ZW1pbC52ZWxpa292QGNvbGxhYm9yYS5jb20+Cj4gQ2M6IHZpcnR1YWxpemF0aW9uQGxpc3RzLmxp
bnV4LWZvdW5kYXRpb24ub3JnCj4gQ2M6IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGlu
YXJvLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGlu
dGVsLmNvbT4KCk1ha2VzIHBlcmZlY3Qgc2Vuc2UuClJldmlld2VkLWJ5OiBMaW51cyBXYWxsZWlq
IDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+CgpZb3VycywKTGludXMgV2FsbGVpagpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
