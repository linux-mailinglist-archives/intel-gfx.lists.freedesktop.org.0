Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA8D31A00C
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 14:46:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A52C89BE8;
	Fri, 12 Feb 2021 13:46:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com
 [IPv6:2607:f8b0:4864:20::72a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29EF1897DC
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 13:46:56 +0000 (UTC)
Received: by mail-qk1-x72a.google.com with SMTP id w19so8224510qki.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 05:46:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=y9kh/iyUVA9sMZNsf14P9O4wMpmeY8L8L/p0tKsmGs0=;
 b=H8DU99UA9eeWfOw6/vK87Yo48cpz4CIljPbx9HLX9rrXeeivxPq6m4w54aW5Crso9z
 InAap5fh5QMbqs34LW9zwO6/JuboD6F5SKgO+aqi3R3f9j98IeDdfpLfGfAZAaBy0U52
 1dEu/7ZQfIc0arP+zs2UT4OYlt4k0zq93oMfyd6LnKU+j/uWuvAFVnTGYcHMYDFqeIJd
 R+EXmYjTw3/CmdpXQWFHhxoQMYP92AuxDip4795XaJr6Emf77VQp+Tmi8ivlcGxUbjKm
 IOqeUDX91InF8ndKygkLLRZbRDsQcrNCwnSE3rCDHL9GVu8f8hxkwgFbuB06aJk4UrsL
 HUOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=y9kh/iyUVA9sMZNsf14P9O4wMpmeY8L8L/p0tKsmGs0=;
 b=sjLI88fD10g7b0Af5Kg2pFWZJ0YIf6IF/C9QR8c4qLrTpRAGPOLa6Ir/bCaVUQrURK
 K/zCP+ZBtVMPJXGqkVHPVJn6p6daPKoHUHyGWVjfVrJsQJIccJexKBm8Kbp5Kf/buUKz
 q9Y9/IkWgcgWmuM9eNREJCg+UBVivUBYb89lxJYKg+daFcw0HMsGUc/7B37USu1Y5WTm
 +oZ7wt/8AWs7PtRkcLZKI6s2TbKSLmeEIHFoJqNni3RUk1h+HigAqX+lbldvlfvTbUGc
 85b35GWbhzJQKslFScR0wbb0WNey9+xJ/Q2XEL9Q60A3FQY0m1KfKY2Or2RdeQJWnDxu
 OxXA==
X-Gm-Message-State: AOAM5321ovMMfBq92KMYRHfCC5RJ9wLJqxidZk5qrbpwndTyyTUBIlod
 oQAcXJPNjmTgTr5ewyf+Wcvq3CjsEvswn9NXujr0eshi
X-Google-Smtp-Source: ABdhPJz+PPU/KfciB9dHNEckMC0NGUR1ASL8Ubg/B5sHB4DTDEsrcAKT81JTueyQwPsb3Y2mZoaATSEUiY7KtIpP1VQ=
X-Received: by 2002:a05:620a:12f2:: with SMTP id
 f18mr2711381qkl.17.1613137615366; 
 Fri, 12 Feb 2021 05:46:55 -0800 (PST)
MIME-Version: 1.0
References: <20210212102224.31060-1-chris@chris-wilson.co.uk>
 <20210212102224.31060-3-chris@chris-wilson.co.uk>
In-Reply-To: <20210212102224.31060-3-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 12 Feb 2021 13:46:29 +0000
Message-ID: <CAM0jSHMSw4RVG83PJ5iv8-QzrKOThJAojWfYRyXkObU8J+u0LQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Refine VT-d scanout workaround
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxMiBGZWIgMjAyMSBhdCAxMDoyMiwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gVlQtZCBtYXkgY2F1c2Ugb3ZlcmZldGNoIG9mIHRoZSBz
Y2Fub3V0IFBURSwgYm90aCBiZWZvcmUgYW5kIGFmdGVyIHRoZQo+IHZtYSAoZGVwZW5kaW5nIG9u
IHRoZSBzY2Fub3V0IG9yaWVudGF0aW9uKS4gYnNwZWMgcmVjb21tZW5kcyB0aGF0IHdlCj4gcHJv
dmlkZSBhIHRpbGUtcm93IGluIGVpdGhlciBkaXJlY3Rpb25zLCBhbmQgc3VnZ2VzdHMgdXNpbmcg
MTYwIFBURSwKPiB3YXJuaW5nIHRoYXQgdGhlIGFjY2Vzc2VzIHdpbGwgd3JhcCBhcm91bmQgdGhl
IGVuZHMgb2YgdGhlIEdHVFQuCj4gQ3VycmVudGx5LCB3ZSBmaWxsIHRoZSBlbnRpcmUgR0dUVCB3
aXRoIHNjcmF0Y2ggcGFnZXMgd2hlbiB1c2luZyBWVC1kIHRvCj4gYWx3YXlzIGVuc3VyZSB0aGVy
ZSBhcmUgdmFsaWQgZW50cmllcyBhcm91bmQgZXZlcnkgdm1hLCBpbmNsdWRpbmcKPiBzY2Fub3V0
LiBIb3dldmVyLCB3cml0aW5nIGV2ZXJ5IFBURSBpcyBzbG93IGFzIG9uIHJlY2VudCBkZXZpY2Vz
IHdlCj4gcGVyZm9ybSA4TWlCIG9mIHVuY2FjaGVkIHdyaXRlcywgaW5jdXJyaW5nIGFuIGV4dHJh
IDEwMG1zIGR1cmluZyByZXN1bWUuCj4KPiBJZiBpbnN0ZWFkIHdlIGZvY3VzIG9uIG9ubHkgcHV0
dGluZyBndWFyZCBwYWdlcyBhcm91bmQgc2Nhbm91dCwgd2UgY2FuCj4gYXZvaWQgdG91Y2hpbmcg
dGhlIHdob2xlIEdHVFQuIFRvIGF2b2lkIGhhdmluZyB0byBpbnRyb2R1Y2UgZXh0cmEgbm9kZXMK
PiBhcm91bmQgZWFjaCBzY2Fub3V0IHZtYSwgd2UgYWRqdXN0IHRoZSBzY2Fub3V0IGRybV9tbV9u
b2RlIHRvIGJlIHNtYWxsZXIKPiB0aGFuIHRoZSBhbGxvY2F0ZWQgc3BhY2UsIGFuZCBmaXh1cCB0
aGUgZXh0cmEgUFRFIGR1cmluZyBkbWEgYmluZGluZy4KPgo+IHYyOiBNb3ZlIHRoZSBndWFyZCBm
cm9tIG1vZGlmeWluZyBkcm1fbW1fbm9kZS5zdGFydCB3aGljaCBpcyBzdGlsbCB1c2VkCj4gYnkg
dGhlIGRybV9tbSBpdHNlbGYsIGludG8gYW4gYWRqdXN0bWVudCBvZiBub2RlLnN0YXJ0IGF0IHRo
ZSBwb2ludCBvZgo+IHVzZS4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgo+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5j
b20+CgpZZWFoLCB0aGF0IGRvZXMgbG9vayBtdWNoIGJldHRlciwKUmV2aWV3ZWQtYnk6IE1hdHRo
ZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
