Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AEA11641E1
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 11:23:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC8916EBA9;
	Wed, 19 Feb 2020 10:22:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C7516EB6A
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 10:22:28 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id y11so27506157wrt.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 02:22:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lIaP46HNJqsV2xcSO1/Lcgf0ktGtkKF9adts2it9DSM=;
 b=lQFV2ZR16yH4Q+Xk9P1EFMs/dlrjmIRgnHCx9Q6BkvPOvHE9n9JVxsGm8/q/mILnl8
 cZ913ejm/eFFpav58dXEZWcW28O+xQTbzMkjvt/2EDCz2M9sMPxAS0Ec1npGm1xb78dq
 j9VQBtL+UZXzKByez/VEVnr/tJusupalsLuOs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lIaP46HNJqsV2xcSO1/Lcgf0ktGtkKF9adts2it9DSM=;
 b=olkbHPoUvhUBvH7tleKFIZYUq83rLjcFAhyMGwTPLIOkcZ41MfPQkvNUfkRNLd4Qnv
 Fcgv6qBkL8jATf9a6CT9HvTvmc1TD1VZDI5s9NxGQURgILQlOjuxzkFtoXqtGjl//xAd
 82nFFIGM5+XSIo/b3qMqSr/FBvQpknpabf83fIDfIWtEWhCFezDyUI5A8bRe2s6Wzrgl
 cxcwqroCaXsdwIEm8JAWgZsF3sgP8rsp2Uvu/DWy4xuMlCJNe9wBuOq7Gjva+rzQrP2J
 yQ+YBlH28PuRKTf2iOcV8NHx2cDlw3up8xww5AjZVAFAeFB85Se7bVVJAybgPFmhcCeM
 I7WA==
X-Gm-Message-State: APjAAAXIieZtbKsjQuIw1KD8MwsNLKiivrHhRpEhlPkglwDLHQkm5S9p
 Y/34UCK8uvuczp0yJqX3Jsfbnw==
X-Google-Smtp-Source: APXvYqzN5joCkR1iKQ8phrZJL7c16LaWsGd/6eMQJSMXl5TnxwaA+CzLiMPo9UawpgHinn+J2OPcQA==
X-Received: by 2002:adf:c54e:: with SMTP id s14mr33823657wrf.385.1582107747046; 
 Wed, 19 Feb 2020 02:22:27 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s23sm2370339wra.15.2020.02.19.02.22.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 02:22:26 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 19 Feb 2020 11:21:17 +0100
Message-Id: <20200219102122.1607365-48-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 47/52] drm/repaper: Drop explicit
 drm_mode_config_cleanup call
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
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxsb3dzIHVzIHRvIGRyb3AgdGhlIGRybV9kcml2ZXIucmVsZWFzZSBjYWxsYmFjay4KClNpZ25l
ZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogIk5v
cmFsZiBUcsO4bm5lcyIgPG5vcmFsZkB0cm9ubmVzLm9yZz4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
dGlueS9yZXBhcGVyLmMgfCA4IC0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOCBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdGlueS9yZXBhcGVyLmMgYi9kcml2ZXJz
L2dwdS9kcm0vdGlueS9yZXBhcGVyLmMKaW5kZXggNDc0MWZmNjcwZWM5Li4yZjcwZmIxYmUyMDAg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS90aW55L3JlcGFwZXIuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vdGlueS9yZXBhcGVyLmMKQEAgLTkwOSwxMyArOTA5LDYgQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCBkcm1fbW9kZV9jb25maWdfZnVuY3MgcmVwYXBlcl9tb2RlX2NvbmZpZ19mdW5jcyA9
IHsKIAkuYXRvbWljX2NvbW1pdCA9IGRybV9hdG9taWNfaGVscGVyX2NvbW1pdCwKIH07CiAKLXN0
YXRpYyB2b2lkIHJlcGFwZXJfcmVsZWFzZShzdHJ1Y3QgZHJtX2RldmljZSAqZHJtKQotewotCURS
TV9ERUJVR19EUklWRVIoIlxuIik7Ci0KLQlkcm1fbW9kZV9jb25maWdfY2xlYW51cChkcm0pOwot
fQotCiBzdGF0aWMgY29uc3QgdWludDMyX3QgcmVwYXBlcl9mb3JtYXRzW10gPSB7CiAJRFJNX0ZP
Uk1BVF9YUkdCODg4OCwKIH07CkBAIC05NTMsNyArOTQ2LDYgQEAgREVGSU5FX0RSTV9HRU1fQ01B
X0ZPUFMocmVwYXBlcl9mb3BzKTsKIHN0YXRpYyBzdHJ1Y3QgZHJtX2RyaXZlciByZXBhcGVyX2Ry
aXZlciA9IHsKIAkuZHJpdmVyX2ZlYXR1cmVzCT0gRFJJVkVSX0dFTSB8IERSSVZFUl9NT0RFU0VU
IHwgRFJJVkVSX0FUT01JQywKIAkuZm9wcwkJCT0gJnJlcGFwZXJfZm9wcywKLQkucmVsZWFzZQkJ
PSByZXBhcGVyX3JlbGVhc2UsCiAJRFJNX0dFTV9DTUFfVk1BUF9EUklWRVJfT1BTLAogCS5uYW1l
CQkJPSAicmVwYXBlciIsCiAJLmRlc2MJCQk9ICJQZXJ2YXNpdmUgRGlzcGxheXMgUmVQYXBlciBl
LWluayBwYW5lbHMiLAotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
