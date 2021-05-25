Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 464E2390263
	for <lists+intel-gfx@lfdr.de>; Tue, 25 May 2021 15:26:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 533FB6EA2F;
	Tue, 25 May 2021 13:26:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com
 [IPv6:2607:f8b0:4864:20::834])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2563B6EA43
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 May 2021 13:25:42 +0000 (UTC)
Received: by mail-qt1-x834.google.com with SMTP id h24so11674601qtm.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 May 2021 06:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=rzlK2+KgNVw77okoWz9wWn+7O3SeBjFxZFvJQVNDXrI=;
 b=O/8GsWo2rPxoE60P44jbTXLFGCc21k4pivpKqMA0z/R5EKyfMpMx2MaAMmXe3m2v64
 9dthFk7yE69F8lQgs+rf6cMM1S1B0OAdmmQuJWZAFEcjvJ5z6v0GhReCGeN7mhjRFifL
 Jirq7OS6vptRjiHuLtN8JPOXRq6QeR8GlbYHNKb0TFiUqbLizdSeHRpIgh7vioEQZWSt
 iwx0HgKiQZxYOO3XG04zahySYD8R7AWC8IomEV9gpncBfQaACMgtME0ADt8PbaoGBD/e
 DgryypbW+RmSUOk9/TT2bZJ2tht7iBaT/zFwFlkCqcsNL9rOVMD5Q1m5X54tJ2FrGjx2
 C3Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=rzlK2+KgNVw77okoWz9wWn+7O3SeBjFxZFvJQVNDXrI=;
 b=n/zrir5mdADX5Av7BdtTzMw69hroD1ohXSHo9McttZ07vMH9mvpFwKtKSWTT3iwrLk
 BNwMjZFWQBgk9jAjLByukbxWMxHpp3201ttoLOpNg91zQJekuDtZyLm3nYZj3aDQj9Kq
 sC8L7Omszqs558mX3hbjZ6xqcZ/9WNByFHdqpnF3mRTzUe1IejRa7QiUAi3rxoWUWQlf
 aHKYm+EKkH33GpHJhJcztQytO4szlEltqUiMP6y4Y4xePKX8H12BX4rbpKIfDZpdKqKY
 Q+U+mPGy8MwM2rnjzql3CoG+nA7b0XOzVYqcVjTEWnVE6uTDbqqzIwgsW59KQoR0K1im
 woYA==
X-Gm-Message-State: AOAM530LjW75NWD5Afw3eMBWIpg6t086QhN/icHglhwZEcXYj5ob8VX2
 m/T7MUD3Ij+g1DHye2WfTAMn8c62SN+oN3shaag=
X-Google-Smtp-Source: ABdhPJxF2Ohhmp/QQJiJlno5ur+4RfmcF1blIoKHDkD7KUaAPDHsqoc4/BmBFWdU2vZvvK1MKZyVjGjDkMqnQfokHRo=
X-Received: by 2002:ac8:758e:: with SMTP id s14mr32600925qtq.341.1621949141979; 
 Tue, 25 May 2021 06:25:41 -0700 (PDT)
MIME-Version: 1.0
References: <20210507091210.371132-1-matthew.auld@intel.com>
In-Reply-To: <20210507091210.371132-1-matthew.auld@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 25 May 2021 14:25:15 +0100
Message-ID: <CAM0jSHMmgsj7=cwSEXjng_njA5aPC144-Hhq+gaKrE9Ha0nmMw@mail.gmail.com>
To: Matthew Auld <matthew.auld@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: relax 2big checking
 around initial fb
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCA3IE1heSAyMDIxIGF0IDEwOjEyLCBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBp
bnRlbC5jb20+IHdyb3RlOgo+Cj4gRnJvbTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Cj4KPiBUaGUga2VybmVsIHByZWZlcnMgZW5hYmxpbmcgZmJjIG92ZXIgdGhlIGlu
aXRpYWwgZmIsIHNpbmNlIHRoaXMgbGVhZHMgdG8KPiBhY3R1YWwgcnVudGltZSBwb3dlciBzYXZp
bmdzLCBzbyBpZiB0aGUgaW5pdGlhbCBmYiBpcyBkZWVtZWQgdG9vIGJpZwo+IHVzaW5nIHNvbWUg
aGV1cmlzdGljLCB0aGVuIHdlIHNpbXBseSBza2lwIGFsbG9jYXRpbmcgc3RvbGVuIGZvciBpdC4K
PiBIb3dldmVyIGlmIHRoZSBrZXJuZWwgaXMgbm90IGNvbmZpZ3VyZWQgd2l0aCBmYmNvbiB0aGVu
IGl0IHNob3VsZCBiZQo+IHBvc3NpYmxlIHRvIHJlbGF4IHRoaXMsIHNpbmNlIHVubGlrZSB3aXRo
IGZiY29uIHRoZSBkaXNwbGF5IHNlcnZlcgo+IHNob3VsZG4ndCBwcmVzZXJ2ZSBpdCB3aGVuIGxh
dGVyIHJlcGxhY2luZyBpdCwgYW5kIHNvIHdlIHNob3VsZCBiZSBhYmxlCj4gdG8gcmUtdXNlIHRo
ZSBzdG9sZW4gbWVtb3J5IGZvciBmYmMgYW5kIGZyaWVuZHMuIFRoaXMgcGF0Y2ggaXMgcmVwb3J0
ZWQKPiB0byBmaXggc29tZSBmbGlja2VyIHNlZW4gZHVyaW5nIGJvb3Qgc3BsYXNoIG9uIHNvbWUg
ZGV2aWNlcy4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgo+IFNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGlu
dGVsLmNvbT4KPiBDYzogTGVlIFNoYXduIEMgPHNoYXduLmMubGVlQGludGVsLmNvbT4KPiBDYzog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogRGFu
aWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CgpWaWxsZSwgSW1yZSwgb3Igc29t
ZWJvZHkgZWxzZSB3aXRoIGRpc3BsYXkgZXhwZXJpZW5jZSwgZG9lcyB0aGlzIGF0CmxlYXN0IGxv
b2sgc29tZXdoYXQgcmVhc29uYWJsZT8KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jCj4gaW5kZXggZWMyZDNmYTYwMDAzLi4wZWUxZjAyMTNmZDkgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0x
NDU1LDcgKzE0NTUsNyBAQCBpbml0aWFsX3BsYW5lX3ZtYShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwKPiAgICAgICAgICAqIGltcG9ydGFudCBhbmQgd2Ugc2hvdWxkIHByb2JhYmx5IHVz
ZSB0aGF0IHNwYWNlIHdpdGggRkJDIG9yIG90aGVyCj4gICAgICAgICAgKiBmZWF0dXJlcy4KPiAg
ICAgICAgICAqLwo+IC0gICAgICAgaWYgKHNpemUgKiAyID4gaTkxNS0+c3RvbGVuX3VzYWJsZV9z
aXplKQo+ICsgICAgICAgaWYgKElTX0VOQUJMRUQoRlJBTUVCVUZGRVJfQ09OU09MRSkgJiYgc2l6
ZSAqIDIgPiBpOTE1LT5zdG9sZW5fdXNhYmxlX3NpemUpCj4gICAgICAgICAgICAgICAgIHJldHVy
biBOVUxMOwo+Cj4gICAgICAgICBvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3N0b2xlbl9m
b3JfcHJlYWxsb2NhdGVkKGk5MTUsIGJhc2UsIHNpemUpOwo+IC0tCj4gMi4yNi4zCj4KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBt
YWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
