Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D36746A9D
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:38:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F3DE895C3;
	Fri, 14 Jun 2019 20:37:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3994B8961E
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:37:07 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id m10so5242995edv.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:37:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=09V0MjekpLdHC852h4xPIU9vdb05vowz3v43PyqT5EE=;
 b=h6hq721F80rBMyykyrY3+GvnksXUh6QUPmFO9UYZwjeSTaHdiUIPz+ab9QCQ9Ma+2q
 WVH8spyxDrhxyuU6xWDfv9V4VSVLtWjYKuyVtvyUh5H2omaJxZAXxc1d+/+NVbKF+wjE
 GsaR3zJt2tOjN7oHMO3gvB/c3xrNM0wklzWOCMGbWvlXVmOICP3MyfLiC2SzWX6GRx7n
 o4yA6XyQXyht/L6iZd2C9v7gdV1dYBdOVqHdKcQ+vyDD0/0WVv78pI7jqxmX9OjjLr85
 hFvHWnUBAWYFY5p9l6JY643Eouaf2N3a8BXImAqJZla5oS00g+XgTu9EMpQj8qaU2Gg1
 +AsA==
X-Gm-Message-State: APjAAAXZBMjy9/OnWAR+iComo2MZj25Qv91GsjsZzujjmUBSaDzHdRSO
 PsYQhBGqczDRYQJOVN/ZGS8m9w==
X-Google-Smtp-Source: APXvYqwsNY02FEfQHlqC+BZ6/bDUcOQBorUnJqWM1mr37hzvg/htxDkdTS91HtG3+fbjnKiW4M7RZw==
X-Received: by 2002:a50:8be8:: with SMTP id n37mr82216648edn.216.1560544625875; 
 Fri, 14 Jun 2019 13:37:05 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.37.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:37:05 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:35:54 +0200
Message-Id: <20190614203615.12639-39-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=09V0MjekpLdHC852h4xPIU9vdb05vowz3v43PyqT5EE=;
 b=VYxfPxU3oxDnY3fO4EnZ5Z9V4K4fVsbdhYnR95Dk4yfQaSMGl1kLydyk/qu00S6Cwi
 5zEnobT1sJlWyjN0YG/38g77W/YvcXrqFGP7y8msd2MrdY/Y9qqBTOGoS2b4VeBnkkjk
 9IA4tSgO/NfNyyrNATIY0094hdnyMYG4GlbrU=
Subject: [Intel-gfx] [PATCH 38/59] drm/xen: Drop drm_gem_prime_export/import
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
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 xen-devel@lists.xenproject.org, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhleSdyZSB0aGUgZGVmYXVsdC4KCkFzaWRlOiBXb3VsZCBiZSByZWFsbHkgbmljZSB0byBzd2l0
Y2ggdGhlIG90aGVycyBvdmVyIHRvCmRybV9nZW1fb2JqZWN0X2Z1bmNzLgoKU2lnbmVkLW9mZi1i
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBPbGVrc2FuZHIg
QW5kcnVzaGNoZW5rbyA8b2xla3NhbmRyX2FuZHJ1c2hjaGVua29AZXBhbS5jb20+CkNjOiB4ZW4t
ZGV2ZWxAbGlzdHMueGVucHJvamVjdC5vcmcKLS0tCiBkcml2ZXJzL2dwdS9kcm0veGVuL3hlbl9k
cm1fZnJvbnQuYyB8IDIgLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS94ZW4veGVuX2RybV9mcm9udC5jIGIvZHJpdmVycy9ncHUv
ZHJtL3hlbi94ZW5fZHJtX2Zyb250LmMKaW5kZXggYWVmZmVjODJhNWNlLi4wNTE4MjJlZTViMzYg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS94ZW4veGVuX2RybV9mcm9udC5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS94ZW4veGVuX2RybV9mcm9udC5jCkBAIC00OTEsOCArNDkxLDYgQEAgc3Rh
dGljIHN0cnVjdCBkcm1fZHJpdmVyIHhlbl9kcm1fZHJpdmVyID0gewogCS5nZW1fZnJlZV9vYmpl
Y3RfdW5sb2NrZWQgID0geGVuX2RybV9kcnZfZnJlZV9vYmplY3RfdW5sb2NrZWQsCiAJLnByaW1l
X2hhbmRsZV90b19mZCAgICAgICAgPSBkcm1fZ2VtX3ByaW1lX2hhbmRsZV90b19mZCwKIAkucHJp
bWVfZmRfdG9faGFuZGxlICAgICAgICA9IGRybV9nZW1fcHJpbWVfZmRfdG9faGFuZGxlLAotCS5n
ZW1fcHJpbWVfaW1wb3J0ICAgICAgICAgID0gZHJtX2dlbV9wcmltZV9pbXBvcnQsCi0JLmdlbV9w
cmltZV9leHBvcnQgICAgICAgICAgPSBkcm1fZ2VtX3ByaW1lX2V4cG9ydCwKIAkuZ2VtX3ByaW1l
X2ltcG9ydF9zZ190YWJsZSA9IHhlbl9kcm1fZnJvbnRfZ2VtX2ltcG9ydF9zZ190YWJsZSwKIAku
Z2VtX3ByaW1lX2dldF9zZ190YWJsZSAgICA9IHhlbl9kcm1fZnJvbnRfZ2VtX2dldF9zZ190YWJs
ZSwKIAkuZ2VtX3ByaW1lX3ZtYXAgICAgICAgICAgICA9IHhlbl9kcm1fZnJvbnRfZ2VtX3ByaW1l
X3ZtYXAsCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
