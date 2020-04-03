Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B9719D846
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 15:59:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6B406EBCC;
	Fri,  3 Apr 2020 13:59:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 529616EBC8
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 13:58:59 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id c7so8634063wrx.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 06:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=otIrhwZjoFpvWNzNejn5R22CMdP0/kgQJt8widdx7Ho=;
 b=dWvuqheKmGOa21IayDbnPnK4nPH1vpdeovUtpDXD0mM5n7uFIAK+7x762lQZDKyM4Y
 9I4DM8oYVYglevu7qB170Jy0zqqCgNqVsDqD9eDONwZnq4t7KKgSTwAhGZUFxcuI1av2
 8SVyFn60lDzyz059rDf+/YSwq2UJy4kp9gcts=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=otIrhwZjoFpvWNzNejn5R22CMdP0/kgQJt8widdx7Ho=;
 b=cmuP4LfBpJs4wI1DK/+tGS6aGUwe2Es5qS0QrFCOO1VbTSFGVuD2rk02k+yxk6JIro
 KWcqQdaKbt5eWzHWhmRXQ4ZYMb+bjaLUKxyVIo0ebZAVso8TaKXA0xF50hJwLV/u9+RD
 Bk0CR+syU2+swzt1NVpkC/nkgejkfjn5N6CqeAuoXezXzQbHdLnqtrWNGqIr72XJSZmx
 ZBsC5gP/s+hI+qYsfTuHgcpBtiEDLR4usyfQH9umufWGL2GlzrB1fqHLoOPNqrw7I2V7
 cvkBRPWfyHqJoE16tJXC7v9brZREsHCmIADvQUFJ2liz/bck8/Qt0KQAwessEW+4sV3S
 NcgQ==
X-Gm-Message-State: AGi0PuZ8wgprPFDWBuDpNvKNafhHqb7ON5XAanscz9kRvF7qKhrZgZ7U
 Gjp03/Y4OFCCjNN97GhBiKuumg==
X-Google-Smtp-Source: APiQypKW65YqGixRuX3K90+2HCF1vQh4514XACGmSsIVKNhsrbSsR4h+PQWdvpZISH0CcxNM3nDa4g==
X-Received: by 2002:adf:f1c4:: with SMTP id z4mr9773093wro.342.1585922338038; 
 Fri, 03 Apr 2020 06:58:58 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f141sm11783919wmf.3.2020.04.03.06.58.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 06:58:57 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  3 Apr 2020 15:58:04 +0200
Message-Id: <20200403135828.2542770-21-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 20/44] drm/mi0283qt: Use devm_drm_dev_alloc
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxyZWFkeSB1c2luZyBkZXZtX2RybV9kZXZfaW5pdCwgc28gdmVyeSBzaW1wbGUgcmVwbGFjbWVu
dC4KClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29t
PgpDYzogIk5vcmFsZiBUcsO4bm5lcyIgPG5vcmFsZkB0cm9ubmVzLm9yZz4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vdGlueS9taTAyODNxdC5jIHwgMTMgKysrKy0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDQgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vdGlueS9taTAyODNxdC5jIGIvZHJpdmVycy9ncHUvZHJtL3RpbnkvbWkwMjgzcXQu
YwppbmRleCBkZWNhZjU3MDUzZmYuLjA4YWM1NDlhYjBmNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL3RpbnkvbWkwMjgzcXQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdGlueS9taTAyODNx
dC5jCkBAIC0xODcsMTggKzE4NywxMyBAQCBzdGF0aWMgaW50IG1pMDI4M3F0X3Byb2JlKHN0cnVj
dCBzcGlfZGV2aWNlICpzcGkpCiAJdTMyIHJvdGF0aW9uID0gMDsKIAlpbnQgcmV0OwogCi0JZGJp
ZGV2ID0ga3phbGxvYyhzaXplb2YoKmRiaWRldiksIEdGUF9LRVJORUwpOwotCWlmICghZGJpZGV2
KQotCQlyZXR1cm4gLUVOT01FTTsKKwlkYmlkZXYgPSBkZXZtX2RybV9kZXZfYWxsb2MoZGV2LCAm
bWkwMjgzcXRfZHJpdmVyLAorCQkJCSAgICBzdHJ1Y3QgbWlwaV9kYmlfZGV2LCBkcm0pOworCWlm
IChJU19FUlIoZGJpZGV2KSkKKwkJcmV0dXJuIFBUUl9FUlIoZGJpZGV2KTsKIAogCWRiaSA9ICZk
YmlkZXYtPmRiaTsKIAlkcm0gPSAmZGJpZGV2LT5kcm07Ci0JcmV0ID0gZGV2bV9kcm1fZGV2X2lu
aXQoZGV2LCBkcm0sICZtaTAyODNxdF9kcml2ZXIpOwotCWlmIChyZXQpIHsKLQkJa2ZyZWUoZGJp
ZGV2KTsKLQkJcmV0dXJuIHJldDsKLQl9Ci0JZHJtbV9hZGRfZmluYWxfa2ZyZWUoZHJtLCBkYmlk
ZXYpOwogCiAJZGJpLT5yZXNldCA9IGRldm1fZ3Bpb2RfZ2V0X29wdGlvbmFsKGRldiwgInJlc2V0
IiwgR1BJT0RfT1VUX0hJR0gpOwogCWlmIChJU19FUlIoZGJpLT5yZXNldCkpIHsKLS0gCjIuMjUu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
