Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F101846A86
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:38:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E400E895D7;
	Fri, 14 Jun 2019 20:37:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4F6F894DE
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:37:01 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id k21so5263922edq.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:37:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OLNfqUn2JWSvjGO+lUnEPOjphxRG8MUByJNkOSi1N2U=;
 b=EfG0clQUqKTUA1eqNfO7bq0C+Kfhn065450IhZI305bLMOnAwoN/0KcdDoKlKD3wwa
 GXFDQ+gagNrI6zbbClECvfJBvNEEFq3D3NzHfYrJkxrrnyV6pZMPMcGb9pMaXuj+9aYN
 Vt6r6kT+wBewO0CXmbEEoLQKvdKa1lKNhL9vHj3jMjTEC3Rm4YJmKbvgnbpXNBj8euyi
 FdQ/phH18j/qoAr108xZSarI3+/E8jP8s8/O6URWDJ01KaW80bK1RSkrCiK1XYeKl0UL
 ly/r6qgWrqvhRyuWyz9aGA76TYNhYIBu/klqoxINFcRJwiyiVxAc+sF/iaFymvqnhFKF
 6NQg==
X-Gm-Message-State: APjAAAVjPSaZiXR2EKEWD4AdsFmDZ62erp2PapYwi3R+oZNyvHhInyEk
 SzmkAW18LpVzhiPjJ08Vca9znw==
X-Google-Smtp-Source: APXvYqxpP/e6EcHbVgC3ahsPfRJDpeaB4bUCKSBWoT9REhxPpHvi0wd403Eq0UqJkr30tJOKmCONTA==
X-Received: by 2002:a17:906:a98b:: with SMTP id
 jr11mr19278798ejb.224.1560544619841; 
 Fri, 14 Jun 2019 13:36:59 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:59 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:35:49 +0200
Message-Id: <20190614203615.12639-34-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OLNfqUn2JWSvjGO+lUnEPOjphxRG8MUByJNkOSi1N2U=;
 b=UdJUNEyMa7uMCm96HDhd2N1x/5wh3X9M06nF1dYurW2WvSFHOuuy4xgi3ROrz2Qmkw
 E/jvExtqsndKpezxOmE4oz2Ukq1Lgwl3GWPLOZQ609UQIeHfjqW3MelLWx46W0IYOURv
 y/ANqNt1eyr5bBC8KehSEQYo/uUDtD8/UCIgU=
Subject: [Intel-gfx] [PATCH 33/59] drm/vboxvideo: Drop
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
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhleSdyZSB0aGUgZGVmYXVsdC4KCkFzaWRlOiBXb3VsZCBiZSByZWFsbHkgbmljZSB0byBzd2l0
Y2ggdGhlIG90aGVycyBvdmVyIHRvCmRybV9nZW1fb2JqZWN0X2Z1bmNzLgoKU2lnbmVkLW9mZi1i
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBIYW5zIGRlIEdv
ZWRlIDxoZGVnb2VkZUByZWRoYXQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS92Ym94dmlkZW8v
dmJveF9kcnYuYyB8IDIgLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS92Ym94dmlkZW8vdmJveF9kcnYuYyBiL2RyaXZlcnMvZ3B1
L2RybS92Ym94dmlkZW8vdmJveF9kcnYuYwppbmRleCBhN2ZkMTk0YzgxYTkuLmZhNWUzMTQ5MTI0
ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Zib3h2aWRlby92Ym94X2Rydi5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS92Ym94dmlkZW8vdmJveF9kcnYuYwpAQCAtMjEyLDggKzIxMiw2IEBA
IHN0YXRpYyBzdHJ1Y3QgZHJtX2RyaXZlciBkcml2ZXIgPSB7CiAJRFJNX0dFTV9WUkFNX0RSSVZF
UiwKIAkucHJpbWVfaGFuZGxlX3RvX2ZkID0gZHJtX2dlbV9wcmltZV9oYW5kbGVfdG9fZmQsCiAJ
LnByaW1lX2ZkX3RvX2hhbmRsZSA9IGRybV9nZW1fcHJpbWVfZmRfdG9faGFuZGxlLAotCS5nZW1f
cHJpbWVfZXhwb3J0ID0gZHJtX2dlbV9wcmltZV9leHBvcnQsCi0JLmdlbV9wcmltZV9pbXBvcnQg
PSBkcm1fZ2VtX3ByaW1lX2ltcG9ydCwKIAkuZ2VtX3ByaW1lX3BpbiA9IHZib3hfZ2VtX3ByaW1l
X3BpbiwKIAkuZ2VtX3ByaW1lX3VucGluID0gdmJveF9nZW1fcHJpbWVfdW5waW4sCiAJLmdlbV9w
cmltZV9nZXRfc2dfdGFibGUgPSB2Ym94X2dlbV9wcmltZV9nZXRfc2dfdGFibGUsCi0tIAoyLjIw
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
