Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D925EA523D
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2019 10:56:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5305489A8B;
	Mon,  2 Sep 2019 08:55:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com
 [IPv6:2607:f8b0:4864:20::941])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F21BD89A8B
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2019 08:55:57 +0000 (UTC)
Received: by mail-ua1-x941.google.com with SMTP id i17so926037ual.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Sep 2019 01:55:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q4DpziIYrRhS9vsZH+qNjVPu4e+I4BRPtXfhcs+8Obo=;
 b=sfOAyNn7+s0JeyFooqrqoR/R1T7M0ReHthklsW5seln1HFx923dg9B2l2mC005L9J6
 +mWNoWtOGpMRwnM9Np38RnUUovnoBSVJOopzAENJ1g9X0VG+x+9xkwqIdL69EBxWQGCX
 TRY2zd4Kk9vnh5M8fMe5PJehjqOLYSoV3awP2ksXNm5Pz//Of+0Jzc3erQsIydObf3f/
 vNX1eW3n64eTaB+TzhehCwkbTl6qt0NfFiN9sMcg7M6khYCNa2FSlRb8J5hkeNfDDYzE
 9Ri/0b8Emo8XxiaacbUP/olW8DRM5/xyzK2GQSUMqRFmiDHHX1i6F59kPZqe2slECQGs
 N4cg==
X-Gm-Message-State: APjAAAW6Yv5wyO7N5TLGfltRvSxE2WOXxQHPyb5S9PV61YTYkZ8JMiNJ
 nhwhvxJPlZOPPAPbTU0FqiOy/oRBNa9QIeozlKE=
X-Google-Smtp-Source: APXvYqxhP1zE3dnOpycaKxpbEU/JE4AGFQ4D3bC1aJh3trLDwWmWYor4tjMDpUUluVJrSSZckdBkO8fWQlzieueHy/I=
X-Received: by 2002:ab0:6883:: with SMTP id t3mr13986458uar.104.1567414557051; 
 Mon, 02 Sep 2019 01:55:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190902040303.14195-1-chris@chris-wilson.co.uk>
 <20190902040303.14195-2-chris@chris-wilson.co.uk>
In-Reply-To: <20190902040303.14195-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 2 Sep 2019 09:55:30 +0100
Message-ID: <CAM0jSHMwcni8wz06GZcWAz+mkcBiZdhQvCU3FKbP9mnA9mGq2g@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=q4DpziIYrRhS9vsZH+qNjVPu4e+I4BRPtXfhcs+8Obo=;
 b=TM/HYKWsDQdwLQJmgPJgjT0WXzRTc13upu4kUgqDBM/k/5N62jrSyMA8ar95iW9493
 2huZ2rxFmjfwqiDn9JkmGPETkM6ocbNfOJ8/IEXOOH5PU8QFFALEkNMb/S+s6jnyPSKN
 IkF0ENq+FUE1KSXsY9uWT5wQq5tQ8ySnTAbKxV6MwH2WWa5Bp2aUBpWjySxjAaGhlkKZ
 Ooar1mpIpB3A7CyB2VNIzXqPt//H9toqci/J3vURqPJsuvCF7hC4tnfWwR7ZBtVT35ok
 +wrxK/Wr/1KILi8tnls+g7TIRRKrjeEZSz8x60pUDvl8neluCOz10feLxlluU+ERSeFL
 WUUQ==
Subject: Re: [Intel-gfx] [PATCH 02/21] drm/i915: Report aliasing ppgtt size
 as ggtt size
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

T24gTW9uLCAyIFNlcCAyMDE5IGF0IDA1OjAzLCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBUaGUgYWxpYXNpbmctcHBndHQgaXMgY29uc3RyYWluZWQg
dG8gYmUgdGhlIHNhbWUgc2l6ZSBhcyB0aGUgR2xvYmFsIEdUVAo+IHNpbmNlIGl0IGFsaWFzZXMg
dGhlIHNhbWUgYWRkcmVzcyBzcGFjZS4gU2ltcGxpZnlpbmcgZ3R0IHNpemUgcmVwb3J0aW5nCj4g
aW4gdGhpcyBjYXNlLgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+ClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBp
bnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
