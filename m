Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CB546A73
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:38:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93799894C3;
	Fri, 14 Jun 2019 20:37:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 530B68936C
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:36:50 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id r12so3057687edo.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:36:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pr5q7QV2elAcZCzmzM0VfoAt4G7mao5fX9tH/FDb9m4=;
 b=AV29UegBf1GcXcVzT1imXRUtFg4cwOGDpuLVe7HWgjxloLmsOltk1r5K5R5fgmzEMu
 6FqCY/8hhFF2TZpbyzFD59HYBZXs7ynIZ+WGtMXufOLNvX9Ds5EOmfnCIQVnNSzwFOCa
 M4YLqXsCiRIuZ3Sx7PVHkc/ulqteXyL0KTpxJFN0khgeBxCtMaX+ybeJZFCcuQMAL796
 PG2KSppFDVgRpUFuvjonPG55YI5srG9ptjseJYDdg7y4jBqNU5gphrdkM+5tLNAuI6we
 KFNc9bQgxpTDVvKkB16KE34XjjzakJng4UBq7yaBtKtBbGl6tDC+de08bbmVC73n7a06
 QA+A==
X-Gm-Message-State: APjAAAWSGN8ZuPUcqxQy9TblJXhFEdU+AOJobXLcbNwmWmYgWMoXZHez
 iW1lJy2bXgPeZH02vHEUP8SXTg==
X-Google-Smtp-Source: APXvYqxKNgpvKrvg0ZF7hg0uhhNKa6ROI9OanGs/OlZrPXeX05ZzZZdABMqSbE5rM3adzY414EiXHQ==
X-Received: by 2002:a05:6402:1507:: with SMTP id
 f7mr42611712edw.94.1560544607930; 
 Fri, 14 Jun 2019 13:36:47 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:47 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:35:38 +0200
Message-Id: <20190614203615.12639-23-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pr5q7QV2elAcZCzmzM0VfoAt4G7mao5fX9tH/FDb9m4=;
 b=dMM6E72fM2rUDYc72h6nD/GqDTDBoZKTLLy8gEjQwmF6M/1I05zppiZx50PlOUN4rJ
 SO0CwCP5SkZKa+ZErhdksUANrVBGmfKwxOHUFgSFgYX4GGWEfD6akK5FYHHaquhkhV18
 bS1n6H0Ry54A8RIAmoVMAkYfC2esO9xDqMnuU=
Subject: [Intel-gfx] [PATCH 22/59] drm/mxsfb: Drop
 drm_gem_prime_export/import
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
Cc: Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Stefan Agner <stefan@agner.ch>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhleSdyZSB0aGUgZGVmYXVsdC4KCkFzaWRlOiBXb3VsZCBiZSByZWFsbHkgbmljZSB0byBzd2l0
Y2ggdGhlIG90aGVycyBvdmVyIHRvCmRybV9nZW1fb2JqZWN0X2Z1bmNzLgoKU2lnbmVkLW9mZi1i
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBNYXJlayBWYXN1
dCA8bWFyZXhAZGVueC5kZT4KQ2M6IFN0ZWZhbiBBZ25lciA8c3RlZmFuQGFnbmVyLmNoPgpDYzog
U2hhd24gR3VvIDxzaGF3bmd1b0BrZXJuZWwub3JnPgpDYzogU2FzY2hhIEhhdWVyIDxzLmhhdWVy
QHBlbmd1dHJvbml4LmRlPgpDYzogUGVuZ3V0cm9uaXggS2VybmVsIFRlYW0gPGtlcm5lbEBwZW5n
dXRyb25peC5kZT4KQ2M6IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdtYWlsLmNvbT4KQ2M6IE5Y
UCBMaW51eCBUZWFtIDxsaW51eC1pbXhAbnhwLmNvbT4KQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwotLS0KIGRyaXZlcnMvZ3B1L2RybS9teHNmYi9teHNmYl9kcnYuYyB8
IDIgLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9teHNmYi9teHNmYl9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9teHNmYi9teHNm
Yl9kcnYuYwppbmRleCBiNWJjYWY0MDM2YmQuLjZkNmEwYjNlMmJiMCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL214c2ZiL214c2ZiX2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9teHNm
Yi9teHNmYl9kcnYuYwpAQCAtMzIyLDggKzMyMiw2IEBAIHN0YXRpYyBzdHJ1Y3QgZHJtX2RyaXZl
ciBteHNmYl9kcml2ZXIgPSB7CiAJLmR1bWJfY3JlYXRlCQk9IGRybV9nZW1fY21hX2R1bWJfY3Jl
YXRlLAogCS5wcmltZV9oYW5kbGVfdG9fZmQJPSBkcm1fZ2VtX3ByaW1lX2hhbmRsZV90b19mZCwK
IAkucHJpbWVfZmRfdG9faGFuZGxlCT0gZHJtX2dlbV9wcmltZV9mZF90b19oYW5kbGUsCi0JLmdl
bV9wcmltZV9leHBvcnQJPSBkcm1fZ2VtX3ByaW1lX2V4cG9ydCwKLQkuZ2VtX3ByaW1lX2ltcG9y
dAk9IGRybV9nZW1fcHJpbWVfaW1wb3J0LAogCS5nZW1fcHJpbWVfZ2V0X3NnX3RhYmxlCT0gZHJt
X2dlbV9jbWFfcHJpbWVfZ2V0X3NnX3RhYmxlLAogCS5nZW1fcHJpbWVfaW1wb3J0X3NnX3RhYmxl
ID0gZHJtX2dlbV9jbWFfcHJpbWVfaW1wb3J0X3NnX3RhYmxlLAogCS5nZW1fcHJpbWVfdm1hcAkJ
PSBkcm1fZ2VtX2NtYV9wcmltZV92bWFwLAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
