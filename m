Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 480E746A5A
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:37:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82AA8894E0;
	Fri, 14 Jun 2019 20:36:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A190289415
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:36:40 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id d4so5185348edr.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:36:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RUJkrBHPGMD0Jak0hv15UuXYYOT/ay4M5iA7uP6K2TM=;
 b=GDm3rODEnsJggHHqNFgUIX5bcW4vvgVQ3qOgNTUfkhzRtyn5iE0MKnqpuZ6prppnat
 HiPLLjX6DJB6N3urfnx6o3/lsuY07Lis2Y7cwwdB7vD1KYxrx6asY7huwbvhVnszZRjk
 UrvatgDT3EVt868/LAwWzsZ6SrJafyHunv7XYFRmBQbES1OHPubgpFD6Vw2y9UyG73Xj
 9AB6T2iEFofjxL2PmAhyGHmqsed5zz9tSh3l9Pgo6GDgvAOVveTlfTYiogjhNFA82Gtd
 /dCU1FSl4AHdFEhRvZ4rlbKNVf06KH0zgFB1dxXpy6IQvJAQISVyiLaUE+qtiU1XXVK6
 JTKQ==
X-Gm-Message-State: APjAAAVawlKYaS4v02LiBDJzLsl/1RfBMnRuci7TVN69hQmUdvkc9NFy
 BO4X3C5702gLzvjfo+ehDdvDGA==
X-Google-Smtp-Source: APXvYqyBmbA9fgjT93k8eJavmdSLhiYk/y6FVvZuoiG7XOai8lro1qS6KycJASXiRs5PrvmL91wkSg==
X-Received: by 2002:a50:8825:: with SMTP id b34mr25674476edb.22.1560544599178; 
 Fri, 14 Jun 2019 13:36:39 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:37 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:35:30 +0200
Message-Id: <20190614203615.12639-15-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RUJkrBHPGMD0Jak0hv15UuXYYOT/ay4M5iA7uP6K2TM=;
 b=irhEijl3uz1ccHxtPEy4kMwnVw1beSjXcXiHBVt/guTgdFhCDeaSwRU3YaR3aKXJiW
 Jzw8hwyS8SHMCIg/hyvS/d3wjueJ9Xh/vjsOCJWDYo9nOYIWcSD2B/3veRSqrrxBv4WM
 O+FhIWINHJAKp/VJXK60dm32VnYow4ogo0D6Y=
Subject: [Intel-gfx] [PATCH 14/59] drm/exynos: Drop drm_gem_prime_export
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
Cc: linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Inki Dae <inki.dae@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, Daniel Vetter <daniel.vetter@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhleSdyZSB0aGUgZGVmYXVsdC4gV2UgY2FuJ3QgZG8gdGhlIHNhbWUgb24gdGhlIGltcG9ydCBz
aWRlLCBkdWUgdG8KdGhlIGV4eW5vc19kcm0tPmRtYV9kZXYgbm90IG5lY2Vzc2FyaWx5IG1hdGNo
aW5nIHRoZSBvdmVyYWxsIGRybQpkZXZpY2UuCgpBc2lkZTogV291bGQgYmUgcmVhbGx5IG5pY2Ug
dG8gc3dpdGNoIHRoZSBvdGhlcnMgb3ZlciB0bwpkcm1fZ2VtX29iamVjdF9mdW5jcy4KClNpZ25l
ZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogSW5r
aSBEYWUgPGlua2kuZGFlQHNhbXN1bmcuY29tPgpDYzogSm9vbnlvdW5nIFNoaW0gPGp5MDkyMi5z
aGltQHNhbXN1bmcuY29tPgpDYzogU2V1bmctV29vIEtpbSA8c3cwMzEyLmtpbUBzYW1zdW5nLmNv
bT4KQ2M6IEt5dW5nbWluIFBhcmsgPGt5dW5nbWluLnBhcmtAc2Ftc3VuZy5jb20+CkNjOiBLdWtq
aW4gS2ltIDxrZ2VuZUBrZXJuZWwub3JnPgpDYzogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0Br
ZXJuZWwub3JnPgpDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBs
aW51eC1zYW1zdW5nLXNvY0B2Z2VyLmtlcm5lbC5vcmcKLS0tCiBkcml2ZXJzL2dwdS9kcm0vZXh5
bm9zL2V4eW5vc19kcm1fZHJ2LmMgfCAxIC0KIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2Rydi5jIGIv
ZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2Rydi5jCmluZGV4IGU0MzY0MGZjNDJk
My4uNGQyNzAzOTBlYmEyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5v
c19kcm1fZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2Rydi5j
CkBAIC0xMjQsNyArMTI0LDYgQEAgc3RhdGljIHN0cnVjdCBkcm1fZHJpdmVyIGV4eW5vc19kcm1f
ZHJpdmVyID0gewogCS5kdW1iX2NyZWF0ZQkJPSBleHlub3NfZHJtX2dlbV9kdW1iX2NyZWF0ZSwK
IAkucHJpbWVfaGFuZGxlX3RvX2ZkCT0gZHJtX2dlbV9wcmltZV9oYW5kbGVfdG9fZmQsCiAJLnBy
aW1lX2ZkX3RvX2hhbmRsZQk9IGRybV9nZW1fcHJpbWVfZmRfdG9faGFuZGxlLAotCS5nZW1fcHJp
bWVfZXhwb3J0CT0gZHJtX2dlbV9wcmltZV9leHBvcnQsCiAJLmdlbV9wcmltZV9pbXBvcnQJPSBl
eHlub3NfZHJtX2dlbV9wcmltZV9pbXBvcnQsCiAJLmdlbV9wcmltZV9nZXRfc2dfdGFibGUJPSBl
eHlub3NfZHJtX2dlbV9wcmltZV9nZXRfc2dfdGFibGUsCiAJLmdlbV9wcmltZV9pbXBvcnRfc2df
dGFibGUJPSBleHlub3NfZHJtX2dlbV9wcmltZV9pbXBvcnRfc2dfdGFibGUsCi0tIAoyLjIwLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
