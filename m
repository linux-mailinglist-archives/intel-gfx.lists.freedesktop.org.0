Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4F27C2F0
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 15:10:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F6C189C1F;
	Wed, 31 Jul 2019 13:10:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8418489C1F;
 Wed, 31 Jul 2019 13:10:28 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 05184289377
To: Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>
References: <cover.1564161140.git.andrzej.p@collabora.com>
 <20190726183520.GA22572@ravnborg.org> <20190726185538.GD14981@ravnborg.org>
 <6560f93c-a48f-2a8c-afeb-d5e8e200480d@baylibre.com>
 <20190731104007.GA23138@ravnborg.org>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <959cf323-c6b9-895b-592c-81c52aacae6e@collabora.com>
Date: Wed, 31 Jul 2019 15:10:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190731104007.GA23138@ravnborg.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] Review required [Was: Associate ddc adapters with
 connectors]
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
 Douglas Anderson <dianders@chromium.org>, linux-tegra@vger.kernel.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 linux-samsung-soc@vger.kernel.org, Vincent Abriou <vincent.abriou@st.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Dave Airlie <airlied@redhat.com>, freedreno@lists.freedesktop.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Jyri Sarha <jsarha@ti.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Maxime Ripard <mripard@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, amd-gfx@lists.freedesktop.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, linux-kernel@vger.kernel.org,
 Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>, Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VyBkbml1IDMxLjA3LjIwMTkgb8KgMTI6NDAsIFNhbSBSYXZuYm9yZyBwaXN6ZToKPiBIaSBOZWls
Lgo+IAo+IE9uIFdlZCwgSnVsIDMxLCAyMDE5IGF0IDEwOjAwOjE0QU0gKzAyMDAsIE5laWwgQXJt
c3Ryb25nIHdyb3RlOgo+PiBIaSBTYW0sCj4+Cj4+IE9uIDI2LzA3LzIwMTkgMjA6NTUsIFNhbSBS
YXZuYm9yZyB3cm90ZToKPj4+IEhpIGFsbC4KPj4+Cj4+PiBBbmRyemVqIGhhdmUgZG9uZSBhIGdv
b2Qgam9iIGZvbGxvd2luZyB1cCBvbiBmZWVkYmFjayBhbmQgdGhpcyBzZXJpZXMgaXMKPj4+IG5v
dyByZWFkeS4KPj4+Cj4+PiBXZSBuZWVkIGFjayBvbiB0aGUgcGF0Y2hlcyB0b3VjaGluZyB0aGUg
aW5kaXZpZHVhbCBkcml2ZXJzIGJlZm9yZSB3ZSBjYW4KPj4+IHByb2NlZWQuCj4+PiBQbGVhc2Ug
Y2hlY2sgeW91ciBkcml2ZXJzIGFuZCBnZXQgYmFjay4KPj4KPj4gSSBjYW4gYXBwbHkgYWxsIGNv
cmUgYW5kIG1haW50YWluZXItYWNrZWQgcGF0Y2hlcyBmb3Igbm93IDoKPj4gMSwgMiwgNywgMTAs
IDExLCAxNiwgMTcsIDE4LCAxOSwgMjAsIDIxLCAyMiwgMjMKPj4KPj4gYW5kIEFuZHJ6ZWogY2Fu
IHJlc2VuZCBub3QgYXBwbGllZCBwYXRjaGVzIHdpdGggWW91cnMgYW5kIEVtaWwncyBSZXZpZXdl
ZC1ieSwKPj4gc28gd2UgY2FuIHdhaXQgYSBmZXcgbW9yZSBkYXlzIHRvIGFwcGx5IHRoZW0uCj4g
Cj4gU291bmRzIGxpa2UgYSBnb29kIHBsYW4uCj4gVGhhbmtzIGZvciB0aGFraW5nIGNhcmUgb2Yg
dGhpcy4KCldoZW4gaXMgaXQgZ29vZCB0aW1lIHRvIHJlc2VuZCBwYXRjaGVzIDMsIDQsIDUsIDYs
IDgsIDksIDEyLCAxMywgMTQsIDE1LCAyNCBhcyBhCm5ldyBzZXJpZXM/CgpBbmRyemVqCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
