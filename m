Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B0A2184AF
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 12:09:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E1166E1E0;
	Wed,  8 Jul 2020 10:09:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com
 [IPv6:2a00:1450:4864:20::243])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86FF86E21A
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 10:09:04 +0000 (UTC)
Received: by mail-lj1-x243.google.com with SMTP id z24so28584881ljn.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Jul 2020 03:09:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hardline-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9vU3dHVJF1DDhvbmIUSw+HPFIVnD/dUfSEN86bDEiPE=;
 b=thla6P3g+L9sjKDGNM/nvsjjV/hZlmJW3EvUYpUQNPzK4dxBvWT9bYM+VX8AFFeoSg
 twv0B/45LvdKXP8hMKndMDT3EUfNZEVWmSj+L1kQ9f+LJ3WuXg5EHS7l7mf7HI1JDaeQ
 KoumoArIf2qQBAJZLiav+y/MYWXMIQx7/l5ncvCYjnU58Fe9cGiIYlktMKxJ+6HrmL3R
 BN7YIX5+qN2ZzH5OqkvjnzAB9rmN1myNMS/DwRg+EAkZfegq3xQp6VoJdp6+3qGsezDV
 C0a03B8to9GJDEJ1is8QlRRupUMhpgy7aJLgrx9cU1L1a/E4NXJKOzYAjg0li5l6ZZYV
 x+LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9vU3dHVJF1DDhvbmIUSw+HPFIVnD/dUfSEN86bDEiPE=;
 b=fqFxchwftWdoKGowi1Tz3P4+LpZuGWQEZxtQ+8bUinJO+AkEkwgX+3wRJ5It9xEwpj
 NUJESVHX9wcA8koD4lOy2XBgNIFODT+E/3hLwlHQfc8KWBpINqT+Lwvqfbz6X4hxIEJP
 aWmmiDf+8qPy5y3VLj6DvTCRRqt3yaYrvc/76cYEFNMiFv8Z5xLLMlb0NQW0c51RGySs
 1E8jg6lJdinhHictXQxbRNNYAotGrZi/antEb45hrrEkLw/uYJuaReel+BEkVCoXEeeN
 npPAIHlUAzb/wKoKN7AduKjHXYcepMxsNRUaN2NZ4lnelr1bC/SeOwkbKNl6VU+Ugi4L
 FH6w==
X-Gm-Message-State: AOAM5333HJweszWUWQcS7EcmpJtxKcHl2uXre7RgLIS1PlSsjk4ukfMr
 nrHudWUHAJxSoqWrEp+ZuJ86IvCGCmFMkw==
X-Google-Smtp-Source: ABdhPJz+HCJld3JOtgH4h7dLHXx4G6y/n96bHiRnQQwBEfxV+FOcvrdr0ImJSsWBnOcgqQHq+fJuBw==
X-Received: by 2002:a2e:7615:: with SMTP id r21mr24150409ljc.124.1594202942778; 
 Wed, 08 Jul 2020 03:09:02 -0700 (PDT)
Received: from localhost (109241244009.gdansk.vectranet.pl. [109.241.244.9])
 by smtp.gmail.com with ESMTPSA id v20sm9930842lfr.74.2020.07.08.03.09.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jul 2020 03:09:02 -0700 (PDT)
From: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal@hardline.pl>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jul 2020 12:08:43 +0200
Message-Id: <20200708100843.297655-2-michal@hardline.pl>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200708100843.297655-1-michal@hardline.pl>
References: <20200708100843.297655-1-michal@hardline.pl>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/huc: Adjust HuC state
 accordingly after GuC fetch error
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
IGFzc2VydHMgdG8gZmlyZSB3aGVuIGNhbGxpbmcKImludGVsX2h1Y19pc191c2VkKCkiLgoKdjI6
IEFkZCBkYmcgcHJpbnQgd2hlbiBtb3ZpbmcgSHVDIGludG8gZXJyb3Igc3RhdGUgKERhbmllbGUp
CgpSZXBvcnRlZC1ieTogTWFyY2luIEJlcm5hdG93aWN6IDxtYXJjaW4uYmVybmF0b3dpY3pAaW50
ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNaWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndpbmlhcnNr
aUBpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
Q2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5j
b20+CkNjOiBNYXJjaW4gQmVybmF0b3dpY3ogPG1hcmNpbi5iZXJuYXRvd2ljekBpbnRlbC5jb20+
CkNjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KUmV2aWV3
ZWQtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyB8IDExICsr
KysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCmluZGV4IDFjMmQ2MzU4ODI2Yy4u
ZDZmNTVmNzA4ODlkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRl
bF91Yy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKQEAgLTI2
Nyw4ICsyNjcsMTcgQEAgc3RhdGljIHZvaWQgX191Y19mZXRjaF9maXJtd2FyZXMoc3RydWN0IGlu
dGVsX3VjICp1YykKIAlHRU1fQlVHX09OKCFpbnRlbF91Y193YW50c19ndWModWMpKTsKIAogCWVy
ciA9IGludGVsX3VjX2Z3X2ZldGNoKCZ1Yy0+Z3VjLmZ3KTsKLQlpZiAoZXJyKQorCWlmIChlcnIp
IHsKKwkJLyogTWFrZSBzdXJlIHdlIHRyYW5zaXRpb24gb3V0IG9mIHRyYW5zaWVudCAiU0VMRUNU
RUQiIHN0YXRlICovCisJCWlmIChpbnRlbF91Y193YW50c19odWModWMpKSB7CisJCQlkcm1fZGJn
KCZ1Y190b19ndCh1YyktPmk5MTUtPmRybSwKKwkJCQkiRmFpbGVkIHRvIGZldGNoIEd1QzogJWQg
ZGlzYWJsaW5nIEh1Q1xuIiwgZXJyKTsKKwkJCWludGVsX3VjX2Z3X2NoYW5nZV9zdGF0dXMoJnVj
LT5odWMuZncsCisJCQkJCQkgIElOVEVMX1VDX0ZJUk1XQVJFX0VSUk9SKTsKKwkJfQorCiAJCXJl
dHVybjsKKwl9CiAKIAlpZiAoaW50ZWxfdWNfd2FudHNfaHVjKHVjKSkKIAkJaW50ZWxfdWNfZndf
ZmV0Y2goJnVjLT5odWMuZncpOwotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
