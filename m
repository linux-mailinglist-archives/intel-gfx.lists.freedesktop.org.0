Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C427A8AE
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 14:37:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 414206E4D0;
	Tue, 30 Jul 2019 12:37:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com
 [IPv6:2607:f8b0:4864:20::841])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B8636E4CB
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 12:37:03 +0000 (UTC)
Received: by mail-qt1-x841.google.com with SMTP id k10so62881460qtq.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 05:37:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=n792zjXbKMn7YCTSjsK0c7rZug8cVAZEXdpG+zafkUs=;
 b=jBxedmWWzebH7EVAP+cbuFzVNro3lOaLPEenUOOoMyGfYzIzaRetivVlcOIk74esji
 8GekED5Sr/ACmOFcSx6bbRZradzOZSMFNcgH1ZP2fP6/AOagnVbtR3jLGxHteK4DXAPx
 OgxumNGPziI8qNVHyT8a6ZVTyJLFaYX3XuzxFGODyiiHNZNBGPjoj2pXu0nQOrWpErjN
 Benkgwz1kSAG8dlL0CwtpNaW8eC5yjyMewC7Pi6DR8+D/bxdSUgIdvEKl28sYaKRM+lW
 u3PhXv9cTk2fxSk07I6yB6zGru0nTVKg/yNp6ozVACwnwGBv28P8ra3+X7DZjEjonG7D
 fEJw==
X-Gm-Message-State: APjAAAVPYux4XNTy/31zJem7iGjIdGaQsvcm/glZq79vmu5HSMD5zgh7
 7YDLC+IoSBYr7KCmvH3haYTSxTQO0rIfJf0iqExukA==
X-Google-Smtp-Source: APXvYqwUTlaCNODMj8Our73tOJ/aN3xFKkF1HOiUDO6XMR5NzvTl2Jv1UFszMtRL0CaUO3v2uM3c75R2zBlJJ/fKvGs=
X-Received: by 2002:aed:3f47:: with SMTP id q7mr82155223qtf.209.1564490222670; 
 Tue, 30 Jul 2019 05:37:02 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1564161140.git.andrzej.p@collabora.com>
 <510765aff8ef99683aa2da48bd08004376b1980a.1564161140.git.andrzej.p@collabora.com>
In-Reply-To: <510765aff8ef99683aa2da48bd08004376b1980a.1564161140.git.andrzej.p@collabora.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Tue, 30 Jul 2019 14:36:50 +0200
Message-ID: <CA+M3ks46eO_yE+Jd9SWPJ6eD+m1TZPCKuBcZsmpy6Ta9PZFfhw@mail.gmail.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=n792zjXbKMn7YCTSjsK0c7rZug8cVAZEXdpG+zafkUs=;
 b=hqyWeBR0GpIR/dKAgWibP2xmKk9SulmD7z5Dn+OwVwnVkWx+7ziiileTfA+PtyflzT
 NCtwjTC8sYHI9UNdSZI7dpe2iy1Q3zkU4UWH8iy54ARmGAGk9bHzgdkGTOLq61jMo/y1
 6ZXG0nKNN679OcMRcoxPasMqFkniZKs/5KmVzMSRjOM5u+W+D3GhD5osis1Bv5P6nBGr
 asuMBD5TQGSYd+CowUBZgKxIXeKrOeEgHYtwCRUdNaLtTxLx6BR56v/WZ3hWbhByGhh4
 G7rSygWiMjDi4IzIFtZV//YhW726BKSTPcJrUCjVB4gqtadF/n7wzQ+OY5/N7h087FL8
 HssA==
Subject: Re: [Intel-gfx] [PATCH v6 16/24] drm: sti: Provide ddc symlink in
 hdmi connector sysfs directory
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
Cc: "Y.C. Chen" <yc_chen@aspeedtech.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Douglas Anderson <dianders@chromium.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 "moderated list:ARM/S5P EXYNOS AR..." <linux-samsung-soc@vger.kernel.org>,
 Joonyoung Shim <jy0922.shim@samsung.com>, Jyri Sarha <jsarha@ti.com>,
 Vincent Abriou <vincent.abriou@st.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, CK Hu <ck.hu@mediatek.com>,
 Dave Airlie <airlied@redhat.com>, Harry Wentland <harry.wentland@amd.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 freedreno@lists.freedesktop.org, linux-tegra@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Maxime Ripard <mripard@kernel.org>,
 Inki Dae <inki.dae@samsung.com>, Mamta Shukla <mamtashukla555@gmail.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Enrico Weigelt <info@metux.net>, Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>, Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TGUgdmVuLiAyNiBqdWlsLiAyMDE5IMOgIDE5OjI3LCBBbmRyemVqIFBpZXRyYXNpZXdpY3oKPGFu
ZHJ6ZWoucEBjb2xsYWJvcmEuY29tPiBhIMOpY3JpdCA6Cj4KPiBVc2UgdGhlIGRkYyBwb2ludGVy
IHByb3ZpZGVkIGJ5IHRoZSBnZW5lcmljIGNvbm5lY3Rvci4KPgo+IFNpZ25lZC1vZmYtYnk6IEFu
ZHJ6ZWogUGlldHJhc2lld2ljeiA8YW5kcnplai5wQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1i
eTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGxpbmFyby5vcmc+Cgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vc3RpL3N0aV9oZG1pLmMgfCA2ICsrKystLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9zdGkvc3RpX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9zdGkvc3Rp
X2hkbWkuYwo+IGluZGV4IGYwM2Q2MTdlZGM0Yy4uMzNkMDZlMGE5MTY4IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9zdGkvc3RpX2hkbWkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9z
dGkvc3RpX2hkbWkuYwo+IEBAIC0xMjg0LDggKzEyODQsMTAgQEAgc3RhdGljIGludCBzdGlfaGRt
aV9iaW5kKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZSAqbWFzdGVyLCB2b2lkICpk
YXRhKQo+Cj4gICAgICAgICBkcm1fY29ubmVjdG9yLT5wb2xsZWQgPSBEUk1fQ09OTkVDVE9SX1BP
TExfSFBEOwo+Cj4gLSAgICAgICBkcm1fY29ubmVjdG9yX2luaXQoZHJtX2RldiwgZHJtX2Nvbm5l
Y3RvciwKPiAtICAgICAgICAgICAgICAgICAgICAgICAmc3RpX2hkbWlfY29ubmVjdG9yX2Z1bmNz
LCBEUk1fTU9ERV9DT05ORUNUT1JfSERNSUEpOwo+ICsgICAgICAgZHJtX2Nvbm5lY3Rvcl9pbml0
X3dpdGhfZGRjKGRybV9kZXYsIGRybV9jb25uZWN0b3IsCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgJnN0aV9oZG1pX2Nvbm5lY3Rvcl9mdW5jcywKPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBEUk1fTU9ERV9DT05ORUNUT1JfSERNSUEsCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaGRtaS0+ZGRjX2FkYXB0KTsKPiAgICAgICAg
IGRybV9jb25uZWN0b3JfaGVscGVyX2FkZChkcm1fY29ubmVjdG9yLAo+ICAgICAgICAgICAgICAg
ICAgICAgICAgICZzdGlfaGRtaV9jb25uZWN0b3JfaGVscGVyX2Z1bmNzKTsKPgo+IC0tCj4gMi4x
Ny4xCj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
