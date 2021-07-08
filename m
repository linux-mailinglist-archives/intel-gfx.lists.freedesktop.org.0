Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B21743C184E
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 19:38:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 560B26E949;
	Thu,  8 Jul 2021 17:38:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 080E26E949
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 17:38:11 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id p8so8565438wrr.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Jul 2021 10:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4V6pxp76MaEudx/IEK54W+rky4iXy/miG07jgmRH7DY=;
 b=BrRyknKgZV88ecMd94XiTUvwrdcF0uLLV6KBOjYoFXh1VuGj/8QahnhkFG4boL11gc
 GbkImyM9EaNR/hFZVGGQMl4i8i9ZpHHQE92NlVugO0ICg1P/HA3rEOAIq3bIO1y0+Gv+
 2TrCxbD4EOn129DwOalT6Q4Z6kfQ1/gn4e+8k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4V6pxp76MaEudx/IEK54W+rky4iXy/miG07jgmRH7DY=;
 b=HlT8qEuJ4uqcAxnr4hy1VOBs0RSMTauKowFvb6mZHd/5hlrgYqUM72cFWYrHKl+BMm
 RDSS4eSMEx5FoEGDsxY+2mD/oefAdj/apj4YPvRTrsZ55RmnsyYqjWwmVA3+T+cY1hww
 Eu/R8Ovp2IIqbiseVL7X5pqVxbJMeTeaJyF9UNi/EDAvDtC4ity7Fkxv8wiFg6rUDRhg
 lxUHQse4SU4tmrSOWyQo3RD/+joEIFfQWAAPRrFcn9tEXYH1Kdts4KXrxP/cFrV13Snn
 +6uIRGABTTNA7xf2LEAxmwyhDs3zBaSZB8xTAIURnuqwm2h4xwnDYrFn3ru1nULT1Xn+
 8QVA==
X-Gm-Message-State: AOAM533dDFf+Y4k2GRzsnTWwpZIAGNbRUXjWXFvpMSRhEZIRgBqGrZmT
 ISIwtzXE0Ymk1tLIkBzZjiz7FA==
X-Google-Smtp-Source: ABdhPJxHYVh0KxReMYig08Pr0SYBUWnkEnvrgb57hPZUNr7/myKklgUeEQiVEXOTmXmKCBxKM8EriQ==
X-Received: by 2002:a5d:634e:: with SMTP id b14mr35294595wrw.96.1625765889739; 
 Thu, 08 Jul 2021 10:38:09 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l4sm2521853wme.26.2021.07.08.10.38.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Jul 2021 10:38:09 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  8 Jul 2021 19:37:37 +0200
Message-Id: <20210708173754.3877540-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210708173754.3877540-1-daniel.vetter@ffwll.ch>
References: <20210708173754.3877540-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 03/20] drm/sched: Barriers are needed for
 entity->last_scheduled
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
Cc: Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Lee Jones <lee.jones@linaro.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQgbWlnaHQgYmUgZ29vZCBlbm91Z2ggb24geDg2IHdpdGgganVzdCBSRUFEX09OQ0UsIGJ1dCB0
aGUgd3JpdGUgc2lkZQpzaG91bGQgdGhlbiBhdCBsZWFzdCBiZSBXUklURV9PTkNFIGJlY2F1c2Ug
eDg2IGhhcyB0b3RhbCBzdG9yZSBvcmRlci4KCkl0J3MgZGVmaW5pdGVseSBub3QgZW5vdWdoIG9u
IGFybS4KCkZpeCB0aGlzIHByb3BsZXJ5LCB3aGljaCBtZWFucwotIGV4cGxhaW4gdGhlIG5lZWQg
Zm9yIHRoZSBiYXJyaWVyIGluIGJvdGggcGxhY2VzCi0gcG9pbnQgYXQgdGhlIG90aGVyIHNpZGUg
aW4gZWFjaCBjb21tZW50CgpBbHNvIHB1bGwgb3V0IHRoZSAhc2NoZWRfbGlzdCBjYXNlIGFzIHRo
ZSBmaXJzdCBjaGVjaywgc28gdGhhdCB0aGUKY29kZSBmbG93IGlzIGNsZWFyZXIuCgpXaGlsZSBh
dCBpdCBzcHJpbmtsZSBzb21lIGNvbW1lbnRzIGFyb3VuZCBiZWNhdXNlIGl0IHdhcyB2ZXJ5Cm5v
bi1vYnZpb3VzIHRvIG1lIHdoYXQncyBhY3R1YWxseSBnb2luZyBvbiBoZXJlIGFuZCB3aHkuCgpO
b3RlIHRoYXQgd2UgcmVhbGx5IG5lZWQgZnVsbCBiYXJyaWVycyBoZXJlLCBhdCBmaXJzdCBJIHRo
b3VnaHQKc3RvcmUtcmVsZWFzZSBhbmQgbG9hZC1hY3F1aXJlIG9uIC0+bGFzdF9zY2hlZHVsZWQg
d291bGQgYmUgZW5vdWdoLApidXQgd2UgYWN0dWFsbHkgcmVxdWlyaW5nIG9yZGVyaW5nIGJldHdl
ZW4gdGhhdCBhbmQgdGhlIHF1ZXVlIHN0YXRlLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRl
ciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlz
dGlhbi5rb2VuaWdAYW1kLmNvbT4KQ2M6IFN0ZXZlbiBQcmljZSA8c3RldmVuLnByaWNlQGFybS5j
b20+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgpDYzogQW5kcmV5
IEdyb2R6b3Zza3kgPGFuZHJleS5ncm9kem92c2t5QGFtZC5jb20+CkNjOiBMZWUgSm9uZXMgPGxl
ZS5qb25lc0BsaW5hcm8ub3JnPgpDYzogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25A
Y29sbGFib3JhLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0
eS5jIHwgMjcgKysrKysrKysrKysrKysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMjUgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
c2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hl
ZF9lbnRpdHkuYwppbmRleCA2NGQzOTgxNjY2NDQuLjRlMTEyNGVkODBlMCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jCkBAIC00MzksOCArNDM5LDE2IEBAIHN0cnVj
dCBkcm1fc2NoZWRfam9iICpkcm1fc2NoZWRfZW50aXR5X3BvcF9qb2Ioc3RydWN0IGRybV9zY2hl
ZF9lbnRpdHkgKmVudGl0eSkKIAkJZG1hX2ZlbmNlX3NldF9lcnJvcigmc2NoZWRfam9iLT5zX2Zl
bmNlLT5maW5pc2hlZCwgLUVDQU5DRUxFRCk7CiAKIAlkbWFfZmVuY2VfcHV0KGVudGl0eS0+bGFz
dF9zY2hlZHVsZWQpOworCiAJZW50aXR5LT5sYXN0X3NjaGVkdWxlZCA9IGRtYV9mZW5jZV9nZXQo
JnNjaGVkX2pvYi0+c19mZW5jZS0+ZmluaXNoZWQpOwogCisJLyoKKwkgKiBpZiB0aGUgcXVldWUg
aXMgZW1wdHkgd2UgYWxsb3cgZHJtX3NjaGVkX2pvYl9hcm0oKSB0byBsb2NrbGVzc2x5CisJICog
YWNjZXNzIC0+bGFzdF9zY2hlZHVsZWQuIFRoaXMgb25seSB3b3JrcyBpZiB3ZSBzZXQgdGhlIHBv
aW50ZXIgYmVmb3JlCisJICogd2UgZGVxdWV1ZSBhbmQgaWYgd2UgYSB3cml0ZSBiYXJyaWVyIGhl
cmUuCisJICovCisJc21wX3dtYigpOworCiAJc3BzY19xdWV1ZV9wb3AoJmVudGl0eS0+am9iX3F1
ZXVlKTsKIAlyZXR1cm4gc2NoZWRfam9iOwogfQpAQCAtNDU5LDEwICs0NjcsMjUgQEAgdm9pZCBk
cm1fc2NoZWRfZW50aXR5X3NlbGVjdF9ycShzdHJ1Y3QgZHJtX3NjaGVkX2VudGl0eSAqZW50aXR5
KQogCXN0cnVjdCBkcm1fZ3B1X3NjaGVkdWxlciAqc2NoZWQ7CiAJc3RydWN0IGRybV9zY2hlZF9y
cSAqcnE7CiAKLQlpZiAoc3BzY19xdWV1ZV9jb3VudCgmZW50aXR5LT5qb2JfcXVldWUpIHx8ICFl
bnRpdHktPnNjaGVkX2xpc3QpCisJLyogc2luZ2xlIHBvc3NpYmxlIGVuZ2luZSBhbmQgYWxyZWFk
eSBzZWxlY3RlZCAqLworCWlmICghZW50aXR5LT5zY2hlZF9saXN0KQorCQlyZXR1cm47CisKKwkv
KiBxdWV1ZSBub24tZW1wdHksIHN0YXkgb24gdGhlIHNhbWUgZW5naW5lICovCisJaWYgKHNwc2Nf
cXVldWVfY291bnQoJmVudGl0eS0+am9iX3F1ZXVlKSkKIAkJcmV0dXJuOwogCi0JZmVuY2UgPSBS
RUFEX09OQ0UoZW50aXR5LT5sYXN0X3NjaGVkdWxlZCk7CisJZmVuY2UgPSBlbnRpdHktPmxhc3Rf
c2NoZWR1bGVkOworCisJLyoKKwkgKiBPbmx5IHdoZW4gdGhlIHF1ZXVlIGlzIGVtcHR5IGFyZSB3
ZSBndWFyYW50ZWVkIHRoZSB0aGUgc2NoZWR1bGVyCisJICogdGhyZWFkIGNhbm5vdCBjaGFuZ2Ug
LT5sYXN0X3NjaGVkdWxlZC4gVG8gZW5mb3JjZSBvcmRlcmluZyB3ZSBuZWVkCisJICogYSByZWFk
IGJhcnJpZXIgaGVyZS4gU2VlIGRybV9zY2hlZF9lbnRpdHlfcG9wX2pvYigpIGZvciB0aGUgb3Ro
ZXIKKwkgKiBzaWRlLgorCSAqLworCXNtcF9ybWIoKTsKKworCS8qIHN0YXkgb24gdGhlIHNhbWUg
ZW5naW5lIGlmIHRoZSBwcmV2aW91cyBqb2IgaGFzbid0IGZpbmlzaGVkICovCiAJaWYgKGZlbmNl
ICYmICFkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2UpKQogCQlyZXR1cm47CiAKLS0gCjIuMzIu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
