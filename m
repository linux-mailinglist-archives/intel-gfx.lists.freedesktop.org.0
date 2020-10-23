Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26ADA296EE2
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 14:24:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74EAC6E5CC;
	Fri, 23 Oct 2020 12:23:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D50BA6E5CC
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 12:22:58 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id q5so1305983wmq.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 05:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VujIMeu4s9glQHD7csuDCyNoNKl6Zu7MMMJFOASMnXs=;
 b=HLKP8/sUzUrEFqrvdfp4nIWF3Fj3rdBIXl3euidd+sV2PDSfKG6erI11swR+hCO22K
 SrU2t7SID5EyIcOumwAw8pvvF8+cj7hxL+5Xc9w7THMCq1a4kc7ovtRIlSLFE6Z6wvW9
 xJUHAA5lVFAEQmCV4toX9HY0sQbKAmWG/AZ00=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VujIMeu4s9glQHD7csuDCyNoNKl6Zu7MMMJFOASMnXs=;
 b=ULfJKtMvPLI0lz3+1OP0pF4ty9yqIsSA1Fpc4ebC37hN8tCbOJxFGqqRpYOnjX7xlO
 iu+5lhvCYo7SRXWS6tSU65dofF3NHPrxtf8NMncIyUJ0PaY7DDp+FaOjI9FwEV8jQh5g
 7FRtD9t16QhYIYteoE145NMAWeKRIogrDNqPyTT/sFjXZhO1fCEfOO1PSl+3eVngC5A8
 HSbTpwqsaHIA6F3HZgEfwI3MruA7+qbEmTvx8nqjOKzZsJy9GtVDfroPGjQBr4x0xznd
 0DeyNgSIlmGQzjxKeCvYkpn1Yf0ilPDYH9pQD+snIP7uYDuF9dHEQhY1fbixnBfRooPP
 xEew==
X-Gm-Message-State: AOAM533XBcsi/Cga3Z34oPXLSMIs2gyRj7QuRdsC+DCyi/dGCNfHQLhn
 +QFT49HDO7EiLGxDqpgXmNOMJqyu+5Q6sWds
X-Google-Smtp-Source: ABdhPJzooQe5/oLZHxZZgmc8taLUFT3g7cbiBkIxYHgxSDDcYbP1QZs6l4Y9xlT/uD3YRe4MsGFoyA==
X-Received: by 2002:a1c:b389:: with SMTP id c131mr2156367wmf.73.1603455777607; 
 Fri, 23 Oct 2020 05:22:57 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y4sm3056484wrp.74.2020.10.23.05.22.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 05:22:57 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 23 Oct 2020 14:21:42 +0200
Message-Id: <20201023122216.2373294-31-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
References: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 31/65] drm/exynos: Use FOLL_LONGTERM for g2d
 cmdlists
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: linux-samsung-soc@vger.kernel.org, Jan Kara <jack@suse.cz>,
 Joonyoung Shim <jy0922.shim@samsung.com>, linux-mm@kvack.org,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Inki Dae <inki.dae@samsung.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Kyungmin Park <kyungmin.park@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, John Hubbard <jhubbard@nvidia.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGV4eW5vcyBnMmQgaW50ZXJmYWNlIGlzIHZlcnkgdW51c3VhbCwgYnV0IGl0IGxvb2tzIGxp
a2UgdGhlCnVzZXJwdHIgb2JqZWN0cyBhcmUgcGVyc2lzdGVudC4gSGVuY2UgdGhleSBuZWVkIEZP
TExfTE9OR1RFUk0uCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVy
QGludGVsLmNvbT4KQ2M6IEphc29uIEd1bnRob3JwZSA8amdnQHppZXBlLmNhPgpDYzogSW5raSBE
YWUgPGlua2kuZGFlQHNhbXN1bmcuY29tPgpDYzogSm9vbnlvdW5nIFNoaW0gPGp5MDkyMi5zaGlt
QHNhbXN1bmcuY29tPgpDYzogU2V1bmctV29vIEtpbSA8c3cwMzEyLmtpbUBzYW1zdW5nLmNvbT4K
Q2M6IEt5dW5nbWluIFBhcmsgPGt5dW5nbWluLnBhcmtAc2Ftc3VuZy5jb20+CkNjOiBLdWtqaW4g
S2ltIDxrZ2VuZUBrZXJuZWwub3JnPgpDYzogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJu
ZWwub3JnPgpDYzogQW5kcmV3IE1vcnRvbiA8YWtwbUBsaW51eC1mb3VuZGF0aW9uLm9yZz4KQ2M6
IEpvaG4gSHViYmFyZCA8amh1YmJhcmRAbnZpZGlhLmNvbT4KQ2M6IErDqXLDtG1lIEdsaXNzZSA8
amdsaXNzZUByZWRoYXQuY29tPgpDYzogSmFuIEthcmEgPGphY2tAc3VzZS5jej4KQ2M6IERhbiBX
aWxsaWFtcyA8ZGFuLmoud2lsbGlhbXNAaW50ZWwuY29tPgpDYzogbGludXgtbW1Aa3ZhY2sub3Jn
CkNjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LXNhbXN1
bmctc29jQHZnZXIua2VybmVsLm9yZwpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnClNp
Z25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2cyZC5jIHwgMyArKy0KIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1fZzJkLmMgYi9kcml2ZXJzL2dwdS9kcm0vZXh5
bm9zL2V4eW5vc19kcm1fZzJkLmMKaW5kZXggZWNlZGU0MWFmOWI5Li4xZTBjNWE3ZjIwNmUgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9nMmQuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1fZzJkLmMKQEAgLTQ3NSw3ICs0NzUsOCBA
QCBzdGF0aWMgZG1hX2FkZHJfdCAqZzJkX3VzZXJwdHJfZ2V0X2RtYV9hZGRyKHN0cnVjdCBnMmRf
ZGF0YSAqZzJkLAogCQlnb3RvIGVycl9mcmVlOwogCX0KIAotCXJldCA9IHBpbl91c2VyX3BhZ2Vz
X2Zhc3Qoc3RhcnQsIG5wYWdlcywgRk9MTF9GT1JDRSB8IEZPTExfV1JJVEUsCisJcmV0ID0gcGlu
X3VzZXJfcGFnZXNfZmFzdChzdGFydCwgbnBhZ2VzLAorCQkJCSAgRk9MTF9GT1JDRSB8IEZPTExf
V1JJVEUgfCBGT0xMX0xPTkdURVJNLAogCQkJCSAgZzJkX3VzZXJwdHItPnBhZ2VzKTsKIAlpZiAo
cmV0ICE9IG5wYWdlcykgewogCQlEUk1fREVWX0VSUk9SKGcyZC0+ZGV2LAotLSAKMi4yOC4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
