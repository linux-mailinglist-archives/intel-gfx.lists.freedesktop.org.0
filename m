Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF5D73079
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 16:00:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D647D6E554;
	Wed, 24 Jul 2019 14:00:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 688EB6E552;
 Wed, 24 Jul 2019 14:00:37 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 4B65728B54F
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 24 Jul 2019 15:59:23 +0200
Message-Id: <e82d6aca4f8abc95834c8a36c101d153518bb1ac.1563960855.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1563960855.git.andrzej.p@collabora.com>
References: <cover.1563960855.git.andrzej.p@collabora.com>
In-Reply-To: <cover.1563960855.git.andrzej.p@collabora.com>
References: <cover.1563960855.git.andrzej.p@collabora.com>
Subject: [Intel-gfx] [PATCH v5 01/24] drm: Include ddc adapter pointer in
 struct drm_connector
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
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Joonyoung Shim <jy0922.shim@samsung.com>,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 Vincent Abriou <vincent.abriou@st.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 CK Hu <ck.hu@mediatek.com>, Dave Airlie <airlied@redhat.com>,
 intel-gfx@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Inki Dae <inki.dae@samsung.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Jyri Sarha <jsarha@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
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

QWRkIGdlbmVyaWMgY29kZSB3aGljaCBjcmVhdGVzIHN5bWJvbGljIGxpbmtzIGluIHN5c2ZzLCBw
b2ludGluZyB0byBkZGMKaW50ZXJmYWNlIHVzZWQgYnkgYSBwYXJ0aWN1bGFyIHZpZGVvIG91dHB1
dC4gRm9yIGV4YW1wbGU6CgpscyAtbCAvc3lzL2NsYXNzL2RybS9jYXJkMC1IRE1JLUEtMS9kZGMK
bHJ3eHJ3eHJ3eCAxIHJvb3Qgcm9vdCAwIEp1biAyNCAxMDo0MiAvc3lzL2NsYXNzL2RybS9jYXJk
MC1IRE1JLUEtMS9kZGMgXAoJLT4gLi4vLi4vLi4vLi4vc29jLzEzODgwMDAwLmkyYy9pMmMtMgoK
VGhpcyBtYWtlcyBpdCBlYXN5IGZvciB1c2VyIHRvIGFzc29jaWF0ZSBhIGRpc3BsYXkgd2l0aCBp
dHMgZGRjIGFkYXB0ZXIKYW5kIHVzZSBlLmcuIGRkY3V0aWwgdG8gY29udHJvbCB0aGUgY2hvc2Vu
IG1vbml0b3IuCgpUaGlzIHBhdGNoIGFkZHMgYW4gaTJjX2FkYXB0ZXIgcG9pbnRlciB0byBzdHJ1
Y3QgZHJtX2Nvbm5lY3Rvci4gUGFydGljdWxhcgpkcml2ZXJzIGNhbiB0aGVuIHVzZSBpdCBpbnN0
ZWFkIG9mIHVzaW5nIHRoZWlyIG93biBwcml2YXRlIGluc3RhbmNlLiBJZiBhCmNvbm5lY3RvciBj
b250YWlucyBhIGRkYywgdGhlbiBjcmVhdGUgYSBzeW1ib2xpYyBsaW5rIGluIHN5c2ZzLgoKU2ln
bmVkLW9mZi1ieTogQW5kcnplaiBQaWV0cmFzaWV3aWN6IDxhbmRyemVqLnBAY29sbGFib3JhLmNv
bT4KQWNrZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+ClJldmll
d2VkLWJ5OiBBbmRyemVqIEhhamRhIDxhLmhhamRhQHNhbXN1bmcuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9kcm1fc3lzZnMuYyB8ICA4ICsrKysrKysrCiBpbmNsdWRlL2RybS9kcm1fY29ubmVj
dG9yLmggfCAxMSArKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9zeXNmcy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2RybV9zeXNmcy5jCmluZGV4IGFkMTA4MTBiYzk3Mi4uZTk2MmE5ZDQ1ZjdlIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3N5c2ZzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2Ry
bV9zeXNmcy5jCkBAIC0xNCw2ICsxNCw3IEBACiAjaW5jbHVkZSA8bGludXgvZXJyLmg+CiAjaW5j
bHVkZSA8bGludXgvZXhwb3J0Lmg+CiAjaW5jbHVkZSA8bGludXgvZ2ZwLmg+CisjaW5jbHVkZSA8
bGludXgvaTJjLmg+CiAjaW5jbHVkZSA8bGludXgva2Rldl90Lmg+CiAjaW5jbHVkZSA8bGludXgv
c2xhYi5oPgogCkBAIC0yOTQsNiArMjk1LDkgQEAgaW50IGRybV9zeXNmc19jb25uZWN0b3JfYWRk
KHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpCiAJLyogTGV0IHVzZXJzcGFjZSBrbm93
IHdlIGhhdmUgYSBuZXcgY29ubmVjdG9yICovCiAJZHJtX3N5c2ZzX2hvdHBsdWdfZXZlbnQoZGV2
KTsKIAorCWlmIChjb25uZWN0b3ItPmRkYykKKwkJcmV0dXJuIHN5c2ZzX2NyZWF0ZV9saW5rKCZj
b25uZWN0b3ItPmtkZXYtPmtvYmosCisJCQkJICZjb25uZWN0b3ItPmRkYy0+ZGV2LmtvYmosICJk
ZGMiKTsKIAlyZXR1cm4gMDsKIH0KIApAQCAtMzAxLDYgKzMwNSwxMCBAQCB2b2lkIGRybV9zeXNm
c19jb25uZWN0b3JfcmVtb3ZlKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpCiB7CiAJ
aWYgKCFjb25uZWN0b3ItPmtkZXYpCiAJCXJldHVybjsKKworCWlmIChjb25uZWN0b3ItPmRkYykK
KwkJc3lzZnNfcmVtb3ZlX2xpbmsoJmNvbm5lY3Rvci0+a2Rldi0+a29iaiwgImRkYyIpOworCiAJ
RFJNX0RFQlVHKCJyZW1vdmluZyBcIiVzXCIgZnJvbSBzeXNmc1xuIiwKIAkJICBjb25uZWN0b3It
Pm5hbWUpOwogCmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmggYi9pbmNs
dWRlL2RybS9kcm1fY29ubmVjdG9yLmgKaW5kZXggNGMzMGQ3NTE0ODdhLi4zM2E2ZmZmODVmZGIg
MTAwNjQ0Ci0tLSBhL2luY2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaAorKysgYi9pbmNsdWRlL2Ry
bS9kcm1fY29ubmVjdG9yLmgKQEAgLTQxLDYgKzQxLDcgQEAgc3RydWN0IGRybV9wcm9wZXJ0eTsK
IHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYjsKIHN0cnVjdCBkcm1fcHJpbnRlcjsKIHN0cnVjdCBl
ZGlkOworc3RydWN0IGkyY19hZGFwdGVyOwogCiBlbnVtIGRybV9jb25uZWN0b3JfZm9yY2Ugewog
CURSTV9GT1JDRV9VTlNQRUNJRklFRCwKQEAgLTEzMTEsNiArMTMxMiwxNiBAQCBzdHJ1Y3QgZHJt
X2Nvbm5lY3RvciB7CiAJICogWzBdOiBwcm9ncmVzc2l2ZSwgWzFdOiBpbnRlcmxhY2VkCiAJICov
CiAJaW50IGF1ZGlvX2xhdGVuY3lbMl07CisKKwkvKioKKwkgKiBAZGRjOiBhc3NvY2lhdGVkIGRk
YyBhZGFwdGVyLgorCSAqIEEgY29ubmVjdG9yIHVzdWFsbHkgaGFzIGl0cyBhc3NvY2lhdGVkIGRk
YyBhZGFwdGVyLiBJZiBhIGRyaXZlciB1c2VzCisJICogdGhpcyBmaWVsZCwgdGhlbiBhbiBhcHBy
b3ByaWF0ZSBzeW1ib2xpYyBsaW5rIGlzIGNyZWF0ZWQgaW4gY29ubmVjdG9yCisJICogc3lzZnMg
ZGlyZWN0b3J5IHRvIG1ha2UgaXQgZWFzeSBmb3IgdGhlIHVzZXIgdG8gdGVsbCB3aGljaCBpMmMK
KwkgKiBhZGFwdGVyIGlzIGZvciBhIHBhcnRpY3VsYXIgZGlzcGxheS4KKwkgKi8KKwlzdHJ1Y3Qg
aTJjX2FkYXB0ZXIgKmRkYzsKKwogCS8qKgogCSAqIEBudWxsX2VkaWRfY291bnRlcjogdHJhY2sg
c2lua3MgdGhhdCBnaXZlIHVzIGFsbCB6ZXJvcyBmb3IgdGhlIEVESUQuCiAJICogTmVlZGVkIHRv
IHdvcmthcm91bmQgc29tZSBIVyBidWdzIHdoZXJlIHdlIGdldCBhbGwgMHMKLS0gCjIuMTcuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
