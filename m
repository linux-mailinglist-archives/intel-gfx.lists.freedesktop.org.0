Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5FA3B0AD9
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 18:55:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA1DF6E802;
	Tue, 22 Jun 2021 16:55:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23F6B6E7FE
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 16:55:28 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id
 p10-20020a05600c430ab02901df57d735f7so2214717wme.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 09:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=e9qeGfQqX9AidIh5P5firULmSJWTcGcvWm/ynEhQoF4=;
 b=FsMWYJ5lfTGtzcLqUd3EzhgKtm9m+fy1KvQWXFaCde5o+EZ+PZUUGm7yrXT6k6eJnA
 09km8ePH7w9gw0X65qQcuqmY+bf9OR/Qy/fwAhRLNIl72ePTxcO34nLR1tQvvt1rYbsl
 MR5/ofJq5M3Wbh3ny3/NFevCNsYaA1M4qv7eI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=e9qeGfQqX9AidIh5P5firULmSJWTcGcvWm/ynEhQoF4=;
 b=EGApczrEEugFHyBRJLYgUI4uNg51G1SNBso/PkqgWL2l9pGlxIphO8uA5jcxTqSAyo
 31nuYa2H5l2o+yRqtbbDrGW2MbRgO7N8LjPmw9ZawXqSnWDISzkH6yvaNXndaiTl2Xff
 e9/wdJ6vll7npuWdixnRYSZexOSNhNgPRFac0W8W8iYlU9+4L5dAmmv5UxEyosQBd3/z
 TVDUHopV/VYr9AP778+OM4UOoNTlnHYMlUC3O8HpWv/bLlUfBsIX9taKksnYitlCwXpV
 3fVC141HMbyPOBs7uT2q9tGemsSK1YB/vwhcyISO4VvErojOZpBEjpYWdBpYysTHEyMe
 s0Lw==
X-Gm-Message-State: AOAM532KTk/867S11Tn1Y0bcEtShN/0oam8EuyTYCNTT6sVMn5O4/1mL
 y+PkZv9yYoB3wuDJVgk605i6cg==
X-Google-Smtp-Source: ABdhPJzOPmNLsTWMFpwqN7N34Gpx1JMNymE2e7nC6sD/zrJEtqTDzyNJetvx1U9gGv/dxoQVzysYOA==
X-Received: by 2002:a05:600c:4f94:: with SMTP id
 n20mr5597106wmq.121.1624380926835; 
 Tue, 22 Jun 2021 09:55:26 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l23sm3632342wmc.5.2021.06.22.09.55.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jun 2021 09:55:26 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 22 Jun 2021 18:55:04 +0200
Message-Id: <20210622165511.3169559-9-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0.rc2
In-Reply-To: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
References: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/15] drm/<driver>:
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
Cc: Heiko Stuebner <heiko@sntech.de>, Neil Armstrong <narmstrong@baylibre.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Stefan Agner <stefan@agner.ch>, linux-mips@vger.kernel.org,
 Paul Cercueil <paul@crapouillou.net>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Fabio Estevam <festevam@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, Jerome Brunet <jbrunet@baylibre.com>,
 Marek Vasut <marex@denx.de>, Kevin Hilman <khilman@baylibre.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, NXP Linux Team <linux-imx@nxp.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, linux-mediatek@lists.infradead.org,
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

Tm8gbmVlZCB0byBzZXQgaXQgZXhwbGljaXRseS4KCkFja2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8
aGVpa29Ac250ZWNoLmRlPgpBY2tlZC1ieTogUGF1bCBDZXJjdWVpbCA8cGF1bEBjcmFwb3VpbGxv
dS5uZXQ+CkFja2VkLWJ5OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAZ21haWwuY29t
PgpBY2tlZC1ieTogQ2h1bi1LdWFuZyBIdSA8Y2h1bmt1YW5nLmh1QGtlcm5lbC5vcmc+CkFja2Vk
LWJ5OiBNYXJ0aW4gQmx1bWVuc3RpbmdsIDxtYXJ0aW4uYmx1bWVuc3RpbmdsQGdvb2dsZW1haWwu
Y29tPgpBY2tlZC1ieTogVG9taSBWYWxrZWluZW4gPHRvbWkudmFsa2VpbmVuQGlkZWFzb25ib2Fy
ZC5jb20+CkFja2VkLWJ5OiBQaGlsaXBwZSBDb3JudSA8cGhpbGlwcGUuY29ybnVAZm9zcy5zdC5j
b20+CkFja2VkLWJ5OiBMdWNhcyBTdGFjaCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4KU2lnbmVk
LW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBMYXVy
ZW50aXUgUGFsY3UgPGxhdXJlbnRpdS5wYWxjdUBvc3MubnhwLmNvbT4KQ2M6IEx1Y2FzIFN0YWNo
IDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPgpDYzogU2hhd24gR3VvIDxzaGF3bmd1b0BrZXJuZWwu
b3JnPgpDYzogU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgpDYzogUGVuZ3V0
cm9uaXggS2VybmVsIFRlYW0gPGtlcm5lbEBwZW5ndXRyb25peC5kZT4KQ2M6IEZhYmlvIEVzdGV2
YW0gPGZlc3RldmFtQGdtYWlsLmNvbT4KQ2M6IE5YUCBMaW51eCBUZWFtIDxsaW51eC1pbXhAbnhw
LmNvbT4KQ2M6IFBoaWxpcHAgWmFiZWwgPHAuemFiZWxAcGVuZ3V0cm9uaXguZGU+CkNjOiBQYXVs
IENlcmN1ZWlsIDxwYXVsQGNyYXBvdWlsbG91Lm5ldD4KQ2M6IENodW4tS3VhbmcgSHUgPGNodW5r
dWFuZy5odUBrZXJuZWwub3JnPgpDYzogTWF0dGhpYXMgQnJ1Z2dlciA8bWF0dGhpYXMuYmdnQGdt
YWlsLmNvbT4KQ2M6IE5laWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT4KQ2M6
IEtldmluIEhpbG1hbiA8a2hpbG1hbkBiYXlsaWJyZS5jb20+CkNjOiBKZXJvbWUgQnJ1bmV0IDxq
YnJ1bmV0QGJheWxpYnJlLmNvbT4KQ2M6IE1hcnRpbiBCbHVtZW5zdGluZ2wgPG1hcnRpbi5ibHVt
ZW5zdGluZ2xAZ29vZ2xlbWFpbC5jb20+CkNjOiBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5kZT4K
Q2M6IFN0ZWZhbiBBZ25lciA8c3RlZmFuQGFnbmVyLmNoPgpDYzogU2FuZHkgSHVhbmcgPGhqY0By
b2NrLWNoaXBzLmNvbT4KQ2M6ICJIZWlrbyBTdMO8Ym5lciIgPGhlaWtvQHNudGVjaC5kZT4KQ2M6
IFlhbm5pY2sgRmVydHJlIDx5YW5uaWNrLmZlcnRyZUBmb3NzLnN0LmNvbT4KQ2M6IFBoaWxpcHBl
IENvcm51IDxwaGlsaXBwZS5jb3JudUBmb3NzLnN0LmNvbT4KQ2M6IEJlbmphbWluIEdhaWduYXJk
IDxiZW5qYW1pbi5nYWlnbmFyZEBsaW5hcm8ub3JnPgpDYzogTWF4aW1lIENvcXVlbGluIDxtY29x
dWVsaW4uc3RtMzJAZ21haWwuY29tPgpDYzogQWxleGFuZHJlIFRvcmd1ZSA8YWxleGFuZHJlLnRv
cmd1ZUBmb3NzLnN0LmNvbT4KQ2M6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4K
Q2M6IENoZW4tWXUgVHNhaSA8d2Vuc0Bjc2llLm9yZz4KQ2M6IEplcm5laiBTa3JhYmVjIDxqZXJu
ZWouc2tyYWJlY0BnbWFpbC5jb20+CkNjOiBKeXJpIFNhcmhhIDxqeXJpLnNhcmhhQGlraS5maT4K
Q2M6IFRvbWkgVmFsa2VpbmVuIDx0b21iYUBrZXJuZWwub3JnPgpDYzogbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBsaW51eC1taXBzQHZnZXIua2VybmVsLm9yZwpDYzog
bGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpDYzogbGludXgtYW1sb2dpY0BsaXN0
cy5pbmZyYWRlYWQub3JnCkNjOiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCkNj
OiBsaW51eC1zdG0zMkBzdC1tZC1tYWlsbWFuLnN0b3JtcmVwbHkuY29tCkNjOiBsaW51eC1zdW54
aUBsaXN0cy5saW51eC5kZXYKLS0tCiBkcml2ZXJzL2dwdS9kcm0vaW14L2Rjc3MvZGNzcy1wbGFu
ZS5jICAgICAgIHwgMSAtCiBkcml2ZXJzL2dwdS9kcm0vaW14L2lwdXYzLXBsYW5lLmMgICAgICAg
ICAgIHwgMSAtCiBkcml2ZXJzL2dwdS9kcm0vaW5nZW5pYy9pbmdlbmljLWRybS1kcnYuYyAgIHwg
MSAtCiBkcml2ZXJzL2dwdS9kcm0vaW5nZW5pYy9pbmdlbmljLWlwdS5jICAgICAgIHwgMSAtCiBk
cml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9wbGFuZS5jICAgIHwgMSAtCiBkcml2ZXJz
L2dwdS9kcm0vbWVzb24vbWVzb25fb3ZlcmxheS5jICAgICAgIHwgMSAtCiBkcml2ZXJzL2dwdS9k
cm0vbWVzb24vbWVzb25fcGxhbmUuYyAgICAgICAgIHwgMSAtCiBkcml2ZXJzL2dwdS9kcm0vbXhz
ZmIvbXhzZmJfa21zLmMgICAgICAgICAgIHwgMiAtLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L3JvY2tjaGlwX2RybV92b3AuYyB8IDEgLQogZHJpdmVycy9ncHUvZHJtL3N0bS9sdGRjLmMgICAg
ICAgICAgICAgICAgICB8IDEgLQogZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjRpX2xheWVyLmMg
ICAgICAgICB8IDEgLQogZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjhpX3VpX2xheWVyLmMgICAg
ICB8IDEgLQogZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjhpX3ZpX2xheWVyLmMgICAgICB8IDEg
LQogZHJpdmVycy9ncHUvZHJtL3RpZHNzL3RpZHNzX3BsYW5lLmMgICAgICAgICB8IDEgLQogMTQg
ZmlsZXMgY2hhbmdlZCwgMTUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2lteC9kY3NzL2Rjc3MtcGxhbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pbXgvZGNzcy9kY3Nz
LXBsYW5lLmMKaW5kZXggMDQ0ZDNiZGYzMTNjLi5hYzQ1ZDU0YWNkNGUgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pbXgvZGNzcy9kY3NzLXBsYW5lLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2lteC9kY3NzL2Rjc3MtcGxhbmUuYwpAQCAtMzYxLDcgKzM2MSw2IEBAIHN0YXRpYyB2b2lkIGRj
c3NfcGxhbmVfYXRvbWljX2Rpc2FibGUoc3RydWN0IGRybV9wbGFuZSAqcGxhbmUsCiB9CiAKIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX3BsYW5lX2hlbHBlcl9mdW5jcyBkY3NzX3BsYW5lX2hlbHBl
cl9mdW5jcyA9IHsKLQkucHJlcGFyZV9mYiA9IGRybV9nZW1fcGxhbmVfaGVscGVyX3ByZXBhcmVf
ZmIsCiAJLmF0b21pY19jaGVjayA9IGRjc3NfcGxhbmVfYXRvbWljX2NoZWNrLAogCS5hdG9taWNf
dXBkYXRlID0gZGNzc19wbGFuZV9hdG9taWNfdXBkYXRlLAogCS5hdG9taWNfZGlzYWJsZSA9IGRj
c3NfcGxhbmVfYXRvbWljX2Rpc2FibGUsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaW14
L2lwdXYzLXBsYW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaW14L2lwdXYzLXBsYW5lLmMKaW5kZXgg
ODcxMGY1NWQyNTc5Li5lZjExNGI2YWE2OTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
bXgvaXB1djMtcGxhbmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaW14L2lwdXYzLXBsYW5lLmMK
QEAgLTc3Miw3ICs3NzIsNiBAQCBzdGF0aWMgdm9pZCBpcHVfcGxhbmVfYXRvbWljX3VwZGF0ZShz
dHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwKIH0KIAogc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fcGxh
bmVfaGVscGVyX2Z1bmNzIGlwdV9wbGFuZV9oZWxwZXJfZnVuY3MgPSB7Ci0JLnByZXBhcmVfZmIg
PSBkcm1fZ2VtX3BsYW5lX2hlbHBlcl9wcmVwYXJlX2ZiLAogCS5hdG9taWNfY2hlY2sgPSBpcHVf
cGxhbmVfYXRvbWljX2NoZWNrLAogCS5hdG9taWNfZGlzYWJsZSA9IGlwdV9wbGFuZV9hdG9taWNf
ZGlzYWJsZSwKIAkuYXRvbWljX3VwZGF0ZSA9IGlwdV9wbGFuZV9hdG9taWNfdXBkYXRlLApkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2luZ2VuaWMvaW5nZW5pYy1kcm0tZHJ2LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaW5nZW5pYy9pbmdlbmljLWRybS1kcnYuYwppbmRleCA1MjQ0ZjQ3NjM0Nzcu
LmMyOTY0NzIxNjRkOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2luZ2VuaWMvaW5nZW5p
Yy1kcm0tZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2luZ2VuaWMvaW5nZW5pYy1kcm0tZHJ2
LmMKQEAgLTgzMCw3ICs4MzAsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9wbGFuZV9oZWxw
ZXJfZnVuY3MgaW5nZW5pY19kcm1fcGxhbmVfaGVscGVyX2Z1bmNzID0gewogCS5hdG9taWNfdXBk
YXRlCQk9IGluZ2VuaWNfZHJtX3BsYW5lX2F0b21pY191cGRhdGUsCiAJLmF0b21pY19jaGVjawkJ
PSBpbmdlbmljX2RybV9wbGFuZV9hdG9taWNfY2hlY2ssCiAJLmF0b21pY19kaXNhYmxlCQk9IGlu
Z2VuaWNfZHJtX3BsYW5lX2F0b21pY19kaXNhYmxlLAotCS5wcmVwYXJlX2ZiCQk9IGRybV9nZW1f
cGxhbmVfaGVscGVyX3ByZXBhcmVfZmIsCiB9OwogCiBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9j
cnRjX2hlbHBlcl9mdW5jcyBpbmdlbmljX2RybV9jcnRjX2hlbHBlcl9mdW5jcyA9IHsKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pbmdlbmljL2luZ2VuaWMtaXB1LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaW5nZW5pYy9pbmdlbmljLWlwdS5jCmluZGV4IDYxYjZkOWZkYmJhMS4uYWViOGE3NTdk
MjEzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaW5nZW5pYy9pbmdlbmljLWlwdS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pbmdlbmljL2luZ2VuaWMtaXB1LmMKQEAgLTYyNSw3ICs2MjUs
NiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9wbGFuZV9oZWxwZXJfZnVuY3MgaW5nZW5pY19p
cHVfcGxhbmVfaGVscGVyX2Z1bmNzID0gewogCS5hdG9taWNfdXBkYXRlCQk9IGluZ2VuaWNfaXB1
X3BsYW5lX2F0b21pY191cGRhdGUsCiAJLmF0b21pY19jaGVjawkJPSBpbmdlbmljX2lwdV9wbGFu
ZV9hdG9taWNfY2hlY2ssCiAJLmF0b21pY19kaXNhYmxlCQk9IGluZ2VuaWNfaXB1X3BsYW5lX2F0
b21pY19kaXNhYmxlLAotCS5wcmVwYXJlX2ZiCQk9IGRybV9nZW1fcGxhbmVfaGVscGVyX3ByZXBh
cmVfZmIsCiB9OwogCiBzdGF0aWMgaW50CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbWVk
aWF0ZWsvbXRrX2RybV9wbGFuZS5jIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1f
cGxhbmUuYwppbmRleCBiNTU4MmRjZjU2NGMuLjE2NjdhN2U3ZGUzOCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fcGxhbmUuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vbWVkaWF0ZWsvbXRrX2RybV9wbGFuZS5jCkBAIC0yMjcsNyArMjI3LDYgQEAgc3RhdGljIHZv
aWQgbXRrX3BsYW5lX2F0b21pY191cGRhdGUoc3RydWN0IGRybV9wbGFuZSAqcGxhbmUsCiB9CiAK
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX3BsYW5lX2hlbHBlcl9mdW5jcyBtdGtfcGxhbmVfaGVs
cGVyX2Z1bmNzID0gewotCS5wcmVwYXJlX2ZiID0gZHJtX2dlbV9wbGFuZV9oZWxwZXJfcHJlcGFy
ZV9mYiwKIAkuYXRvbWljX2NoZWNrID0gbXRrX3BsYW5lX2F0b21pY19jaGVjaywKIAkuYXRvbWlj
X3VwZGF0ZSA9IG10a19wbGFuZV9hdG9taWNfdXBkYXRlLAogCS5hdG9taWNfZGlzYWJsZSA9IG10
a19wbGFuZV9hdG9taWNfZGlzYWJsZSwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZXNv
bi9tZXNvbl9vdmVybGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vbWVzb24vbWVzb25fb3ZlcmxheS5j
CmluZGV4IGVkMDYzMTUyYWVjZC4uZGZlZjhhZmNjMjQ1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vbWVzb24vbWVzb25fb3ZlcmxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZXNvbi9t
ZXNvbl9vdmVybGF5LmMKQEAgLTc0Nyw3ICs3NDcsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRy
bV9wbGFuZV9oZWxwZXJfZnVuY3MgbWVzb25fb3ZlcmxheV9oZWxwZXJfZnVuY3MgPSB7CiAJLmF0
b21pY19jaGVjawk9IG1lc29uX292ZXJsYXlfYXRvbWljX2NoZWNrLAogCS5hdG9taWNfZGlzYWJs
ZQk9IG1lc29uX292ZXJsYXlfYXRvbWljX2Rpc2FibGUsCiAJLmF0b21pY191cGRhdGUJPSBtZXNv
bl9vdmVybGF5X2F0b21pY191cGRhdGUsCi0JLnByZXBhcmVfZmIJPSBkcm1fZ2VtX3BsYW5lX2hl
bHBlcl9wcmVwYXJlX2ZiLAogfTsKIAogc3RhdGljIGJvb2wgbWVzb25fb3ZlcmxheV9mb3JtYXRf
bW9kX3N1cHBvcnRlZChzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9tZXNvbi9tZXNvbl9wbGFuZS5jIGIvZHJpdmVycy9ncHUvZHJtL21lc29uL21l
c29uX3BsYW5lLmMKaW5kZXggYTE4NTEwZGFlNGM4Li44NjQwYThhOGE0NjkgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9tZXNvbi9tZXNvbl9wbGFuZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9tZXNvbi9tZXNvbl9wbGFuZS5jCkBAIC00MjIsNyArNDIyLDYgQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCBkcm1fcGxhbmVfaGVscGVyX2Z1bmNzIG1lc29uX3BsYW5lX2hlbHBlcl9mdW5jcyA9IHsK
IAkuYXRvbWljX2NoZWNrCT0gbWVzb25fcGxhbmVfYXRvbWljX2NoZWNrLAogCS5hdG9taWNfZGlz
YWJsZQk9IG1lc29uX3BsYW5lX2F0b21pY19kaXNhYmxlLAogCS5hdG9taWNfdXBkYXRlCT0gbWVz
b25fcGxhbmVfYXRvbWljX3VwZGF0ZSwKLQkucHJlcGFyZV9mYgk9IGRybV9nZW1fcGxhbmVfaGVs
cGVyX3ByZXBhcmVfZmIsCiB9OwogCiBzdGF0aWMgYm9vbCBtZXNvbl9wbGFuZV9mb3JtYXRfbW9k
X3N1cHBvcnRlZChzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9teHNmYi9teHNmYl9rbXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9teHNmYi9teHNmYl9r
bXMuYwppbmRleCAzMDBlN2JhYjBmNDMuLjg3OTdjNjcxZDBkNSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL214c2ZiL214c2ZiX2ttcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9teHNmYi9t
eHNmYl9rbXMuYwpAQCAtNTAwLDEzICs1MDAsMTEgQEAgc3RhdGljIGJvb2wgbXhzZmJfZm9ybWF0
X21vZF9zdXBwb3J0ZWQoc3RydWN0IGRybV9wbGFuZSAqcGxhbmUsCiB9CiAKIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgZHJtX3BsYW5lX2hlbHBlcl9mdW5jcyBteHNmYl9wbGFuZV9wcmltYXJ5X2hlbHBl
cl9mdW5jcyA9IHsKLQkucHJlcGFyZV9mYiA9IGRybV9nZW1fcGxhbmVfaGVscGVyX3ByZXBhcmVf
ZmIsCiAJLmF0b21pY19jaGVjayA9IG14c2ZiX3BsYW5lX2F0b21pY19jaGVjaywKIAkuYXRvbWlj
X3VwZGF0ZSA9IG14c2ZiX3BsYW5lX3ByaW1hcnlfYXRvbWljX3VwZGF0ZSwKIH07CiAKIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgZHJtX3BsYW5lX2hlbHBlcl9mdW5jcyBteHNmYl9wbGFuZV9vdmVybGF5
X2hlbHBlcl9mdW5jcyA9IHsKLQkucHJlcGFyZV9mYiA9IGRybV9nZW1fcGxhbmVfaGVscGVyX3By
ZXBhcmVfZmIsCiAJLmF0b21pY19jaGVjayA9IG14c2ZiX3BsYW5lX2F0b21pY19jaGVjaywKIAku
YXRvbWljX3VwZGF0ZSA9IG14c2ZiX3BsYW5lX292ZXJsYXlfYXRvbWljX3VwZGF0ZSwKIH07CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jIGIv
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYwppbmRleCBmNWI5MDI4
YTE2YTMuLmJhOWUxNGRhNDFiNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L3JvY2tjaGlwX2RybV92b3AuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2No
aXBfZHJtX3ZvcC5jCkBAIC0xMTEwLDcgKzExMTAsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRy
bV9wbGFuZV9oZWxwZXJfZnVuY3MgcGxhbmVfaGVscGVyX2Z1bmNzID0gewogCS5hdG9taWNfZGlz
YWJsZSA9IHZvcF9wbGFuZV9hdG9taWNfZGlzYWJsZSwKIAkuYXRvbWljX2FzeW5jX2NoZWNrID0g
dm9wX3BsYW5lX2F0b21pY19hc3luY19jaGVjaywKIAkuYXRvbWljX2FzeW5jX3VwZGF0ZSA9IHZv
cF9wbGFuZV9hdG9taWNfYXN5bmNfdXBkYXRlLAotCS5wcmVwYXJlX2ZiID0gZHJtX2dlbV9wbGFu
ZV9oZWxwZXJfcHJlcGFyZV9mYiwKIH07CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX3BsYW5l
X2Z1bmNzIHZvcF9wbGFuZV9mdW5jcyA9IHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9z
dG0vbHRkYy5jIGIvZHJpdmVycy9ncHUvZHJtL3N0bS9sdGRjLmMKaW5kZXggMDhiNzEyNDgwNDRk
Li4wYTZmMDIzOWE5ZjggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jCkBAIC05NDcsNyArOTQ3LDYgQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBkcm1fcGxhbmVfZnVuY3MgbHRkY19wbGFuZV9mdW5jcyA9IHsKIH07CiAK
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX3BsYW5lX2hlbHBlcl9mdW5jcyBsdGRjX3BsYW5lX2hl
bHBlcl9mdW5jcyA9IHsKLQkucHJlcGFyZV9mYiA9IGRybV9nZW1fcGxhbmVfaGVscGVyX3ByZXBh
cmVfZmIsCiAJLmF0b21pY19jaGVjayA9IGx0ZGNfcGxhbmVfYXRvbWljX2NoZWNrLAogCS5hdG9t
aWNfdXBkYXRlID0gbHRkY19wbGFuZV9hdG9taWNfdXBkYXRlLAogCS5hdG9taWNfZGlzYWJsZSA9
IGx0ZGNfcGxhbmVfYXRvbWljX2Rpc2FibGUsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
c3VuNGkvc3VuNGlfbGF5ZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW40aV9sYXllci5j
CmluZGV4IDExNzcxYmRkNmU3Yy4uOTI5ZTk1Zjg2YjViIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vc3VuNGkvc3VuNGlfbGF5ZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3Vu
NGlfbGF5ZXIuYwpAQCAtMTI3LDcgKzEyNyw2IEBAIHN0YXRpYyBib29sIHN1bjRpX2xheWVyX2Zv
cm1hdF9tb2Rfc3VwcG9ydGVkKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLAogfQogCiBzdGF0aWMg
Y29uc3Qgc3RydWN0IGRybV9wbGFuZV9oZWxwZXJfZnVuY3Mgc3VuNGlfYmFja2VuZF9sYXllcl9o
ZWxwZXJfZnVuY3MgPSB7Ci0JLnByZXBhcmVfZmIJPSBkcm1fZ2VtX3BsYW5lX2hlbHBlcl9wcmVw
YXJlX2ZiLAogCS5hdG9taWNfZGlzYWJsZQk9IHN1bjRpX2JhY2tlbmRfbGF5ZXJfYXRvbWljX2Rp
c2FibGUsCiAJLmF0b21pY191cGRhdGUJPSBzdW40aV9iYWNrZW5kX2xheWVyX2F0b21pY191cGRh
dGUsCiB9OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjhpX3VpX2xheWVy
LmMgYi9kcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuOGlfdWlfbGF5ZXIuYwppbmRleCBlNzc5ODU1
YmNkNmUuLjc4NDVjMmE1M2E3ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1
bjhpX3VpX2xheWVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjhpX3VpX2xheWVy
LmMKQEAgLTMzMiw3ICszMzIsNiBAQCBzdGF0aWMgdm9pZCBzdW44aV91aV9sYXllcl9hdG9taWNf
dXBkYXRlKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLAogfQogCiBzdGF0aWMgY29uc3Qgc3RydWN0
IGRybV9wbGFuZV9oZWxwZXJfZnVuY3Mgc3VuOGlfdWlfbGF5ZXJfaGVscGVyX2Z1bmNzID0gewot
CS5wcmVwYXJlX2ZiCT0gZHJtX2dlbV9wbGFuZV9oZWxwZXJfcHJlcGFyZV9mYiwKIAkuYXRvbWlj
X2NoZWNrCT0gc3VuOGlfdWlfbGF5ZXJfYXRvbWljX2NoZWNrLAogCS5hdG9taWNfZGlzYWJsZQk9
IHN1bjhpX3VpX2xheWVyX2F0b21pY19kaXNhYmxlLAogCS5hdG9taWNfdXBkYXRlCT0gc3VuOGlf
dWlfbGF5ZXJfYXRvbWljX3VwZGF0ZSwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zdW40
aS9zdW44aV92aV9sYXllci5jIGIvZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjhpX3ZpX2xheWVy
LmMKaW5kZXggMWM4NmMyZGQwYmJmLi5iYjdjNDMwMzZkZmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9zdW40aS9zdW44aV92aV9sYXllci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9zdW40
aS9zdW44aV92aV9sYXllci5jCkBAIC00MzYsNyArNDM2LDYgQEAgc3RhdGljIHZvaWQgc3VuOGlf
dmlfbGF5ZXJfYXRvbWljX3VwZGF0ZShzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwKIH0KIAogc3Rh
dGljIGNvbnN0IHN0cnVjdCBkcm1fcGxhbmVfaGVscGVyX2Z1bmNzIHN1bjhpX3ZpX2xheWVyX2hl
bHBlcl9mdW5jcyA9IHsKLQkucHJlcGFyZV9mYgk9IGRybV9nZW1fcGxhbmVfaGVscGVyX3ByZXBh
cmVfZmIsCiAJLmF0b21pY19jaGVjawk9IHN1bjhpX3ZpX2xheWVyX2F0b21pY19jaGVjaywKIAku
YXRvbWljX2Rpc2FibGUJPSBzdW44aV92aV9sYXllcl9hdG9taWNfZGlzYWJsZSwKIAkuYXRvbWlj
X3VwZGF0ZQk9IHN1bjhpX3ZpX2xheWVyX2F0b21pY191cGRhdGUsCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vdGlkc3MvdGlkc3NfcGxhbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS90aWRzcy90
aWRzc19wbGFuZS5jCmluZGV4IDFhY2QxNWFhNDE5My4uMjE3NDE1ZWM4ZWVhIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vdGlkc3MvdGlkc3NfcGxhbmUuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vdGlkc3MvdGlkc3NfcGxhbmUuYwpAQCAtMTU4LDcgKzE1OCw2IEBAIHN0YXRpYyB2b2lkIGRy
bV9wbGFuZV9kZXN0cm95KHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lKQogfQogCiBzdGF0aWMgY29u
c3Qgc3RydWN0IGRybV9wbGFuZV9oZWxwZXJfZnVuY3MgdGlkc3NfcGxhbmVfaGVscGVyX2Z1bmNz
ID0gewotCS5wcmVwYXJlX2ZiID0gZHJtX2dlbV9wbGFuZV9oZWxwZXJfcHJlcGFyZV9mYiwKIAku
YXRvbWljX2NoZWNrID0gdGlkc3NfcGxhbmVfYXRvbWljX2NoZWNrLAogCS5hdG9taWNfdXBkYXRl
ID0gdGlkc3NfcGxhbmVfYXRvbWljX3VwZGF0ZSwKIAkuYXRvbWljX2Rpc2FibGUgPSB0aWRzc19w
bGFuZV9hdG9taWNfZGlzYWJsZSwKLS0gCjIuMzIuMC5yYzIKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
