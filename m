Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7E017264F
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 19:15:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D78D6EC48;
	Thu, 27 Feb 2020 18:15:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 035016EC36
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 18:15:38 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id i10so6463525wmd.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 10:15:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gKWR/t9h5ZQ8oC0csntnZ62otqvVOekkZh+S0/SdzhE=;
 b=NJKZ7kvM6P2TkumAOG1gCr//mnuM3Wxgj9pIks6lNACKddsK77swDctZ5hGT1oYDTH
 bcb78HG/rojOMw2lZvf0gN/X6FvKESDjH+uWomoNPNZR1kxUsGmNmnZBkxs1LE1+VgWm
 Uqy48uTMSy7lCRz4kt4j2a/K5R5Nuy6J4Y4Ws=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gKWR/t9h5ZQ8oC0csntnZ62otqvVOekkZh+S0/SdzhE=;
 b=NTxP23zwheK8mWznNi87uJolEb2z0TSMySMjqQ1IQa7QXl42oOC7YjekcUeKxlhNLu
 gwN5zuMkH2UAmeTdT88yMZ8rBEKTjyz5fS8DyqLEJxd9QzMIqhmlgORIY3Xo3k7D4giv
 R9BE1/X46+VmNN6lnN8Ks6UdZHKM5ZkxKKZcOQVU6LMMLa/1v3m029KQoeoPvXmU8rnq
 ZydSfs3RJGnPgu/UL45flSOtcfOkwfEAy4VD7boAwr5+LNB4HiuOYXK3U+Wm6p5REOUU
 i/LzaekivBXqG4e7U866bswvsDC9T82Lq2XVqs9ZGtLGwFDeLEJn4ScLW96bbt+xR84R
 b+3g==
X-Gm-Message-State: APjAAAV1TM0KmhzErDg9bzsfowyQNJeGOH6Wgx4GKP35VTodObn0v06w
 FK7gxn+W2I02DUJIOZM5URx+rQ==
X-Google-Smtp-Source: APXvYqzYEymBaUmllyhKxTQCLzNYL+lqo+E2SOOgKjbt+Ps0xznDGoHaDs/HQetkvitonItIGWfErw==
X-Received: by 2002:a1c:41c3:: with SMTP id o186mr27727wma.27.1582827336683;
 Thu, 27 Feb 2020 10:15:36 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q1sm8551152wrw.5.2020.02.27.10.15.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 10:15:35 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 27 Feb 2020 19:14:37 +0100
Message-Id: <20200227181522.2711142-7-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
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
 m.felsch@pengutronix.de,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Dave Airlie <airlied@redhat.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 l.stach@pengutronix.de
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
