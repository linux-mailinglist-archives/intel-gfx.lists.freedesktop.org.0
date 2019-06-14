Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A5B46A5D
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:37:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDFAC894A7;
	Fri, 14 Jun 2019 20:36:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2F53894C3
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:36:42 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id k8so5196218edr.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:36:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A1+UX4XN7J3a2b7YvKfIkFgrauttZzDX+EEYE5Cqodw=;
 b=hgMcBbi90oO16pR84cCmwvVNgM6awfGyBDFJkBqepY+sXHB3LQ4f+IN7KiPtOq/ZWL
 VliXkkdwJvcSMxcm3nUubOq5EhwtRE+SIjwSfy6T8OdNxczO2HHF3oz27gIh099QCmq/
 q/sxRIguwbY5gUEdqQ8WQ96rHG08WZpN3020RiL6ReFRj823i+TlGS26UYR7+7Lw6CYG
 itW//WDv6/SxWWhHjsAmOkT+oFbq3gYjkM/yE7t4WhV0HssvRIMKZq6/XFz4oEuAEgJ0
 chqcBAgU0HSXMSGKQtfc3uM0RmLVW/X4WFYOR9iTnwTSFEou3h3a8pqYgexgMTabKUUP
 MW4g==
X-Gm-Message-State: APjAAAUQxzn4A55cfaBTV6euaIzYUwI2wX1F4j3RVXbDnGRR0i0eOOZR
 aPrtMyOVAgCLe0mVhlgk1ZQb3Q==
X-Google-Smtp-Source: APXvYqz0CbNW5+QuO1UGwPMICP1ugMu7qOyXETa1d8TwZjnVq89vN00C73vAyXp6sXwgSx8G5E/1bQ==
X-Received: by 2002:a50:f486:: with SMTP id s6mr69635983edm.186.1560544601348; 
 Fri, 14 Jun 2019 13:36:41 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:40 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:35:32 +0200
Message-Id: <20190614203615.12639-17-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A1+UX4XN7J3a2b7YvKfIkFgrauttZzDX+EEYE5Cqodw=;
 b=I8MtkLZea4dErxph3dmuCCHxg6rdNn8/c/+qdh6U1cV7HO6z3vT1ShLSQROwE4/PrF
 uhe5RotVsjS/17zC8T/XpiHtNB3mr7YFEtT7htCvOv6+9Tstg4ljnuFqvyWlfWoQpUCc
 ds8jLig8rlZLy29KFE22sXBPZ7WQ4JP17ZU0I=
Subject: [Intel-gfx] [PATCH 16/59] drm/hisilicon: Drop
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Xinliang Liu <z.liuxinliang@hisilicon.com>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, CK Hu <ck.hu@mediatek.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhleSdyZSB0aGUgZGVmYXVsdC4KCkFzaWRlOiBXb3VsZCBiZSByZWFsbHkgbmljZSB0byBzd2l0
Y2ggdGhlIG90aGVycyBvdmVyIHRvCmRybV9nZW1fb2JqZWN0X2Z1bmNzLgoKU2lnbmVkLW9mZi1i
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBTYW0gUmF2bmJv
cmcgPHNhbUByYXZuYm9yZy5vcmc+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZm
d2xsLmNoPgpDYzogWGlubGlhbmcgTGl1IDx6LmxpdXhpbmxpYW5nQGhpc2lsaWNvbi5jb20+CkNj
OiAiTm9yYWxmIFRyw7hubmVzIiA8bm9yYWxmQHRyb25uZXMub3JnPgpDYzogQ0sgSHUgPGNrLmh1
QG1lZGlhdGVrLmNvbT4KQ2M6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRl
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9oaXNpbGljb24va2lyaW4va2lyaW5fZHJtX2Rydi5jIHwg
MiAtLQogMSBmaWxlIGNoYW5nZWQsIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2hpc2lsaWNvbi9raXJpbi9raXJpbl9kcm1fZHJ2LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaGlzaWxpY29uL2tpcmluL2tpcmluX2RybV9kcnYuYwppbmRleCA3M2YyYjUzZjMyY2MuLjZl
OTVkM2IxNjdjYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2hpc2lsaWNvbi9raXJpbi9r
aXJpbl9kcm1fZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2hpc2lsaWNvbi9raXJpbi9raXJp
bl9kcm1fZHJ2LmMKQEAgLTEyNiw4ICsxMjYsNiBAQCBzdGF0aWMgc3RydWN0IGRybV9kcml2ZXIg
a2lyaW5fZHJtX2RyaXZlciA9IHsKIAogCS5wcmltZV9oYW5kbGVfdG9fZmQJPSBkcm1fZ2VtX3By
aW1lX2hhbmRsZV90b19mZCwKIAkucHJpbWVfZmRfdG9faGFuZGxlCT0gZHJtX2dlbV9wcmltZV9m
ZF90b19oYW5kbGUsCi0JLmdlbV9wcmltZV9leHBvcnQJPSBkcm1fZ2VtX3ByaW1lX2V4cG9ydCwK
LQkuZ2VtX3ByaW1lX2ltcG9ydAk9IGRybV9nZW1fcHJpbWVfaW1wb3J0LAogCS5nZW1fcHJpbWVf
Z2V0X3NnX3RhYmxlID0gZHJtX2dlbV9jbWFfcHJpbWVfZ2V0X3NnX3RhYmxlLAogCS5nZW1fcHJp
bWVfaW1wb3J0X3NnX3RhYmxlID0gZHJtX2dlbV9jbWFfcHJpbWVfaW1wb3J0X3NnX3RhYmxlLAog
CS5nZW1fcHJpbWVfdm1hcAkJPSBkcm1fZ2VtX2NtYV9wcmltZV92bWFwLAotLSAKMi4yMC4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
