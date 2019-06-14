Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C7046A63
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:37:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14F5E894E3;
	Fri, 14 Jun 2019 20:36:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80907894E3
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:36:47 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id s49so5287296edb.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:36:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CdjzPk9kMBtnORmrw6SV223z66CbONc15QxjD1QLasw=;
 b=g8TW0Q66pjnDoBFBXpOfMUyMGNzgsQ40CQLVxBAdZsG1U+IvEB+q1NNJ0T0J/zuuIW
 rbtTbCY7vFPU8DOrPhPoIO2TLDm0eVUu8qxg8GtBmnLEoR7ejmkrAD5lLKRWy7CbOpH1
 rMsukPpNEqkvzgIT0OzYuszsQ8apIy8p0goWHeMHfHYKAILQDmP2/G//xualFGahj+ds
 yE69vcEYTm3ObOA3ZvD+BrRiUkwP+9USKloIU2thvmq3f6VVwh8AsVh+s/CP+6Nhjm86
 e1lZyfP+mfNEuGesW+0o+6eKP9jfpi00J2CoFasCPFRXAhlQclr8lvo/8GOiVDuRxx+v
 3pdA==
X-Gm-Message-State: APjAAAVz05dkWSRxs9sEEBRoOYwM3CuSehB2fU6Qb2ZgXvqN5bMnWg7+
 ZiQkuR8QG3dWGwiIfdMw/BqsqQ==
X-Google-Smtp-Source: APXvYqxZ+2+MykTDVtttUpRVv7sYtN3XxhiGqxwDeeUAjjeeMfXPstSFGQXgpyvqmc1NAhQSq5h4Lw==
X-Received: by 2002:a50:97ac:: with SMTP id e41mr46669754edb.27.1560544605717; 
 Fri, 14 Jun 2019 13:36:45 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:45 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:35:36 +0200
Message-Id: <20190614203615.12639-21-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CdjzPk9kMBtnORmrw6SV223z66CbONc15QxjD1QLasw=;
 b=E34K7NE2WPXVAuiOZH4PhkUzvtjNfPrvlndMNNRMM3NAm0JvhO4XEWzd3/HdePWWiA
 wyNHPJrAuBSUdHOIP7r4e7IBwsC9dey3CP/qAjCz89uiTFfoo8dqLpobYgMguP598PLV
 eOyiZFYNmXBrIdu+UMt9hhdrdWf7lgLugRTes=
Subject: [Intel-gfx] [PATCH 20/59] drm/meson: Drop
 drm_gem_prime_export/import
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Kevin Hilman <khilman@baylibre.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhleSdyZSB0aGUgZGVmYXVsdC4KCkFzaWRlOiBXb3VsZCBiZSByZWFsbHkgbmljZSB0byBzd2l0
Y2ggdGhlIG90aGVycyBvdmVyIHRvCmRybV9nZW1fb2JqZWN0X2Z1bmNzLgoKU2lnbmVkLW9mZi1i
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBOZWlsIEFybXN0
cm9uZyA8bmFybXN0cm9uZ0BiYXlsaWJyZS5jb20+CkNjOiBLZXZpbiBIaWxtYW4gPGtoaWxtYW5A
YmF5bGlicmUuY29tPgpDYzogbGludXgtYW1sb2dpY0BsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBs
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKLS0tCiBkcml2ZXJzL2dwdS9kcm0v
bWVzb24vbWVzb25fZHJ2LmMgfCAyIC0tCiAxIGZpbGUgY2hhbmdlZCwgMiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbWVzb24vbWVzb25fZHJ2LmMgYi9kcml2ZXJz
L2dwdS9kcm0vbWVzb24vbWVzb25fZHJ2LmMKaW5kZXggMTQwMzYzZjkzNTc1Li4zN2RjYTgzZDZl
YjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tZXNvbi9tZXNvbl9kcnYuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vbWVzb24vbWVzb25fZHJ2LmMKQEAgLTEwMSw4ICsxMDEsNiBAQCBzdGF0
aWMgc3RydWN0IGRybV9kcml2ZXIgbWVzb25fZHJpdmVyID0gewogCS8qIFBSSU1FIE9wcyAqLwog
CS5wcmltZV9oYW5kbGVfdG9fZmQJPSBkcm1fZ2VtX3ByaW1lX2hhbmRsZV90b19mZCwKIAkucHJp
bWVfZmRfdG9faGFuZGxlCT0gZHJtX2dlbV9wcmltZV9mZF90b19oYW5kbGUsCi0JLmdlbV9wcmlt
ZV9pbXBvcnQJPSBkcm1fZ2VtX3ByaW1lX2ltcG9ydCwKLQkuZ2VtX3ByaW1lX2V4cG9ydAk9IGRy
bV9nZW1fcHJpbWVfZXhwb3J0LAogCS5nZW1fcHJpbWVfZ2V0X3NnX3RhYmxlCT0gZHJtX2dlbV9j
bWFfcHJpbWVfZ2V0X3NnX3RhYmxlLAogCS5nZW1fcHJpbWVfaW1wb3J0X3NnX3RhYmxlID0gZHJt
X2dlbV9jbWFfcHJpbWVfaW1wb3J0X3NnX3RhYmxlLAogCS5nZW1fcHJpbWVfdm1hcAkJPSBkcm1f
Z2VtX2NtYV9wcmltZV92bWFwLAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
