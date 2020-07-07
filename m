Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 145E2217ABE
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 23:52:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BA846E260;
	Tue,  7 Jul 2020 21:52:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CF416E260
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 21:52:47 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id q4so16088503lji.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Jul 2020 14:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hardline-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hUV5mPKD2c8dgOEM6R7u1Sos9C90NYF2JRxCbxOG4+8=;
 b=S0GdZ3ZG9TesmdohiTflip0H/yh6HuKJSPEQOSg2Us1f+IzDcIkwd2xGi8GEoXVkoZ
 7wcyKijbetd7ddaZ4l+1EZeK5JWNjBx3TWn59RNtchojbtOn3ks5dmOnrzg7caU8IkPc
 iWsz5+5cJfFvpGlGFZX4VL6k1CYx34O+1Zg0gquv2U+oblw2DUoPpuElrqe4ldrqBf1h
 QZqbz+dUjY0B5QHHckCCvyGoGB6O66vQNOTQ/9YnR6Xq7hFfUPgqByIyoALoMe8Bfg1q
 ogOp4disNjNxNFInKX0fbxoyZb4qHCPDttfZS8BSEWDryKLy8h6X+n9AYq5EyWX1oQiI
 JKhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hUV5mPKD2c8dgOEM6R7u1Sos9C90NYF2JRxCbxOG4+8=;
 b=hFFt/irvpKvT3HFBKdqotwn1OcKqRDDrTtD38e8b80Yh05cclDvobCCYN2YbprmrOj
 ULEnrOYZxSWKB/FvHFTAui29BDKpliuK20BnJiitjyKzD7JG4mvcYTvY8VBA9di8g28i
 Dfsfwc3VCOfWk0L9T5AU00HID5T98HkZd28WDTJ21g9/WzFMAB79LCmwF/OWGPvbtHDE
 OkhsRK34NVgyQy2K8c9t/8TylF7cDKf7aLYblaHkz+d1cyEpxBOEvczeFQWDDJkr/0l+
 GbNuUILE0DCTfn+26YxOt7wOoPXTp83JL16ZXu4AYqTTwbi7YlCjI5jr8S43xZ+DX6sf
 2a/w==
X-Gm-Message-State: AOAM533E5yjEpJVvDG649ZuAQV4BB2mpXs845qr4x7FOCqBTXvWC0UHZ
 dSzp+0sPM9lQEDcKWuaJQBeCyn/z5cfd8Q==
X-Google-Smtp-Source: ABdhPJxsNGdmdco6DQ2NWfGoTAn8N3/vnyCJcusWl976t4+7RlMpQTy7gf2b+TTDxz7Kp0czsuiyhA==
X-Received: by 2002:a05:651c:30b:: with SMTP id
 a11mr26900793ljp.47.1594158765551; 
 Tue, 07 Jul 2020 14:52:45 -0700 (PDT)
Received: from localhost (109241244009.gdansk.vectranet.pl. [109.241.244.9])
 by smtp.gmail.com with ESMTPSA id l1sm421258ljc.65.2020.07.07.14.52.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jul 2020 14:52:45 -0700 (PDT)
From: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal@hardline.pl>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Jul 2020 23:52:18 +0200
Message-Id: <20200707215218.272031-2-michal@hardline.pl>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200707215218.272031-1-michal@hardline.pl>
References: <20200707215218.272031-1-michal@hardline.pl>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/huc: Adjust HuC state accordingly
 after GuC fetch error
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
Cc: Marcin Bernatowicz <marcin.bernatowicz@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgoKRmly
bXdhcmUgIlNlbGVjdGVkIiBzdGF0ZSBpcyBhIHRyYW5zaWVudCBzdGF0ZSAtIHdlIGRvbid0IGV4
cGVjdCB0byBzZWUKaXQgYWZ0ZXIgZmluaXNoaW5nIGRyaXZlciBwcm9iZSwgd2UgZXZlbiBoYXZl
IGFzc2VydHMgc3ByaW5rbGVkIG92ZXIKaTkxNSB0byBjb25maXJtIHdoZXRoZXIgdGhhdCdzIHRo
ZSBjYXNlLgpVbmZvcnR1bmF0ZWx5IC0gd2UgZG9uJ3QgaGFuZGxlIHRoZSB0cmFuc2l0aW9uIG91
dCBvZiAiU2VsZWN0ZWQiIGluIGNhc2UKb2YgR3VDIGZldGNoIGVycm9yLCBsZWFkaW5nIHRob3Nl
IGFzc2VydHMgdG8gZmlyZSB3aGVuIGNhbGxpbmcKImludGVsX2h1Y19pc191c2VkKCkiLgoKUmVw
b3J0ZWQtYnk6IE1hcmNpbiBCZXJuYXRvd2ljeiA8bWFyY2luLmJlcm5hdG93aWN6QGludGVsLmNv
bT4KU2lnbmVkLW9mZi1ieTogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50
ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBE
YW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpD
YzogTWFyY2luIEJlcm5hdG93aWN6IDxtYXJjaW4uYmVybmF0b3dpY3pAaW50ZWwuY29tPgpDYzog
TWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyB8IDggKysrKysrKy0KIDEgZmlsZSBjaGFu
Z2VkLCA3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfdWMuYwppbmRleCAxYzJkNjM1ODgyNmMuLjk5M2U5NzU1ZjMxNyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCkBAIC0yNjcsOCArMjY3LDE0IEBAIHN0YXRpYyB2
b2lkIF9fdWNfZmV0Y2hfZmlybXdhcmVzKHN0cnVjdCBpbnRlbF91YyAqdWMpCiAJR0VNX0JVR19P
TighaW50ZWxfdWNfd2FudHNfZ3VjKHVjKSk7CiAKIAllcnIgPSBpbnRlbF91Y19md19mZXRjaCgm
dWMtPmd1Yy5mdyk7Ci0JaWYgKGVycikKKwlpZiAoZXJyKSB7CisJCS8qIE1ha2Ugc3VyZSB3ZSB0
cmFuc2l0aW9uIG91dCBvZiB0cmFuc2llbnQgIlNFTEVDVEVEIiBzdGF0ZSAqLworCQlpZiAoaW50
ZWxfdWNfd2FudHNfaHVjKHVjKSkKKwkJCWludGVsX3VjX2Z3X2NoYW5nZV9zdGF0dXMoJnVjLT5o
dWMuZncsCisJCQkJCQkgIElOVEVMX1VDX0ZJUk1XQVJFX0VSUk9SKTsKKwogCQlyZXR1cm47CisJ
fQogCiAJaWYgKGludGVsX3VjX3dhbnRzX2h1Yyh1YykpCiAJCWludGVsX3VjX2Z3X2ZldGNoKCZ1
Yy0+aHVjLmZ3KTsKLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
