Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F93538E203
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 09:54:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68D0F6E114;
	Mon, 24 May 2021 07:54:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 884AF6E117
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 07:54:42 +0000 (UTC)
Received: from [192.168.1.111] (91-157-208-71.elisa-laajakaista.fi
 [91.157.208.71])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0ABD71315;
 Mon, 24 May 2021 09:54:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1621842878;
 bh=nQQLNOZHnWiuc9bVbNIPySsUX8BVfY7zKLqSjjjmqow=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=eP/n0p6WGzQZageTDgh+AhAcs/g5Ue1NYt36d3FWKJQJaTvUMj3hrq8+fQwTDYsqg
 Qiwo2GzlBbrg64RXzSwS8WGOPR2HHdLSIbrjQa3SmUmIPz8qikHGRXxlQgTdAuSvZD
 m5qtsfBYdKDyEA1AOMNDxtttFSFlN8wpwtRhKuuM=
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
 <20210521090959.1663703-6-daniel.vetter@ffwll.ch>
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Message-ID: <71ba0c85-be5d-21f9-6817-9848dafde6ea@ideasonboard.com>
Date: Mon, 24 May 2021 10:54:35 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210521090959.1663703-6-daniel.vetter@ffwll.ch>
Content-Language: en-US
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
Cc: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
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
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, linux-mediatek@lists.infradead.org,
 Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Jyri Sarha <jyri.sarha@iki.fi>,
 Yannick Fertre <yannick.fertre@foss.st.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-sunxi@lists.linux.dev, Philippe Cornu <philippe.cornu@foss.st.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjEvMDUvMjAyMSAxMjowOSwgRGFuaWVsIFZldHRlciB3cm90ZToKPiBObyBuZWVkIHRvIHNl
dCBpdCBleHBsaWNpdGx5Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmll
bC52ZXR0ZXJAaW50ZWwuY29tPgo+IENjOiBMYXVyZW50aXUgUGFsY3UgPGxhdXJlbnRpdS5wYWxj
dUBvc3MubnhwLmNvbT4KPiBDYzogTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+
Cj4gQ2M6IFNoYXduIEd1byA8c2hhd25ndW9Aa2VybmVsLm9yZz4KPiBDYzogU2FzY2hhIEhhdWVy
IDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgo+IENjOiBQZW5ndXRyb25peCBLZXJuZWwgVGVhbSA8
a2VybmVsQHBlbmd1dHJvbml4LmRlPgo+IENjOiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBnbWFp
bC5jb20+Cj4gQ2M6IE5YUCBMaW51eCBUZWFtIDxsaW51eC1pbXhAbnhwLmNvbT4KPiBDYzogUGhp
bGlwcCBaYWJlbCA8cC56YWJlbEBwZW5ndXRyb25peC5kZT4KPiBDYzogUGF1bCBDZXJjdWVpbCA8
cGF1bEBjcmFwb3VpbGxvdS5uZXQ+Cj4gQ2M6IENodW4tS3VhbmcgSHUgPGNodW5rdWFuZy5odUBr
ZXJuZWwub3JnPgo+IENjOiBNYXR0aGlhcyBCcnVnZ2VyIDxtYXR0aGlhcy5iZ2dAZ21haWwuY29t
Pgo+IENjOiBOZWlsIEFybXN0cm9uZyA8bmFybXN0cm9uZ0BiYXlsaWJyZS5jb20+Cj4gQ2M6IEtl
dmluIEhpbG1hbiA8a2hpbG1hbkBiYXlsaWJyZS5jb20+Cj4gQ2M6IEplcm9tZSBCcnVuZXQgPGpi
cnVuZXRAYmF5bGlicmUuY29tPgo+IENjOiBNYXJ0aW4gQmx1bWVuc3RpbmdsIDxtYXJ0aW4uYmx1
bWVuc3RpbmdsQGdvb2dsZW1haWwuY29tPgo+IENjOiBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5k
ZT4KPiBDYzogU3RlZmFuIEFnbmVyIDxzdGVmYW5AYWduZXIuY2g+Cj4gQ2M6IFNhbmR5IEh1YW5n
IDxoamNAcm9jay1jaGlwcy5jb20+Cj4gQ2M6ICJIZWlrbyBTdMO8Ym5lciIgPGhlaWtvQHNudGVj
aC5kZT4KPiBDYzogWWFubmljayBGZXJ0cmUgPHlhbm5pY2suZmVydHJlQGZvc3Muc3QuY29tPgo+
IENjOiBQaGlsaXBwZSBDb3JudSA8cGhpbGlwcGUuY29ybnVAZm9zcy5zdC5jb20+Cj4gQ2M6IEJl
bmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBsaW5hcm8ub3JnPgo+IENjOiBNYXhp
bWUgQ29xdWVsaW4gPG1jb3F1ZWxpbi5zdG0zMkBnbWFpbC5jb20+Cj4gQ2M6IEFsZXhhbmRyZSBU
b3JndWUgPGFsZXhhbmRyZS50b3JndWVAZm9zcy5zdC5jb20+Cj4gQ2M6IE1heGltZSBSaXBhcmQg
PG1yaXBhcmRAa2VybmVsLm9yZz4KPiBDYzogQ2hlbi1ZdSBUc2FpIDx3ZW5zQGNzaWUub3JnPgo+
IENjOiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAZ21haWwuY29tPgo+IENjOiBKeXJp
IFNhcmhhIDxqeXJpLnNhcmhhQGlraS5maT4KPiBDYzogVG9taSBWYWxrZWluZW4gPHRvbWJhQGtl
cm5lbC5vcmc+Cj4gQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IENj
OiBsaW51eC1taXBzQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW51eC1tZWRpYXRla0BsaXN0cy5p
bmZyYWRlYWQub3JnCj4gQ2M6IGxpbnV4LWFtbG9naWNAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IENj
OiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gQ2M6IGxpbnV4LXN0bTMyQHN0
LW1kLW1haWxtYW4uc3Rvcm1yZXBseS5jb20KPiBDYzogbGludXgtc3VueGlAbGlzdHMubGludXgu
ZGV2Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaW14L2Rjc3MvZGNzcy1wbGFuZS5jICAgICAg
IHwgMSAtCj4gICBkcml2ZXJzL2dwdS9kcm0vaW14L2lwdXYzLXBsYW5lLmMgICAgICAgICAgIHwg
MSAtCj4gICBkcml2ZXJzL2dwdS9kcm0vaW5nZW5pYy9pbmdlbmljLWRybS1kcnYuYyAgIHwgMSAt
Cj4gICBkcml2ZXJzL2dwdS9kcm0vaW5nZW5pYy9pbmdlbmljLWlwdS5jICAgICAgIHwgMSAtCj4g
ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9wbGFuZS5jICAgIHwgMSAtCj4gICBk
cml2ZXJzL2dwdS9kcm0vbWVzb24vbWVzb25fb3ZlcmxheS5jICAgICAgIHwgMSAtCj4gICBkcml2
ZXJzL2dwdS9kcm0vbWVzb24vbWVzb25fcGxhbmUuYyAgICAgICAgIHwgMSAtCj4gICBkcml2ZXJz
L2dwdS9kcm0vbXhzZmIvbXhzZmJfa21zLmMgICAgICAgICAgIHwgMiAtLQo+ICAgZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYyB8IDEgLQo+ICAgZHJpdmVycy9ncHUv
ZHJtL3N0bS9sdGRjLmMgICAgICAgICAgICAgICAgICB8IDEgLQo+ICAgZHJpdmVycy9ncHUvZHJt
L3N1bjRpL3N1bjRpX2xheWVyLmMgICAgICAgICB8IDEgLQo+ICAgZHJpdmVycy9ncHUvZHJtL3N1
bjRpL3N1bjhpX3VpX2xheWVyLmMgICAgICB8IDEgLQo+ICAgZHJpdmVycy9ncHUvZHJtL3N1bjRp
L3N1bjhpX3ZpX2xheWVyLmMgICAgICB8IDEgLQo+ICAgZHJpdmVycy9ncHUvZHJtL3RpZHNzL3Rp
ZHNzX3BsYW5lLmMgICAgICAgICB8IDEgLQo+ICAgMTQgZmlsZXMgY2hhbmdlZCwgMTUgZGVsZXRp
b25zKC0pCgpGb3IgdGlkc3M6CgpBY2tlZC1ieTogVG9taSBWYWxrZWluZW4gPHRvbWkudmFsa2Vp
bmVuQGlkZWFzb25ib2FyZC5jb20+CgogIFRvbWkKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
