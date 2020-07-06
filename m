Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A6D215903
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 16:01:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A97356E40A;
	Mon,  6 Jul 2020 14:01:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52B366E400
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 14:01:37 +0000 (UTC)
Received: by mail-lj1-x244.google.com with SMTP id h22so38337348lji.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 Jul 2020 07:01:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hardline-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ARtxJHAmq2rLwO3GXVq96zy02FcId+bnZjHOsn5eodo=;
 b=PfeYfb6mSsHJzTT+h7GXB/e+xZPA00Id/jjwntw2zPCRTJg/i75N0w2JtWZtRENJik
 fVDlL7V43lZtClmzLOLVES4kOmk2ntjnDLfvFl4zrdPoAWtv/G7BQI4Y7SVpQjwY0+cr
 fKF+16/PufzqkPk/EYxEaLwkN47acW20XZWQ/1427OtnonYtJxiqc1URDn/BnDTKGj8+
 nfDyGlTatec6wsh/+UoY7L0yM4owNW5CvVOUpqY6W/yZPLDURzRopeI+Bf7jlI9pisSN
 Yy+wWLQEgQTFE8tI0rFnexS6U8wsnB3yZ0Uh4pD07i1GmeRJ62nR9JgWS1IM+GkZb4QT
 AQYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ARtxJHAmq2rLwO3GXVq96zy02FcId+bnZjHOsn5eodo=;
 b=G5AcsJV+9k8XZbAD2k/8EBNeAm9D6WvJra26yFX/w3L40NhhATyvRO3oJmJDG2RC7J
 V2WYRT5zH7I4YKxq9CmnFg7dU6qPff5GQEPfsII5s/Jqx76Z9VY83HlPYLcTbncQKpaG
 YnsMBsdgbXqn0M0JNa4h5NRm6cBrur9NJehwyc9GpEcvo0sMINGb/D7aF8iTu1BRPe2c
 wQoQ06ov41d0vWgJTpytK5FP08f7Rogeex+NoQtLo2PEquxm9BtVo0bLEn934mwVE7Jn
 hansq1pGyZ5jDfBXlotMGSroPZq0KODDH50IZoV3vym5zxcGmTIJlRPUevxWpfvB+5Wm
 VkDw==
X-Gm-Message-State: AOAM531p6ReezZW/PdhP0f/DOWFzhH3YOw0cDxE+s7knyQ14hjFe8DmD
 WGk7jqWgAhF/jcje4P3PNyPfawwlrS5KJw==
X-Google-Smtp-Source: ABdhPJwriwDd/+DAxYLXbbYi05yFY50thgIcayUCNx5dQtGW/ASS/wINIkgnjxgzrPWuweAtJEG23w==
X-Received: by 2002:a2e:91c9:: with SMTP id u9mr16899801ljg.147.1594044095388; 
 Mon, 06 Jul 2020 07:01:35 -0700 (PDT)
Received: from localhost (109241244009.gdansk.vectranet.pl. [109.241.244.9])
 by smtp.gmail.com with ESMTPSA id u15sm7861294ljh.56.2020.07.06.07.01.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jul 2020 07:01:34 -0700 (PDT)
From: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal@hardline.pl>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Jul 2020 16:01:25 +0200
Message-Id: <20200706140125.172844-3-michal@hardline.pl>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200706140125.172844-1-michal@hardline.pl>
References: <20200706140125.172844-1-michal@hardline.pl>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Don't taint when using fault
 injection
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

RnJvbTogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgoKSXQg
aXMgbm90IHJlYWxseSB1bmV4cGVjdGVkIHRvIGhpdCB3ZWRnZSBvbiBpbml0IHRoaXMgd2F5LgpX
ZSdyZSBhbHJlYWR5IGRvd25ncmFkaW5nIGVycm9yIHByaW50ayB3aGVuIHJ1bm5pbmcgd2l0aCBm
YXVsdCBpbmplY3Rpb24sCmxldCdzIHVzZSB0aGUgc2FtZSBhcHByb2FjaCBmb3IgQ0kgdGFpbnRp
bmcuCgpTaWduZWQtb2ZmLWJ5OiBNaWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndpbmlhcnNraUBp
bnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6
IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgpDYzogUGV0cmkg
TGF0dmFsYSA8cGV0cmkubGF0dmFsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV91dGlscy5oIHwgNCArKystCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91
dGlscy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oCmluZGV4IDgyZmFkYTFl
NzU1Mi4uZDg0YzIzNTkyOTQyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3V0aWxzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oCkBAIC00Mzgs
NyArNDM4LDkgQEAgc3RhdGljIGlubGluZSBjb25zdCBjaGFyICplbmFibGVkZGlzYWJsZWQoYm9v
bCB2KQogCiBzdGF0aWMgaW5saW5lIHZvaWQgX19hZGRfdGFpbnRfZm9yX0NJKHVuc2lnbmVkIGlu
dCB0YWludCkKIHsKLQlhZGRfdGFpbnQodGFpbnQsIExPQ0tERVBfU1RJTExfT0spOworCS8qIEZh
aWx1cmVzIHRoYXQgb2NjdXIgZHVyaW5nIGZhdWx0IGluamVjdGlvbiB0ZXN0aW5nIGFyZSBleHBl
Y3RlZCAqLworCWlmICghaTkxNV9lcnJvcl9pbmplY3RlZCgpKQorCQlhZGRfdGFpbnQodGFpbnQs
IExPQ0tERVBfU1RJTExfT0spOwogfQogCiBzdGF0aWMgaW5saW5lIHZvaWQKLS0gCjIuMjcuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
