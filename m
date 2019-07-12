Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A11667E9
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 09:42:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE1C56E2E5;
	Fri, 12 Jul 2019 07:42:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com
 [IPv6:2607:f8b0:4864:20::743])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 248536E2E6
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 07:42:55 +0000 (UTC)
Received: by mail-qk1-x743.google.com with SMTP id d15so5731953qkl.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 00:42:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=T9t4sMdQ7ju6F95r8VqvTuSRnDoqwe8Mg8/EN7g9bjA=;
 b=jYhWfzGJqLiEEkj2O5NcDE+9EnOAxCFDtsOI/OaQam4pf605p2o4xPHqmQ8jy7BYnz
 b+rybk4i3yBrsVOfUbqd3wiZ4GXGUpS/nPgA1Vl/7trkqNlXjrvm/7TPpWV3v+TKRoe1
 lM4t74YaNvoosZwBjI7OHGcSTpmsiiM9R8ipxc3F2B+bjxG019vn4qiRH9IWOCCQgS3u
 Enb9CCB5y6BGrV3MJiCQ0vrve+0Ejk/4FGChMoxVbu5IqtJKWppmjrp9UFqkUxrQu3W6
 lzJTyISrq1FslWfBNWYJHotbwHA+/kX7Js0v1BCS8pIdpH0U47Ku+3BhTRtXYWZ39Bym
 T42A==
X-Gm-Message-State: APjAAAWUg90VSxF1WW+o+Ih5cmBllSM/is1k6XqDCfOYhK0Ohws7t7b9
 eufVl8qDNCVbTrJSZ1SLdbQVZ/D/whAUSj/JI+/WPA==
X-Google-Smtp-Source: APXvYqwrgaL71IJVsa72rhVPOh+cWEZTyj1wxVLTO7GH4TREGLwUjIqC+Ue6eLE9ZNTL9jxZF/dPXtjZfP7KY6zczmo=
X-Received: by 2002:a37:bcc7:: with SMTP id m190mr5072496qkf.433.1562917375149; 
 Fri, 12 Jul 2019 00:42:55 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1562843413.git.andrzej.p@collabora.com>
 <86afdc0bca6939901870176dcf55f279f7b10a08.1562843413.git.andrzej.p@collabora.com>
In-Reply-To: <86afdc0bca6939901870176dcf55f279f7b10a08.1562843413.git.andrzej.p@collabora.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Fri, 12 Jul 2019 09:42:44 +0200
Message-ID: <CA+M3ks63WY4umDR_1apjLj4kDf8jpm-CLsC-XO7dY=LbY--p-w@mail.gmail.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=T9t4sMdQ7ju6F95r8VqvTuSRnDoqwe8Mg8/EN7g9bjA=;
 b=rk/R6JuNMGMSZJb+YPovsTkrtFyiszy1QWZh3TpLHFIqylcWHxh/ewIgd5a91wVrQN
 ceahiCjA8ikBPJluTWFpkNkYsV/2p3vlCRMfVhOMdONZ8Zsfd3+3N/qVDb4F6+pIMDnK
 MbECjms9qZWlKYELmMDYGSebaDp1YXaSOCKmgRxegfoFrGHo+siChFMRBKT6zhvAcFLi
 UXNatuEC7/Nah1UVkg8fj0wFrba/yP9t7EBPLYREIDMsvG8kovZq5n+fy87RmOjt2+sl
 282rTn+x8xEupAa3RoC0ULJjlpGrxGjO+Ro8hneewvhjGYR9H4mz+vUwj9n1jyvbXOaQ
 ghUQ==
Subject: Re: [Intel-gfx] [PATCH v4 15/23] drm: sti: Provide ddc symlink in
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
 Maxime Ripard <maxime.ripard@bootlin.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Douglas Anderson <dianders@chromium.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 "moderated list:ARM/S5P EXYNOS AR..." <linux-samsung-soc@vger.kernel.org>,
 Joonyoung Shim <jy0922.shim@samsung.com>, linux-rockchip@lists.infradead.org,
 Vincent Abriou <vincent.abriou@st.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, CK Hu <ck.hu@mediatek.com>,
 Dave Airlie <airlied@redhat.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 freedreno@lists.freedesktop.org, linux-tegra@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Inki Dae <inki.dae@samsung.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Jyri Sarha <jsarha@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Allison Randal <allison@lohutok.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
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

TGUgamV1LiAxMSBqdWlsLiAyMDE5IMOgIDEzOjMwLCBBbmRyemVqIFBpZXRyYXNpZXdpY3oKPGFu
ZHJ6ZWoucEBjb2xsYWJvcmEuY29tPiBhIMOpY3JpdCA6Cj4KPiBVc2UgdGhlIGRkYyBwb2ludGVy
IHByb3ZpZGVkIGJ5IHRoZSBnZW5lcmljIGNvbm5lY3Rvci4KPgo+IFNpZ25lZC1vZmYtYnk6IEFu
ZHJ6ZWogUGlldHJhc2lld2ljeiA8YW5kcnplai5wQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1i
eTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGxpbmFyby5vcmc+Cgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vc3RpL3N0aV9oZG1pLmMgfCAxICsKPiAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3N0aS9z
dGlfaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL3N0aS9zdGlfaGRtaS5jCj4gaW5kZXggZjAzZDYx
N2VkYzRjLi45MGY4ZGI2M2MwOTUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3N0aS9z
dGlfaGRtaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3N0aS9zdGlfaGRtaS5jCj4gQEAgLTEy
NzksNiArMTI3OSw3IEBAIHN0YXRpYyBpbnQgc3RpX2hkbWlfYmluZChzdHJ1Y3QgZGV2aWNlICpk
ZXYsIHN0cnVjdCBkZXZpY2UgKm1hc3Rlciwgdm9pZCAqZGF0YSkKPiAgICAgICAgIGRybV9icmlk
Z2VfYXR0YWNoKGVuY29kZXIsIGJyaWRnZSwgTlVMTCk7Cj4KPiAgICAgICAgIGNvbm5lY3Rvci0+
ZW5jb2RlciA9IGVuY29kZXI7Cj4gKyAgICAgICBkcm1fY29ubmVjdG9yLT5kZGMgPSBoZG1pLT5k
ZGNfYWRhcHQ7Cj4KPiAgICAgICAgIGRybV9jb25uZWN0b3IgPSAoc3RydWN0IGRybV9jb25uZWN0
b3IgKiljb25uZWN0b3I7Cj4KPiAtLQo+IDIuMTcuMQo+Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
