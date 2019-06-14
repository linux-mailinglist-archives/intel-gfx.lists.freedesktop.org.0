Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6648D46A6C
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:38:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E42C894FE;
	Fri, 14 Jun 2019 20:36:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 253F9894DD
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:36:53 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id i11so5284880edq.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:36:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=B/KPbcrrHFxjrwFW7sL1vNIAGEsxVpYmnZ7oDMzAkV4=;
 b=cOIpQo1IXASYam8siVdZrxaYBFEylmKKXCR4sbHg1Q+tq1djgmFBnzev1J9rQ1LinQ
 V018KZbL5d3GySqAEVMU/nPgbPoyBs65Z7x6oG3f2zvjIzX9dRtS8BlArgdc68HjHTHU
 O2kbhU2TBJf+S2oRFRdQGbasiU/eBwYL8viDShPHdIL1e8ICyNbmfZSueLXC50GauGgi
 oDIrDojwkmhrxt4LtIEslkSaxxUGxAmGtr90N2hHMhjUfZ+8yKiEp7ArLy//Qp+4v/XU
 5KL0Z7RnD0x0hNx5WqtxYxDfYGDe3yT8H8fY4TbZdUtG6y4+cjUKSIfUV//T1MaRPu2r
 djsA==
X-Gm-Message-State: APjAAAWJhG9ELu4bLplGBNJVAjKNVBXdbQMqcSWR/QKUBhjIlX2NK3oI
 LOC28s+oL8awiAfnz9ykefRvag==
X-Google-Smtp-Source: APXvYqxIfX3NomnfR0i5/JsCRkWABxprarJH50bGy+3xPhFA5HWFSziGXUQGn0KZGdrvzLOeV+nUng==
X-Received: by 2002:a17:906:4e57:: with SMTP id
 g23mr11650473ejw.52.1560544611160; 
 Fri, 14 Jun 2019 13:36:51 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:50 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:35:41 +0200
Message-Id: <20190614203615.12639-26-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=B/KPbcrrHFxjrwFW7sL1vNIAGEsxVpYmnZ7oDMzAkV4=;
 b=KuSCR2nEB5JU76Khlltio97e730XHa/vvyjsEawpd4UrWtvOJ3VeW+vhRcGIxmbMMI
 KwCEVIIdBRXxDmoEokx3ARO7k+Y5BdocSGEFCVrHvLouj+ab67HVkIvBjWMNX7iYigTX
 WnqYXgim/fwQLcKJaOcx5uapboQBlbiWjcddI=
Subject: [Intel-gfx] [PATCH 25/59] drm/qxl: Drop drm_gem_prime_export/import
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
Cc: spice-devel@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 virtualization@lists.linux-foundation.org, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhleSdyZSB0aGUgZGVmYXVsdC4KCkFzaWRlOiBXb3VsZCBiZSByZWFsbHkgbmljZSB0byBzd2l0
Y2ggdGhlIG90aGVycyBvdmVyIHRvCmRybV9nZW1fb2JqZWN0X2Z1bmNzLgoKU2lnbmVkLW9mZi1i
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBEYXZlIEFpcmxp
ZSA8YWlybGllZEByZWRoYXQuY29tPgpDYzogR2VyZCBIb2ZmbWFubiA8a3JheGVsQHJlZGhhdC5j
b20+CkNjOiB2aXJ0dWFsaXphdGlvbkBsaXN0cy5saW51eC1mb3VuZGF0aW9uLm9yZwpDYzogc3Bp
Y2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCi0tLQogZHJpdmVycy9ncHUvZHJtL3F4bC9x
eGxfZHJ2LmMgfCAyIC0tCiAxIGZpbGUgY2hhbmdlZCwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9xeGwv
cXhsX2Rydi5jCmluZGV4IDYxZTFjZTE2ZmMyNS4uZDhmNjQ4ODY0NzRiIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4
bF9kcnYuYwpAQCAtMjU2LDggKzI1Niw2IEBAIHN0YXRpYyBzdHJ1Y3QgZHJtX2RyaXZlciBxeGxf
ZHJpdmVyID0gewogI2VuZGlmCiAJLnByaW1lX2hhbmRsZV90b19mZCA9IGRybV9nZW1fcHJpbWVf
aGFuZGxlX3RvX2ZkLAogCS5wcmltZV9mZF90b19oYW5kbGUgPSBkcm1fZ2VtX3ByaW1lX2ZkX3Rv
X2hhbmRsZSwKLQkuZ2VtX3ByaW1lX2V4cG9ydCA9IGRybV9nZW1fcHJpbWVfZXhwb3J0LAotCS5n
ZW1fcHJpbWVfaW1wb3J0ID0gZHJtX2dlbV9wcmltZV9pbXBvcnQsCiAJLmdlbV9wcmltZV9waW4g
PSBxeGxfZ2VtX3ByaW1lX3BpbiwKIAkuZ2VtX3ByaW1lX3VucGluID0gcXhsX2dlbV9wcmltZV91
bnBpbiwKIAkuZ2VtX3ByaW1lX2dldF9zZ190YWJsZSA9IHF4bF9nZW1fcHJpbWVfZ2V0X3NnX3Rh
YmxlLAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
