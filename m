Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DF9655BC
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 13:32:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B19C06E20C;
	Thu, 11 Jul 2019 11:32:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C0356E1DE;
 Thu, 11 Jul 2019 11:32:22 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 1707628B554
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Date: Thu, 11 Jul 2019 13:26:50 +0200
Message-Id: <1d9bb3d65127a5093d6e9f9cc62a5c7c7502f61d.1562843413.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1562843413.git.andrzej.p@collabora.com>
References: <cover.1562843413.git.andrzej.p@collabora.com>
In-Reply-To: <cover.1562843413.git.andrzej.p@collabora.com>
References: <cover.1562843413.git.andrzej.p@collabora.com>
Subject: [Intel-gfx] [PATCH v4 23/23] drm/i915: Provide ddc symlink in hdmi
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
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Douglas Anderson <dianders@chromium.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 linux-rockchip@lists.infradead.org, Vincent Abriou <vincent.abriou@st.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 David Airlie <airlied@linux.ie>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 CK Hu <ck.hu@mediatek.com>, Dave Airlie <airlied@redhat.com>,
 intel-gfx@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
 linux-arm-msm@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Inki Dae <inki.dae@samsung.com>, Mamta Shukla <mamtashukla555@gmail.com>,
 linux-mediatek@lists.infradead.org, Jyri Sarha <jsarha@ti.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, amd-gfx@lists.freedesktop.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
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
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIHwgNSAr
KystLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCmluZGV4IDBlYmVjNjliYmJm
Yy4uNjc4ZmE0ZDFiZDRlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2hkbWkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hk
bWkuYwpAQCAtMzA5NCw2ICszMDk0LDkgQEAgdm9pZCBpbnRlbF9oZG1pX2luaXRfY29ubmVjdG9y
KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LAogCQkgaW50ZWxfZGln
X3BvcnQtPm1heF9sYW5lcywgcG9ydF9uYW1lKHBvcnQpKSkKIAkJcmV0dXJuOwogCisJaW50ZWxf
aGRtaS0+ZGRjX2J1cyA9IGludGVsX2hkbWlfZGRjX3BpbihkZXZfcHJpdiwgcG9ydCk7CisJY29u
bmVjdG9yLT5kZGMgPSBpbnRlbF9nbWJ1c19nZXRfYWRhcHRlcihkZXZfcHJpdiwgaW50ZWxfaGRt
aS0+ZGRjX2J1cyk7CisKIAlkcm1fY29ubmVjdG9yX2luaXQoZGV2LCBjb25uZWN0b3IsICZpbnRl
bF9oZG1pX2Nvbm5lY3Rvcl9mdW5jcywKIAkJCSAgIERSTV9NT0RFX0NPTk5FQ1RPUl9IRE1JQSk7
CiAJZHJtX2Nvbm5lY3Rvcl9oZWxwZXJfYWRkKGNvbm5lY3RvciwgJmludGVsX2hkbWlfY29ubmVj
dG9yX2hlbHBlcl9mdW5jcyk7CkBAIC0zMTA1LDggKzMxMDgsNiBAQCB2b2lkIGludGVsX2hkbWlf
aW5pdF9jb25uZWN0b3Ioc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQs
CiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTAgfHwgSVNfR0VNSU5JTEFLRShkZXZfcHJp
dikpCiAJCWNvbm5lY3Rvci0+eWNiY3JfNDIwX2FsbG93ZWQgPSB0cnVlOwogCi0JaW50ZWxfaGRt
aS0+ZGRjX2J1cyA9IGludGVsX2hkbWlfZGRjX3BpbihkZXZfcHJpdiwgcG9ydCk7Ci0KIAlpZiAo
V0FSTl9PTihwb3J0ID09IFBPUlRfQSkpCiAJCXJldHVybjsKIAlpbnRlbF9lbmNvZGVyLT5ocGRf
cGluID0gaW50ZWxfaHBkX3Bpbl9kZWZhdWx0KGRldl9wcml2LCBwb3J0KTsKLS0gCjIuMTcuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
