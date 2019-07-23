Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C5371490
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 11:05:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD59B6E2B6;
	Tue, 23 Jul 2019 09:05:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from asavdk4.altibox.net (asavdk4.altibox.net [109.247.116.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D5FB6E2AF;
 Tue, 23 Jul 2019 09:05:41 +0000 (UTC)
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 6855580489;
 Tue, 23 Jul 2019 11:05:34 +0200 (CEST)
Date: Tue, 23 Jul 2019 11:05:32 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <20190723090532.GA787@ravnborg.org>
References: <cover.1562843413.git.andrzej.p@collabora.com>
 <d1d415022c598fb7acd033f0f322dd67250adaa9.1562843413.git.andrzej.p@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d1d415022c598fb7acd033f0f322dd67250adaa9.1562843413.git.andrzej.p@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=QX4gbG5DAAAA:8
 a=A4d5gvsdyd3DzmHwh6gA:9 a=CjuIK1q_8ugA:10 a=AbAUZ8qAyYyZVLSsDulk:22
Subject: Re: [Intel-gfx] [PATCH v4 14/23] drm/tilcdc: Provide ddc symlink in
 connector sysfs directory
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Shawn Guo <shawnguo@kernel.org>, kernel@collabora.com,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 David Airlie <airlied@linux.ie>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Dave Airlie <airlied@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Jyri Sarha <jsarha@ti.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-tegra@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Vincent Abriou <vincent.abriou@st.com>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, amd-gfx@lists.freedesktop.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Douglas Anderson <dianders@chromium.org>, Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQW5kcnplagoKT24gVGh1LCBKdWwgMTEsIDIwMTkgYXQgMDE6MjY6NDFQTSArMDIwMCwgQW5k
cnplaiBQaWV0cmFzaWV3aWN6IHdyb3RlOgo+IFVzZSB0aGUgZGRjIHBvaW50ZXIgcHJvdmlkZWQg
YnkgdGhlIGdlbmVyaWMgY29ubmVjdG9yLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuZHJ6ZWogUGll
dHJhc2lld2ljeiA8YW5kcnplai5wQGNvbGxhYm9yYS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1
L2RybS90aWxjZGMvdGlsY2RjX3RmcDQxMC5jIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdGlsY2RjL3RpbGNk
Y190ZnA0MTAuYyBiL2RyaXZlcnMvZ3B1L2RybS90aWxjZGMvdGlsY2RjX3RmcDQxMC5jCj4gaW5k
ZXggNjJkMDE0YzIwOTg4Li5jMzczZWRiOTU2NjYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL3RpbGNkYy90aWxjZGNfdGZwNDEwLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vdGlsY2Rj
L3RpbGNkY190ZnA0MTAuYwo+IEBAIC0yMTksNiArMjE5LDcgQEAgc3RhdGljIHN0cnVjdCBkcm1f
Y29ubmVjdG9yICp0ZnA0MTBfY29ubmVjdG9yX2NyZWF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LAo+ICAJdGZwNDEwX2Nvbm5lY3Rvci0+bW9kID0gbW9kOwo+ICAKPiAgCWNvbm5lY3RvciA9ICZ0
ZnA0MTBfY29ubmVjdG9yLT5iYXNlOwo+ICsJY29ubmVjdG9yLT5kZGMgPSBtb2QtPmkyYzsKPiAg
Cj4gIAlkcm1fY29ubmVjdG9yX2luaXQoZGV2LCBjb25uZWN0b3IsICZ0ZnA0MTBfY29ubmVjdG9y
X2Z1bmNzLAo+ICAJCQlEUk1fTU9ERV9DT05ORUNUT1JfRFZJRCk7CgpXaGVuIHJlYWRpbmcgdGhp
cyBjb2RlLCBpdCBsb29rcyBzdHJhbmdlIHRoYXQgd2Ugc2V0IGNvbm5lY3Rvci0+ZGRjCipiZWZv
cmUqIHRoZSBjYWxsIHRvIGluaXQgdGhlIGNvbm5lY3Rvci4KT25lIGNvdWxkIHJpc2sgdGhhdCBk
cm1fY29ubmVjdG9yX2luaXQoKSB1c2VkIG1lbXNldCguLikgdG8gY2xlYXIgYWxsCmZpZWxkcyBv
ciBzbywgYW5kIGl0IHdvdWxkIGJyZWFrIHRoaXMgb3JkZXIuCkFzIGl0IGlzIHRvZGF5IHRoZSBj
b2RlIHdvcmtzIGFzIEkgcmVhZCBpdC4KCglTYW0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
