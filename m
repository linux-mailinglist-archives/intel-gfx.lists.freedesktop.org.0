Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1FBB19D879
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 16:00:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08B396EBFE;
	Fri,  3 Apr 2020 13:59:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6295F6EBEF
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 13:59:20 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id d202so7850082wmd.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 06:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jWYyUGGEcSZSSlRstW2+Zp7fC8Wgfn2Y5FNgIASkXx8=;
 b=KidbwFBcPhKAa0Wq91jbM8XFGdiS8WMx2dyAOZS1WaoKQ9kh2YP8iVUh2GJ8v6nrtp
 SzMpEMv1yB8s20vOr6lFPHSMbHWQjswmEJRpQ6y2ExXDNmb5GyYjQnP5Tg7+Lytq11tQ
 cqgcGhNA5IAlprzTQxpekvstFIp6vVzmokK18=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jWYyUGGEcSZSSlRstW2+Zp7fC8Wgfn2Y5FNgIASkXx8=;
 b=pnMvtO6kSrhMG9WSSadSA6qDsl5YhqVMxkZSm5TB3OZCVaKJJG3fp8c4MnKLuJFAhO
 F35pm/ko3BAe09vwD7i5ehHxsLhFDiegaS4oLGtq55pnx4fi2kyuItCjQ3dwQg0m5r8M
 B7eJHRLHUoNly7aEOEsr1rtQfO3OPbYQbNVhIRApN7Lwa/F9y61leP+dr0n26TcztiFB
 j5511BJHbAqO9RwDLchuffnf9KSOch7WEWNWbvLDMKZby8xJO6zca1WQlfRlxCfCdmxf
 0QXjRf6xp5iL0oqive4RMz7o6ejAhhIsWx/9bqTr3R+vD26E/CSNPk0O7++brULf76Jx
 4PIg==
X-Gm-Message-State: AGi0PuYQTFrcADMbHNw1AJOrBQcLdaz8fprqI3gV6favk/Vrxs41ngnf
 GnnKgplUpGnyCpaG/2SMuEMrXg==
X-Google-Smtp-Source: APiQypIhNaBEVOpN/pgJkGy2Cs08n0fhriLEJmuwdwGQyeCoG1i9kQq0X4dr4nVMOsD+s9DMAP0ehQ==
X-Received: by 2002:a7b:cc01:: with SMTP id f1mr9210352wmh.39.1585922359095;
 Fri, 03 Apr 2020 06:59:19 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f141sm11783919wmf.3.2020.04.03.06.59.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 06:59:18 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  3 Apr 2020 15:58:23 +0200
Message-Id: <20200403135828.2542770-40-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 39/44] drm/cirrus: Use devm_drm_dev_alloc
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
Cc: Rob Herring <robh@kernel.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 virtualization@lists.linux-foundation.org,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Dave Airlie <airlied@redhat.com>,
 Sam Ravnborg <sam@ravnborg.org>, Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxyZWFkeSB1c2luZyBkZXZtX2RybV9kZXZfaW5pdCwgc28gdmVyeSBzaW1wbGUgcmVwbGFjbWVu
dC4KClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29t
PgpDYzogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KQ2M6IEdlcmQgSG9mZm1hbm4g
PGtyYXhlbEByZWRoYXQuY29tPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZnds
bC5jaD4KQ2M6IFNhbSBSYXZuYm9yZyA8c2FtQHJhdm5ib3JnLm9yZz4KQ2M6ICJOb3JhbGYgVHLD
uG5uZXMiIDxub3JhbGZAdHJvbm5lcy5vcmc+CkNjOiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwu
b3JnPgpDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+CkNjOiB2aXJ0
dWFsaXphdGlvbkBsaXN0cy5saW51eC1mb3VuZGF0aW9uLm9yZwpDYzogRW1pbCBWZWxpa292IDxl
bWlsLnZlbGlrb3ZAY29sbGFib3JhLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vY2lycnVzL2Np
cnJ1cy5jIHwgMTMgKysrKy0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KSwgOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vY2lycnVzL2Np
cnJ1cy5jIGIvZHJpdmVycy9ncHUvZHJtL2NpcnJ1cy9jaXJydXMuYwppbmRleCBhMzYyNjk3MTdj
M2IuLjRiNjU2MzcxNDdiYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2NpcnJ1cy9jaXJy
dXMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vY2lycnVzL2NpcnJ1cy5jCkBAIC01NjcsMTggKzU2
NywxMyBAQCBzdGF0aWMgaW50IGNpcnJ1c19wY2lfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYs
CiAJCXJldHVybiByZXQ7CiAKIAlyZXQgPSAtRU5PTUVNOwotCWNpcnJ1cyA9IGt6YWxsb2Moc2l6
ZW9mKCpjaXJydXMpLCBHRlBfS0VSTkVMKTsKLQlpZiAoY2lycnVzID09IE5VTEwpCi0JCXJldHVy
biByZXQ7CisJY2lycnVzID0gZGV2bV9kcm1fZGV2X2FsbG9jKCZwZGV2LT5kZXYsICZjaXJydXNf
ZHJpdmVyLAorCQkJCSAgICBzdHJ1Y3QgY2lycnVzX2RldmljZSwgZGV2KTsKKwlpZiAoSVNfRVJS
KGNpcnJ1cykpCisJCXJldHVybiBQVFJfRVJSKGNpcnJ1cyk7CiAKIAlkZXYgPSAmY2lycnVzLT5k
ZXY7Ci0JcmV0ID0gZGV2bV9kcm1fZGV2X2luaXQoJnBkZXYtPmRldiwgZGV2LCAmY2lycnVzX2Ry
aXZlcik7Ci0JaWYgKHJldCkgewotCQlrZnJlZShjaXJydXMpOwotCQlyZXR1cm4gcmV0OwotCX0K
IAlkZXYtPmRldl9wcml2YXRlID0gY2lycnVzOwotCWRybW1fYWRkX2ZpbmFsX2tmcmVlKGRldiwg
Y2lycnVzKTsKIAogCWNpcnJ1cy0+dnJhbSA9IGRldm1faW9yZW1hcCgmcGRldi0+ZGV2LCBwY2lf
cmVzb3VyY2Vfc3RhcnQocGRldiwgMCksCiAJCQkJICAgIHBjaV9yZXNvdXJjZV9sZW4ocGRldiwg
MCkpOwotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
