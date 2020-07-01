Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88BCC210E70
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 17:07:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 090406E924;
	Wed,  1 Jul 2020 15:07:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com
 [IPv6:2a00:1450:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA4E36E924
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 15:07:52 +0000 (UTC)
Received: by mail-lj1-x241.google.com with SMTP id t25so22868926lji.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 Jul 2020 08:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hardline-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GZWfNtSKQQY4wCNgTWXjUMXGsW6kiYbsbMq6PK1VWTY=;
 b=YVPm5NJJYoEk4goORkoFJfhX8Tkz56WYL2lhPbjrasWMa8QU0x0YgaxY473HQrjxEm
 4/oHPptro2L+GQDpCAK8W01Z2WfVQQPkFCzROwNrNVCnQIoauiyQYWYzgKl/Qc0bQ56k
 YDq38aQoRVU66clLXmtQ9RdQee6YnzxL7eIhGAPKdjXM+tn0NfZBy4ATNIWMpxaPHUpR
 mFNy84Sbx50Yo/gpf+Uaud6MZQhkP8D1Zbl34HUvTbTuPt6YofGDGWQR/Loyyae0cINo
 qST081TMMKcpqY9x8rzoeFaSdFd9E7DnaiI4rRdclKZb/lSfRhG0VZyx2OAfJ7ZWBpqP
 VYnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GZWfNtSKQQY4wCNgTWXjUMXGsW6kiYbsbMq6PK1VWTY=;
 b=sbd6lswBL8e9aog/DGrfB1dbzDpctVknWflI4WXfqgpAKFAoeEu7ii6tirbg4+phAx
 2qc4+1nTNy0O51h6+Iy+Adag7ztKCOOesK4elBoSvhhSVGgp9rwZLEs9AGluO2yEafzY
 vuK6xQgnFR4jyBoKcRxXNco4FluhdEQqEMuRWCwDfrkAoug0ymKWCYEIzcdtpTRPhaa0
 8updOtT22JTOwOQCXdGYUkk1W0Z18ZJhUwdfbxlpT9DG5YTR7RdfF+EnjRKLmimnRhCE
 bqqWrXqcUFvJBDiUQrDF94lWPtobB/CftHNdrgg35pOFbb3FprrfDRLmWGOg67TDXSj9
 TPCg==
X-Gm-Message-State: AOAM5332NcdWTmXu0mQSro1JGMWfQrfLMYJvjmEvIM9DuYjHoFmF6imr
 Kiy4/W65AyM9+Bt/vZMYXQHcwxebXAg=
X-Google-Smtp-Source: ABdhPJzmjmB8kbm/JwyBqQ79h1y8ar594UojPqcvznrn/+jdgmslj1hXmfjSTsTk+1WGzwvPrG1n4g==
X-Received: by 2002:a2e:4612:: with SMTP id t18mr12537055lja.212.1593616070408; 
 Wed, 01 Jul 2020 08:07:50 -0700 (PDT)
Received: from localhost (109241244009.gdansk.vectranet.pl. [109.241.244.9])
 by smtp.gmail.com with ESMTPSA id 83sm2147122lfk.84.2020.07.01.08.07.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jul 2020 08:07:49 -0700 (PDT)
From: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal@hardline.pl>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 17:07:21 +0200
Message-Id: <20200701150721.423630-1-michal@hardline.pl>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Reboot CI if we get wedged during
 driver init
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

RnJvbTogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgoKR2V0
dGluZyB3ZWRnZWQgZGV2aWNlIG9uIGRyaXZlciBpbml0IGlzIHByZXR0eSBtdWNoIHVucmVjb3Zl
cmFibGUuClNpbmNlIHdlJ3JlIHJ1bm5pbmcgdmVyaW91cyBzY2VuYXJpb3MgdGhhdCBtYXkgcG90
ZW50aWFsbHkgaGl0IHRoaXMgaW4KQ0kgKG1vZHVsZSByZWxvYWQgLyBzZWxmdGVzdHMgLyBob3R1
bnBsdWcpLCBhbmQgaWYgaXQgaGFwcGVucywgaXQgbWVhbnMKdGhhdCB3ZSBjYW4ndCB0cnVzdCBh
bnkgc3Vic2VxdWVudCBDSSByZXN1bHRzLCB3ZSBzaG91bGQganVzdCBhcHBseSB0aGUKdGFpbnQg
dG8gbGV0IHRoZSBDSSBrbm93IHRoYXQgaXQgc2hvdWxkIHJlYm9vdCAoQ0kgY2hlY2tzIHRhaW50
IGJldHdlZW4KdGVzdCBydW5zKS4KClNpZ25lZC1vZmYtYnk6IE1pY2hhxYIgV2luaWFyc2tpIDxt
aWNoYWwud2luaWFyc2tpQGludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgpDYzogUGV0cmkgTGF0dmFsYSA8cGV0cmkubGF0dmFsYUBpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyB8IDIgKysKIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9yZXNldC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVz
ZXQuYwppbmRleCAwMTU2ZjFmNWM3MzYuLmQyN2U4YmI3ZDU1MCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9yZXNldC5jCkBAIC0xMzYwLDYgKzEzNjAsOCBAQCB2b2lkIGludGVsX2d0X3Nl
dF93ZWRnZWRfb25faW5pdChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogCQkgICAgIEk5MTVfV0VER0VE
X09OX0lOSVQpOwogCWludGVsX2d0X3NldF93ZWRnZWQoZ3QpOwogCXNldF9iaXQoSTkxNV9XRURH
RURfT05fSU5JVCwgJmd0LT5yZXNldC5mbGFncyk7CisKKwlhZGRfdGFpbnRfZm9yX0NJKFRBSU5U
X1dBUk4pOwogfQogCiB2b2lkIGludGVsX2d0X2luaXRfcmVzZXQoc3RydWN0IGludGVsX2d0ICpn
dCkKLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
