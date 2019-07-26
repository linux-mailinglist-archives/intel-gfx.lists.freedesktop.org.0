Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8636577010
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 19:27:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FD406EE04;
	Fri, 26 Jul 2019 17:27:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC79F6EDFE;
 Fri, 26 Jul 2019 17:27:14 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id A35DA27EA8C
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Date: Fri, 26 Jul 2019 19:23:09 +0200
Message-Id: <fab2ffcf95c2caa1674ddc6e762d53b0c0ce9c78.1564161140.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1564161140.git.andrzej.p@collabora.com>
References: <cover.1564161140.git.andrzej.p@collabora.com>
In-Reply-To: <cover.1564161140.git.andrzej.p@collabora.com>
References: <cover.1564161140.git.andrzej.p@collabora.com>
Subject: [Intel-gfx] [PATCH v6 15/24] drm/tilcdc: Provide ddc symlink in
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
Cc: "Y.C. Chen" <yc_chen@aspeedtech.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Douglas Anderson <dianders@chromium.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Jyri Sarha <jsarha@ti.com>, Vincent Abriou <vincent.abriou@st.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 CK Hu <ck.hu@mediatek.com>, Dave Airlie <airlied@redhat.com>,
 Harry Wentland <harry.wentland@amd.com>, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, linux-tegra@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-arm-msm@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Inki Dae <inki.dae@samsung.com>, Alexios Zavras <alexios.zavras@intel.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Maxime Ripard <mripard@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>, Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VXNlIHRoZSBkZGMgcG9pbnRlciBwcm92aWRlZCBieSB0aGUgZ2VuZXJpYyBjb25uZWN0b3IuCgpT
aWduZWQtb2ZmLWJ5OiBBbmRyemVqIFBpZXRyYXNpZXdpY3ogPGFuZHJ6ZWoucEBjb2xsYWJvcmEu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS90aWxjZGMvdGlsY2RjX3RmcDQxMC5jIHwgNiArKysr
LS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3RpbGNkYy90aWxjZGNfdGZwNDEwLmMgYi9kcml2ZXJz
L2dwdS9kcm0vdGlsY2RjL3RpbGNkY190ZnA0MTAuYwppbmRleCBjNmU0ZTUyZjMyYmMuLmQ1MTc3
NmRkN2EwMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3RpbGNkYy90aWxjZGNfdGZwNDEw
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3RpbGNkYy90aWxjZGNfdGZwNDEwLmMKQEAgLTIyMiw4
ICsyMjIsMTAgQEAgc3RhdGljIHN0cnVjdCBkcm1fY29ubmVjdG9yICp0ZnA0MTBfY29ubmVjdG9y
X2NyZWF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCiAJY29ubmVjdG9yID0gJnRmcDQxMF9j
b25uZWN0b3ItPmJhc2U7CiAKLQlkcm1fY29ubmVjdG9yX2luaXQoZGV2LCBjb25uZWN0b3IsICZ0
ZnA0MTBfY29ubmVjdG9yX2Z1bmNzLAotCQkJRFJNX01PREVfQ09OTkVDVE9SX0RWSUQpOworCWRy
bV9jb25uZWN0b3JfaW5pdF93aXRoX2RkYyhkZXYsIGNvbm5lY3RvciwKKwkJCQkgICAgJnRmcDQx
MF9jb25uZWN0b3JfZnVuY3MsCisJCQkJICAgIERSTV9NT0RFX0NPTk5FQ1RPUl9EVklELAorCQkJ
CSAgICBtb2QtPmkyYyk7CiAJZHJtX2Nvbm5lY3Rvcl9oZWxwZXJfYWRkKGNvbm5lY3RvciwgJnRm
cDQxMF9jb25uZWN0b3JfaGVscGVyX2Z1bmNzKTsKIAogCWNvbm5lY3Rvci0+cG9sbGVkID0gRFJN
X0NPTk5FQ1RPUl9QT0xMX0NPTk5FQ1QgfAotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
