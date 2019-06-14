Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC7A46AA9
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:38:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F44689798;
	Fri, 14 Jun 2019 20:37:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 745FA894DE
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:37:05 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id e3so5195875edr.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:37:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=C7tdG/pv4rSl837azf57SurCjIHrXCJnzPDUpmkdCbw=;
 b=bvLsxNk4qBGonW0Lex8GS9NdQ1sKh68JvPsuMsJXe1NsviEpxHDfn/LH69eCgxce0t
 Tw33xujKQST88f3Pp8TyM9VdoRXhYEghOV8qTMhJ1RcOXRT3PWRNpSdDv/kwsxvjYO8N
 wiOfBH3pfyTMj2cWHsSS23uYB5eFm+bzeTjno6bftRfkiF6Qg7lT6pzoUJ3H6MzIk30f
 rI+RZ+veasnRrLTdGCd12yXKklrZbsGDCK7JJ7wlK5g8ic7uorzpB6g4rqM+1Dw6kTKh
 hOuzgPLzjN8wJkHJc/Ewdp2TnWdw5yV93cE5Oy1VNSNTafICXnXxkvIemI9w5O5lrnmX
 Ub4A==
X-Gm-Message-State: APjAAAXxtslUdFpzu7XJn9J5OLp+i81WSYwJdNYHO00+qb8XXqMeylIW
 pMQc0/5A4VpGm1TnTm8S49+jRw==
X-Google-Smtp-Source: APXvYqxdBJGBhObKfHs8XgeedvC6LVDrZIrkvvb18utH6SUv7sDVxwFDK7vQcUdHKpR2Q3YKf6YL3w==
X-Received: by 2002:a50:aeaf:: with SMTP id
 e44mr105603760edd.239.1560544623591; 
 Fri, 14 Jun 2019 13:37:03 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.37.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:37:03 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:35:52 +0200
Message-Id: <20190614203615.12639-37-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=C7tdG/pv4rSl837azf57SurCjIHrXCJnzPDUpmkdCbw=;
 b=J/qwZA91YWl7LBkB98/9l0q1VnnMpCP5inGvB2uI8eaonob5ucWS+7+MFU8lJLg3fe
 uzGhpqC/LY8wk9ef44qXRcNllrKgPBieMz89lfPgQPNv9qr1Z0FBT8iJj+5tvAOq1COL
 VaRUKTgNgTguYqBys5ih/+ovrvQw2qSoAoqLw=
Subject: [Intel-gfx] [PATCH 36/59] drm/vgem: Drop drm_gem_prime_export
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
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL3ZnZW0vdmdlbV9kcnYuYyB8IDEgLQogMSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdmdlbS92Z2VtX2Rydi5jIGIvZHJpdmVy
cy9ncHUvZHJtL3ZnZW0vdmdlbV9kcnYuYwppbmRleCA2OGMzNDBjZmRlNTEuLmQ1YWI2ZTQ2YzI0
MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3ZnZW0vdmdlbV9kcnYuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vdmdlbS92Z2VtX2Rydi5jCkBAIC00NDUsNyArNDQ1LDYgQEAgc3RhdGljIHN0
cnVjdCBkcm1fZHJpdmVyIHZnZW1fZHJpdmVyID0gewogCS5nZW1fcHJpbWVfcGluID0gdmdlbV9w
cmltZV9waW4sCiAJLmdlbV9wcmltZV91bnBpbiA9IHZnZW1fcHJpbWVfdW5waW4sCiAJLmdlbV9w
cmltZV9pbXBvcnQgPSB2Z2VtX3ByaW1lX2ltcG9ydCwKLQkuZ2VtX3ByaW1lX2V4cG9ydCA9IGRy
bV9nZW1fcHJpbWVfZXhwb3J0LAogCS5nZW1fcHJpbWVfaW1wb3J0X3NnX3RhYmxlID0gdmdlbV9w
cmltZV9pbXBvcnRfc2dfdGFibGUsCiAJLmdlbV9wcmltZV9nZXRfc2dfdGFibGUgPSB2Z2VtX3By
aW1lX2dldF9zZ190YWJsZSwKIAkuZ2VtX3ByaW1lX3ZtYXAgPSB2Z2VtX3ByaW1lX3ZtYXAsCi0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
