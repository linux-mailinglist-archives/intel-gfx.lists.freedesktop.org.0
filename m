Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F773A957F
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 11:04:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F1526E542;
	Wed, 16 Jun 2021 09:04:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 039376E542
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jun 2021 09:04:05 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id nb6so2604797ejc.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jun 2021 02:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JYuIIbXfwqTKRHCtxi7am5Rqgi3VUZZ18KA/nS6CXaI=;
 b=fU2MgphJmbJAsONz/6XivWvOf9c+EyQJDZnDjzCwdMvAaKL0P9EEpmC00iL6MRs9SI
 w43VjdICer3hRmvqGMsz8syl87ovUcojanp0TCMo3gHDA8cPtNjnrCnHF5y7PAutPMCG
 9RpXIkVf8gH5wFuRbmaGsd4JgYtaipMTcKw1Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JYuIIbXfwqTKRHCtxi7am5Rqgi3VUZZ18KA/nS6CXaI=;
 b=G6IkQnz1fvnksByqAp9H8izRgkzZQ5hShCXnaWLBg+YDfy6PvvMB7N+n2G33HhUJij
 eHfDRFtP8Jjas85mIxx7DqEAphFcA6gSwUFosIY+G4v8gbYpQiSjuf1tDVEYLldgl0P/
 CUKfMI8IWR5v1fttGKDwAoK4uxFwc8ykQ08+VgoHrF+mTVnrBvh8215QAsICJwFp/CVV
 ILY1A7n3rSfvGpoCQjMZ3M1wNVUbOKru4BYkTPeVyvsROnmXD2YQiTp2xM/PbpM4+a3k
 8HW5D6Z7gkt8iwC7iV+SXYW2r9NvW0TmvKcE66gAVBiEYOYkRR8WH/8BS0FRWlgybmY4
 1mpg==
X-Gm-Message-State: AOAM532rUR56V2ZEzZyD9/cYm7w9OGkT2A6R6jo6Pmw24TgzJJSv+w/q
 MvdWQjOeeiYf6m+aqganemWigg==
X-Google-Smtp-Source: ABdhPJwgREutuAgBMvdgGoeqVFfJe0z2T2m/qt5GnFZES4zDiRlbpRv/y8tWGq3ZeCJXZYwfZiYAJw==
X-Received: by 2002:a17:906:3884:: with SMTP id
 q4mr4354554ejd.66.1623834243743; 
 Wed, 16 Jun 2021 02:04:03 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q16sm1246710edt.26.2021.06.16.02.04.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Jun 2021 02:04:03 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 16 Jun 2021 11:03:50 +0200
Message-Id: <20210616090350.828696-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0.rc2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Remove duplicated call to
 ops->pread
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QmV0d2VlbgoKY29tbWl0IGFlMzBhZjg0ZWRiNWI3Y2M5NTQ4NTkyMmU0M2FmZDkwOWE4OTJlMWIK
QXV0aG9yOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwu
Y29tPgpEYXRlOiAgIFR1ZSBNYXIgMjMgMTY6NTA6MDAgMjAyMSArMDEwMAoKICAgIGRybS9pOTE1
OiBEaXNhYmxlIHVzZXJwdHIgcHJlYWQvcHdyaXRlIHN1cHBvcnQuCgphbmQKCmNvbW1pdCAwMDQ5
YjY4ODQ1OWI4NDZmODE5YjZlNTFjMjRjZDA3ODFmY2ZkZTQxCkF1dGhvcjogTWF0dGhldyBBdWxk
IDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpEYXRlOiAgIFRodSBOb3YgNSAxNTo0OTozMyAyMDIw
ICswMDAwCgogICAgZHJtL2k5MTUvZ2VtOiBBbGxvdyBiYWNrZW5kcyB0byBvdmVycmlkZSBwcmVh
ZCBpbXBsZW1lbnRhdGlvbgoKdGhpcyBhY2NpZGVudGFsbHkgbGFuZGVkIHR3aWNlLgoKQ2M6IE1h
dHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbQpDYzogVGhvbWFzIEhlbGxzdHLDtm0g
PHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgpDYzogSmFzb24gRWtzdHJhbmQgPGph
c29uQGpsZWtzdHJhbmQubmV0PgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZnds
bC5jaD4KU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyB8IDYgLS0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwppbmRleCA2
YTBhM2YwZTM2ZTEuLjA3YWE4MDc3M2EwMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCkBAIC00
NjksMTIgKzQ2OSw2IEBAIGk5MTVfZ2VtX3ByZWFkX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYsIHZvaWQgKmRhdGEsCiAJaWYgKHJldCAhPSAtRU5PREVWKQogCQlnb3RvIG91dDsKIAotCXJl
dCA9IC1FTk9ERVY7Ci0JaWYgKG9iai0+b3BzLT5wcmVhZCkKLQkJcmV0ID0gb2JqLT5vcHMtPnBy
ZWFkKG9iaiwgYXJncyk7Ci0JaWYgKHJldCAhPSAtRU5PREVWKQotCQlnb3RvIG91dDsKLQogCXJl
dCA9IGk5MTVfZ2VtX29iamVjdF93YWl0KG9iaiwKIAkJCQkgICBJOTE1X1dBSVRfSU5URVJSVVBU
SUJMRSwKIAkJCQkgICBNQVhfU0NIRURVTEVfVElNRU9VVCk7Ci0tIAoyLjMyLjAucmMyCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
