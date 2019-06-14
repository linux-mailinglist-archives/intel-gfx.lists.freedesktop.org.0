Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED73A46A89
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:38:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0190689613;
	Fri, 14 Jun 2019 20:37:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E8B9892D8
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:36:59 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id i11so5285242edq.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:36:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r/O34L7SJKbBuzg4Fmxcnnxj8QTYeoMYWX8CJUDlPWA=;
 b=TtGZC8Nclqrra80CjblPWafLLUmiXJ2sQHVhoBKS1Q0YbtnEhZQuw27L7lArDC4vUW
 gI3FQDz75DVWjKvc9yCCcC1pVYbZZNKMoTZeyFDUFeqdJuxFiljRZk+hAx8DdpOe7Rf3
 DP4tt9nVqldjtxvahrMB+BzFhTLbJ2M87e5slanaL0e7KlSiXW684bRCaSEpzaFPyctq
 DLnlax7BPMrv+REllRZX2bdnP+TJh5XMP59fxLUk53FKfX9CEQrQotBTnCS5EXlINWK0
 TDonZsBxDoQStLkYcv5MfHqfne8hZ+aCxbPNIzhSVUYcElbETyxmJ0PfibTGhgYAVkx9
 b5gg==
X-Gm-Message-State: APjAAAWe4dNXEOh5TrG0XFh9OmifJIdNbyIwOJnxQKbLsiwdcKmLsOeh
 kw6+OYrhp420LVxlPWkJs1VADA==
X-Google-Smtp-Source: APXvYqzBUBbghknr1vvQHb75TbaIKqzowuJ2ptzFyYyIwrbq5kAEtgTWJHwo4Bhh628KvhPEDfd4sQ==
X-Received: by 2002:a05:6402:1557:: with SMTP id
 p23mr27456062edx.207.1560544617619; 
 Fri, 14 Jun 2019 13:36:57 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:57 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:35:47 +0200
Message-Id: <20190614203615.12639-32-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=r/O34L7SJKbBuzg4Fmxcnnxj8QTYeoMYWX8CJUDlPWA=;
 b=aD/jT/dcSG9H2aE/cIoVuQT65jWu8p6JJPqx1UACQDmjwYK0ECzLZRRP6g1NfUJl5h
 RjeCDrYFhXmH9ewXVpobveicNXDTd19/gAWW+2nPtCBMRgButxT/dg4RjTFz0/dmHHdC
 wG6K2aTKUxK9ndt1MjG1Vb211+r889/X/z7QE=
Subject: [Intel-gfx] [PATCH 31/59] drm/tilcdc: Drop
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
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Jyri Sarha <jsarha@ti.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhleSdyZSB0aGUgZGVmYXVsdC4KCkFzaWRlOiBXb3VsZCBiZSByZWFsbHkgbmljZSB0byBzd2l0
Y2ggdGhlIG90aGVycyBvdmVyIHRvCmRybV9nZW1fb2JqZWN0X2Z1bmNzLgoKU2lnbmVkLW9mZi1i
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBKeXJpIFNhcmhh
IDxqc2FyaGFAdGkuY29tPgpDYzogVG9taSBWYWxrZWluZW4gPHRvbWkudmFsa2VpbmVuQHRpLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vdGlsY2RjL3RpbGNkY19kcnYuYyB8IDIgLS0KIDEgZmls
ZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90
aWxjZGMvdGlsY2RjX2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL3RpbGNkYy90aWxjZGNfZHJ2LmMK
aW5kZXggOTIzMDc5NTk0MzVhLi5iNmI3MWU4NmUyMzggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS90aWxjZGMvdGlsY2RjX2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS90aWxjZGMvdGls
Y2RjX2Rydi5jCkBAIC01MjEsOCArNTIxLDYgQEAgc3RhdGljIHN0cnVjdCBkcm1fZHJpdmVyIHRp
bGNkY19kcml2ZXIgPSB7CiAKIAkucHJpbWVfaGFuZGxlX3RvX2ZkCT0gZHJtX2dlbV9wcmltZV9o
YW5kbGVfdG9fZmQsCiAJLnByaW1lX2ZkX3RvX2hhbmRsZQk9IGRybV9nZW1fcHJpbWVfZmRfdG9f
aGFuZGxlLAotCS5nZW1fcHJpbWVfaW1wb3J0CT0gZHJtX2dlbV9wcmltZV9pbXBvcnQsCi0JLmdl
bV9wcmltZV9leHBvcnQJPSBkcm1fZ2VtX3ByaW1lX2V4cG9ydCwKIAkuZ2VtX3ByaW1lX2dldF9z
Z190YWJsZQk9IGRybV9nZW1fY21hX3ByaW1lX2dldF9zZ190YWJsZSwKIAkuZ2VtX3ByaW1lX2lt
cG9ydF9zZ190YWJsZSA9IGRybV9nZW1fY21hX3ByaW1lX2ltcG9ydF9zZ190YWJsZSwKIAkuZ2Vt
X3ByaW1lX3ZtYXAJCT0gZHJtX2dlbV9jbWFfcHJpbWVfdm1hcCwKLS0gCjIuMjAuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
