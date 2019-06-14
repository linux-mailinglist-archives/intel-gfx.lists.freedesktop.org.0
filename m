Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E0746AA6
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:38:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE54F89781;
	Fri, 14 Jun 2019 20:37:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21745895C3
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:37:01 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id e3so5195600edr.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:37:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=88ObG0EAmUExoeYUSgHcXg7RZc5Mb9nZYM2H03Sv18I=;
 b=nzgr6GFnJ9+rRjpOpbhnQ47lbNGWjPYTOCc2isexJwoGtrlsXVo+iOg9zYE796Ub6P
 zm8w0mTryre5Tfjpx88RFFWOeMhsu1tkx4a0/cgSihKfBNShW/QkvobwV64XcuPW5Uh0
 qWR4oQpSrySQ6x+jZj+K2wjMk/WJBIsw4XCVAq0Y6yUs8oaVH+ky1O2beJ+tY6+964Pt
 yWCFhW3iLvAebmgKt8+0MKQ75bzEG6ygX6rSTJlnITIItCOh7vshhdA6iVFC85ywvILu
 V/EsU192dhqHyyywEHTxqJlPzqkmaBUeTQPy3rpg//nh53bczyZAPhTm/t5iSXIo2jxc
 ZO6g==
X-Gm-Message-State: APjAAAUnMk6mqvKumuNLgQZEmwl8BxLtgWcrB52KU6Nj++jN/bNxdMbP
 FZOZvNFnruqzVPB6ByQd9RPudg==
X-Google-Smtp-Source: APXvYqx/XSkMnJ4y2svUMGqkCw7Mf24gm80Ed6knrPOGOKM8YDSyJf43LtGppO4OW3E7kQUr6HHrPA==
X-Received: by 2002:a50:94d9:: with SMTP id t25mr68978048eda.32.1560544618612; 
 Fri, 14 Jun 2019 13:36:58 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:58 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:35:48 +0200
Message-Id: <20190614203615.12639-33-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=88ObG0EAmUExoeYUSgHcXg7RZc5Mb9nZYM2H03Sv18I=;
 b=WNbRFOJfW6wfXr61L6pDaSCho6Gz0FLCIVJsENhxhyCPiXZNPs+smDnBgKRfFUDlN0
 +ixn4jXmpZylJ+Xxps295Ere1sO0E+XNhnSWCb7qOqlRcTWls+YxfRoZzmmXoPQdVluQ
 TCA2ICEx/TFLw3A0rFVwYNXIRuDPzzCKidTZI=
Subject: [Intel-gfx] [PATCH 32/59] drm/tve2000: Drop
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhleSdyZSB0aGUgZGVmYXVsdC4KCkFzaWRlOiBXb3VsZCBiZSByZWFsbHkgbmljZSB0byBzd2l0
Y2ggdGhlIG90aGVycyBvdmVyIHRvCmRybV9nZW1fb2JqZWN0X2Z1bmNzLgoKU2lnbmVkLW9mZi1i
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBMaW51cyBXYWxs
ZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3R2ZTIw
MC90dmUyMDBfZHJ2LmMgfCAyIC0tCiAxIGZpbGUgY2hhbmdlZCwgMiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdHZlMjAwL3R2ZTIwMF9kcnYuYyBiL2RyaXZlcnMv
Z3B1L2RybS90dmUyMDAvdHZlMjAwX2Rydi5jCmluZGV4IGExZjYxNGUyMWZjYy4uODMwYTVhZjI1
YWM0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdHZlMjAwL3R2ZTIwMF9kcnYuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vdHZlMjAwL3R2ZTIwMF9kcnYuYwpAQCAtMTUyLDggKzE1Miw2IEBA
IHN0YXRpYyBzdHJ1Y3QgZHJtX2RyaXZlciB0dmUyMDBfZHJtX2RyaXZlciA9IHsKIAogCS5wcmlt
ZV9oYW5kbGVfdG9fZmQgPSBkcm1fZ2VtX3ByaW1lX2hhbmRsZV90b19mZCwKIAkucHJpbWVfZmRf
dG9faGFuZGxlID0gZHJtX2dlbV9wcmltZV9mZF90b19oYW5kbGUsCi0JLmdlbV9wcmltZV9pbXBv
cnQgPSBkcm1fZ2VtX3ByaW1lX2ltcG9ydCwKLQkuZ2VtX3ByaW1lX2V4cG9ydCA9IGRybV9nZW1f
cHJpbWVfZXhwb3J0LAogCS5nZW1fcHJpbWVfZ2V0X3NnX3RhYmxlCT0gZHJtX2dlbV9jbWFfcHJp
bWVfZ2V0X3NnX3RhYmxlLAogCS5nZW1fcHJpbWVfaW1wb3J0X3NnX3RhYmxlID0gZHJtX2dlbV9j
bWFfcHJpbWVfaW1wb3J0X3NnX3RhYmxlLAogCS5nZW1fcHJpbWVfdm1hcCA9IGRybV9nZW1fY21h
X3ByaW1lX3ZtYXAsCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
