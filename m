Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E4D2155D7
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 12:50:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 292E26E03B;
	Mon,  6 Jul 2020 10:50:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B46C6E03B
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 10:50:36 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id g20so34146774edm.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 Jul 2020 03:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hardline-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3NOc9gQsETNS1533uPXnMDlzOEy1GIEit93SsGsgmgA=;
 b=OJUAFvsuYKFMP3pp8Bzbn4FDZs8s9UZHj/ioCbkM28JnNR7K8kICkyQR5wdWhPpDgG
 KsmKd4m+QZi6sBNXSkp3FyTrnZ+wxfwsbVUF7g5Xg7rtiodrvPob8vww9bF0lYX+p/wk
 8msz2TMVPBChXNSrwc7LV4UrI2EeLUtJ5gbCnwVIPK7kXII2iKuFiOLlWnRJsfSUMDY9
 fKmqmAAhcfvoX3APtzRYfaACvVQqfHqHUUYsjJcJF5UhCPsIXmgAOrejE4OIBIIGm5ir
 AU14dAoMvQzK+yomo4flbI71BnfDngzAVM7SJ1xPGSQLt7a1I1eZqJ77wUaScZRAMdvI
 kiCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3NOc9gQsETNS1533uPXnMDlzOEy1GIEit93SsGsgmgA=;
 b=pkKzUw+hVFBpwPVEq0e2qx3vHstBOGFg9U6IU3CGTOaTdIcQN+goJ2s8iH8F/MEfks
 1FvoWrxB5TU45TN4DwNeVHyIW35ok9Z+3T37NeiHDvFsACdpMVQ4LUFYp5MtW+91G0ny
 fpzi1dDXzG3eLrBdWOnrM4plEmh/bnvQzQA4uwHCdJrqouMFkdJY0X62h5e3tx+mEy5t
 CoWvx4fFrLYUXnR9Eur7El2NAk4/dILf/tEGYPwqckaS7any0kCrGq/oYBZnoFqpEzIE
 I5rYXkfvthPK1vd4UYIFWi2LiWnoYM591Cuk9+wCAlNncy8LdaYJ+BsGAcCyDqWJ3n6W
 VnKg==
X-Gm-Message-State: AOAM533oyvaREOzGDqOoErok7VWt5e7Dj+XXnlx9WWQCghsdtP1AKesY
 Rb2NIlCUqt05iCH6ft4XTgObycMGA+ktKA==
X-Google-Smtp-Source: ABdhPJwVcbyv1voSBfpc8G01e0cP+v8c7xMr7fNFMrtLAA1TVot+JQwHtNDeP+mj0zb6YtnHqK2J/Q==
X-Received: by 2002:a19:c4a:: with SMTP id 71mr29948799lfm.27.1594032612988;
 Mon, 06 Jul 2020 03:50:12 -0700 (PDT)
Received: from localhost (109241244009.gdansk.vectranet.pl. [109.241.244.9])
 by smtp.gmail.com with ESMTPSA id v12sm8778415lfp.12.2020.07.06.03.50.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jul 2020 03:50:08 -0700 (PDT)
From: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal@hardline.pl>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Jul 2020 12:49:53 +0200
Message-Id: <20200706104953.139261-2-michal@hardline.pl>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200706104953.139261-1-michal@hardline.pl>
References: <20200706104953.139261-1-michal@hardline.pl>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Print caller when tainting for CI
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
Cc: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgY2FuIGFkZCB0YWludCBmcm9tIG11bHRpcGxlIHBsYWNlcywgcHJpbnRpbmcgdGhlIGNhbGxl
ciBhbGxvd3MgdXMgdG8KaGF2ZSBhIGJldHRlciBvdmVydmlldyBvZiB3aGF0IGV4YWN0bHkgY2F1
c2VkIHVzIHRvIGRvIHRoZSB0YWludGluZy4KClN1Z2dlc3RlZC1ieTogTWljaGFsIFdhamRlY3pr
byA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1pY2hhxYIgV2lu
aWFyc2tpIDxtaWNoYWwud2luaWFyc2tpQGludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRl
Y3prb0BpbnRlbC5jb20+CkNjOiBQZXRyaSBMYXR2YWxhIDxwZXRyaS5sYXR2YWxhQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmggfCAxICsKIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfdXRpbHMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuaAppbmRleCAw
M2E3M2QyYmQ1MGQuLjFlZDVjNDdlYWU4ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV91dGlscy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuaApA
QCAtNDQ0LDYgKzQ0NCw3IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBhZGRfdGFpbnRfZm9yX0NJKHVu
c2lnbmVkIGludCB0YWludCkKIAkgKiBDSSBjaGVja3MgdGhlIHRhaW50IHN0YXRlIGFmdGVyIGV2
ZXJ5IHRlc3QgYW5kIHdpbGwgcmVib290CiAJICogdGhlIG1hY2hpbmUgaWYgdGhlIGtlcm5lbCBp
cyB0YWludGVkLgogCSAqLworCXByX2luZm8oIkNJIHRhaW50OiAlcHNcbiIsIF9fYnVpbHRpbl9y
ZXR1cm5fYWRkcmVzcygwKSk7CiAJYWRkX3RhaW50KHRhaW50LCBMT0NLREVQX1NUSUxMX09LKTsK
IH0KIAotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
