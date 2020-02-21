Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29243168897
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 22:04:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A3436F527;
	Fri, 21 Feb 2020 21:03:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCC616F51C
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 21:03:37 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id c9so3525756wrw.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 13:03:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gKWR/t9h5ZQ8oC0csntnZ62otqvVOekkZh+S0/SdzhE=;
 b=TzE+QYA5e4H1ERPWfuNEF+gpqabhL1tTjGYtGrBHv2QC7+C17e+i0CGwnVa1MBePf+
 qdLwXvYZOyRG+Mu5dhKjn12Ef+R/3LCk0I4hc8iFs5wx0FxzHL7jbCJMXH+NVxm/MIGm
 YOoWrJL2GRxeePzFVXN8UGPfqCdmusjN7Pm+c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gKWR/t9h5ZQ8oC0csntnZ62otqvVOekkZh+S0/SdzhE=;
 b=SlSje+Byh8XoArzWttghh1LACuErzz4h4uhPFUwb8FGi9TbPPSPj9fVzgr8oJY2qbE
 0D2gI4PEvDgWMWUJ/t5fOSA/j4UtUyU3Wsa7i5NpoDuIMKiPVOASdubtPghPDr+rgQgW
 sVvPr4cl6n1NEyXmP0TTG3tnFjjMgoFK/Fx7edOC5hMJiqnEBG4ImINIJDnpKR1lItgQ
 06OBUYHZ5/OUaKu3cD/BsfdoOpBSshaUlpPFn1oaOjV+QdM2KemjSOIuwh6X2tAWnvnd
 zAdahYM9jAfCpvbVnj1oq5ZF1rbarsx8jUidFwwE8B3Y7ldZmIXKkaH0xXvCgwNlPCn0
 /19A==
X-Gm-Message-State: APjAAAUQLppgbljCmb+FQQHhfHqaLyOj8PD2O0jJNL7YFrlqw2GU6yTZ
 9aWDGaClwiSW3h+a2hFifnVjXA==
X-Google-Smtp-Source: APXvYqwHS3wNfXJc+el08SanFXgdvHDfR4f/8UZJNgK8WmMARaRphlMxSQx0jCyDS4QaJjAPlpOJdg==
X-Received: by 2002:adf:e8ca:: with SMTP id k10mr47662067wrn.50.1582319016492; 
 Fri, 21 Feb 2020 13:03:36 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z6sm5483930wrw.36.2020.02.21.13.03.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 13:03:35 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 21 Feb 2020 22:02:34 +0100
Message-Id: <20200221210319.2245170-7-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/51] drm/udl: Use drmm_add_final_kfree
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
Cc: Sam Ravnborg <sam@ravnborg.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Dave Airlie <airlied@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2l0aCB0aGlzIHdlIGNhbiBkcm9wIHRoZSBmaW5hbCBrZnJlZSBmcm9tIHRoZSByZWxlYXNlIGZ1
bmN0aW9uLgoKdjI6IFdlIG5lZWQgZHJtX2Rldl9wdXQgdG8gdW5yb2xsIHRoZSBkcml2ZXIgY3Jl
YXRpb24gKG9uY2UKZHJtX2Rldl9pbml0IGFuZCBkcm1tX2FkZF9maW5hbF9rZnJlZSBzdWNlZWRl
ZCksIG90aGVyd2lzZQp0aGUgZHJtbV8gbWFnaWMgZG9lc24ndCBoYXBwZW4uCgp2MzogQWN0dWFs
bHkgc3F1YXNoIGluIHRoZSBmaXh1cCAoTGF1cmVudCkuCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwg
VmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IExhdXJlbnQgUGluY2hhcnQgPGxh
dXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4KQ2M6IERhdmUgQWlybGllIDxhaXJsaWVk
QHJlZGhhdC5jb20+CkNjOiBTZWFuIFBhdWwgPHNlYW5AcG9vcmx5LnJ1bj4KQ2M6IFRob21hcyBa
aW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgpDYzogRW1pbCBWZWxpa292IDxlbWlsLmwu
dmVsaWtvdkBnbWFpbC5jb20+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xs
LmNoPgpDYzogIk5vcmFsZiBUcsO4bm5lcyIgPG5vcmFsZkB0cm9ubmVzLm9yZz4KQ2M6IFRob21h
cyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgpDYzogU2FtIFJhdm5ib3JnIDxzYW1AcmF2
bmJvcmcub3JnPgotLS0KIGRyaXZlcnMvZ3B1L2RybS91ZGwvdWRsX2Rydi5jIHwgNiArKystLS0K
IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL3VkbC91ZGxfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vdWRs
L3VkbF9kcnYuYwppbmRleCBlNmMxY2Q3N2Q0ZDQuLjZhNTU5NDk0NjA5NiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL3VkbC91ZGxfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3VkbC91
ZGxfZHJ2LmMKQEAgLTEwLDYgKzEwLDcgQEAKICNpbmNsdWRlIDxkcm0vZHJtX2ZiX2hlbHBlci5o
PgogI2luY2x1ZGUgPGRybS9kcm1fZmlsZS5oPgogI2luY2x1ZGUgPGRybS9kcm1fZ2VtX3NobWVt
X2hlbHBlci5oPgorI2luY2x1ZGUgPGRybS9kcm1fbWFuYWdlZC5oPgogI2luY2x1ZGUgPGRybS9k
cm1faW9jdGwuaD4KICNpbmNsdWRlIDxkcm0vZHJtX3Byb2JlX2hlbHBlci5oPgogI2luY2x1ZGUg
PGRybS9kcm1fcHJpbnQuaD4KQEAgLTM4LDcgKzM5LDYgQEAgc3RhdGljIHZvaWQgdWRsX2RyaXZl
cl9yZWxlYXNlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiAJdWRsX2ZpbmkoZGV2KTsKIAl1ZGxf
bW9kZXNldF9jbGVhbnVwKGRldik7CiAJZHJtX2Rldl9maW5pKGRldik7Ci0Ja2ZyZWUoZGV2KTsK
IH0KIAogc3RhdGljIHN0cnVjdCBkcm1fZHJpdmVyIGRyaXZlciA9IHsKQEAgLTc3LDExICs3Nywx
MSBAQCBzdGF0aWMgc3RydWN0IHVkbF9kZXZpY2UgKnVkbF9kcml2ZXJfY3JlYXRlKHN0cnVjdCB1
c2JfaW50ZXJmYWNlICppbnRlcmZhY2UpCiAKIAl1ZGwtPnVkZXYgPSB1ZGV2OwogCXVkbC0+ZHJt
LmRldl9wcml2YXRlID0gdWRsOworCWRybW1fYWRkX2ZpbmFsX2tmcmVlKCZ1ZGwtPmRybSwgdWRs
KTsKIAogCXIgPSB1ZGxfaW5pdCh1ZGwpOwogCWlmIChyKSB7Ci0JCWRybV9kZXZfZmluaSgmdWRs
LT5kcm0pOwotCQlrZnJlZSh1ZGwpOworCQlkcm1fZGV2X3B1dCgmdWRsLT5kcm0pOwogCQlyZXR1
cm4gRVJSX1BUUihyKTsKIAl9CiAKLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
