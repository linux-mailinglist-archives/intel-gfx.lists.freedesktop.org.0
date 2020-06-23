Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A04205689
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 17:59:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D3E46E9DC;
	Tue, 23 Jun 2020 15:59:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com
 [IPv6:2607:f8b0:4864:20::844])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CBBF6E9D5
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 15:59:21 +0000 (UTC)
Received: by mail-qt1-x844.google.com with SMTP id i3so6265494qtq.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 08:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=G0+zjquU6PUDClPRv003ZWBRqMKL1m7t4tFso7Nvivk=;
 b=ETUUU1uzCJZJLsW40GIDzcy+m74ikE/+5EmQBGBavMq/T2Qsjgb31i5N8qtUiXaONd
 FCeTTcfzANxIJQ5PTRKY0hBe6yQ0bdbGQN/E96p/lX+8fAST6OIL3CF1k6EuyMES0zLQ
 U7bnKUM+emvzjvtc1aynmiH+A1V/a6uZzeG48FDlMab+lIvIjIvix3hYt9cZ6ROxjr5O
 KvcIst0oft+ko+G1RpqxQ1/YE30XhxfQ5rwsREjfW6hUfJS34ITb2o1FHj+QOXxlAxl3
 8nJxeRJPoqgtlhBVW3x74XMNIjNcbJeLpl3QY5o7ONdrXvpAHkZVrOzFb3iDKeNZeBfa
 j8cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=G0+zjquU6PUDClPRv003ZWBRqMKL1m7t4tFso7Nvivk=;
 b=FFO5cnSGp7RKwbD50AbJd/B/gZWUpbag2cPE4+OZWV9DsHGICvaLs1a78ow8WzPVfg
 lYOQJocUgcA2eA/cJ9zF3aiaMstBqoyCYducrVfJVx5XpRASBxS6lts0niTcpUOmUqy6
 Fga72L5aiYfirxVsbuiIj7FHV2ydnm0uVHbxm+bwJcipkU2Mks8t/gf6OF2ljQPTuQ1z
 Lu1yGSZFKrJ+sDvkiXteeFC5OxnlRqC4ukLSKOJsUKRJiLEXKZ/5kwOnk8kxQaDF7Fuy
 WAfnbYKbYFFIfB3D166NNYGPTjc5f9PXlT0rGl+fNHs38uGBEEpuCtY6lDkUmTembKd4
 kQng==
X-Gm-Message-State: AOAM532qcn1Bt6oBxsYV4d1i1o8S+tsfLUiQkQUCNafqDdmEmQqHLwts
 PBSU+qcRlmmNILUa+xyDejv9+A==
X-Google-Smtp-Source: ABdhPJzbHe8koAUZFMdz+yjOmTqcVx6vNBgyQrc3FciQ9EjqfIOePlefrwnjOWozlXCRnCDR80QKbQ==
X-Received: by 2002:ac8:24b3:: with SMTP id s48mr22488385qts.383.1592927960227; 
 Tue, 23 Jun 2020 08:59:20 -0700 (PDT)
Received: from localhost ([166.137.96.174])
 by smtp.gmail.com with ESMTPSA id x30sm925715qte.70.2020.06.23.08.59.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 23 Jun 2020 08:59:19 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jun 2020 11:58:53 -0400
Message-Id: <20200623155907.22961-4-sean@poorly.run>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200623155907.22961-1-sean@poorly.run>
References: <20200623155907.22961-1-sean@poorly.run>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 03/17] drm/i915: WARN if HDCP signalling is
 enabled upon disable
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
Cc: daniel.vetter@ffwll.ch, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogU2VhbiBQYXVsIDxzZWFucGF1bEBjaHJvbWl1bS5vcmc+CgpIRENQIHNpZ25hbGxpbmcg
c2hvdWxkIG5vdCBiZSBsZWZ0IG9uLCBXQVJOIGlmIGl0IGlzCgpDYzogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmll
bC52ZXR0ZXJAZmZ3bGwuY2g+ClJldmlld2VkLWJ5OiBSYW1hbGluZ2FtIEMgPHJhbWFsaW5nYW0u
Y0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFNlYW4gUGF1bCA8c2VhbnBhdWxAY2hyb21pdW0u
b3JnPgpMaW5rOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQv
MjAxOTEyMTIxOTAyMzAuMTg4NTA1LTQtc2VhbkBwb29ybHkucnVuICN2MgpMaW5rOiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAyMDAxMTcxOTMxMDMuMTU2
ODIxLTQtc2VhbkBwb29ybHkucnVuICN2MwpMaW5rOiBodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAyMDAyMTgyMjAyNDIuMTA3MjY1LTQtc2VhbkBwb29ybHku
cnVuICN2NApMaW5rOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNn
aWQvMjAyMDAzMDUyMDEyMzYuMTUyMzA3LTQtc2VhbkBwb29ybHkucnVuICN2NQpMaW5rOiBodHRw
czovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAyMDA0MjkxOTU1MDIu
Mzk5MTktNC1zZWFuQHBvb3JseS5ydW4gI3Y2CgpDaGFuZ2VzIGluIHYyOgotQWRkZWQgdG8gdGhl
IHNldCBpbiBsaWV1IG9mIGp1c3QgY2xlYXJpbmcgdGhlIGJpdApDaGFuZ2VzIGluIHYzOgotTm9u
ZQpDaGFuZ2VzIGluIHY0OgotTm9uZQpDaGFuZ2VzIGluIHY1OgotQ2hhbmdlIFdBUk5fT04gdG8g
ZHJtX1dBUk5fT04KQ2hhbmdlcyBpbiB2NjoKLU5vbmUKQ2hhbmdlcyBpbiB2NzoKLVJlYmFzZWQs
IHZhcmlhYmxlIG5hbWUgY2hhbmdlZCBmcm9tICdjdGwnIHRvICd2YWwnCi0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpp
bmRleCA3M2Q2Y2MyOTI5MWEuLjhhMDNjNThjYmQzMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jCkBAIC0xNzA4LDYgKzE3MDgsOCBAQCB2b2lkIGludGVsX2RkaV9k
aXNhYmxlX3RyYW5zY29kZXJfZnVuYyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZQogCiAJY3RsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgVFJBTlNfRERJX0ZVTkNf
Q1RMKGNwdV90cmFuc2NvZGVyKSk7CiAKKwlkcm1fV0FSTl9PTihjcnRjLT5iYXNlLmRldiwgY3Rs
ICYgVFJBTlNfRERJX0hEQ1BfU0lHTkFMTElORyk7CisKIAljdGwgJj0gflRSQU5TX0RESV9GVU5D
X0VOQUJMRTsKIAogCWlmIChJU19HRU5fUkFOR0UoZGV2X3ByaXYsIDgsIDEwKSkKLS0gClNlYW4g
UGF1bCwgU29mdHdhcmUgRW5naW5lZXIsIEdvb2dsZSAvIENocm9taXVtIE9TCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
