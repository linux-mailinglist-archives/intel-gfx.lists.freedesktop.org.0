Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C75730A2
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 16:02:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 022BE6E570;
	Wed, 24 Jul 2019 14:02:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC9A26E56A;
 Wed, 24 Jul 2019 14:02:17 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id BC4BC26CFD5
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 24 Jul 2019 15:59:30 +0200
Message-Id: <5dbf162d824f9b6909b2a203aa050ccab05ae155.1563960855.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1563960855.git.andrzej.p@collabora.com>
References: <cover.1563960855.git.andrzej.p@collabora.com>
In-Reply-To: <cover.1563960855.git.andrzej.p@collabora.com>
References: <cover.1563960855.git.andrzej.p@collabora.com>
Subject: [Intel-gfx] [PATCH v5 08/24] drm/mediatek: Provide ddc symlink in
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
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Douglas Anderson <dianders@chromium.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Armijn Hemel <armijn@tjaldur.nl>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 linux-rockchip@lists.infradead.org, Vincent Abriou <vincent.abriou@st.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 CK Hu <ck.hu@mediatek.com>, Dave Airlie <airlied@redhat.com>,
 Harry Wentland <harry.wentland@amd.com>, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, linux-tegra@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-arm-msm@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Inki Dae <inki.dae@samsung.com>, Mamta Shukla <mamtashukla555@gmail.com>,
 linux-mediatek@lists.infradead.org, Jyri Sarha <jsarha@ti.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, Enrico Weigelt <info@metux.net>,
 Jernej Skrabec <jernej.skrabec@siol.net>, amd-gfx@lists.freedesktop.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5jIHwgMTYgKysrKysr
KystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2hkbWkuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5jCmluZGV4IGNlOTFiNjEzNjRlYi4uY2M0
YWI4YjA3MGE0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2hkbWku
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2hkbWkuYwpAQCAtMTUwLDcgKzE1
MCw2IEBAIHN0cnVjdCBtdGtfaGRtaSB7CiAJc3RydWN0IGRldmljZSAqZGV2OwogCXN0cnVjdCBw
aHkgKnBoeTsKIAlzdHJ1Y3QgZGV2aWNlICpjZWNfZGV2OwotCXN0cnVjdCBpMmNfYWRhcHRlciAq
ZGRjX2FkcHQ7CiAJc3RydWN0IGNsayAqY2xrW01US19IRE1JX0NMS19DT1VOVF07CiAJc3RydWN0
IGRybV9kaXNwbGF5X21vZGUgbW9kZTsKIAlib29sIGR2aV9tb2RlOwpAQCAtMTIxNywxMCArMTIx
NiwxMCBAQCBzdGF0aWMgaW50IG10a19oZG1pX2Nvbm5fZ2V0X21vZGVzKHN0cnVjdCBkcm1fY29u
bmVjdG9yICpjb25uKQogCXN0cnVjdCBlZGlkICplZGlkOwogCWludCByZXQ7CiAKLQlpZiAoIWhk
bWktPmRkY19hZHB0KQorCWlmICghY29ubi0+ZGRjKQogCQlyZXR1cm4gLUVOT0RFVjsKIAotCWVk
aWQgPSBkcm1fZ2V0X2VkaWQoY29ubiwgaGRtaS0+ZGRjX2FkcHQpOworCWVkaWQgPSBkcm1fZ2V0
X2VkaWQoY29ubiwgY29ubi0+ZGRjKTsKIAlpZiAoIWVkaWQpCiAJCXJldHVybiAtRU5PREVWOwog
CkBAIC0xMjk5LDkgKzEyOTgsMTAgQEAgc3RhdGljIGludCBtdGtfaGRtaV9icmlkZ2VfYXR0YWNo
KHN0cnVjdCBkcm1fYnJpZGdlICpicmlkZ2UpCiAJc3RydWN0IG10a19oZG1pICpoZG1pID0gaGRt
aV9jdHhfZnJvbV9icmlkZ2UoYnJpZGdlKTsKIAlpbnQgcmV0OwogCi0JcmV0ID0gZHJtX2Nvbm5l
Y3Rvcl9pbml0KGJyaWRnZS0+ZW5jb2Rlci0+ZGV2LCAmaGRtaS0+Y29ubiwKLQkJCQkgJm10a19o
ZG1pX2Nvbm5lY3Rvcl9mdW5jcywKLQkJCQkgRFJNX01PREVfQ09OTkVDVE9SX0hETUlBKTsKKwly
ZXQgPSBkcm1fY29ubmVjdG9yX2luaXRfd2l0aF9kZGMoYnJpZGdlLT5lbmNvZGVyLT5kZXYsICZo
ZG1pLT5jb25uLAorCQkJCQkgICZtdGtfaGRtaV9jb25uZWN0b3JfZnVuY3MsCisJCQkJCSAgRFJN
X01PREVfQ09OTkVDVE9SX0hETUlBLAorCQkJCQkgIGhkbWktPmNvbm4uZGRjKTsKIAlpZiAocmV0
KSB7CiAJCWRldl9lcnIoaGRtaS0+ZGV2LCAiRmFpbGVkIHRvIGluaXRpYWxpemUgY29ubmVjdG9y
OiAlZFxuIiwgcmV0KTsKIAkJcmV0dXJuIHJldDsKQEAgLTE1MTMsOSArMTUxMyw5IEBAIHN0YXRp
YyBpbnQgbXRrX2hkbWlfZHRfcGFyc2VfcGRhdGEoc3RydWN0IG10a19oZG1pICpoZG1pLAogCX0K
IAlvZl9ub2RlX3B1dChyZW1vdGUpOwogCi0JaGRtaS0+ZGRjX2FkcHQgPSBvZl9maW5kX2kyY19h
ZGFwdGVyX2J5X25vZGUoaTJjX25wKTsKKwloZG1pLT5jb25uLmRkYyA9IG9mX2ZpbmRfaTJjX2Fk
YXB0ZXJfYnlfbm9kZShpMmNfbnApOwogCW9mX25vZGVfcHV0KGkyY19ucCk7Ci0JaWYgKCFoZG1p
LT5kZGNfYWRwdCkgeworCWlmICghaGRtaS0+Y29ubi5kZGMpIHsKIAkJZGV2X2VycihkZXYsICJG
YWlsZWQgdG8gZ2V0IGRkYyBpMmMgYWRhcHRlciBieSBub2RlXG4iKTsKIAkJcmV0dXJuIC1FSU5W
QUw7CiAJfQotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
