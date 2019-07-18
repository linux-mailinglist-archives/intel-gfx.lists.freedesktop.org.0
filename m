Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4B96D2EC
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 19:41:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07F316E44F;
	Thu, 18 Jul 2019 17:41:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc41.google.com (mail-yw1-xc41.google.com
 [IPv6:2607:f8b0:4864:20::c41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BD9C6E44C
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 17:41:03 +0000 (UTC)
Received: by mail-yw1-xc41.google.com with SMTP id m16so12519835ywh.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 10:41:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=f6qnUMPXnkWnmFRN12Yc+hxpIH+RTY5J9v4Al67WV/s=;
 b=PvCOBumxVFFIoPkgF/Qfj1dWp342o2FpDyW87pT/m9es34HfZN+QWWLt1NupHrKpHe
 EcHnbmC95ok8ULyTuVns/Qh/fP4rJdSin6j0XG9e1jiR36eEN64ctmt6ZKHknMY1epcN
 PFmJMEK63juAj9Z1llSiBxFrZuV7Wz/amNvTdyfZkc3kFDVOC46o2SzR3Nw0jY/y8f9H
 LLmBP3Jt1wi5xVcDX92Me7UN0titR/ou+CkGwedHJz7oMOJupg76C/nZbfz50P3mQ3Hm
 Um+vVcPIP4wJllclcSiWbNMcKo447zFSUL+Y8znslO20fJdfFPe+3jDUMwZH97WQh/u1
 +oZg==
X-Gm-Message-State: APjAAAXA53ZlAjDk47YrBSdpZwSy7AYbFoxqtAXKz2wNiWUMQelHSGVc
 DAIGBCTpqktoYBnVxpdareY4Zg==
X-Google-Smtp-Source: APXvYqwhUJ/qcdaunEQ7i8P6wOE1BiEEzgCQrUD7jLZZMpnXGfaFaEs1Xa1X+PNaBbyZ0+t1OVUIhg==
X-Received: by 2002:a81:6dd6:: with SMTP id
 i205mr28057860ywc.180.1563471661869; 
 Thu, 18 Jul 2019 10:41:01 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id w193sm1185400ywa.72.2019.07.18.10.41.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 10:41:01 -0700 (PDT)
Date: Thu, 18 Jul 2019 13:41:01 -0400
From: Sean Paul <sean@poorly.run>
To: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190718174101.GF31819@art_vandelay>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-4-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718161507.2047-4-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=f6qnUMPXnkWnmFRN12Yc+hxpIH+RTY5J9v4Al67WV/s=;
 b=Qro9GngmvMiiB3Z6FB8mN1PItY3TPbrhYXja5d21Qp0UaqJYrDAhOXDuA8N5Fo3kIa
 N/EH4G9LKvGVKw0Jr1GostJiiZkK1Jf05d3cSCHzMnzCretOwL87CciZ9crkt+1zlGPx
 TYr3i4wNKa7NTaU52E/1d/ScA8X7LXyaEKAgtQHB0ayR3nF9ZsFk7TEEs0SaOBd6551u
 B2ZjnuFK80UNJRr2GEryped1kSagz7pGkfAR0veiRFxmKArE/75NYgRIAElrxXtxUuZq
 O9OH5gzsp52Ju2LqPSCZhUecFNXlZU1RqWHlCWMB9hz4EcwiA6rtVNalLeX64/osjrje
 oN1A==
Subject: Re: [Intel-gfx] [PATCH v1 03/11] drm: drop uapi dependency from
 drm_vblank.h
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 dri-devel@lists.freedesktop.org, Rob Herring <robh@kernel.org>,
 Stefan Agner <stefan@agner.ch>, Maxime Ripard <maxime.ripard@bootlin.com>,
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <treding@nvidia.com>,
 Chunming Zhou <david1.zhou@amd.com>, Jani Nikula <jani.nikula@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Boris Brezillon <bbrezillon@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdWwgMTgsIDIwMTkgYXQgMDY6MTQ6NTlQTSArMDIwMCwgU2FtIFJhdm5ib3JnIHdy
b3RlOgo+IGRybV92YmxhbmsuaCBpbmNsdWRlZCB1YXBpL2RybS9kcm0uaC4KPiBJdCB0dXJucyBv
dXQgdGhpcyBpbmNsdWRlIHdhcyBub3QgcmVxdWlyZWQgLSBkZWxldGUgaXQuCj4gCj4gTm90ZTog
dWFwaS9kcm0vZHJtLmggaXMgaW5jbHVkZWQgaW5kaXJlY3QgdmlhIGRybV9maWxlLmgsCj4gYnV0
IHRoZXJlIGFyZSBubyBkZXBlbmRlbmNpZXMgaW4gZHJtX3ZibGFuay5oIHNvIHRoZSByZW1vdmFs
Cj4gaXMgbGVnaXQuCj4gCj4gU2lnbmVkLW9mZi1ieTogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJv
cmcub3JnPgo+IFJldmlld2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xs
LmNoPgo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50
ZWwuY29tPgo+IENjOiBNYXhpbWUgUmlwYXJkIDxtYXhpbWUucmlwYXJkQGJvb3RsaW4uY29tPgo+
IENjOiBTZWFuIFBhdWwgPHNlYW5AcG9vcmx5LnJ1bj4KPiBDYzogRGF2aWQgQWlybGllIDxhaXJs
aWVkQGxpbnV4LmllPgo+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+Cj4gQ2M6
IFN0ZWZhbiBBZ25lciA8c3RlZmFuQGFnbmVyLmNoPgo+IENjOiBUaGllcnJ5IFJlZGluZyA8dHJl
ZGluZ0BudmlkaWEuY29tPgoKUmV2aWV3ZWQtYnk6IFNlYW4gUGF1bCA8c2VhbkBwb29ybHkucnVu
PgoKPiAtLS0KPiAgaW5jbHVkZS9kcm0vZHJtX3ZibGFuay5oIHwgMSAtCj4gIDEgZmlsZSBjaGFu
Z2VkLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV92Ymxh
bmsuaCBiL2luY2x1ZGUvZHJtL2RybV92YmxhbmsuaAo+IGluZGV4IGU1MjhiYjJmNjU5ZC4uOWZl
NGJhOGJjNjIyIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvZHJtL2RybV92YmxhbmsuaAo+ICsrKyBi
L2luY2x1ZGUvZHJtL2RybV92YmxhbmsuaAo+IEBAIC0zMCw3ICszMCw2IEBACj4gIAo+ICAjaW5j
bHVkZSA8ZHJtL2RybV9maWxlLmg+Cj4gICNpbmNsdWRlIDxkcm0vZHJtX21vZGVzLmg+Cj4gLSNp
bmNsdWRlIDx1YXBpL2RybS9kcm0uaD4KPiAgCj4gIHN0cnVjdCBkcm1fZGV2aWNlOwo+ICBzdHJ1
Y3QgZHJtX2NydGM7Cj4gLS0gCj4gMi4yMC4xCj4gCgotLSAKU2VhbiBQYXVsLCBTb2Z0d2FyZSBF
bmdpbmVlciwgR29vZ2xlIC8gQ2hyb21pdW0gT1MKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
