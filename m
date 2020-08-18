Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D2E248A10
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Aug 2020 17:39:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F171689EFF;
	Tue, 18 Aug 2020 15:39:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com
 [IPv6:2607:f8b0:4864:20::741])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7768589DC9
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 15:39:41 +0000 (UTC)
Received: by mail-qk1-x741.google.com with SMTP id p4so18670541qkf.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 08:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QrdXawKN1vYgVXuBpsukVb/2j1buI9qyySYCMqiyAQg=;
 b=c4rseK1Upiatfpy7ZShUkBUsCo5QG6r1mgI1AVPm7yhuDncZGPFVZjyRmKFj1H3j1u
 QB0w1ILXTgnlzN+C8+ODERn77L3xGlv1F0GSv253f8hHUdQTgOob4q/OYD7b0GNK0lXS
 +BnDDDrDMgYhbk1qoSp/MPUvrwaD8PGI1DDdT58czCHatGb5/FI1G3J2H0jZaBzqsER2
 tWxNIPDp6DNGz7nbYkDABlKwPw3V4spoCFXoqGabev782nXqW8jZTUQxl2HZGYMY+pVU
 7fEzz9weRouR0FGugIBHHJ1M+v4m8p9PKALX/dhnwSHIV6AbiiH389kEQ7CibXavcoty
 Af4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QrdXawKN1vYgVXuBpsukVb/2j1buI9qyySYCMqiyAQg=;
 b=L3ui57JW+pav5r9Ix2/AcP8rLesvCbV/P1XT0QYpwNdYS5fNRL5T7+KjVBrVm3X6k1
 89BVffqTTLS0OuRr+0thE4VHCsAPKnq+eLhg2ZSeNC4QhPl+XbwFL/ch5E5Gafh2afAV
 dvdb47gHVsRQQ7SnSeqDb9wqMRY7yHDhTw2Rhe1JaH+7Jk6gxN6h3bKWreAAcoDpfy/N
 Mj7wdzMHDxfrfUG0yq+ysvv/zeYAm3SWMI51IeoCCmx4vEFRpW7Kd9+jSrFaZ7UkaOz2
 rMCfyVjm5UkjrMD/HTL5bCsMlouY7r5F1Wq0EYCkeqr9nBWYzhYEtMNw63+0VW4r3uuX
 52Rg==
X-Gm-Message-State: AOAM532TyuPsGVq84+zwXjWq74IsTcA4+yymTN3gjdOT49pAHgg/OkTo
 CIZGl1aJNd38a9jvukq8SRF0Pg==
X-Google-Smtp-Source: ABdhPJwNLUgJz8TLZz3cTdFa3b5ebMsGeQL/E06BIm+YMOJH9a8E/rfrk8PpihSy5zZHYkFlA/eclg==
X-Received: by 2002:a37:a28d:: with SMTP id
 l135mr18035520qke.247.1597765180654; 
 Tue, 18 Aug 2020 08:39:40 -0700 (PDT)
Received: from localhost (mobile-166-170-57-144.mycingular.net.
 [166.170.57.144])
 by smtp.gmail.com with ESMTPSA id o21sm20663443qkk.94.2020.08.18.08.39.39
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 18 Aug 2020 08:39:40 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 juston.li@intel.com, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 anshuman.gupta@intel.com
Date: Tue, 18 Aug 2020 11:38:51 -0400
Message-Id: <20200818153910.27894-4-sean@poorly.run>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200818153910.27894-1-sean@poorly.run>
References: <20200818153910.27894-1-sean@poorly.run>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 03/17] drm/i915: WARN if HDCP signalling is
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
Cc: David Airlie <airlied@linux.ie>, daniel.vetter@ffwll.ch,
 Sean Paul <seanpaul@chromium.org>
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
Mzk5MTktNC1zZWFuQHBvb3JseS5ydW4gI3Y2Ckxpbms6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVk
ZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDIwMDYyMzE1NTkwNy4yMjk2MS00LXNlYW5AcG9vcmx5
LnJ1biAjdjcKCkNoYW5nZXMgaW4gdjI6Ci1BZGRlZCB0byB0aGUgc2V0IGluIGxpZXUgb2YganVz
dCBjbGVhcmluZyB0aGUgYml0CkNoYW5nZXMgaW4gdjM6Ci1Ob25lCkNoYW5nZXMgaW4gdjQ6Ci1O
b25lCkNoYW5nZXMgaW4gdjU6Ci1DaGFuZ2UgV0FSTl9PTiB0byBkcm1fV0FSTl9PTgpDaGFuZ2Vz
IGluIHY2OgotTm9uZQpDaGFuZ2VzIGluIHY3OgotUmViYXNlZCwgdmFyaWFibGUgbmFtZSBjaGFu
Z2VkIGZyb20gJ2N0bCcgdG8gJ3ZhbCcKQ2hhbmdlcyBpbiB2ODoKLU5vbmUKLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgMiArKwogMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5j
CmluZGV4IGRlNWIyMTY1NjFkOC4uYjAyY2QzNjY0N2Q2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTE3OTEsNiArMTc5MSw4IEBAIHZvaWQgaW50ZWxfZGRp
X2Rpc2FibGVfdHJhbnNjb2Rlcl9mdW5jKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlCiAKIAljdGwgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBUUkFOU19ERElfRlVO
Q19DVEwoY3B1X3RyYW5zY29kZXIpKTsKIAorCWRybV9XQVJOX09OKGNydGMtPmJhc2UuZGV2LCBj
dGwgJiBUUkFOU19ERElfSERDUF9TSUdOQUxMSU5HKTsKKwogCWN0bCAmPSB+VFJBTlNfRERJX0ZV
TkNfRU5BQkxFOwogCiAJaWYgKElTX0dFTl9SQU5HRShkZXZfcHJpdiwgOCwgMTApKQotLSAKU2Vh
biBQYXVsLCBTb2Z0d2FyZSBFbmdpbmVlciwgR29vZ2xlIC8gQ2hyb21pdW0gT1MKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
