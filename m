Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA2F46ADA
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:39:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4811892EA;
	Fri, 14 Jun 2019 20:37:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B47BE8984E
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:37:27 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id k8so5198494edr.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:37:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WNVhuNaVyCI/JIOzVNXYBbUMoYsbM3r+tFBxKMKg+es=;
 b=q2QMbhd72DWOvM8dWqaxFwAoYMHm+9PQHJuknXHD5rTrSUIA7Kt3qjzXCpxzTKa8Hl
 C2L0hDMekaBjU5gYyjVSi39vMFd7wcMB40ph2C1ByzeyCLI4DJy289cgb9PDfJig00Ai
 OaspqUskN7g3XZfoMsI/n2012248kJJ8MO/iVxBYjecvMPJd6RQ9FFcKXwQq2Xwqv6jN
 M02ITIQZghPsD3ejicIHoDhnazkFvSiQUxNkaYrdiQYCslw0zGtSIFO2oPV93Q5lsx48
 twRetQQl3KPPyfxz6tcJpiNbFAvTLmm2kVP/YfFo7aO0r9PO+jktp6AXlSfYGp9WDCLr
 sLlA==
X-Gm-Message-State: APjAAAWnAPEs5hg111Vxs9RKQrblIKna1DDVELP1c2Pof8Ra2OEBgJ9b
 tT0aE1tBcgwdxjuVNQsh0+318g==
X-Google-Smtp-Source: APXvYqzqiPS1klkq4orWdDvJZ42ExkoZk2KkWz+DQ0VP2/5PDZKs/yKqgyE7Pl4YzN0iWbmPl50TnQ==
X-Received: by 2002:a05:6402:712:: with SMTP id
 w18mr15845764edx.201.1560544645014; 
 Fri, 14 Jun 2019 13:37:25 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.37.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:37:24 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:36:11 +0200
Message-Id: <20190614203615.12639-56-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WNVhuNaVyCI/JIOzVNXYBbUMoYsbM3r+tFBxKMKg+es=;
 b=khDli+Dc92u6YMjIP1ybVZ4ulHhMaeUvbM8cRVHHMiPu2a5m584bc1GeCxOrroytO6
 Uewfm7b0naH9BdqgXGrKxiUdY6qNRnwF9DY+T83WO3MVnP8FiZwQlvop3694fJAa2lxB
 vmLeEQiyuhKr2voAlNQ+1duAMcfiCu4BbwuiU=
Subject: [Intel-gfx] [PATCH 55/59] drm/todo: remove gem_prime_import/export
 todo
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

SSd2ZSBkb25lIHRoYXQuCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0
dGVyQGludGVsLmNvbT4KLS0tCiBEb2N1bWVudGF0aW9uL2dwdS90b2RvLnJzdCB8IDcgLS0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9ncHUvdG9kby5yc3QgYi9Eb2N1bWVudGF0aW9uL2dwdS90b2RvLnJzdAppbmRleCA4MWZi
YjE1Yzk0YzYuLjIxYTdiNzgwMGQzZSAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9ncHUvdG9k
by5yc3QKKysrIGIvRG9jdW1lbnRhdGlvbi9ncHUvdG9kby5yc3QKQEAgLTIwNiwxMyArMjA2LDYg
QEAgZWZmaWNpZW50LgogCiBDb250YWN0OiBEYW5pZWwgVmV0dGVyCiAKLURlZmF1bHRzIGZvciAu
Z2VtX3ByaW1lX2ltcG9ydCBhbmQgZXhwb3J0Ci0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQotCi1Nb3N0IGRyaXZlcnMgZG9uJ3QgbmVlZCB0byBzZXQgZHJtX2RyaXZl
ci0+Z2VtX3ByaW1lX2ltcG9ydCBhbmQKLS0+Z2VtX3ByaW1lX2V4cG9ydCBub3cgdGhhdCBkcm1f
Z2VtX3ByaW1lX2ltcG9ydCgpIGFuZCBkcm1fZ2VtX3ByaW1lX2V4cG9ydCgpCi1hcmUgdGhlIGRl
ZmF1bHQuCi0KIHN0cnVjdCBkcm1fZ2VtX29iamVjdF9mdW5jcwogLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
