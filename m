Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 898C246A57
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:37:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC47D893EB;
	Fri, 14 Jun 2019 20:36:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0FA28945B
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:36:38 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id s49so5286814edb.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:36:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iy8MiNkKxUaqCMionfeIlHgmoHTOrv+NMXOrlMf2gLE=;
 b=OoVFsT25pL+uwBLYPEAvVPUNefalYEPCc5tfJdBTuHX5bqodBcjHSXOERbwRKDWsl8
 uAO09bMeuEgrnqwE2o71x0mucPlJe2V/FtjTiJRtsAFFSfG1dnfMmlXwpGPGOqWlM66D
 7Hxb5WWJpH/Yx4mTs1TGrrqhkeGAkX+dNUTMiqCkJN89JFiNJUCiJqOD9YgEjX30XwRW
 F/teyWwEVgKmKkn2YzgDU8Eoq6oKb6kHO26arFExoVS6Ffq1mFKU690YchCTi4z608BF
 ZFljTDt32VDDUaqfzlS/XYEe+gLml4bMenbDkUDnTSQ/uW0vgAHmtC0uuKctE5V5j2HI
 qe+w==
X-Gm-Message-State: APjAAAV4ajrm3vcfvLTJftMFasFZRRpdSgfwQFNr0geHn+colez1Nqvj
 5zIFrVbobAQ3fFunfXRNXnAEeQ==
X-Google-Smtp-Source: APXvYqz5RFpXvPJco+6vOFC/hXB1d7q0h/jQXZ1zrkZnlHhxfGDiQDui/zQdQsCmqfzmrfLkYexwow==
X-Received: by 2002:a50:ac24:: with SMTP id v33mr77632521edc.30.1560544597404; 
 Fri, 14 Jun 2019 13:36:37 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:36 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:35:29 +0200
Message-Id: <20190614203615.12639-14-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iy8MiNkKxUaqCMionfeIlHgmoHTOrv+NMXOrlMf2gLE=;
 b=OkvXkz0TugRZHQvVafGAsgu4Dl+oZz8piK+hXRzeQlzn+uGO048mH7N/nqsU99KWX3
 qJCw0sCl5bJ5Uu4Kcmx2JnZl6OULW4mDNvjijoVINWflCAcYLfKJvZUsSrDntfL4pzfd
 0KkqpebWOdrXUupZr6KA4hT381N0K8AG9BMT0=
Subject: [Intel-gfx] [PATCH 13/59] drm/etnaviv: Drop
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
 etnaviv@lists.freedesktop.org, Russell King <linux+etnaviv@armlinux.org.uk>,
 Daniel Vetter <daniel.vetter@intel.com>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhleSdyZSB0aGUgZGVmYXVsdC4KCkFzaWRlOiBXb3VsZCBiZSByZWFsbHkgbmljZSB0byBzd2l0
Y2ggdGhlIG90aGVycyBvdmVyIHRvCmRybV9nZW1fb2JqZWN0X2Z1bmNzLgoKU2lnbmVkLW9mZi1i
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBMdWNhcyBTdGFj
aCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4KQ2M6IFJ1c3NlbGwgS2luZyA8bGludXgrZXRuYXZp
dkBhcm1saW51eC5vcmcudWs+CkNjOiBDaHJpc3RpYW4gR21laW5lciA8Y2hyaXN0aWFuLmdtZWlu
ZXJAZ21haWwuY29tPgpDYzogZXRuYXZpdkBsaXN0cy5mcmVlZGVza3RvcC5vcmcKLS0tCiBkcml2
ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2Rydi5jIHwgMiAtLQogMSBmaWxlIGNoYW5nZWQs
IDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRu
YXZpdl9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZHJ2LmMKaW5kZXgg
ZGIzYjAwMDMxZmNmLi40MDBmYmIyNTg4ZjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9l
dG5hdml2L2V0bmF2aXZfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZp
dl9kcnYuYwpAQCAtNDY5LDggKzQ2OSw2IEBAIHN0YXRpYyBzdHJ1Y3QgZHJtX2RyaXZlciBldG5h
dml2X2RybV9kcml2ZXIgPSB7CiAJLmdlbV92bV9vcHMgICAgICAgICA9ICZ2bV9vcHMsCiAJLnBy
aW1lX2hhbmRsZV90b19mZCA9IGRybV9nZW1fcHJpbWVfaGFuZGxlX3RvX2ZkLAogCS5wcmltZV9m
ZF90b19oYW5kbGUgPSBkcm1fZ2VtX3ByaW1lX2ZkX3RvX2hhbmRsZSwKLQkuZ2VtX3ByaW1lX2V4
cG9ydCAgID0gZHJtX2dlbV9wcmltZV9leHBvcnQsCi0JLmdlbV9wcmltZV9pbXBvcnQgICA9IGRy
bV9nZW1fcHJpbWVfaW1wb3J0LAogCS5nZW1fcHJpbWVfcGluICAgICAgPSBldG5hdml2X2dlbV9w
cmltZV9waW4sCiAJLmdlbV9wcmltZV91bnBpbiAgICA9IGV0bmF2aXZfZ2VtX3ByaW1lX3VucGlu
LAogCS5nZW1fcHJpbWVfZ2V0X3NnX3RhYmxlID0gZXRuYXZpdl9nZW1fcHJpbWVfZ2V0X3NnX3Rh
YmxlLAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
