Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1932938E62D
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 14:05:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFC296E243;
	Mon, 24 May 2021 12:05:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C32AB89CE1;
 Sun, 23 May 2021 12:17:14 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id w12so20900300edx.1;
 Sun, 23 May 2021 05:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3tzEvnJ635tC2Suexfcwo2/SMYwrMnTRuJbRrXUefrg=;
 b=qLzt2Q8zgmZbiflD5+5P7ElMN2z5A5uPW8NRXtteO4uyLUUDRrn2IKkRaMvKWKF65W
 1cfWZUBsHQFj1InumAA50YINqUE+1gGMQa6vawhc32wnMK1JPFqy+ZWs+yK3N/lhIrZB
 tFzU7CEWgebc10cYE5ViNhI9KqJ0BhAzNgASIXHqW9Pvbic5Mbf7n+1hTPPnGTy2gyoF
 KIpNNID+LMnrZr9hOeF1GqZZFlAGZkUq4n5yICVxd5jeKSPa46Y9ikqlIlB9JT7xuTyE
 P+9+6vpZcRqQG7UUVVCq9WhiE6nWh3BKUbJrAhmJbHLt2xZ+1Xri6sMQDKQymr2NNUCG
 TF9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3tzEvnJ635tC2Suexfcwo2/SMYwrMnTRuJbRrXUefrg=;
 b=NmBjio2xysvIBbgKJ6KEKIRD1sQ7pZnYG/AytKMJiLaBjFzu84IDXBIL8POTVQi7Wc
 f7dU5VuwwzC7HaLqCfuxyT57x9cPhTRkQsEK2Cx3uvYiRN9L+aNKqReBBROyiy+S/WYZ
 c+tZokRlqPsqPiGhHvMFKR3Z/EgprAOxvn83PgnNZCNYWBZYcnKKXr59mCK+C6wcI21W
 N7Jjp7X5/zR664sB7dHvxY7JCJw/ul9Tu/vA1ASIF2S8doHR+rl70y0obE87Fah6FGMt
 PMGmU8Ea0NG6tsb0d7+z4K41fyW/KhieSCpbDwgIHV8J6G2BS7QpM15vEvy99DC3Jcr3
 F8aA==
X-Gm-Message-State: AOAM531D/M11FsE+Ecrrmjm/SOShl1zPqg/gPsRG2FeV1b6DJZapmHP+
 gtYH8sdxhR5Kw4mvxi+xCf0UyebpS88QbOz3Z5o=
X-Google-Smtp-Source: ABdhPJwPxmA4JArahzruRum264WKfGGbHUJh6bex9S7VrYwga+yKcdKWZft9UnfQIVsWH4AZBM7E8wWiBet0Lx5Pf5o=
X-Received: by 2002:a50:fb17:: with SMTP id d23mr19981613edq.338.1621772233437; 
 Sun, 23 May 2021 05:17:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
 <20210521090959.1663703-6-daniel.vetter@ffwll.ch>
In-Reply-To: <20210521090959.1663703-6-daniel.vetter@ffwll.ch>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 23 May 2021 14:17:02 +0200
Message-ID: <CAFBinCDXgjevHr9wRn8gQ8pJhiSpZb5A7ChhQqk17yK8Tooa3Q@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
X-Mailman-Approved-At: Mon, 24 May 2021 12:05:07 +0000
Subject: Re: [Intel-gfx] [PATCH 06/11] drm/<driver>:
 drm_gem_plane_helper_prepare_fb is now the default
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Stefan Agner <stefan@agner.ch>, linux-mips@vger.kernel.org,
 Paul Cercueil <paul@crapouillou.net>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Fabio Estevam <festevam@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, Jerome Brunet <jbrunet@baylibre.com>,
 Marek Vasut <marex@denx.de>, Kevin Hilman <khilman@baylibre.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, linux-mediatek@lists.infradead.org,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Tomi Valkeinen <tomba@kernel.org>,
 Jyri Sarha <jyri.sarha@iki.fi>, Yannick Fertre <yannick.fertre@foss.st.com>,
 Sandy Huang <hjc@rock-chips.com>, linux-sunxi@lists.linux.dev,
 Philippe Cornu <philippe.cornu@foss.st.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBNYXkgMjEsIDIwMjEgYXQgMTE6MTAgQU0gRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZl
dHRlckBmZndsbC5jaD4gd3JvdGU6Cj4KPiBObyBuZWVkIHRvIHNldCBpdCBleHBsaWNpdGx5Lgo+
Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+
Cj4gQ2M6IExhdXJlbnRpdSBQYWxjdSA8bGF1cmVudGl1LnBhbGN1QG9zcy5ueHAuY29tPgo+IENj
OiBMdWNhcyBTdGFjaCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4KPiBDYzogU2hhd24gR3VvIDxz
aGF3bmd1b0BrZXJuZWwub3JnPgo+IENjOiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9u
aXguZGU+Cj4gQ2M6IFBlbmd1dHJvbml4IEtlcm5lbCBUZWFtIDxrZXJuZWxAcGVuZ3V0cm9uaXgu
ZGU+Cj4gQ2M6IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdtYWlsLmNvbT4KPiBDYzogTlhQIExp
bnV4IFRlYW0gPGxpbnV4LWlteEBueHAuY29tPgo+IENjOiBQaGlsaXBwIFphYmVsIDxwLnphYmVs
QHBlbmd1dHJvbml4LmRlPgo+IENjOiBQYXVsIENlcmN1ZWlsIDxwYXVsQGNyYXBvdWlsbG91Lm5l
dD4KPiBDYzogQ2h1bi1LdWFuZyBIdSA8Y2h1bmt1YW5nLmh1QGtlcm5lbC5vcmc+Cj4gQ2M6IE1h
dHRoaWFzIEJydWdnZXIgPG1hdHRoaWFzLmJnZ0BnbWFpbC5jb20+Cj4gQ2M6IE5laWwgQXJtc3Ry
b25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT4KPiBDYzogS2V2aW4gSGlsbWFuIDxraGlsbWFu
QGJheWxpYnJlLmNvbT4KPiBDYzogSmVyb21lIEJydW5ldCA8amJydW5ldEBiYXlsaWJyZS5jb20+
Cj4gQ2M6IE1hcnRpbiBCbHVtZW5zdGluZ2wgPG1hcnRpbi5ibHVtZW5zdGluZ2xAZ29vZ2xlbWFp
bC5jb20+Cj4gQ2M6IE1hcmVrIFZhc3V0IDxtYXJleEBkZW54LmRlPgo+IENjOiBTdGVmYW4gQWdu
ZXIgPHN0ZWZhbkBhZ25lci5jaD4KPiBDYzogU2FuZHkgSHVhbmcgPGhqY0Byb2NrLWNoaXBzLmNv
bT4KPiBDYzogIkhlaWtvIFN0w7xibmVyIiA8aGVpa29Ac250ZWNoLmRlPgo+IENjOiBZYW5uaWNr
IEZlcnRyZSA8eWFubmljay5mZXJ0cmVAZm9zcy5zdC5jb20+Cj4gQ2M6IFBoaWxpcHBlIENvcm51
IDxwaGlsaXBwZS5jb3JudUBmb3NzLnN0LmNvbT4KPiBDYzogQmVuamFtaW4gR2FpZ25hcmQgPGJl
bmphbWluLmdhaWduYXJkQGxpbmFyby5vcmc+Cj4gQ2M6IE1heGltZSBDb3F1ZWxpbiA8bWNvcXVl
bGluLnN0bTMyQGdtYWlsLmNvbT4KPiBDYzogQWxleGFuZHJlIFRvcmd1ZSA8YWxleGFuZHJlLnRv
cmd1ZUBmb3NzLnN0LmNvbT4KPiBDYzogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3Jn
Pgo+IENjOiBDaGVuLVl1IFRzYWkgPHdlbnNAY3NpZS5vcmc+Cj4gQ2M6IEplcm5laiBTa3JhYmVj
IDxqZXJuZWouc2tyYWJlY0BnbWFpbC5jb20+Cj4gQ2M6IEp5cmkgU2FyaGEgPGp5cmkuc2FyaGFA
aWtpLmZpPgo+IENjOiBUb21pIFZhbGtlaW5lbiA8dG9tYmFAa2VybmVsLm9yZz4KPiBDYzogbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gQ2M6IGxpbnV4LW1pcHNAdmdlci5r
ZXJuZWwub3JnCj4gQ2M6IGxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBDYzog
bGludXgtYW1sb2dpY0BsaXN0cy5pbmZyYWRlYWQub3JnCj4gQ2M6IGxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKPiBDYzogbGludXgtc3RtMzJAc3QtbWQtbWFpbG1hbi5zdG9ybXJl
cGx5LmNvbQo+IENjOiBsaW51eC1zdW54aUBsaXN0cy5saW51eC5kZXYKPiAtLS0KPiAgZHJpdmVy
cy9ncHUvZHJtL2lteC9kY3NzL2Rjc3MtcGxhbmUuYyAgICAgICB8IDEgLQo+ICBkcml2ZXJzL2dw
dS9kcm0vaW14L2lwdXYzLXBsYW5lLmMgICAgICAgICAgIHwgMSAtCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pbmdlbmljL2luZ2VuaWMtZHJtLWRydi5jICAgfCAxIC0KPiAgZHJpdmVycy9ncHUvZHJtL2lu
Z2VuaWMvaW5nZW5pYy1pcHUuYyAgICAgICB8IDEgLQo+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0
ZWsvbXRrX2RybV9wbGFuZS5jICAgIHwgMSAtCj4gIGRyaXZlcnMvZ3B1L2RybS9tZXNvbi9tZXNv
bl9vdmVybGF5LmMgICAgICAgfCAxIC0KPiAgZHJpdmVycy9ncHUvZHJtL21lc29uL21lc29uX3Bs
YW5lLmMgICAgICAgICB8IDEgLQpGb3IgZHJpdmVycy9ncHUvZHJtL21lc29uLyo6CkFja2VkLWJ5
OiBNYXJ0aW4gQmx1bWVuc3RpbmdsIDxtYXJ0aW4uYmx1bWVuc3RpbmdsQGdvb2dsZW1haWwuY29t
PgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
