Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D0C46A69
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:37:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E71818957D;
	Fri, 14 Jun 2019 20:36:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E433089568
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:36:51 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id i11so5284826edq.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:36:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+bK7h8pAB2XmRfGoVqd/4EaL8VhKCPAJ1OR9nXXdkdc=;
 b=mvbqSngxVwaNmb+xymugBIA5/FVLOOLai0gqNAn9aUc8HMDfHk+psKt1GcPnyBX+3x
 NiCSn060/zSBRRG/z37GO0CrZpotricZAXfVr1tzok/LrbQpt+1D8SYH5VAoVSl4yWI/
 gYYtTDvxbeOp8pmfEgJZ5kLUMCTGFFT2/18RyIpho8jiuhjzIQn0VWlXyhTj5qGwxqPv
 BboKbQHNGdhSLl178GWGRzvI8xCtfRk+ctT8d4/U8o9EXgZqKBX09lHIZStlKU+RsMWI
 RIQEWOboz6doZVdwzPtt6+rUgnzBr/EuGA4qeHrtpk51T1c5cIsQmeJaT+k9ofmh3jJE
 Og/A==
X-Gm-Message-State: APjAAAUaW6cS5UDCdJyGfjP5DhMlMjXcwjIJ8CVgwIhzoPpZxKwY+8wv
 oy2Sk//ye8Pz4XJWTl6k2TmK2w==
X-Google-Smtp-Source: APXvYqzD4wDOjmUlZWjBQarv3v+BxQMA2MOvu7Ph4akEc+ZSAYm7yzjW/rC60nmwc78MsAYc5VMhEg==
X-Received: by 2002:a50:90c6:: with SMTP id d6mr81978007eda.19.1560544610103; 
 Fri, 14 Jun 2019 13:36:50 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:49 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:35:40 +0200
Message-Id: <20190614203615.12639-25-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+bK7h8pAB2XmRfGoVqd/4EaL8VhKCPAJ1OR9nXXdkdc=;
 b=iTRlfdjITFJkBlGIOojUNleKeDzPZaFQvrj2GL3n8HAAGVYIzmmeeK4NcQwA43y+RI
 yN2SiGoNPiahfdUDMygZZ6PV6cFgEfdtSlsibQ/eczRVKf508Omz6XpYZRM3U8T2ErEg
 rbc5gMWuyqWIIMVLCwVyvGeFmDruVH5zgeDgc=
Subject: [Intel-gfx] [PATCH 24/59] drm/pl111: Drop
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
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBFcmljIEFuaG9s
dCA8ZXJpY0BhbmhvbHQubmV0PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9wbDExMS9wbDExMV9kcnYu
YyB8IDIgLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9wbDExMS9wbDExMV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9wbDExMS9w
bDExMV9kcnYuYwppbmRleCBkZDRhYWEzODAyNTAuLjkwZmE5OWE3ZGZhOSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL3BsMTExL3BsMTExX2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9w
bDExMS9wbDExMV9kcnYuYwpAQCAtMjM4LDkgKzIzOCw3IEBAIHN0YXRpYyBzdHJ1Y3QgZHJtX2Ry
aXZlciBwbDExMV9kcm1fZHJpdmVyID0gewogCS5nZW1fdm1fb3BzID0gJmRybV9nZW1fY21hX3Zt
X29wcywKIAkucHJpbWVfaGFuZGxlX3RvX2ZkID0gZHJtX2dlbV9wcmltZV9oYW5kbGVfdG9fZmQs
CiAJLnByaW1lX2ZkX3RvX2hhbmRsZSA9IGRybV9nZW1fcHJpbWVfZmRfdG9faGFuZGxlLAotCS5n
ZW1fcHJpbWVfaW1wb3J0ID0gZHJtX2dlbV9wcmltZV9pbXBvcnQsCiAJLmdlbV9wcmltZV9pbXBv
cnRfc2dfdGFibGUgPSBwbDExMV9nZW1faW1wb3J0X3NnX3RhYmxlLAotCS5nZW1fcHJpbWVfZXhw
b3J0ID0gZHJtX2dlbV9wcmltZV9leHBvcnQsCiAJLmdlbV9wcmltZV9nZXRfc2dfdGFibGUJPSBk
cm1fZ2VtX2NtYV9wcmltZV9nZXRfc2dfdGFibGUsCiAJLmdlbV9wcmltZV9tbWFwID0gZHJtX2dl
bV9jbWFfcHJpbWVfbW1hcCwKIAkuZ2VtX3ByaW1lX3ZtYXAgPSBkcm1fZ2VtX2NtYV9wcmltZV92
bWFwLAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
