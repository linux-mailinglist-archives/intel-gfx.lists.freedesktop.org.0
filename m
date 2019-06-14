Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 536D846A71
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:38:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D05BB8954A;
	Fri, 14 Jun 2019 20:36:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2A08894B7
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:36:45 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id d4so5185675edr.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:36:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H/jSvXeNPdVe/RGvjR45d/TmnGLJ0w0V6fbPc6OnrNQ=;
 b=Ufee2YWULY/Dzrl6pAmd+/kQYQi0C+FGIiq7UzzEdXbho2dwfaSqRNbs9A572o/ZlN
 SApPp74+JgNhq4A1yjPI5+XQT9ys32gZEeY74WNquDgyuYBIO9PUla/cKpFNCPqO0y+H
 7RPP6gES6ulCfkMZtpea3b+pAFvONQK39uZHd2dkFublARotyiOu4MMABe5sSUN3OGLz
 frgkRKvU4UckAQKD8u6oNgwFSICQ19NaqrqxYJMgVWCyPFVG/cGzlGbtdnc/evWy1XV4
 +ka3KbWp2GURqXBItYMdCgspKGhQL3Ac6KsSETTsYc9T0Y94d63zYT2WvTHbEbykf72w
 IATw==
X-Gm-Message-State: APjAAAXrIBI03b0hRU4OankR3z8S4GcKafra934K8/idRwINtdyezTUU
 p6xbIMxCUR+VRwAPClXRVo801w==
X-Google-Smtp-Source: APXvYqxXcEjEsf5PL/eYQ8qT2eKEKjLTNP3sB0Pc0ALolZp8KC6XEyq8xYSaNSLLcw3gUVflYk+w7w==
X-Received: by 2002:a50:c8c3:: with SMTP id k3mr30718637edh.189.1560544604548; 
 Fri, 14 Jun 2019 13:36:44 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:43 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:35:35 +0200
Message-Id: <20190614203615.12639-20-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H/jSvXeNPdVe/RGvjR45d/TmnGLJ0w0V6fbPc6OnrNQ=;
 b=CXxL23WkHoPS8FvxmcYzc83marqI3uVGsFjc3IQ/ZMYiBKkKvOmR2Nl+lPtk6z1ujn
 8tfiJ7fhwbrLDxeAGHwXMMhhYY7GhooqzEjzjluTqoOvazX1bAPFNYtRgXl1Wwf17bS2
 aJeIwhEJOlRANhkIYk1AGF6HQt4T5IbsUM4Ss=
Subject: [Intel-gfx] [PATCH 19/59] drm/mtk: Drop drm_gem_prime_export/import
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, CK Hu <ck.hu@mediatek.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhleSdyZSB0aGUgZGVmYXVsdC4KCkFzaWRlOiBXb3VsZCBiZSByZWFsbHkgbmljZSB0byBzd2l0
Y2ggdGhlIG90aGVycyBvdmVyIHRvCmRybV9nZW1fb2JqZWN0X2Z1bmNzLgoKU2lnbmVkLW9mZi1i
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBDSyBIdSA8Y2su
aHVAbWVkaWF0ZWsuY29tPgpDYzogUGhpbGlwcCBaYWJlbCA8cC56YWJlbEBwZW5ndXRyb25peC5k
ZT4KQ2M6IE1hdHRoaWFzIEJydWdnZXIgPG1hdHRoaWFzLmJnZ0BnbWFpbC5jb20+CkNjOiBsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LW1lZGlhdGVrQGxpc3Rz
LmluZnJhZGVhZC5vcmcKLS0tCiBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9kcnYu
YyB8IDIgLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL21l
ZGlhdGVrL210a19kcm1fZHJ2LmMKaW5kZXggMWY4Yjg5NDNiMGM2Li5kZDhkYWI1NjI1MDAgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2Rydi5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2Rydi5jCkBAIC0zMjksOCArMzI5LDYgQEAg
c3RhdGljIHN0cnVjdCBkcm1fZHJpdmVyIG10a19kcm1fZHJpdmVyID0gewogCiAJLnByaW1lX2hh
bmRsZV90b19mZCA9IGRybV9nZW1fcHJpbWVfaGFuZGxlX3RvX2ZkLAogCS5wcmltZV9mZF90b19o
YW5kbGUgPSBkcm1fZ2VtX3ByaW1lX2ZkX3RvX2hhbmRsZSwKLQkuZ2VtX3ByaW1lX2V4cG9ydCA9
IGRybV9nZW1fcHJpbWVfZXhwb3J0LAotCS5nZW1fcHJpbWVfaW1wb3J0ID0gZHJtX2dlbV9wcmlt
ZV9pbXBvcnQsCiAJLmdlbV9wcmltZV9nZXRfc2dfdGFibGUgPSBtdGtfZ2VtX3ByaW1lX2dldF9z
Z190YWJsZSwKIAkuZ2VtX3ByaW1lX2ltcG9ydF9zZ190YWJsZSA9IG10a19nZW1fcHJpbWVfaW1w
b3J0X3NnX3RhYmxlLAogCS5nZW1fcHJpbWVfbW1hcCA9IG10a19kcm1fZ2VtX21tYXBfYnVmLAot
LSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
