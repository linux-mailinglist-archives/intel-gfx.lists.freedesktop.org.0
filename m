Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89AB346AA3
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:38:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E07E68972D;
	Fri, 14 Jun 2019 20:37:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81425895C3
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:37:08 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id p26so5270099edr.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:37:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MeVtpsNXmvtyEIHkMmObs4X1kKSuhFRrIvb+lraGWMA=;
 b=EU1UNL18U4JVPkec7XbCmlu+Q596eYuICerqlo0Y9tMVuhxCOly2ZKQazaN9hxhMx8
 4a2EBTBfNlXTiHybzyZCyPXprhl3jMhriJIMJ8DNljnSznrlj+wrJY8C8KRz2kLTAZrl
 gxFcXY02TsPLJFp6bQg/LsovGoVtB9itJlwF7l2vL5Or95CB64NFtoB/ENJ+rCxLUw0v
 ATdWyHvcRfLJhln3DmrZsMiQ8Rca0br1qZKwF9hRZ/5c5t16e9i1jhn/ekDVIAz6q5w/
 U+eJQ8So5V/JTVUxtxd06DyjhKf6bJvQ23M7RwQeqKuYiy4d/Zwf6FNAz2NVDAaok+LQ
 PIVA==
X-Gm-Message-State: APjAAAXXWMK502UQbDpmZ+TQZSezW+H2XlAxdRGnzXnosdkqBBlT9I+D
 odSanxGHi2Kmrw+0n2Tbt2vV8Q==
X-Google-Smtp-Source: APXvYqwmxyMhIbR9TtQtGEc0XTmuhK6jYdK7sKovMyNUDFtUubxuWkX0RPMLOWDeXLVwOrSmJ91mSA==
X-Received: by 2002:a50:f486:: with SMTP id s6mr69637737edm.186.1560544626875; 
 Fri, 14 Jun 2019 13:37:06 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.37.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:37:06 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:35:55 +0200
Message-Id: <20190614203615.12639-40-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MeVtpsNXmvtyEIHkMmObs4X1kKSuhFRrIvb+lraGWMA=;
 b=YfRgHU9FH2khjeHMBdTEdje6LF6cVzCi/nu/9/HwYRRTvKpkQkBTl+dqgluJHyPhad
 9qQez2z/axGhPZL62HgFZgnVp1WZ0DsXCbhTEB9o+ftz939FW5FzYEWTnCWTVpOQggVH
 M2sr0/HNHgVTUfRSnD+jmR2BPhpzBgDoomCiQ=
Subject: [Intel-gfx] [PATCH 39/59] drm/zte: Drop drm_gem_prime_export/import
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
 Shawn Guo <shawnguo@kernel.org>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhleSdyZSB0aGUgZGVmYXVsdC4KCkFzaWRlOiBXb3VsZCBiZSByZWFsbHkgbmljZSB0byBzd2l0
Y2ggdGhlIG90aGVycyBvdmVyIHRvCmRybV9nZW1fb2JqZWN0X2Z1bmNzLgoKU2lnbmVkLW9mZi1i
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBTaGF3biBHdW8g
PHNoYXduZ3VvQGtlcm5lbC5vcmc+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3p0ZS96eF9kcm1fZHJ2
LmMgfCAyIC0tCiAxIGZpbGUgY2hhbmdlZCwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0venRlL3p4X2RybV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS96dGUvenhf
ZHJtX2Rydi5jCmluZGV4IDA2MGFkNTI2NmJjNy4uZWYwMTljYWQ3ZTgxIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0venRlL3p4X2RybV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0venRl
L3p4X2RybV9kcnYuYwpAQCAtNDQsOCArNDQsNiBAQCBzdGF0aWMgc3RydWN0IGRybV9kcml2ZXIg
enhfZHJtX2RyaXZlciA9IHsKIAkuZHVtYl9jcmVhdGUgPSBkcm1fZ2VtX2NtYV9kdW1iX2NyZWF0
ZSwKIAkucHJpbWVfaGFuZGxlX3RvX2ZkID0gZHJtX2dlbV9wcmltZV9oYW5kbGVfdG9fZmQsCiAJ
LnByaW1lX2ZkX3RvX2hhbmRsZSA9IGRybV9nZW1fcHJpbWVfZmRfdG9faGFuZGxlLAotCS5nZW1f
cHJpbWVfZXhwb3J0ID0gZHJtX2dlbV9wcmltZV9leHBvcnQsCi0JLmdlbV9wcmltZV9pbXBvcnQg
PSBkcm1fZ2VtX3ByaW1lX2ltcG9ydCwKIAkuZ2VtX3ByaW1lX2dldF9zZ190YWJsZSA9IGRybV9n
ZW1fY21hX3ByaW1lX2dldF9zZ190YWJsZSwKIAkuZ2VtX3ByaW1lX2ltcG9ydF9zZ190YWJsZSA9
IGRybV9nZW1fY21hX3ByaW1lX2ltcG9ydF9zZ190YWJsZSwKIAkuZ2VtX3ByaW1lX3ZtYXAgPSBk
cm1fZ2VtX2NtYV9wcmltZV92bWFwLAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
