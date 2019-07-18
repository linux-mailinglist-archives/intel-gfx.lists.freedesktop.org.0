Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A39C66D32A
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 19:51:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 623D66E455;
	Thu, 18 Jul 2019 17:51:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc41.google.com (mail-yw1-xc41.google.com
 [IPv6:2607:f8b0:4864:20::c41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87EFE6E454
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 17:51:27 +0000 (UTC)
Received: by mail-yw1-xc41.google.com with SMTP id m16so12533589ywh.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 10:51:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HclqU1Hi0W57E2gKsEu2RVOLJkHR4HLSFJNAFC1/Q8g=;
 b=EWmoJmZrhEn3AaoWdMghivwoYP6slWO1vQAtSYucPsrYKrAMldHtLKq93j3RsW8N7G
 /YsRsWbFjRTmNeT6ODyotAwqwd96xv/YafsQqZwxtLwKv9eJVvGBAFNYZXxic1FbUPAj
 XeOAhvvW08IZiIrvxXHIo0VdMoUqRC6vBhH1JIM3yDpwuBdycIsI9AxciwE/v9tT51z5
 xBsQ61wn9EsMHRzNmLHS332kx/flRgyMBNscJfvUc1Fe+h8smUvzyCP9DODsl0F3836r
 QHoSZ+OTwynv3SbjxtyBFERb1FwTNuFqfrTqJRtsCEcQNxR175gZyHXp7QR8pJFGlDkE
 EiiA==
X-Gm-Message-State: APjAAAVCzBdr59G+5763RG74rHKTEpFx2QZ9YikcYgHrBFSpkZ9c/eXo
 hlfVGIGPyIK38lW0mjQ4S04+Wg==
X-Google-Smtp-Source: APXvYqz/hgPZl3J9zJ4rzgI3lHx4jd7KFLGFW7byJ9gOKdbCM4y5GD4mmEkDv1a0XOVFBA/waQ2A2g==
X-Received: by 2002:a81:23ca:: with SMTP id
 j193mr28745543ywj.332.1563472286787; 
 Thu, 18 Jul 2019 10:51:26 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id b63sm6624338ywb.12.2019.07.18.10.51.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 10:51:26 -0700 (PDT)
Date: Thu, 18 Jul 2019 13:51:26 -0400
From: Sean Paul <sean@poorly.run>
To: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190718175126.GJ31819@art_vandelay>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-8-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718161507.2047-8-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HclqU1Hi0W57E2gKsEu2RVOLJkHR4HLSFJNAFC1/Q8g=;
 b=HH0FL1tbuy7uPalwAKfC6ZHeRdaAnjcbTG9jFdzr2xbYH2DBAdmQ6Gb3M0+NvdIgNr
 41U4nFb7yULWA1ReJDB7gNtwAk6OiSbmGBqMrNsOkCY79FynHXMTRu51lPTxWDmap6Kg
 ZzFDoT/Hp+sskhyBFUd7cc+gHOehddjeuD35fJQadoMfpcxw0ngzUkp+bukgbsyFqDTc
 D1HRS48zMjajSM2IN2HSDvw+F+p9uM83hMJx/KeC6jDvY/OdYcP6pBA8CGK2UjS7WDgr
 FxOKGlekYtktN9Zu2ZDRAySgP3nnL37wl+4D/vf6V64m5LkSg/66nWDiwv/oREhIIM24
 LLGg==
Subject: Re: [Intel-gfx] [PATCH v1 07/11] drm: direct include of drm.h in
 drm_gem_shmem_helper.c
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

T24gVGh1LCBKdWwgMTgsIDIwMTkgYXQgMDY6MTU6MDNQTSArMDIwMCwgU2FtIFJhdm5ib3JnIHdy
b3RlOgo+IERvIG5vdCByZWx5IG9uIGluY2x1ZGluZyBkcm0uaCBmcm9tIGRybV9maWxlLmgsCj4g
YXMgdGhlIGluY2x1ZGUgaW4gZHJtX2ZpbGUuaCB3aWxsIGJlIGRyb3BwZWQuCj4gCj4gU2lnbmVk
LW9mZi1ieTogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgoKUmV2aWV3ZWQtYnk6IFNl
YW4gUGF1bCA8c2VhbkBwb29ybHkucnVuPgoKPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0
ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiBDYzogTWF4aW1lIFJpcGFyZCA8bWF4aW1l
LnJpcGFyZEBib290bGluLmNvbT4KPiBDYzogU2VhbiBQYXVsIDxzZWFuQHBvb3JseS5ydW4+Cj4g
Q2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KPiBDYzogRGFuaWVsIFZldHRlciA8
ZGFuaWVsQGZmd2xsLmNoPgo+IENjOiBFcmljIEFuaG9sdCA8ZXJpY0BhbmhvbHQubmV0Pgo+IENj
OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KPiBDYzogUm9iIEhlcnJp
bmcgPHJvYmhAa2VybmVsLm9yZz4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2ht
ZW1faGVscGVyLmMgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5jIGIvZHJp
dmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMKPiBpbmRleCA0NzJlYTVkODFmODIu
LjJmNjQ2NjdhYzgwNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1l
bV9oZWxwZXIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5j
Cj4gQEAgLTEwLDYgKzEwLDcgQEAKPiAgI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4KPiAgI2luY2x1
ZGUgPGxpbnV4L3ZtYWxsb2MuaD4KPiAgCj4gKyNpbmNsdWRlIDxkcm0vZHJtLmg+Cj4gICNpbmNs
dWRlIDxkcm0vZHJtX2RldmljZS5oPgo+ICAjaW5jbHVkZSA8ZHJtL2RybV9kcnYuaD4KPiAgI2lu
Y2x1ZGUgPGRybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5oPgo+IC0tIAo+IDIuMjAuMQo+IAoKLS0g
ClNlYW4gUGF1bCwgU29mdHdhcmUgRW5naW5lZXIsIEdvb2dsZSAvIENocm9taXVtIE9TCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
