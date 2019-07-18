Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 780F66D32C
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 19:51:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B3F16E459;
	Thu, 18 Jul 2019 17:51:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com
 [IPv6:2607:f8b0:4864:20::b44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 878AD6E457
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 17:51:36 +0000 (UTC)
Received: by mail-yb1-xb44.google.com with SMTP id a5so11564945ybo.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 10:51:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=5Dx6p6F1bLa3zU6wFGAt+f7fv358FIzFIaIrNHbg+9g=;
 b=oQsUw35rKoqlS2LKhUvtHrVi0L0+2afA9jfBEqcWRJpE5N69XURQS7xD+gX6vxUYsJ
 P3FPz44PM8+cJfNynJm5ZTDmwuKRxulH66LoYo15ZLW8zaGMh3oXYkjDyjk2+EsVtvu5
 ATpmE8voHCiE31etye2I9XjSHDQlGxN9vaZWH5AtGT6LYorjW5hrWeLporBlnaANteDI
 4OwrOrVHuIlZJZGEmuE9ljfGJLmHhhvwwzxCOlp1Qs8gcRnMiU/okWZr2qE7sifPDUVt
 4YUv7yXIi6LVxS+wLv3LdpAdIb0DqemgMyzRQAp0u/mOJ7HHTAvXvcX2MCjnX1KU73Uu
 Eb0g==
X-Gm-Message-State: APjAAAUlQEcrt48OnmPSjnNf8xzzGlmj5BZ+OfuEAAxjdpYXHfv4/X6z
 2fW4GIl1aeh+KoNJGTQG88qA5w==
X-Google-Smtp-Source: APXvYqybP2QsImtTSUle+eZSIYAuEzV0EjVFHNNLVcuKDMCRvGgB3XkmsXzS/KQ48cXti671TGXCDQ==
X-Received: by 2002:a25:7288:: with SMTP id
 n130mr30203880ybc.171.1563472295711; 
 Thu, 18 Jul 2019 10:51:35 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id x138sm6563253ywg.4.2019.07.18.10.51.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 10:51:35 -0700 (PDT)
Date: Thu, 18 Jul 2019 13:51:34 -0400
From: Sean Paul <sean@poorly.run>
To: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190718175134.GK31819@art_vandelay>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-9-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718161507.2047-9-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=5Dx6p6F1bLa3zU6wFGAt+f7fv358FIzFIaIrNHbg+9g=;
 b=R8KExCR6tsJrTim++Ryx5yo6ikIJ+A/u4ncyAbhtn4Wxzsy58wFcAxGyFbtU8NPE3y
 MQkpqWvEX3jdW9WLswZJc3r3wEmI5tNMzVFCAL5JFYWRVMQu8suecQTALGLQdi3mip1z
 KRaoIW05bPSOIzkLasBgEWzjK6E+xNPBM4kZgeTGYA5Bj8XLRsXI2ZUXiwgXh6GkDhX2
 2nVtqnPdoBh/zUFxZkB3z3egqQ3w6chj8NBfJAkOJo9Liv0C6e7D/veVgvQP3bGsoADe
 iJT2wz2srtgn91Q+a+GA5Ed45CmxkqakUeXX6vHAhzmtcIHXeyZ14dvbpwKv5jzI/eEa
 nZFA==
Subject: Re: [Intel-gfx] [PATCH v1 08/11] drm: direct include of drm.h in
 drm_prime.c
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
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Rob Herring <robh@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Maxime Ripard <maxime.ripard@bootlin.com>, CK Hu <ck.hu@mediatek.com>,
 Thierry Reding <treding@nvidia.com>, Chunming Zhou <david1.zhou@amd.com>,
 Jani Nikula <jani.nikula@intel.com>,
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

T24gVGh1LCBKdWwgMTgsIDIwMTkgYXQgMDY6MTU6MDRQTSArMDIwMCwgU2FtIFJhdm5ib3JnIHdy
b3RlOgo+IERvIG5vdCByZWx5IG9uIGluY2x1ZGluZyBkcm0uaCBmcm9tIGRybV9maWxlLmgsCj4g
YXMgdGhlIGluY2x1ZGUgaW4gZHJtX2ZpbGUuaCB3aWxsIGJlIGRyb3BwZWQuCj4gCj4gU2lnbmVk
LW9mZi1ieTogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgoKUmV2aWV3ZWQtYnk6IFNl
YW4gUGF1bCA8c2VhbkBwb29ybHkucnVuPgoKPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0
ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiBDYzogTWF4aW1lIFJpcGFyZCA8bWF4aW1l
LnJpcGFyZEBib290bGluLmNvbT4KPiBDYzogU2VhbiBQYXVsIDxzZWFuQHBvb3JseS5ydW4+Cj4g
Q2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KPiBDYzogRGFuaWVsIFZldHRlciA8
ZGFuaWVsQGZmd2xsLmNoPgo+IENjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+Cj4gQ2M6IE5vcmFsZiBUcsO4bm5lcyA8bm9yYWxmQHRyb25uZXMub3JnPgo+IENj
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogRXJpYyBBbmhv
bHQgPGVyaWNAYW5ob2x0Lm5ldD4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5j
IHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1l
LmMKPiBpbmRleCAxODlkOTgwNDAyYWQuLmVjYTQ4NDEwNmNjMiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1l
LmMKPiBAQCAtMzAsNiArMzAsNyBAQAo+ICAjaW5jbHVkZSA8bGludXgvZG1hLWJ1Zi5oPgo+ICAj
aW5jbHVkZSA8bGludXgvcmJ0cmVlLmg+Cj4gIAo+ICsjaW5jbHVkZSA8ZHJtL2RybS5oPgo+ICAj
aW5jbHVkZSA8ZHJtL2RybV9kcnYuaD4KPiAgI2luY2x1ZGUgPGRybS9kcm1fZmlsZS5oPgo+ICAj
aW5jbHVkZSA8ZHJtL2RybV9mcmFtZWJ1ZmZlci5oPgo+IC0tIAo+IDIuMjAuMQo+IAoKLS0gClNl
YW4gUGF1bCwgU29mdHdhcmUgRW5naW5lZXIsIEdvb2dsZSAvIENocm9taXVtIE9TCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
