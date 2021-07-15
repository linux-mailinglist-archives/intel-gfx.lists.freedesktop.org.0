Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FB83CAF3C
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 00:39:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7D7189362;
	Thu, 15 Jul 2021 22:39:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com
 [IPv6:2607:f8b0:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7474B89362
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 22:39:08 +0000 (UTC)
Received: by mail-pf1-x431.google.com with SMTP id b12so7015401pfv.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 15:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=G1Lpom/liCFd7FkPda8eG+Ob59hWafgxm9MVZyipJKo=;
 b=0hy8UNQn6b8g3IZrpVAd8Q9Obk69uJrHeqzA3FUwOB0ty1FC0JRHimil0TRxjH1lK8
 D7txpJzPQx9dM/dSQCBqF12E6+OtyH2mBquV+lmrjoW7lTeg19saD47m3Nfaq+gI5ka7
 nY/Y7DrZCBjvxD6BaJft5F76PAD90IO2PL+mpA8sDAZvWfswD1WXfGdj0VlFZmPJBC5X
 Cvw0IUxZoD4F0DKF6dmVEKbwid3HdOeJKI6MaSx1BWe9gHdI2FFg9GjZVgJoKj3Zl1Li
 eNYOIJ9HKiLgf+VNcIK+mcmJLhKVlBR2DaGHxj3mFivXSy3tvv73kApxawJ7kch2iMis
 4ndg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=G1Lpom/liCFd7FkPda8eG+Ob59hWafgxm9MVZyipJKo=;
 b=AeIEsJa4ggFiR2mCuzAMgcPZD89dm+wtQ9Cyt+boS4RKIvv6qv5ZOJXuslKbGOHEB1
 ytdOOQfC5Q0dHO1LAFc1IjCOHTHzbHI8bS3NKd+HrjHWpTRmei9BS9X6xl/hg09Y4y/r
 BnFStVV3MfDEtaC0lu3gsw9rBWa1Xr0pXjVe76ZiNqajUbuIXaCIkkh3MdWFcHQvR5fn
 epLLhl0/CEOSQ2iVJRFdmSnroAwIk5jEZCw/ebOuwwMwUantnc/JXpy2gclTXfD4a536
 kZpL8oA3rGUQGKvVsIGiTPU9tkviF+b2MKKlWP5xguW5nuuYmJma0NdZJlF/cdkEJxJg
 0A+A==
X-Gm-Message-State: AOAM533xj82UH7UpuT8o/x6RbRCeR+oqrNk+S1azcWhl8RUfDyBh/gox
 msWMUrhAxeeu25EjdP8rxT+KT0bawB+qfw==
X-Google-Smtp-Source: ABdhPJzDILL7sndS34R3iOTTaSbyM8hR+PBuVhZinzcqPzSNlp9xv8k+9pOlFG5FKA+2DCiEfRiexQ==
X-Received: by 2002:a05:6a00:84d:b029:329:a067:b1bf with SMTP id
 q13-20020a056a00084db0290329a067b1bfmr6883158pfk.47.1626388747488; 
 Thu, 15 Jul 2021 15:39:07 -0700 (PDT)
Received: from omlet.com ([134.134.137.87])
 by smtp.gmail.com with ESMTPSA id ft7sm9959459pjb.32.2021.07.15.15.39.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Jul 2021 15:39:06 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 15 Jul 2021 17:38:53 -0500
Message-Id: <20210715223900.1840576-1-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/7] drm/i915: Migrate memory to SMEM when
 imported cross-device
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCBzZXJpZXMgZml4ZXMgYW4gaXNzdWUgd2l0aCBkaXNjcmV0ZSBncmFwaGljcyBv
biBJbnRlbCB3aGVyZSB3ZQphbGxvd2VkIGRtYS1idWYgaW1wb3J0IHdoaWxlIGxlYXZpbmcgdGhl
IG9iamVjdCBpbiBsb2NhbCBtZW1vcnkuICBUaGlzCmJyZWFrcyBkb3duIHByZXR0eSBiYWRseSBp
ZiB0aGUgaW1wb3J0IGhhcHBlbmVkIG9uIGEgZGlmZmVyZW50IHBoeXNpY2FsCmRldmljZS4KCkph
c29uIEVrc3RyYW5kICg1KToKICBkcm0vaTkxNS9nZW06IENoZWNrIG9iamVjdF9jYW5fbWlncmF0
ZSBmcm9tIG9iamVjdF9taWdyYXRlCiAgZHJtL2k5MTUvZ2VtOiBSZWZhY3RvciBwbGFjZW1lbnQg
c2V0dXAgZm9yIGk5MTVfZ2VtX29iamVjdF9jcmVhdGUqCiAgZHJtL2k5MTUvZ2VtOiBVbmlmeSB1
c2VyIG9iamVjdCBjcmVhdGlvbgogIGRybS9pOTE1L2dlbS90dG06IFBsYWNlIG5ldyBCT3MgaW4g
dGhlIHJlcXVlc3RlZCByZWdpb24KICBkcm0vaTkxNS9nZW0vdHRtOiBSZXNwZWN0IHRoZSBvYmpl
Y3Rpb24gcmVnaW9uIGluIHBsYWNlbWVudF9mcm9tX29iagoKVGhvbWFzIEhlbGxzdHLDtm0gKDIp
OgogIGRybS9pOTE1L2dlbTogQ29ycmVjdCB0aGUgbG9ja2luZyBhbmQgcGluIHBhdHRlcm4gZm9y
IGRtYS1idWYgKHY2KQogIGRybS9pOTE1L2dlbTogTWlncmF0ZSB0byBzeXN0ZW0gYXQgZG1hLWJ1
ZiBhdHRhY2ggdGltZSAodjYpCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2Ny
ZWF0ZS5jICAgIHwgMTU5ICsrKysrKysrLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2RtYWJ1Zi5jICAgIHwgIDY0ICsrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX29iamVjdC5jICAgIHwgIDEzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fb2JqZWN0LmggICAgfCAgIDQgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX3R0bS5jICAgICAgIHwgIDExICstCiAuLi4vZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0
cy9pOTE1X2dlbV9kbWFidWYuYyAgfCAxODQgKysrKysrKysrKysrKysrKystCiAuLi4vZHJtL2k5
MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9taWdyYXRlLmMgfCAgMTUgLS0KIDcgZmlsZXMgY2hh
bmdlZCwgMzI0IGluc2VydGlvbnMoKyksIDEyNiBkZWxldGlvbnMoLSkKCi0tIAoyLjMxLjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
