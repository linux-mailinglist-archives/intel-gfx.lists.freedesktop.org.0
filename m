Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B82802D9D61
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 18:16:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 014AD6E081;
	Mon, 14 Dec 2020 17:16:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC5E26E081
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 17:16:29 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id g185so15977081wmf.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 09:16:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CRN0z60un1ifSPLbySVjb7+rlXQHLXQ5MW3xHVZvsMM=;
 b=URqQYIJXeztX8BOCxtBMlauz1+Vynw9xFyndnNiXU0aLHkS9SuvL7+/CwyT17GWAIL
 d9ZYiNmkWt+rwFCve9O7Hyg8Pc4rT7DKTTmeVu/JJIQFC4pHDE2+BuZa9Dunn9W7JjVE
 +mOqu4hqxI8tbCzM5gJ3X8BJdllgPMez8y3GE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CRN0z60un1ifSPLbySVjb7+rlXQHLXQ5MW3xHVZvsMM=;
 b=nUrNEFWIPn35gmF/YQRG105q8dgHCeSE6WYcGiwus9F+PXKezMnI2eDblHfYeQIpxi
 rcwA+DrV1zE8u720dXL89fZQE+SkF+pGeqmvn1rSGNNF+DV8zcdSxliICyFjau9mnQg2
 QhKaCAy/CgpSUIJsEWzzQhFUhvqUSl1wkXl9vg/YjE/Fvg1FQ/nMMxg8MPUSSpGw2p8y
 BzMSM0x1T5Q66WLCNmzjgMUBBMkXDYCW4a6hMsglriSLMXTytybuWgzoR2C+3nXOGbVY
 0OnHdkzjkfOsVEy0f/XtFpMsQtTqnGSnPavdIm7shZFkBFP6z/KrHxI40Xr6PH/ckC7z
 2smA==
X-Gm-Message-State: AOAM532P4HJHWL8ZDYNTS8eOC+IvLizOSlf7LZOpXmQfenXj4SBx1UB7
 BNaYY5GyCFzjAZi/X6FOETrsnQ==
X-Google-Smtp-Source: ABdhPJyGfZtDmUmapTM+sOrlmOBNqPBbHYPIUUmXhWR281DX6bsCafZ7lmMKmmEBZoTwqyWsC5MzCg==
X-Received: by 2002:a1c:e445:: with SMTP id b66mr29461172wmh.187.1607966188676; 
 Mon, 14 Dec 2020 09:16:28 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q1sm31197005wrj.8.2020.12.14.09.16.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Dec 2020 09:16:27 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 14 Dec 2020 18:16:22 +0100
Message-Id: <20201214171622.3868883-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201211155843.3348718-3-daniel.vetter@ffwll.ch>
References: <20201211155843.3348718-3-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] dma-buf: begin/end_cpu might lock the dma_resv
 lock
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
 Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXQgbGVhc3QgYW1kZ3B1IGFuZCBpOTE1IGRvLCBzbyBsZXRzIGp1c3QgZG9jdW1lbnQgdGhpcyBh
cyB0aGUgcnVsZS4KCnYyOiBXb3JrcyBiZXR0ZXIgd2l0aCBsZXNzIHR5cG9zIChpbnRlbC1nZngt
Y2kpCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNv
bT4KQ2M6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgpDYzogU3VtaXQg
U2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3Jn
CkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKLS0tCiBkcml2ZXJzL2RtYS1idWYv
ZG1hLWJ1Zi5jIHwgNCArKysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMKaW5kZXggZTFmYTZjNmYwMmM0Li5hMGEwMmVmODg4ZGEgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtYnVmLmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwpAQCAt
MTExOCw2ICsxMTE4LDggQEAgaW50IGRtYV9idWZfYmVnaW5fY3B1X2FjY2VzcyhzdHJ1Y3QgZG1h
X2J1ZiAqZG1hYnVmLAogCWlmIChXQVJOX09OKCFkbWFidWYpKQogCQlyZXR1cm4gLUVJTlZBTDsK
IAorCW1pZ2h0X2xvY2soJmRtYWJ1Zi0+cmVzdi0+bG9jay5iYXNlKTsKKwogCWlmIChkbWFidWYt
Pm9wcy0+YmVnaW5fY3B1X2FjY2VzcykKIAkJcmV0ID0gZG1hYnVmLT5vcHMtPmJlZ2luX2NwdV9h
Y2Nlc3MoZG1hYnVmLCBkaXJlY3Rpb24pOwogCkBAIC0xMTUxLDYgKzExNTMsOCBAQCBpbnQgZG1h
X2J1Zl9lbmRfY3B1X2FjY2VzcyhzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLAogCiAJV0FSTl9PTigh
ZG1hYnVmKTsKIAorCW1pZ2h0X2xvY2soJmRtYWJ1Zi0+cmVzdi0+bG9jay5iYXNlKTsKKwogCWlm
IChkbWFidWYtPm9wcy0+ZW5kX2NwdV9hY2Nlc3MpCiAJCXJldCA9IGRtYWJ1Zi0+b3BzLT5lbmRf
Y3B1X2FjY2VzcyhkbWFidWYsIGRpcmVjdGlvbik7CiAKLS0gCjIuMjkuMgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
