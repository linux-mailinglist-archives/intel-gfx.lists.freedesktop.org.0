Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF6D46B37
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:44:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EF0C898C4;
	Fri, 14 Jun 2019 20:44:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE0E7898BC;
 Fri, 14 Jun 2019 20:44:40 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
 [209.85.222.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9567E2184D;
 Fri, 14 Jun 2019 20:44:40 +0000 (UTC)
Received: by mail-qk1-f176.google.com with SMTP id t8so2575938qkt.1;
 Fri, 14 Jun 2019 13:44:40 -0700 (PDT)
X-Gm-Message-State: APjAAAVBHMJLebAwa1DpWx3Yf5+52O/Ub9iwqSQziKP6xZPBZoBVZxc3
 /aIN9SKs0S4xFdJH4Pa3GEw4G25Vw8ceIBymJQ==
X-Google-Smtp-Source: APXvYqzuWROs7l6DwHffNqEkSROXhjCIJDAtPR7mUuWZ+HMfnvgd8SvgnPJAkg7910VxmmSqcvQBqfJt9iMU0XpSaII=
X-Received: by 2002:a05:620a:13d1:: with SMTP id
 g17mr22833888qkl.121.1560545079800; 
 Fri, 14 Jun 2019 13:44:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
 <20190614203615.12639-2-daniel.vetter@ffwll.ch>
In-Reply-To: <20190614203615.12639-2-daniel.vetter@ffwll.ch>
From: Rob Herring <robh@kernel.org>
Date: Fri, 14 Jun 2019 14:44:28 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+t39-HzT+Yz93zgo=HO4Dj_PWfvebRYjuktEbc2si2mw@mail.gmail.com>
Message-ID: <CAL_Jsq+t39-HzT+Yz93zgo=HO4Dj_PWfvebRYjuktEbc2si2mw@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1560545080;
 bh=SYed3BqrpeYUTpiJ1SsrNPS87avJFEnd9SQDTZwy104=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=tDG6nQRBlkTe7E40iUb/xJ1/1KHbC6TKa2MbsAXmEbvRBvpB0Wmw46OrW9xQjEZ3n
 GWgxhimym53VeZVG9cGTvMJtoCl4GFxECV0Y0QKm86zV9mlJ3i5OF/1Of2dCZ7Zndi
 TMqHFyAErE/SdY6ReqNeH2XVDr6QGRtKJHR6GH3A=
Subject: Re: [Intel-gfx] [PATCH 01/59] drm/todo: Improve drm_gem_object
 funcs todo
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
 =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMTQsIDIwMTkgYXQgMjozNiBQTSBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0
dGVyQGZmd2xsLmNoPiB3cm90ZToKPgo+IFdlJ3JlIGtpbmRhIGdvaW5nIGluIHRoZSB3cm9uZyBk
aXJlY3Rpb24uIFNwb3R0ZWQgd2hpbGUgdHlwaW5nIGJldHRlcgo+IGdlbS9wcmltZSBkb2NzLgo+
Cj4gQ2M6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgo+IENjOiBHZXJk
IEhvZmZtYW5uIDxrcmF4ZWxAcmVkaGF0LmNvbT4KPiBDYzogUm9iIEhlcnJpbmcgPHJvYmhAa2Vy
bmVsLm9yZz4KPiBDYzogTm9yYWxmIFRyw7hubmVzIDxub3JhbGZAdHJvbm5lcy5vcmc+Cj4gU2ln
bmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4gLS0t
Cj4gIERvY3VtZW50YXRpb24vZ3B1L3RvZG8ucnN0IHwgNCArKysrCj4gIDEgZmlsZSBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2dwdS90b2Rv
LnJzdCBiL0RvY3VtZW50YXRpb24vZ3B1L3RvZG8ucnN0Cj4gaW5kZXggYjRhNzZjMjcwM2U1Li4y
MzU4M2YwZTM3NTUgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9ncHUvdG9kby5yc3QKPiAr
KysgYi9Eb2N1bWVudGF0aW9uL2dwdS90b2RvLnJzdAo+IEBAIC0yMjgsNiArMjI4LDEwIEBAIHN0
cnVjdCBkcm1fZ2VtX29iamVjdF9mdW5jcwo+ICBHRU0gb2JqZWN0cyBjYW4gbm93IGhhdmUgYSBm
dW5jdGlvbiB0YWJsZSBpbnN0ZWFkIG9mIGhhdmluZyB0aGUgY2FsbGJhY2tzIG9uIHRoZQo+ICBE
Uk0gZHJpdmVyIHN0cnVjdC4gVGhpcyBpcyBub3cgdGhlIHByZWZlcnJlZCB3YXkgYW5kIGRyaXZl
cnMgY2FuIGJlIG1vdmVkIG92ZXIuCj4KPiArVW5mb3J0dW5hdGVseSBzb21lIG9mIHRoZSByZWNl
bnRseSBhZGRlZCBHRU0gaGVscGVycyBhcmUgZ29pbmcgaW4gdGhlIHdyb25nCj4gK2RpcmVjdGlv
biBieSBhZGRpbmcgT1BTIG1hY3JvcyB0aGF0IHVzZSB0aGUgb2xkLCBkZXByZWNhdGVkIGhvb2tz
LiBTZWUKPiArRFJNX0dFTV9DTUFfVk1BUF9EUklWRVJfT1BTLCBEUk1fR0VNX1NITUVNX0RSSVZF
Ul9PUFMsIGFuZCBEUk1fR0VNX1ZSQU1fRFJJVkVSX1BSSU1FLgoKQXQgbGVhc3QgZm9yIERSTV9H
RU1fU0hNRU1fRFJJVkVSX09QUywgaXQgc2hvdWxkIGp1c3QgYmUgYSBtYXR0ZXIgb2YKcmVtb3Zp
bmcgaW4gdGhlIHNpbmdsZSB1c2VyIChjaXJydXMpIGFuZCBkZWxldGluZyB0aGUgbWFjcm8uCgpS
b2IKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
