Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4011A46A79
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:38:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED62E895E1;
	Fri, 14 Jun 2019 20:37:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 007F88941E
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:36:57 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id p15so5224569eds.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:36:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/Jp/ZBCBpozIIjrEuGAM1NXn7Z/waQy3T58mrHRDl08=;
 b=rsY8N4B9EEhZe7DltAKa3XOA0VKDb7Rfuh4jHhzFpw47xSfphd6HWkcE1UeZpJfDOj
 vFyPPGJoXvCqcZGlQuqlCS4s9N1Kxfkfxn5/6AfQFR96Cq/mbH5b5irp1GMc65OXzu+V
 iQqyl/5qokhqDx5jk1rAnhxJid213IPui67wIvWihiZUvm6zHxpUPrjmBKYumM+G4kkA
 i1ZbVPMv7bNcKLJqZ78dbYV05/4E1tFuHl6dz5crG03noXWhOq9gY8l1LwUMa5OJyZtq
 liaJHB5AKhlTuyv3NpL+8Lt4Bl1w9LJSoXgrQv0yg5WwIP5cRfbjkqJNzJHDPOoTtcjN
 B9+w==
X-Gm-Message-State: APjAAAUBSbsDpNi70CCYI0oNToEEdMarE0gLw9XEAMj96F3TicLYx6M3
 5+LC9j/SeQDrZZqMJF0mn4BtTw==
X-Google-Smtp-Source: APXvYqye1d4rc6QOOp4amFPh/vCQoKOsT2Hw1sgADMdzbBIM5PXda8LQjNagp1bMKWB8l8N1qoiNAA==
X-Received: by 2002:a50:92c4:: with SMTP id l4mr135306eda.34.1560544615417;
 Fri, 14 Jun 2019 13:36:55 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:54 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:35:45 +0200
Message-Id: <20190614203615.12639-30-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/Jp/ZBCBpozIIjrEuGAM1NXn7Z/waQy3T58mrHRDl08=;
 b=d3ipd5e8teSJYRVGO9sANncGlDO3b/L1uM+EEJURXKsSmosoRw8WWYuwe8RkJamhYN
 tlsbdGjnoyTr0/Kapb/qhhwE5Qj1VDIZHfe1Pdq1/6X+2pmuYofhKDFjm9MXJI0Sgytk
 Yr4FRkcgDqUOGirXKTNPqILJJpNwmdcnCN7lo=
Subject: [Intel-gfx] [PATCH 29/59] drm/sti: Drop drm_gem_prime_export/import
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
 Vincent Abriou <vincent.abriou@st.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhleSdyZSB0aGUgZGVmYXVsdC4KCkFzaWRlOiBXb3VsZCBiZSByZWFsbHkgbmljZSB0byBzd2l0
Y2ggdGhlIG90aGVycyBvdmVyIHRvCmRybV9nZW1fb2JqZWN0X2Z1bmNzLgoKU2lnbmVkLW9mZi1i
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBCZW5qYW1pbiBH
YWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAbGluYXJvLm9yZz4KQ2M6IFZpbmNlbnQgQWJyaW91
IDx2aW5jZW50LmFicmlvdUBzdC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3N0aS9zdGlfZHJ2
LmMgfCAyIC0tCiAxIGZpbGUgY2hhbmdlZCwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vc3RpL3N0aV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9zdGkvc3RpX2Ry
di5jCmluZGV4IGQ5ZjYzYzlmMjg3Yi4uZmFlYTRkY2IyMWIxIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vc3RpL3N0aV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vc3RpL3N0aV9kcnYu
YwpAQCAtMTUyLDggKzE1Miw2IEBAIHN0YXRpYyBzdHJ1Y3QgZHJtX2RyaXZlciBzdGlfZHJpdmVy
ID0gewogCiAJLnByaW1lX2hhbmRsZV90b19mZCA9IGRybV9nZW1fcHJpbWVfaGFuZGxlX3RvX2Zk
LAogCS5wcmltZV9mZF90b19oYW5kbGUgPSBkcm1fZ2VtX3ByaW1lX2ZkX3RvX2hhbmRsZSwKLQku
Z2VtX3ByaW1lX2V4cG9ydCA9IGRybV9nZW1fcHJpbWVfZXhwb3J0LAotCS5nZW1fcHJpbWVfaW1w
b3J0ID0gZHJtX2dlbV9wcmltZV9pbXBvcnQsCiAJLmdlbV9wcmltZV9nZXRfc2dfdGFibGUgPSBk
cm1fZ2VtX2NtYV9wcmltZV9nZXRfc2dfdGFibGUsCiAJLmdlbV9wcmltZV9pbXBvcnRfc2dfdGFi
bGUgPSBkcm1fZ2VtX2NtYV9wcmltZV9pbXBvcnRfc2dfdGFibGUsCiAJLmdlbV9wcmltZV92bWFw
ID0gZHJtX2dlbV9jbWFfcHJpbWVfdm1hcCwKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
