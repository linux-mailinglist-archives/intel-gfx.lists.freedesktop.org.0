Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC58346AB7
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:38:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 771F2897E0;
	Fri, 14 Jun 2019 20:37:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF2128972D
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:37:10 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id p26so5270211edr.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:37:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=y1lqqsj3TD8omzy0jSvXSFQ26hfaq/d96LeiBw4j5k4=;
 b=quctYnRWIKrf6nf+IMK+DhvJFSvWlQhoWCwBELb/VbobQnFSFEmw43zimn0dG22q7P
 0UD8gsB6O2zN9oGbJserS2JVW6qCFBT+gyIMPKLdUCwzlU0YX+mAnamjQ0EgUGu6l4Mz
 CjIHA21D/Lnsjh3YdhTDSkQDrE5ewL74J2t0lDGAK4RqguCk8vxgLQyTjVjRY/Wt16nF
 6t9vyByG/p3REhBZydjpeTFTOjS5nE54o+AX3ITouwSLAec7I9+f6zBqbZOkrCRpt+Ug
 4UscYgfZE9LjurIIIxwp+e6j5ZWEVpfu6t3QJaYWzsOSYvwQMRChTzHDLRQFo3gLZWDU
 G9xA==
X-Gm-Message-State: APjAAAVZjN4c5NyUi4OHtWwmasHjd7LSmYEISg2Mjc7CE8SbApRw+ngd
 3aRs4JS7uotQcAbCSr6T8xLtBQ==
X-Google-Smtp-Source: APXvYqzAiTBkviAlv9fVUOK/9aFU/WNHyw3bu2Aj2RG/I99+aQuMvhnwbscbvfHLulVYQjZxYKAdaQ==
X-Received: by 2002:a50:97ac:: with SMTP id e41mr46671462edb.27.1560544629097; 
 Fri, 14 Jun 2019 13:37:09 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.37.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:37:08 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:35:57 +0200
Message-Id: <20190614203615.12639-42-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=y1lqqsj3TD8omzy0jSvXSFQ26hfaq/d96LeiBw4j5k4=;
 b=VO4NPGaQzHZYcfzdNqtBupxsqc3lM++NbpGHeHohmeQfJOZIR4PFRJm7FUNZNT72bY
 AX9/ZrnCBbya4/gBb9NTm1vNzgZr1Hu1Y293gL2JqduDSgIYKePXaX89hKUi4WV+Dzhw
 ftccmEoFeriQboXHfD67iKXtWx46nNA8O1Chg=
Subject: [Intel-gfx] [PATCH 41/59] drm/prime: automatically set
 gem_obj->resv on import
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQncyByZWFsbHkgdGhlIG9ubHkgcmVhc29uYWJsZSB0aGluZyB0byBkbywgYW5kIGl0IHdvbid0
IGh1cnQgZHJpdmVycwp3aGljaCBkb24ndCAoeWV0KSB1c2UgZHJtX2dlbV9vYmplY3QtPnJlc3Yu
CgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4K
Q2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+
CkNjOiBNYXhpbWUgUmlwYXJkIDxtYXhpbWUucmlwYXJkQGJvb3RsaW4uY29tPgpDYzogU2VhbiBQ
YXVsIDxzZWFuQHBvb3JseS5ydW4+CkNjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+
CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2RybV9wcmltZS5jIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJt
X3ByaW1lLmMKaW5kZXggZDU0NWU2ODFjYjQxLi41OGQ1OTVmNGE0ZjUgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1l
LmMKQEAgLTg5Niw2ICs4OTYsNyBAQCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKmRybV9nZW1fcHJp
bWVfaW1wb3J0X2RldihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCX0KIAogCW9iai0+aW1wb3J0
X2F0dGFjaCA9IGF0dGFjaDsKKwlvYmotPnJlc3YgPSBkbWFfYnVmLT5yZXN2OwogCiAJcmV0dXJu
IG9iajsKIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
