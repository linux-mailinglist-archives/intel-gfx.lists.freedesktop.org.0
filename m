Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BD438D1E2
	for <lists+intel-gfx@lfdr.de>; Sat, 22 May 2021 01:18:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D91988284;
	Fri, 21 May 2021 23:18:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 617E36F936;
 Fri, 21 May 2021 23:18:13 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id C43076140E;
 Fri, 21 May 2021 23:18:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621639092;
 bh=Hd7KH/71GldwhXzi4DHrPnVVlwTF8/7LpSIK8f+o37k=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=mlXulejv3Ysv73n5sYbWm7uyupczUWhDUNTa5F/LCgN4wuvvXy0ddTrpA3Qsl0leI
 AULyIrR6rRr7Ju7btfC+XyOY94n9ukjPt4LK91jUbt24Yic8qouEpEtcn9uW7M0wVi
 e6rBjeermIsJ9VbqsWDpcEyUNW2tcvN1DCFlvYucjMu8cWx7C9mDDBgCLvNQzWc7OP
 luBuWeDeeCCou11IK9qtcCoRSrEIwPpGZG/uJg+ZPOxsk8UxATYXUT+YG0cHdiaY52
 5ptDdeNdoaOPofBrEkMo4oI9UvriwfM40vq8zTv+b4Gy/SNPX5zQ4mpQcnxUlQtdRL
 xGrBkU+F5BKhQ==
Received: by mail-ed1-f41.google.com with SMTP id j10so7529580edw.8;
 Fri, 21 May 2021 16:18:12 -0700 (PDT)
X-Gm-Message-State: AOAM531byg6o5BBw/+I/eVPBkBblf9Ay1X+JFvOI6wamkecJummmKSFT
 xOL2A7BIRXppDBiZ5tuuj6jUZotcVtF0eNu1Ww==
X-Google-Smtp-Source: ABdhPJwLJlzlmPOVRB7WKK0qZ9/SZhKCK9XRN5xQd6mPkGwxMkeGWm/SWipPm0RU1P626dAzclwFX7nQ2tzbyDx7y90=
X-Received: by 2002:aa7:d550:: with SMTP id u16mr11816867edr.72.1621639091092; 
 Fri, 21 May 2021 16:18:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
 <20210521090959.1663703-6-daniel.vetter@ffwll.ch>
In-Reply-To: <20210521090959.1663703-6-daniel.vetter@ffwll.ch>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Sat, 22 May 2021 07:18:00 +0800
X-Gmail-Original-Message-ID: <CAAOTY_-PKbYrREUccm5ZbTaMawpaZ7c=1zBbQBFfCZqfpu-1Hg@mail.gmail.com>
Message-ID: <CAAOTY_-PKbYrREUccm5ZbTaMawpaZ7c=1zBbQBFfCZqfpu-1Hg@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
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
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-amlogic@lists.infradead.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
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

SGksIERhbmllbDoKCkRhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+IOaWvCAy
MDIx5bm0NeaciDIx5pelIOmAseS6lCDkuIvljYg1OjEw5a+r6YGT77yaCj4KPiBObyBuZWVkIHRv
IHNldCBpdCBleHBsaWNpdGx5Lgo+Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFu
aWVsLnZldHRlckBpbnRlbC5jb20+Cj4gQ2M6IExhdXJlbnRpdSBQYWxjdSA8bGF1cmVudGl1LnBh
bGN1QG9zcy5ueHAuY29tPgo+IENjOiBMdWNhcyBTdGFjaCA8bC5zdGFjaEBwZW5ndXRyb25peC5k
ZT4KPiBDYzogU2hhd24gR3VvIDxzaGF3bmd1b0BrZXJuZWwub3JnPgo+IENjOiBTYXNjaGEgSGF1
ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+Cj4gQ2M6IFBlbmd1dHJvbml4IEtlcm5lbCBUZWFt
IDxrZXJuZWxAcGVuZ3V0cm9uaXguZGU+Cj4gQ2M6IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdt
YWlsLmNvbT4KPiBDYzogTlhQIExpbnV4IFRlYW0gPGxpbnV4LWlteEBueHAuY29tPgo+IENjOiBQ
aGlsaXBwIFphYmVsIDxwLnphYmVsQHBlbmd1dHJvbml4LmRlPgo+IENjOiBQYXVsIENlcmN1ZWls
IDxwYXVsQGNyYXBvdWlsbG91Lm5ldD4KPiBDYzogQ2h1bi1LdWFuZyBIdSA8Y2h1bmt1YW5nLmh1
QGtlcm5lbC5vcmc+Cj4gQ2M6IE1hdHRoaWFzIEJydWdnZXIgPG1hdHRoaWFzLmJnZ0BnbWFpbC5j
b20+Cj4gQ2M6IE5laWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT4KPiBDYzog
S2V2aW4gSGlsbWFuIDxraGlsbWFuQGJheWxpYnJlLmNvbT4KPiBDYzogSmVyb21lIEJydW5ldCA8
amJydW5ldEBiYXlsaWJyZS5jb20+Cj4gQ2M6IE1hcnRpbiBCbHVtZW5zdGluZ2wgPG1hcnRpbi5i
bHVtZW5zdGluZ2xAZ29vZ2xlbWFpbC5jb20+Cj4gQ2M6IE1hcmVrIFZhc3V0IDxtYXJleEBkZW54
LmRlPgo+IENjOiBTdGVmYW4gQWduZXIgPHN0ZWZhbkBhZ25lci5jaD4KPiBDYzogU2FuZHkgSHVh
bmcgPGhqY0Byb2NrLWNoaXBzLmNvbT4KPiBDYzogIkhlaWtvIFN0w7xibmVyIiA8aGVpa29Ac250
ZWNoLmRlPgo+IENjOiBZYW5uaWNrIEZlcnRyZSA8eWFubmljay5mZXJ0cmVAZm9zcy5zdC5jb20+
Cj4gQ2M6IFBoaWxpcHBlIENvcm51IDxwaGlsaXBwZS5jb3JudUBmb3NzLnN0LmNvbT4KPiBDYzog
QmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGxpbmFyby5vcmc+Cj4gQ2M6IE1h
eGltZSBDb3F1ZWxpbiA8bWNvcXVlbGluLnN0bTMyQGdtYWlsLmNvbT4KPiBDYzogQWxleGFuZHJl
IFRvcmd1ZSA8YWxleGFuZHJlLnRvcmd1ZUBmb3NzLnN0LmNvbT4KPiBDYzogTWF4aW1lIFJpcGFy
ZCA8bXJpcGFyZEBrZXJuZWwub3JnPgo+IENjOiBDaGVuLVl1IFRzYWkgPHdlbnNAY3NpZS5vcmc+
Cj4gQ2M6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BnbWFpbC5jb20+Cj4gQ2M6IEp5
cmkgU2FyaGEgPGp5cmkuc2FyaGFAaWtpLmZpPgo+IENjOiBUb21pIFZhbGtlaW5lbiA8dG9tYmFA
a2VybmVsLm9yZz4KPiBDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4g
Q2M6IGxpbnV4LW1pcHNAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbnV4LW1lZGlhdGVrQGxpc3Rz
LmluZnJhZGVhZC5vcmcKPiBDYzogbGludXgtYW1sb2dpY0BsaXN0cy5pbmZyYWRlYWQub3JnCj4g
Q2M6IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBDYzogbGludXgtc3RtMzJA
c3QtbWQtbWFpbG1hbi5zdG9ybXJlcGx5LmNvbQo+IENjOiBsaW51eC1zdW54aUBsaXN0cy5saW51
eC5kZXYKCkZvciBNZWRpYXRlaywKQWNrZWQtYnk6IENodW4tS3VhbmcgSHUgPGNodW5rdWFuZy5o
dUBrZXJuZWwub3JnPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
