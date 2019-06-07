Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FF03886B
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 13:03:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05F2C89B9A;
	Fri,  7 Jun 2019 11:03:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2593689B9A
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 11:03:13 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id g24so886517vso.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 Jun 2019 04:03:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SHCEkVOrTIgG3fU+C4mpABACy7AWwY5oCg2/w/fSQ48=;
 b=p5k7oYsdtc/MGEBGnki0/hrF6vzXX366+BYpWjlAXX6oA/8dQ8aegYRzSsmdDfcFDc
 SVj+UsDGbVbgIyOVxoKLu0hzTBTCVmwubnC9lXkYikhE08kz20kNpK0Lw2az8XcL6ym9
 oCYFqx/vymESEJsPhUVAFtmuMuxYsazHNY12aHcgRYlO6MBAupuCdo2nq7fR+WTFIsF3
 11gbRG1c9pVpK01ILAsIOVeq4JWe5rmOoVepJCkeeezlAOxUvTDDOuaI7tqsc4XpESlF
 g5DbQrhXO2OX/Cf8XxJWq52IaviB4BQvL5Rz4l6ZUbewVzvEPU2WxJ+bWx3F7mnfzE1w
 nifw==
X-Gm-Message-State: APjAAAW6V/U+D/1YCPdfVL5Pxbif561gojkLQSODmE6aUf2r3G7qNydC
 0vso9UxNCw7JfzKM2ZFG5AVh8WJC1WyDcnb+hr9P0206
X-Google-Smtp-Source: APXvYqzM6xlEVLjCFHsFawRWxz+7aTIq87vCNrThn3PBVZ9xCO/Wc60Yy6XChsPVmXiUE52MY9kuSR+2PCxZZDIpUAE=
X-Received: by 2002:a67:15c1:: with SMTP id 184mr15232990vsv.164.1559905392221; 
 Fri, 07 Jun 2019 04:03:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190603174935.23982-1-chris@chris-wilson.co.uk>
 <20190603174935.23982-6-chris@chris-wilson.co.uk>
In-Reply-To: <20190603174935.23982-6-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 7 Jun 2019 12:02:45 +0100
Message-ID: <CAM0jSHOX3Z2Qxo2NOi996z046c=xBRuf0rfAzq6ZZ4XSb3qjTQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=SHCEkVOrTIgG3fU+C4mpABACy7AWwY5oCg2/w/fSQ48=;
 b=OEDhNbVJ80mNRApLKx40ZijltrFjvYfdCBxZlHczIgQ65jqmTPmvlMZh1nuF+pnHf+
 sc2vkQstlZXyMJw6sXofh+0WOk8xh+gGGqEEsFQsLxHWy0CpPKHdyGfpWSQ7LlaNuaOd
 Om6CmMsZjsr6iztaoe3xd2Pg2OkGL2MkagY/ijYWDtmNllvta1vYIowrqvuT42IZTHdq
 Shpt54L1zSrNiCS5EGXXiI/0sEyPtAYtUIh17koJZeExbVj1llPXCDFtBQFrZ30lpwMs
 h99qfd+CCX2MP91io/4jqPWAXtjCPUA3bpfXK+2pHgiqPGFcsgEZ+OulUBjqvn+YCCyZ
 kB+w==
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915: Rename i915_hw_ppgtt to
 i915_ppgtt
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

T24gTW9uLCAzIEp1biAyMDE5IGF0IDE4OjQ5LCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBLZWVwaW5nIHRoZSBfaHdfIGluIHRoZXJlIGRvZXMgbm90
IGhlbHAgdG8gZGlzdGluZ3Vpc2ggaXQgZnJvbSBpdHMKPiBicmV0aHJlbiBpOTE1X2dndHQsIHNv
IGRyb3AgaXQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2Nv
bnRleHQuYyAgIHwgIDggKy0KPiAgLi4uL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2Vf
cGFnZXMuYyAgIHwgMTIgKy0tCj4gIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9tb2Nr
X2NvbnRleHQuYyB8ICAyICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5j
ICAgICAgICAgICB8ICA0ICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdi
dWZmZXIuYyAgICB8ICA1ICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9zY2hlZHVsZXIu
YyAgICAgICAgICB8ICA2ICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAg
ICAgICAgICAgICB8ICAyICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5j
ICAgICAgICAgICB8IDc4ICsrKysrKysrKy0tLS0tLS0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW1fZ3R0LmggICAgICAgICAgIHwgMjggKysrLS0tLQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZ3R0LmMgfCAgNiArLQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9zZWxmdGVzdHMvbW9ja19ndHQuYyAgICAgfCAgNyArLQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9zZWxmdGVzdHMvbW9ja19ndHQuaCAgICAgfCAgNCArLQo+ICAxMiBmaWxlcyBjaGFu
Z2VkLCA3OCBpbnNlcnRpb25zKCspLCA4NCBkZWxldGlvbnMoLSkKPgoKW3NuaXBdCgo+Cj4gLXN0
cnVjdCBpOTE1X2h3X3BwZ3R0ICoKPiAtbW9ja19wcGd0dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwKPiAtICAgICAgICAgIGNvbnN0IGNoYXIgKm5hbWUpCj4gK3N0cnVjdCBpOTE1X3Bw
Z3R0ICptb2NrX3BwZ3R0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBjb25zdCBjaGFy
ICpuYW1lKQo+ICB7Cj4gLSAgICAgICBzdHJ1Y3QgaTkxNV9od19wcGd0dCAqcHBndHQ7Cj4gKyAg
ICAgICBzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQ7Cj4KPiAgICAgICAgIHBwZ3R0ID0ga3phbGxv
YyhzaXplb2YoKnBwZ3R0KSwgR0ZQX0tFUk5FTCk7Cj4gICAgICAgICBpZiAoIXBwZ3R0KQo+ICAg
ICAgICAgICAgICAgICByZXR1cm4gTlVMTDsKPgo+IC0gICAgICAgcHBndHQtPnZtLmk5MTUgPSBp
OTE1OwoKSG1tPwoKUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVs
LmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
