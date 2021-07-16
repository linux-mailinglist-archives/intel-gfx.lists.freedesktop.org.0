Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC3E3CB891
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 16:14:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B5E36E9A9;
	Fri, 16 Jul 2021 14:14:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com
 [IPv6:2607:f8b0:4864:20::22a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F34C96E9A5
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jul 2021 14:14:34 +0000 (UTC)
Received: by mail-oi1-x22a.google.com with SMTP id p67so11054434oig.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jul 2021 07:14:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uJYyLhrHNY/60pPyCUIHdFgQDTsIyjquSlitH2b2X4g=;
 b=uNPPgiWdkNhmlqSoA5QOCBUeOBKa4ZDMKBKWhgypcjpHFfv+09hvaraLDgJM3HWnqY
 +5cv7pX5nyo+FVW3khtilH1KHvTwurhmE/dsufBbgBO9OdCptT94NT0J/vsa+XtPaO8D
 6lntwsRCK9zYuAG68uTLxsbIkNPOh8i4lyPFRdOac6n0+MpsfXWRLuQHnq9qQNDHrAzH
 qNJgAekMMadKmnOv1xzJpm+0r5oaM0x9MpPXIg4NUv9In6VQvxCpN8MU4SpMJh5/Jse8
 1vMwUH4BVYaocTNbBPl4C7d5M3uVNn2/USRY6Z9N7P5oHu8fLlnHTaWzCe73KAXsLuJq
 CxNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uJYyLhrHNY/60pPyCUIHdFgQDTsIyjquSlitH2b2X4g=;
 b=CRv3DTMNbHjUfXG8u1/rxYI3llr5sHpdh2PC7SC2HPlI/MEQtKycyBR4WK1ukTlEX7
 uzh0yYi7XvE4Y9mMW0z8p9CtHNKI1lP+mopuiG0F+vxjvNHgPGU4zfowdQO17fgSo/35
 Ekf2J8CB0aAAWnfKrWEb6xnTno2/xlx+ultznye8payc+vHOrL9Qahcjlv3IJ1yrTHSY
 0sdkr1kQW92JDKJ5x3xBd6DPUJVisMpN9iH/sg5idPETEBkLnDwmLgpn/iTC8TIuT55N
 Nv9FRLwZzGsT/t1+UM47lNsEQzK9ELy1lrfRJJSmWhNpQuG1ZptUuczrD1nF3pygKuyU
 EydA==
X-Gm-Message-State: AOAM533G2uuSxMp8sXsLT69mXR7PhTAMUYcF6sz0hrqMFR74vf7W2l5j
 w4PaVthkJASFcxzNNKdzr1dYI/PWJT1F3g==
X-Google-Smtp-Source: ABdhPJyRS0w8dBnqCNmhjnA6w35YTKQcxxb52q7DNgU05voYfF/TrkHZ66VRvdn32tVG88Ebro4ARQ==
X-Received: by 2002:aca:6203:: with SMTP id w3mr8414305oib.64.1626444874098;
 Fri, 16 Jul 2021 07:14:34 -0700 (PDT)
Received: from omlet.lan ([68.203.99.148])
 by smtp.gmail.com with ESMTPSA id v42sm1852266ott.70.2021.07.16.07.14.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Jul 2021 07:14:33 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 16 Jul 2021 09:14:24 -0500
Message-Id: <20210716141426.1904528-6-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210716141426.1904528-1-jason@jlekstrand.net>
References: <20210716141426.1904528-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/7] drm/i915/gem/ttm: Respect the objection
 region in placement_from_obj
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hlbmV2ZXIgd2UgaGFkIGEgdXNlciBvYmplY3QgKG5fcGxhY2VtZW50cyA+IDApLCB3ZSB3ZXJl
IGlnbm9yaW5nCm9iai0+bW0ucmVnaW9uIGFuZCBhbHdheXMgcHV0dGluZyBvYmotPnBsYWNlbWVu
dHNbMF0gYXMgdGhlIHJlcXVlc3RlZApyZWdpb24uICBGb3IgTE1FTStTTUVNIG9iamVjdHMsIHRo
aXMgd2FzIGNhdXNpbmcgdGhlbSB0byBnZXQgc2hvdmVkIGludG8KTE1FTSBvbiBldmVyeSBpOTE1
X3R0bV9nZXRfcGFnZXMoKSBldmVuIHdoZW4gU01FTSB3YXMgcmVxdWVzdGVkIGJ5LCBzYXksCmk5
MTVfZ2VtX29iamVjdF9taWdyYXRlKCkuCgpTaWduZWQtb2ZmLWJ5OiBKYXNvbiBFa3N0cmFuZCA8
amFzb25Aamxla3N0cmFuZC5uZXQ+CkNjOiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxz
dHJvbUBsaW51eC5pbnRlbC5jb20+CkNjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRl
bC5jb20+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYyB8IDMg
Ky0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jCmluZGV4IDY1ODk0MTEzOTZkM2YuLjhl
ZWI3M2M3YzQwMWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV90dG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMKQEAg
LTE1MCw4ICsxNTAsNyBAQCBpOTE1X3R0bV9wbGFjZW1lbnRfZnJvbV9vYmooY29uc3Qgc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAl1bnNpZ25lZCBpbnQgaTsKIAogCXBsYWNlbWVu
dC0+bnVtX3BsYWNlbWVudCA9IDE7Ci0JaTkxNV90dG1fcGxhY2VfZnJvbV9yZWdpb24obnVtX2Fs
bG93ZWQgPyBvYmotPm1tLnBsYWNlbWVudHNbMF0gOgotCQkJCSAgIG9iai0+bW0ucmVnaW9uLCBy
ZXF1ZXN0ZWQsIGZsYWdzKTsKKwlpOTE1X3R0bV9wbGFjZV9mcm9tX3JlZ2lvbihvYmotPm1tLnJl
Z2lvbiwgcmVxdWVzdGVkLCBmbGFncyk7CiAKIAkvKiBDYWNoZSB0aGlzIG9uIG9iamVjdD8gKi8K
IAlwbGFjZW1lbnQtPm51bV9idXN5X3BsYWNlbWVudCA9IG51bV9hbGxvd2VkOwotLSAKMi4zMS4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
