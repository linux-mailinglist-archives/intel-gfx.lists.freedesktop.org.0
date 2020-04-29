Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 624011BE7D1
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 21:55:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05E0E6F39E;
	Wed, 29 Apr 2020 19:55:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com
 [IPv6:2607:f8b0:4864:20::744])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D36516F3A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 19:55:11 +0000 (UTC)
Received: by mail-qk1-x744.google.com with SMTP id k81so642794qke.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 12:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4q6U9bQnNCsGSz0OpbbB1aaXw9FBRB2ZVtrZWl9IhSU=;
 b=SP/x0BkMwZpqM0y/UROarNzLq5L7flAHJIxrIT6BOkp8iKFksJqYo0PN/rw3Aad7tf
 02P+QUbHIICSiO/22dSE+I899n3t0wNdf/t///9lu5mbRC1Ddbe4/j2uwP10O6cFTB6E
 rZnDKMIwzhe0SE1yKM2JkhEl8mKUZdI7ofkADhz1rbGn92ta6P91p5cSXDJ8V1P4xiHa
 vKyNVn3QI5kbCQd4ZA/rM7ggNbYbufcwohW1dkS0nM0ZCtJSTLrPHYJABt46aDr6bv2g
 maWyMX6GCqs3thpy+1mqu2jgl3+63VgFoofF4EYNrHMjyCHpga7cM8JQI0XjIHnKUNkv
 bROA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4q6U9bQnNCsGSz0OpbbB1aaXw9FBRB2ZVtrZWl9IhSU=;
 b=Yd42o8uQOXRfD3V+sCrXkmINhiqK4ZFyj2+2ccFJ0t4TfAjZlXOEPNS1+GATh5e0HE
 4qMVHeWzHNzz9EmrarKJZvT1gJqSRzTcxaCsl72uxal4puWADLfeM7zWy06peoVWMllU
 LKLO4uIQx3vj9XtJRjsUV12DY+zpTI2bxaZlEu+4Vxuj3JNMDSxpOnP0VN9HAH8vD1US
 wae7E/3ndt4UOJHw2oMN4LnSZ4+K92xI3UJU9ESdSIwDxlDfcCnUvHWaySeIk6ihYfGP
 /9kboY2cNYm6O56k1ALFeBPop+ZkT93bCt+5ZOK+FVC+4n/FLSo9iEI8goCQqGQ9RmW5
 /C2Q==
X-Gm-Message-State: AGi0PuYc7t7DPL11cn99KOWa6nvXl3rTNeKegi7kGEhSbnK6mGP1v+GV
 BjYO+JoWw300BtoEBCxqWbe99w==
X-Google-Smtp-Source: APiQypI76PolNXrJ/BpqdWa0H/H9CIVOQqumkq4vgTCAPgV2vCOuRTvedG6UGr+Xe+wYKz6RwVxaRg==
X-Received: by 2002:a37:62d7:: with SMTP id w206mr106790qkb.406.1588190109538; 
 Wed, 29 Apr 2020 12:55:09 -0700 (PDT)
Received: from localhost (mobile-166-170-55-34.mycingular.net. [166.170.55.34])
 by smtp.gmail.com with ESMTPSA id h6sm158820qtd.79.2020.04.29.12.55.08
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 Apr 2020 12:55:09 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 29 Apr 2020 15:54:49 -0400
Message-Id: <20200429195502.39919-4-sean@poorly.run>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200429195502.39919-1-sean@poorly.run>
References: <20200429195502.39919-1-sean@poorly.run>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 03/16] drm/i915: WARN if HDCP signalling is
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
Cc: daniel.vetter@ffwll.ch, seanpaul@chromium.org
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
aWQvMjAyMDAzMDUyMDEyMzYuMTUyMzA3LTQtc2VhbkBwb29ybHkucnVuICN2NQoKQ2hhbmdlcyBp
biB2MjoKLUFkZGVkIHRvIHRoZSBzZXQgaW4gbGlldSBvZiBqdXN0IGNsZWFyaW5nIHRoZSBiaXQK
Q2hhbmdlcyBpbiB2MzoKLU5vbmUKQ2hhbmdlcyBpbiB2NDoKLU5vbmUKQ2hhbmdlcyBpbiB2NToK
LUNoYW5nZSBXQVJOX09OIHRvIGRybV9XQVJOX09OCkNoYW5nZXMgaW4gdjY6Ci1Ob25lCi0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDIgKysKIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYwppbmRleCA1NjAxNjczYzNmMzAuLjA4ODQ0YmE5ZGNiNSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0xNjYzLDYgKzE2NjMsOCBAQCB2b2lkIGlu
dGVsX2RkaV9kaXNhYmxlX3RyYW5zY29kZXJfZnVuYyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZQogCiAJY3RsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgVFJBTlNf
RERJX0ZVTkNfQ1RMKGNwdV90cmFuc2NvZGVyKSk7CiAKKwlkcm1fV0FSTl9PTihjcnRjLT5iYXNl
LmRldiwgY3RsICYgVFJBTlNfRERJX0hEQ1BfU0lHTkFMTElORyk7CisKIAljdGwgJj0gflRSQU5T
X0RESV9GVU5DX0VOQUJMRTsKIAogCWlmIChJU19HRU5fUkFOR0UoZGV2X3ByaXYsIDgsIDEwKSkK
LS0gClNlYW4gUGF1bCwgU29mdHdhcmUgRW5naW5lZXIsIEdvb2dsZSAvIENocm9taXVtIE9TCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
