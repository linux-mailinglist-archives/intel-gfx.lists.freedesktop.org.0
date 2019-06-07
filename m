Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9AC388BF
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 13:15:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D51189CAC;
	Fri,  7 Jun 2019 11:15:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com
 [IPv6:2607:f8b0:4864:20::842])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 723EA89CAC
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 11:15:09 +0000 (UTC)
Received: by mail-qt1-x842.google.com with SMTP id s57so1708973qte.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 Jun 2019 04:15:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=z0XIc20VAx01mJosghNPKKwi9cMpmbeAnP+WNjIIzRM=;
 b=Z/pmjo3nkjwqkNKVytl7uoX+nwT/OLRHjyIH093eZfyAVZIfBK6mYM52qewZw/uhtx
 x1RnRte+RpVKer2ItvZccHeqRl/tYjsBhcZei3bLBEZF7iMkolYMVur+yEryWbVr9xYp
 wQ0EKk/+er3SWWpYGXKlpRaEkK3jYiP4s6eBv7+CG/CiKNuji7dncn/7XXapUzPAtJrc
 eCH2bnhEjnJ44oBE4viJ/cuP43yjn5wE4TIy3F5dCI5vcfjVy/jZoBXDSDUCQTv40E+N
 QRfny5Zm6pOf4nQYGgxcnI8jRHLPdOeSpHLBmhD+e+9R4QLDz2r2gNG9FpPJVEhHFMQR
 ZJeg==
X-Gm-Message-State: APjAAAWBHRKSoCJOH/Dp36bRctQs/opzpz/YxaON1/HS39m436JHDVln
 LiIuzkasGYr/o4KBnhsSFZiXGL6aUZqzl0VAbCTw+Q==
X-Google-Smtp-Source: APXvYqyfDTEYJBGAsaTUVytJYlzQYcTE/K3UKO9PiIsYXvYbzV6foOUC1bLSc+H5JbzBebYsawjsP64b+zDfQPFYq8Q=
X-Received: by 2002:a0c:99d5:: with SMTP id y21mr43243887qve.106.1559906108632; 
 Fri, 07 Jun 2019 04:15:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190606211544.5389-1-daniel.vetter@ffwll.ch>
 <CACvgo50ACVW1haAnXBhdvOJZ_6vNDinMHq9QpBc2yydrpeFSRA@mail.gmail.com>
In-Reply-To: <CACvgo50ACVW1haAnXBhdvOJZ_6vNDinMHq9QpBc2yydrpeFSRA@mail.gmail.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Fri, 7 Jun 2019 13:14:57 +0200
Message-ID: <CA+M3ks6ypjy=M2zqmJ_RxUpoTi+czD5pMP+p2LMDiGSWk24wUg@mail.gmail.com>
To: Emil Velikov <emil.l.velikov@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=z0XIc20VAx01mJosghNPKKwi9cMpmbeAnP+WNjIIzRM=;
 b=UB3qm6JTzea1feZt1W2uWiXfyul0r/OTHaoCfeJ0WKu4O+fmBlBOTjsFmjeEDm9+Ha
 K+ZrR1Yu2PYzw4I6eZw7jMXznsNZIWG2qo3DlHDWcw8vnvm8bsKS7oM0PMaGxB7f518Q
 9OceOvGD2pY2t1hnEvHYB6q8UkGUSHhJ9uWgsHYZQE8xKzNoljTWBXGQneKrohpfrj+e
 /mswF/zFwUDdE35g4N1PYP5TmpvlyRaFxwB/XYMg2oDHLw+hpTqQ+UrGdPzHiOyKoGtN
 pj9wmGuLR0qzYjIQ+4BCvezCEPtGXMrQeeNNfaXeRmI3hkqjrW00QBi/nKTBVsFGJrGa
 11bw==
Subject: Re: [Intel-gfx] [PATCH] drm/crc-debugfs: Also sprinkle irqrestore
 over early exits
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
Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TGUgdmVuLiA3IGp1aW4gMjAxOSDDoCAxMjowNywgRW1pbCBWZWxpa292IDxlbWlsLmwudmVsaWtv
dkBnbWFpbC5jb20+IGEgw6ljcml0IDoKPgo+IE9uIFRodSwgNiBKdW4gMjAxOSBhdCAyMjoxNSwg
RGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4gd3JvdGU6Cj4gPgo+ID4gSS4g
d2FzLiBibGluZC4KPiA+Cj4gPiBDYXVnaHQgd2l0aCB2a21zLCB3aGljaCBoYXMgc29tZSByZWFs
bHkgc2xvdyBjcmMgY29tcHV0YXRpb24gZnVuY3Rpb24uCj4gPgo+ID4gRml4ZXM6IDE4ODIwMThh
NzBlMCAoImRybS9jcmMtZGVidWdmczogVXNlciBpcnFzYWZlIHNwaW5sb2NrIGluIGRybV9jcnRj
X2FkZF9jcmNfZW50cnkiKQo+ID4gQ2M6IFJvZHJpZ28gU2lxdWVpcmEgPHJvZHJpZ29zaXF1ZWly
YW1lbG9AZ21haWwuY29tPgo+ID4gQ2M6IFRvbWV1IFZpem9zbyA8dG9tZXUudml6b3NvQGNvbGxh
Ym9yYS5jb20+Cj4gPiBDYzogRW1pbCBWZWxpa292IDxlbWlsLnZlbGlrb3ZAY29sbGFib3JhLmNv
bT4KPiA+IENjOiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAbGluYXJvLm9y
Zz4KPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pgo+ID4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5j
b20+Cj4KPiBSZXZpZXdlZC1ieTogRW1pbCBWZWxpa292IDxlbWlsLnZlbGlrb3ZAY29sbGFib3Jh
LmNvbT4KClJldmlld2VkLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRA
bGluYXJvLm9yZz4KCj4KPiAtRW1pbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
