Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A92699EFD2
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 18:12:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8907889811;
	Tue, 27 Aug 2019 16:12:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCB6689805
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 16:12:11 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id m18so11260114vsr.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 09:12:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U9/9uaYmhvoJurN7IKh2yeUEcorvcdGqB0DAiq5Hkuw=;
 b=W7bunT4VU3xK1Xib0l6ZmbmM+3AF+qM+DaHo90Co7fTiGC2eUl3k0k6Ba697mmKQ5s
 aAKjroo3b+UkywK/1YfTyELkq8R3OEW19kJL3nYyzYYd0wD119pL2MtKPFFnt2gjiIKg
 zuqoxS7FAfWQrb3kgBRm9EsBR/nbsTTmbY0K0auA24eJvRxD3dGs7BftS33UqTt2LLpO
 brnbaq/jr7joWC4h8YzwLkIaCl7j5IH+8S/OAH7N33THZ3gXS0ZrwIf7PfWWmoD7NJ1W
 nxTl3ODtLwh3pW3VVocUtPlXmGcIlAlpZUZstpiLePPD7TnZ/kUdG7LBcVX6qjrmBrIG
 0t8w==
X-Gm-Message-State: APjAAAXH9tKATqsEptB90lqRgFcw+0fzk2si8+TF0Mf0PPGWkbLU9ToL
 YezY12WXLQF0ODu1ZwGRZltcXh4NmYzgbNxVXyk=
X-Google-Smtp-Source: APXvYqzXmb4SWzKS6qXHB6mHJq9RlXgdMQhiZ2FjrUDVyV3hQ9MKHYRpdJr5l+6Qgy64EFkvOomjn6/+u+KZbUnIE/U=
X-Received: by 2002:a67:2d08:: with SMTP id t8mr14824284vst.178.1566922330634; 
 Tue, 27 Aug 2019 09:12:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190826072149.9447-1-chris@chris-wilson.co.uk>
 <20190826072149.9447-3-chris@chris-wilson.co.uk>
In-Reply-To: <20190826072149.9447-3-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 27 Aug 2019 17:11:44 +0100
Message-ID: <CAM0jSHNC0AbjX189-ooMr9DT8ebMxuUn64ZWEmD2_vxOhjMmvw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=U9/9uaYmhvoJurN7IKh2yeUEcorvcdGqB0DAiq5Hkuw=;
 b=Gast/1MQ/lMHEkH9mSbs0KZjS4RG8yQhUkRSPWm/0ZyMpysf4e8P8/HbE02PdOVOlH
 V2VdkUqAvEslwXB0dWP54bw1TtraNoj8hBCgF4SwcxFCH0xoQdRLaMgUbZBcirEMYVMM
 P3Bm8n1IoAKtF5R8D34jm9Y8nd9+ThMhcrT63T8Vj8eoGcrNK8DCwmRktlv4Cr+F9ksy
 F5eNQ5DJNnP5B3nmft8vcheLkCdKXhnrBZpRdsunihS7+X7wRmEApIdWMk0xOWpfF/TE
 aoTz7NFK0TSVNqYh/iryVD3j5hppl+JFipFko1H1vERS7076omgd0+9sm0aC/4LpiF5C
 N6CQ==
Subject: Re: [Intel-gfx] [PATCH 03/28] drm/i915/selftests: Try to recycle
 context allocations
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

T24gTW9uLCAyNiBBdWcgMjAxOSBhdCAwODoyMywgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gaWd0X2N0eF9leGVjIGFsbG9jYXRlcyBhIG5ldyBjb250
ZXh0IGZvciBlYWNoIGl0ZXJhdGlvbiwga2VlcGluZyB0aGVtCj4gYWxsIGFsbG9jYXRlZCB1bnRp
bCB0aGUgZW5kLiBJbnN0ZWFkLCByZWxlYXNlIHRoZSBsb2NhbCBjdHggcmVmZXJlbmNlIGF0Cj4g
dGhlIGVuZCBvZiBlYWNoIGl0ZXJhdGlvbiwgYWxsb3dpbmcgb3Vyc2VsdmVzIHRvIHJlYXAgdGhv
c2UgaWYgdW5kZXIKPiBtZW1wcmVzc3VyZS4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxt
YXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
