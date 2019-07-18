Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BB06D327
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 19:51:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BD846E451;
	Thu, 18 Jul 2019 17:51:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc42.google.com (mail-yw1-xc42.google.com
 [IPv6:2607:f8b0:4864:20::c42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0595D6E452
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 17:51:17 +0000 (UTC)
Received: by mail-yw1-xc42.google.com with SMTP id i138so12547052ywg.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 10:51:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JuMhT0HKuYtEVUP5Y0F3NAGMIA0qzfXKwQ9hRAJo24c=;
 b=ag6pfu7KaKoDBJRgs27ENozoBgg18iUrpR5RVdzwDvahFSR7zqy8y8PW45PztntN+I
 uK3LgmzSMF9jsLxukRLcBM69G9tlc3kAQh2gpQdKWP5TMW2f9zjmCbxOMlRnydlGdrNp
 ZXkUH8oddcksGB31VweBjihjv3bQQu9ZHGnHAVHqV7gbFyiBRMGPqAlrrXY2RIg/UqhP
 6AAfy18vS0xeQgZxKXLBC8OEEJbdraA8uBf2mpLKt5GSt9j0n34lmtMrBR+hFCYP4gBv
 yXm/0jR1AkO3dti7Wa44Ufaxr+ONJavV4ZPifwwaVBxxctmxFCC5O/+1K8eqw7XEPMB8
 dpxw==
X-Gm-Message-State: APjAAAUjOA+sd5077a3Toj9wsn+7Zf1v7wWYj0fsaAdIkL4HyoxHu6kK
 sjcQ9HjI1Cr7Lpg9MTiPui8BAQ==
X-Google-Smtp-Source: APXvYqwuJzFtzgQESxcgghViBQHUytRxwHQCDFElqyu/mxGd+RBXaA8FGHOYounVgJinWdQSQCtI/A==
X-Received: by 2002:a81:4ec7:: with SMTP id
 c190mr27962174ywb.160.1563472276256; 
 Thu, 18 Jul 2019 10:51:16 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id m124sm5282541ywb.13.2019.07.18.10.51.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 10:51:15 -0700 (PDT)
Date: Thu, 18 Jul 2019 13:51:15 -0400
From: Sean Paul <sean@poorly.run>
To: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190718175115.GI31819@art_vandelay>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-7-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718161507.2047-7-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=JuMhT0HKuYtEVUP5Y0F3NAGMIA0qzfXKwQ9hRAJo24c=;
 b=ISg9avvWTVXWzSxqKUeFrRTKYVfv4fF0925BqDiHXTtvk3iY4OIh6eeGihXOX50rsW
 8jsqf1KErZ9Nf+penk0bECSvA9VmEgl0F/lEkji23HMzjwwGn4dIFA2N4LsfF1TSTg5g
 GpsCzq2Ea7XhzNNdwoTHlL3Suej/Q/do+C/CpHii3kTwjNkCyhKw3A0zikRASnbRAD2f
 84Q5390Uxu1lscTlFFn6wKXiqgCX6Uns0tvB8ndDCBljIZE3Muv0NBUV/QHpCxF/Cq0I
 Qd97YAXzkAZd/eWFvtqbj8bxf8En7ikjkM47oQGhbIxjBYvwdetc10uYcF9tQmgEu6jU
 sWpg==
Subject: Re: [Intel-gfx] [PATCH v1 06/11] drm: direct include of drm.h in
 drm_gem.c
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

T24gVGh1LCBKdWwgMTgsIDIwMTkgYXQgMDY6MTU6MDJQTSArMDIwMCwgU2FtIFJhdm5ib3JnIHdy
b3RlOgo+IERvIG5vdCByZWx5IG9uIGluY2x1ZGluZyBkcm0uaCBmcm9tIGRybV9maWxlLmgsCj4g
YXMgdGhlIGluY2x1ZGUgaW4gZHJtX2ZpbGUuaCB3aWxsIGJlIGRyb3BwZWQuCj4gCj4gU2lnbmVk
LW9mZi1ieTogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgoKUmV2aWV3ZWQtYnk6IFNl
YW4gUGF1bCA8c2VhbkBwb29ybHkucnVuPgoKPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0
ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiBDYzogTWF4aW1lIFJpcGFyZCA8bWF4aW1l
LnJpcGFyZEBib290bGluLmNvbT4KPiBDYzogU2VhbiBQYXVsIDxzZWFuQHBvb3JseS5ydW4+Cj4g
Q2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KPiBDYzogRGFuaWVsIFZldHRlciA8
ZGFuaWVsQGZmd2xsLmNoPgo+IENjOiBFcmljIEFuaG9sdCA8ZXJpY0BhbmhvbHQubmV0Pgo+IENj
OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KPiBDYzogUm9iIEhlcnJp
bmcgPHJvYmhAa2VybmVsLm9yZz4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYyB8
IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMKPiBp
bmRleCBlNmMxMmM2ZWM3MjguLjI0M2Y0M2Q3MGY0MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vZHJtX2dlbS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYwo+IEBAIC0z
OSw2ICszOSw3IEBACj4gICNpbmNsdWRlIDxsaW51eC9tZW1fZW5jcnlwdC5oPgo+ICAjaW5jbHVk
ZSA8bGludXgvcGFnZXZlYy5oPgo+ICAKPiArI2luY2x1ZGUgPGRybS9kcm0uaD4KPiAgI2luY2x1
ZGUgPGRybS9kcm1fZGV2aWNlLmg+Cj4gICNpbmNsdWRlIDxkcm0vZHJtX2Rydi5oPgo+ICAjaW5j
bHVkZSA8ZHJtL2RybV9maWxlLmg+Cj4gLS0gCj4gMi4yMC4xCj4gCgotLSAKU2VhbiBQYXVsLCBT
b2Z0d2FyZSBFbmdpbmVlciwgR29vZ2xlIC8gQ2hyb21pdW0gT1MKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
