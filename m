Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B447C959
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 18:58:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64C0189D63;
	Wed, 31 Jul 2019 16:58:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B146489DA2;
 Wed, 31 Jul 2019 16:58:40 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id BB97F28BEFC
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 31 Jul 2019 18:58:09 +0200
Message-Id: <cover.1564591626.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <65481afa-1104-4ee9-e53d-f2732a10d4b9@baylibre.com>
References: <65481afa-1104-4ee9-e53d-f2732a10d4b9@baylibre.com>
Subject: [Intel-gfx] [PATCH 00/13] Next round of associating ddc adapters
 with connectors
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>,
 Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, kernel@collabora.com,
 Anthony Koo <Anthony.Koo@amd.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, David Francis <David.Francis@amd.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 CK Hu <ck.hu@mediatek.com>, Harry Wentland <harry.wentland@amd.com>,
 linux-tegra@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Leo Li <sunpeng.li@amd.com>, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Inki Dae <inki.dae@samsung.com>,
 linux-mediatek@lists.infradead.org, Jyri Sarha <jsarha@ti.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 amd-gfx@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>,
 Todor Tomov <todor.tomov@linaro.org>, Alex Deucher <alexander.deucher@amd.com>,
 Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tm93IHRoYXQgc29tZSBvZiB0aGUgcGF0Y2hlcyBvZiB0aGUgcHJldmlvdXMgdjYgc2VyaWVzIGFy
ZSBhcHBsaWVkLApJJ20gcmVzZW5kaW5nIHRoZSByZW1haW5pbmcgb25lcyAocGF0Y2hlcyAzLTEz
KSB3aXRoIEFja2VkLWJ5IGFuZApSZXZpZXdlZC1ieSBhZGRlZC4KCkknbSBhbHNvIHRha2luZyB0
aGlzIG9wcG9ydHVuaXR5IHRvIHByb3ZpZGUgdGhlIHN5bWxpbmsgZm9yIGFub3RoZXIKY29ubmVj
dG9yIGluIGFtZGdwdSAocGF0Y2ggMSksIGFuZCB0byBmaXggYSBzbWFsbCBidXQgbmFzdHkgYnVn
CndoaWNoIGNhbiBjYXVzZSBhIHVzZSBvZiBhbiB1bmluaXRpYWxpemVkIHZhcmlhYmxlIChwYXRj
aCAyKS4KCkFuZHJ6ZWogUGlldHJhc2lld2ljeiAoMTMpOgogIGRybS9hbWRncHU6IFByb3ZpZGUg
ZGRjIHN5bWxpbmsgaW4gZG0gY29ubmVjdG9yJ3Mgc3lzZnMgZGlyZWN0b3J5CiAgZHJtL3JhZGVv
bjogRWxpbWluYXRlIHBvc3NpYmxlIHVzZSBvZiBhbiB1bmluaXRpYWxpemVkIHZhcmlhYmxlCiAg
ZHJtL2V4eW5vczogUHJvdmlkZSBkZGMgc3ltbGluayBpbiBjb25uZWN0b3IncyBzeXNmcwogIGRy
bTogcm9ja2NoaXA6IFByb3ZpZGUgZGRjIHN5bWxpbmsgaW4gcmszMDY2X2hkbWkgc3lzZnMgZGly
ZWN0b3J5CiAgZHJtOiByb2NrY2hpcDogUHJvdmlkZSBkZGMgc3ltbGluayBpbiBpbm5vX2hkbWkg
c3lzZnMgZGlyZWN0b3J5CiAgZHJtL21zbS9oZG1pOiBQcm92aWRlIGRkYyBzeW1saW5rIGluIGhk
bWkgY29ubmVjdG9yIHN5c2ZzIGRpcmVjdG9yeQogIGRybS9tZWRpYXRlazogUHJvdmlkZSBkZGMg
c3ltbGluayBpbiBoZG1pIGNvbm5lY3RvciBzeXNmcyBkaXJlY3RvcnkKICBkcm0vdGVncmE6IFBy
b3ZpZGUgZGRjIHN5bWxpbmsgaW4gb3V0cHV0IGNvbm5lY3RvciBzeXNmcyBkaXJlY3RvcnkKICBk
cm0vdmM0OiBQcm92aWRlIGRkYyBzeW1saW5rIGluIGNvbm5lY3RvciBzeXNmcyBkaXJlY3RvcnkK
ICBkcm06IHp0ZTogUHJvdmlkZSBkZGMgc3ltbGluayBpbiBoZG1pIGNvbm5lY3RvciBzeXNmcyBk
aXJlY3RvcnkKICBkcm06IHp0ZTogUHJvdmlkZSBkZGMgc3ltbGluayBpbiB2Z2EgY29ubmVjdG9y
IHN5c2ZzIGRpcmVjdG9yeQogIGRybS90aWxjZGM6IFByb3ZpZGUgZGRjIHN5bWxpbmsgaW4gY29u
bmVjdG9yIHN5c2ZzIGRpcmVjdG9yeQogIGRybS9pOTE1OiBQcm92aWRlIGRkYyBzeW1saW5rIGlu
IGhkbWkgY29ubmVjdG9yIHN5c2ZzIGRpcmVjdG9yeQoKIGRyaXZlcnMvZ3B1L2RybS9hbWQvZGlz
cGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMgfCAgNSArKystLQogZHJpdmVycy9ncHUvZHJtL2V4
eW5vcy9leHlub3NfaGRtaS5jICAgICAgICAgICAgICB8ICA2ICsrKystLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgICAgICAgICB8IDEyICsrKysrKysrLS0tLQog
ZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19oZG1pLmMgICAgICAgICAgICAgICB8ICA3ICsr
KystLS0KIGRyaXZlcnMvZ3B1L2RybS9tc20vaGRtaS9oZG1pX2Nvbm5lY3Rvci5jICAgICAgICAg
fCAgNiArKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2Nvbm5lY3RvcnMuYyAg
ICAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2lubm9faGRtaS5jICAgICAg
ICAgICAgICB8ICA2ICsrKystLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JrMzA2Nl9oZG1p
LmMgICAgICAgICAgICB8ICA3ICsrKystLS0KIGRyaXZlcnMvZ3B1L2RybS90ZWdyYS9oZG1pLmMg
ICAgICAgICAgICAgICAgICAgICAgfCAgNyArKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vdGVncmEv
c29yLmMgICAgICAgICAgICAgICAgICAgICAgIHwgIDcgKysrKy0tLQogZHJpdmVycy9ncHUvZHJt
L3RpbGNkYy90aWxjZGNfdGZwNDEwLmMgICAgICAgICAgICB8ICA2ICsrKystLQogZHJpdmVycy9n
cHUvZHJtL3ZjNC92YzRfaGRtaS5jICAgICAgICAgICAgICAgICAgICB8IDEyICsrKysrKysrLS0t
LQogZHJpdmVycy9ncHUvZHJtL3p0ZS96eF9oZG1pLmMgICAgICAgICAgICAgICAgICAgICB8ICA2
ICsrKystLQogZHJpdmVycy9ncHUvZHJtL3p0ZS96eF92Z2EuYyAgICAgICAgICAgICAgICAgICAg
ICB8ICA2ICsrKystLQogMTQgZmlsZXMgY2hhbmdlZCwgNjAgaW5zZXJ0aW9ucygrKSwgMzUgZGVs
ZXRpb25zKC0pCgotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
