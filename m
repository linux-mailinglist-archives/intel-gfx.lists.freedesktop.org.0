Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 756D63B0AE6
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 18:55:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A3256E822;
	Tue, 22 Jun 2021 16:55:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 007BA6E821
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 16:55:33 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id y7so24383450wrh.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 09:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JOUPUItnfv9eoWzULPlnmpftFBykYS+GwxysUnbtbjs=;
 b=IJnlQtw84nLq6UKrv07Fzv4RjJvDi0CvbSS5tQ1jkICmk1HEXUQ8MQ7tbttJy9yVRh
 a0lAjJhjQ4+XSwKKn8Fy55oRyJgMmuDVysw5+ONhWPovdIs0HXXHSjpalD2cyWa5YuE4
 a6QH4AKTi9XMmIspJaolIQ0Wf0/HVTKVwLDTw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JOUPUItnfv9eoWzULPlnmpftFBykYS+GwxysUnbtbjs=;
 b=cDxaZngTt0569rV8+JXpA6yAlutWx+Bz6NV/4jYukJ8pzmOXY+RND/eKjRhkiAowbL
 SN5DX0+QWVl/dAYXtxxsTalMIPUvS0NETHc4PmCtalcbTrDeLAdIaA5LRz8AfX0uTdyE
 Tz6zDecSWIFqc/S0416BCTYciKUGUc10XUpYJY/7zHj36XEuMs1ijCIycK+l10ChC9zc
 5m66jZ6bSmJp8/aniRi9tZFNlMNe3Mr/5MO5aFPak7/P0an5rS8eXnZPh7FHJg3q77R+
 aVBZZ1OJS3o9Xk7NHpYSwcBXywBrk+aefYNh2jlHgGMkgs7d+HD2aV30KYb+2L8T6USL
 6bAg==
X-Gm-Message-State: AOAM533kej4cAcE42KaU9T06qqXFkDjegR5sf0mIXCaYDotaxLJuJbpQ
 xZXUx9+nfPoBy8sMWS09AnRpU4CGhL4Bag==
X-Google-Smtp-Source: ABdhPJwk0x8sLZPq1PhkUnLJYNpHGFgOjr9HyaHc/WHHogSQMSIySsd7VhCEb6ndiCelRmwpEV1VPQ==
X-Received: by 2002:a05:6000:258:: with SMTP id
 m24mr5900659wrz.127.1624380932762; 
 Tue, 22 Jun 2021 09:55:32 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l23sm3632342wmc.5.2021.06.22.09.55.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jun 2021 09:55:32 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 22 Jun 2021 18:55:10 +0200
Message-Id: <20210622165511.3169559-15-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0.rc2
In-Reply-To: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
References: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/15] drm/gem: Tiny kernel clarification for
 drm_gem_fence_array_add
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U3BvdHRlZCB3aGlsZSB0cnlpbmcgdG8gY29udmVydCBwYW5mcm9zdCB0byB0aGVzZS4KClNpZ25l
ZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogIkNo
cmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+CkNjOiBMdWNhcyBTdGFj
aCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVu
Lmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtl
cm5lbC5vcmc+CkNjOiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KQ2M6
IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmll
bEBmZndsbC5jaD4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jIHwgMyArKysKIDEgZmls
ZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
ZHJtX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYwppbmRleCBiYTJlNjRlZDhiNDcu
LjY4ZGViMWRlODIzNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jCkBAIC0xMzAyLDYgKzEzMDIsOSBAQCBFWFBPUlRf
U1lNQk9MKGRybV9nZW1fdW5sb2NrX3Jlc2VydmF0aW9ucyk7CiAgKiBAZmVuY2VfYXJyYXk6IGFy
cmF5IG9mIGRtYV9mZW5jZSAqIGZvciB0aGUgam9iIHRvIGJsb2NrIG9uLgogICogQGZlbmNlOiB0
aGUgZG1hX2ZlbmNlIHRvIGFkZCB0byB0aGUgbGlzdCBvZiBkZXBlbmRlbmNpZXMuCiAgKgorICog
VGhpcyBmdW5jdGlvbnMgY29uc3VtZXMgdGhlIHJlZmVyZW5jZSBmb3IgQGZlbmNlIGJvdGggb24g
c3VjY2VzcyBhbmQgZXJyb3IKKyAqIGNhc2VzLgorICoKICAqIFJldHVybnM6CiAgKiAwIG9uIHN1
Y2Nlc3MsIG9yIGFuIGVycm9yIG9uIGZhaWxpbmcgdG8gZXhwYW5kIHRoZSBhcnJheS4KICAqLwot
LSAKMi4zMi4wLnJjMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
