Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B90C8364E6
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2019 21:46:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E216289711;
	Wed,  5 Jun 2019 19:46:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E28789711
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2019 19:46:04 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id p15so4095009eds.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Jun 2019 12:46:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=noy1sq32ZRx0pAV3/YkawbBtMmDX0p6/ParQtLpWWAg=;
 b=jhTfUpU5N0EgzRq3yQTta2o1J3+PfWzsYiACE+j0mrQeyvi54vG1DE27drkCIcfBcs
 tRI3w7jYfBZj1y9hmDtwka0lcuAxUjt+MYdV5k8ODt2vMSWhumE0zBsN+xmrUFLryGKe
 rBVMVjusEZuYWXYIfPilGbrdPvoM/uzWvN/v6seB0JRxh3GAN7MhwBFTzJev/TVbpyZy
 GRxDrVA2/swBjGeV4opQZjUH4gL/MwJpCR6KWbpWzWK1RS0vi0hVW7BuJebLB76D3b5O
 u9iT3XhknRKdzNf/yKmJPEOMo6l8s0YXCpeysxuhUW17OY31g3/QTm35bSlLwrH/AGiS
 QVLg==
X-Gm-Message-State: APjAAAUy+6RnBihpjFKrxdBLCpX2hOE23Oq0BWGJpRTO10vEPNDR22eF
 O4NT1Ege7g/3egjATaNBGwiwtg==
X-Google-Smtp-Source: APXvYqz2Hwpn/bWAjhV+WowFc/+3J1vx01omxIXqT90LWtoEn1PmwTm0PSyiWR5MzupSf1Z51eVhmQ==
X-Received: by 2002:a17:906:4e0f:: with SMTP id
 z15mr6577912eju.101.1559763962824; 
 Wed, 05 Jun 2019 12:46:02 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id y5sm128449edo.77.2019.06.05.12.46.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 12:46:02 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed,  5 Jun 2019 21:45:56 +0200
Message-Id: <20190605194556.16744-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=noy1sq32ZRx0pAV3/YkawbBtMmDX0p6/ParQtLpWWAg=;
 b=WoUJt1DBJTAijf+Ebqm15YfZBJu8TsbQPYSxUwdnSVgtxPsduZxJcmmp6Y7/Pu9kQv
 BZQN7w+7Cw/zPxq9a5ooJ11g41vj6+UljqUxBkRd5pK86pcYMmrPrVwPL5MPBvyucOQu
 auHV8akNrMuq4yKMTNdrE2xCLzCVpEZXL2tqQ=
Subject: [Intel-gfx] [PATCH] drm/crc-debugfs: User irqsafe spinlock in
 drm_crtc_add_crc_entry
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
Cc: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgY2FuIGJlIGNhbGxlZCBmcm9tIGFueSBjb250ZXh0LCB3ZSBuZWVkIHRvIGJlIHByZXBhcmVk
LgoKTm90aWNlZCB0aGlzIHdoaWxlIGhhY2tpbmcgb24gdmttcywgd2hpY2ggY2FsbHMgdGhpcyBm
dW5jdGlvbiBmcm9tIGEKbm9ybWFsIHdvcmtlci4gV2hpY2ggcmVhbGx5IHVwc2V0cyBsb2NrZGVw
LgoKQ2M6IFJvZHJpZ28gU2lxdWVpcmEgPHJvZHJpZ29zaXF1ZWlyYW1lbG9AZ21haWwuY29tPgpD
YzogVG9tZXUgVml6b3NvIDx0b21ldS52aXpvc29AY29sbGFib3JhLmNvbT4KQ2M6IEVtaWwgVmVs
aWtvdiA8ZW1pbC52ZWxpa292QGNvbGxhYm9yYS5jb20+CkNjOiBCZW5qYW1pbiBHYWlnbmFyZCA8
YmVuamFtaW4uZ2FpZ25hcmRAbGluYXJvLm9yZz4KU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRl
ciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9kZWJ1
Z2ZzX2NyYy5jIHwgNSArKystLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RlYnVnZnNfY3Jj
LmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2RlYnVnZnNfY3JjLmMKaW5kZXggNTg1MTY5ZjBkY2M1
Li43ZjM1YjViYTE5MjQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZGVidWdmc19j
cmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2RlYnVnZnNfY3JjLmMKQEAgLTM5Niw4ICsz
OTYsOSBAQCBpbnQgZHJtX2NydGNfYWRkX2NyY19lbnRyeShzdHJ1Y3QgZHJtX2NydGMgKmNydGMs
IGJvb2wgaGFzX2ZyYW1lLAogCXN0cnVjdCBkcm1fY3J0Y19jcmMgKmNyYyA9ICZjcnRjLT5jcmM7
CiAJc3RydWN0IGRybV9jcnRjX2NyY19lbnRyeSAqZW50cnk7CiAJaW50IGhlYWQsIHRhaWw7CisJ
dW5zaWduZWQgbG9uZyBmbGFnczsKIAotCXNwaW5fbG9jaygmY3JjLT5sb2NrKTsKKwlzcGluX2xv
Y2tfaXJxc2F2ZSgmY3JjLT5sb2NrLCBmbGFncyk7CiAKIAkvKiBDYWxsZXIgbWF5IG5vdCBoYXZl
IG5vdGljZWQgeWV0IHRoYXQgdXNlcnNwYWNlIGhhcyBzdG9wcGVkIHJlYWRpbmcgKi8KIAlpZiAo
IWNyYy0+ZW50cmllcykgewpAQCAtNDI4LDcgKzQyOSw3IEBAIGludCBkcm1fY3J0Y19hZGRfY3Jj
X2VudHJ5KHN0cnVjdCBkcm1fY3J0YyAqY3J0YywgYm9vbCBoYXNfZnJhbWUsCiAJaGVhZCA9ICho
ZWFkICsgMSkgJiAoRFJNX0NSQ19FTlRSSUVTX05SIC0gMSk7CiAJY3JjLT5oZWFkID0gaGVhZDsK
IAotCXNwaW5fdW5sb2NrKCZjcmMtPmxvY2spOworCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmNy
Yy0+bG9jaywgZmxhZ3MpOwogCiAJd2FrZV91cF9pbnRlcnJ1cHRpYmxlKCZjcmMtPndxKTsKIAot
LSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
