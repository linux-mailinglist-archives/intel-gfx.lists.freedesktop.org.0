Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D7ED726F
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 11:44:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A46E76E79F;
	Tue, 15 Oct 2019 09:44:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com
 [IPv6:2607:f8b0:4864:20::944])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6061B6E79F
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 09:44:38 +0000 (UTC)
Received: by mail-ua1-x944.google.com with SMTP id b14so5862803uap.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 02:44:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lRMq0OIAbofYe2sk3SFvjHIPRkoYY2wZOwzuRCHsLt4=;
 b=VcnFVM3F6XRT70kATab15fRCfdC8CiWKiD0pv3h3F1x8stFrW4wAJidtKpE5ofAmse
 W0BnahvMfHCv8+GJbNuwbNBvzIVNaRj93y/JkuXeKXbSRoDmUaJK1Qn0ESjm3DOHlVPS
 4QqRJkNP8VoRobsg9f0iSBTdf7wy/9tu3qBdWQ648kjFVDbvJI5z2NqoUHtOwjuAQOnP
 x5LHX/ux/xZzaC7/gj2GyhyWxqOHKDk2DyBg9wGAvsV5Mn9MePy0j7TwWHXbXaXc3m8p
 0vE2Uy7B5/KgAoT5X+1t1zbCeF76ThPrpjkpV2xE9TnNGQ30Qc/jCx7EewpWp+rBD+hE
 6x6Q==
X-Gm-Message-State: APjAAAXO2fogdVdmC/frcpa1Z0t2XoRXZSgKODRLWXse74fOOY8CvPCs
 aChuCCqUoc3/ijpyP4ZnL0yAU4w2/iyfjqmQd6c=
X-Google-Smtp-Source: APXvYqwgOA0UeiOSErvCfutNOLHGwqBnEF7rgArGLuEBwS1Tn298xd5NOYluee2GMDzZggX1t3PhWOhvESc9R6P8xTc=
X-Received: by 2002:a9f:2382:: with SMTP id 2mr16302177uao.95.1571132677252;
 Tue, 15 Oct 2019 02:44:37 -0700 (PDT)
MIME-Version: 1.0
References: <20191015093915.3995-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191015093915.3995-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 15 Oct 2019 10:44:09 +0100
Message-ID: <CAM0jSHN-ka8W1KHX0Wcgc9z88Gzy_5ddP2PMQ3k8_Mwg=ypajw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=lRMq0OIAbofYe2sk3SFvjHIPRkoYY2wZOwzuRCHsLt4=;
 b=BGPtJ8Shu+rwuURpJlZEDt1rUCCK3DcF8LVAYe+wXX+5OTjsUVyKcdTMkLV3G8RHCO
 Lr6Rt3s2t+XjE3wcA+ggOXqlvKfFllJH/Cr676w5Gd6Tgx0x0Ie/FvzPTuyvTZwvy7/9
 j3mhvufA9Uxi1JqbUNIU2xJbc9b0TktIwmUNM5FAjjYTGm1i/+5KcpK+ZFuJiX6Aqage
 yLGtlSbYFoaCz7xaZq+UkOsZWIRaK0nfHw+pHEcrOr3xBK+PZ8IfV6svskyUPURhuP0V
 U4zvEDyey6o+wSUuWMOj62vWMV5Q0vEyXr/dsKRy0AcwkyiCXHsGrxdxY6lHMhDEJ713
 x8mw==
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Drop obj.page_pin_count after a
 failed vma->set_pages()
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

T24gVHVlLCAxNSBPY3QgMjAxOSBhdCAxMDozOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gQmVmb3JlIHdlIGF0dGVtcHQgdG8gc2V0X3BhZ2VzIG9u
IHRoZSB2bWEsIHdlIGNsYWltIGEKPiBvYmoucGFnZXNfcGluX2NvdW50IGZvciBpdC4gSWYgd2Ug
c3Vic2VxdWVudGx5IGZhaWwgdG8gc2V0IHRoZSBwYWdlcyBvbgo+IHRoZSB2bWEsIHdlIG5lZWQg
dG8gZHJvcCBvdXIgcGlubmluZyBiZWZvcmUgcmV0dXJuaW5nIHRoZSBlcnJvci4KPgo+IFJlcG9y
dGVkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1hdHRo
ZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVs
ZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
