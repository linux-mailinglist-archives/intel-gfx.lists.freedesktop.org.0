Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0083C1868
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 19:38:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 874126E951;
	Thu,  8 Jul 2021 17:38:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 871996E95E
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 17:38:17 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 k31-20020a05600c1c9fb029021727d66d33so3042307wms.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Jul 2021 10:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mls2ejKErj4+c/cv4r8BLVM3Y5XNHv+hyokEAjrvlQQ=;
 b=IIF9iyvY6exRnC2Tldk5pPDZhe3//qmZGbSZqZVy4/VVvTCp6g6CRT/VmThqsvLEUc
 orLhRYsA2UKPlNNwkZwpYweBJMqmvrqVyMT4i72pFQwnFVgEVDKjXxceQ18N7NNjHRko
 TxrnLU5FP7l84aSxsVgvPpnwu0IGIwtcmVWuo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mls2ejKErj4+c/cv4r8BLVM3Y5XNHv+hyokEAjrvlQQ=;
 b=jdeBC97ycPwuM3I5BIot3eEpzh2b/eEN6EushdZfmv4npK5WV4SjaCE3K2Tl52pGwt
 P7zmOU6L7sr9eCGT1yd+pjNwu2Beb+cBcmgXy9A24uR2+G0EnsUUiBVfDdi02sbwl+Na
 VEB6fYSv5LbOLjtJnjGtxiAtSCMp4Cq6vbW//zDQpiowFeUYCg/XBanAyxP65cXT+VXh
 E2JZACaUoRpM+p1E2JzgT4EG8I59tJA7eX6ho7Uh0Ko5Vo9Gr9K+eGAg8ibBp0MIwzSG
 4off8OhJBMJNFZKZx5f/unczdJzzeXgeGKQ1L2M6njd5vfA4RoEOhI0aQXlJOhVvlNxa
 ACIw==
X-Gm-Message-State: AOAM531GBk25prbXJDqAQ+pzbTcc4Vo1ktfWl++qnHPiqtRxSaiB0wMP
 N11yqC1bcOFdXb3kEl469sY6+g==
X-Google-Smtp-Source: ABdhPJxYS1PxW6pEpvMukPEy2FkcrmGfCw1y8tVGm6EpHZsEKDmHQd/ZnKUJ5sKhK1zprMgVk0lvEA==
X-Received: by 2002:a7b:c955:: with SMTP id i21mr6605382wml.147.1625765896273; 
 Thu, 08 Jul 2021 10:38:16 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l4sm2521853wme.26.2021.07.08.10.38.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Jul 2021 10:38:15 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  8 Jul 2021 19:37:42 +0200
Message-Id: <20210708173754.3877540-9-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210708173754.3877540-1-daniel.vetter@ffwll.ch>
References: <20210708173754.3877540-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 08/20] drm/lima: use scheduler dependency
 tracking
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
Cc: lima@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org,
 Qiang Yu <yuq825@gmail.com>, Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tm90aGluZyBzcGVjaWFsIGdvaW5nIG9uIGhlcmUuCgpBc2lkZSByZXZpZXdpbmcgdGhlIGNvZGUs
IGl0IHNlZW1zIGxpa2UgZHJtX3NjaGVkX2pvYl9hcm0oKSBzaG91bGQgYmUKbW92ZWQgaW50byBs
aW1hX3NjaGVkX2NvbnRleHRfcXVldWVfdGFzayBhbmQgcHV0IHVuZGVyIHNvbWUgbXV0ZXgKdG9n
ZXRoZXIgd2l0aCBkcm1fc2NoZWRfcHVzaF9qb2IoKS4gU2VlIHRoZSBrZXJuZWxkb2MgZm9yCmRy
bV9zY2hlZF9wdXNoX2pvYigpLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVs
LnZldHRlckBpbnRlbC5jb20+CkNjOiBRaWFuZyBZdSA8eXVxODI1QGdtYWlsLmNvbT4KQ2M6IFN1
bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+CkNjOiAiQ2hyaXN0aWFuIEvDtm5p
ZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KQ2M6IGxpbWFAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwotLS0KIGRyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfZ2VtLmMgICB8ICA0
ICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfc2NoZWQuYyB8IDIxIC0tLS0tLS0tLS0t
LS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9zY2hlZC5oIHwgIDMgLS0tCiAz
IGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMjYgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9s
aW1hL2xpbWFfZ2VtLmMKaW5kZXggYzUyOGY0MDk4MWJiLi5lNTRhODhkNTAzN2EgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2xpbWEvbGltYV9nZW0uYwpAQCAtMjY3LDcgKzI2Nyw3IEBAIHN0YXRpYyBpbnQgbGltYV9nZW1f
c3luY19ibyhzdHJ1Y3QgbGltYV9zY2hlZF90YXNrICp0YXNrLCBzdHJ1Y3QgbGltYV9ibyAqYm8s
CiAJaWYgKGV4cGxpY2l0KQogCQlyZXR1cm4gMDsKIAotCXJldHVybiBkcm1fZ2VtX2ZlbmNlX2Fy
cmF5X2FkZF9pbXBsaWNpdCgmdGFzay0+ZGVwcywgJmJvLT5iYXNlLmJhc2UsIHdyaXRlKTsKKwly
ZXR1cm4gZHJtX3NjaGVkX2pvYl9hd2FpdF9pbXBsaWNpdCgmdGFzay0+YmFzZSwgJmJvLT5iYXNl
LmJhc2UsIHdyaXRlKTsKIH0KIAogc3RhdGljIGludCBsaW1hX2dlbV9hZGRfZGVwcyhzdHJ1Y3Qg
ZHJtX2ZpbGUgKmZpbGUsIHN0cnVjdCBsaW1hX3N1Ym1pdCAqc3VibWl0KQpAQCAtMjg1LDcgKzI4
NSw3IEBAIHN0YXRpYyBpbnQgbGltYV9nZW1fYWRkX2RlcHMoc3RydWN0IGRybV9maWxlICpmaWxl
LCBzdHJ1Y3QgbGltYV9zdWJtaXQgKnN1Ym1pdCkKIAkJaWYgKGVycikKIAkJCXJldHVybiBlcnI7
CiAKLQkJZXJyID0gZHJtX2dlbV9mZW5jZV9hcnJheV9hZGQoJnN1Ym1pdC0+dGFzay0+ZGVwcywg
ZmVuY2UpOworCQllcnIgPSBkcm1fc2NoZWRfam9iX2F3YWl0X2ZlbmNlKCZzdWJtaXQtPnRhc2st
PmJhc2UsIGZlbmNlKTsKIAkJaWYgKGVycikgewogCQkJZG1hX2ZlbmNlX3B1dChmZW5jZSk7CiAJ
CQlyZXR1cm4gZXJyOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9zY2hl
ZC5jIGIvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9zY2hlZC5jCmluZGV4IGU5NjhiNWE4ZjBi
MC4uOTlkNWY2ZjFhODgyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbGltYS9saW1hX3Nj
aGVkLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9zY2hlZC5jCkBAIC0xMzQsMjQg
KzEzNCwxNSBAQCBpbnQgbGltYV9zY2hlZF90YXNrX2luaXQoc3RydWN0IGxpbWFfc2NoZWRfdGFz
ayAqdGFzaywKIAl0YXNrLT5udW1fYm9zID0gbnVtX2JvczsKIAl0YXNrLT52bSA9IGxpbWFfdm1f
Z2V0KHZtKTsKIAotCXhhX2luaXRfZmxhZ3MoJnRhc2stPmRlcHMsIFhBX0ZMQUdTX0FMTE9DKTsK
LQogCXJldHVybiAwOwogfQogCiB2b2lkIGxpbWFfc2NoZWRfdGFza19maW5pKHN0cnVjdCBsaW1h
X3NjaGVkX3Rhc2sgKnRhc2spCiB7Ci0Jc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7Ci0JdW5zaWdu
ZWQgbG9uZyBpbmRleDsKIAlpbnQgaTsKIAogCWRybV9zY2hlZF9qb2JfY2xlYW51cCgmdGFzay0+
YmFzZSk7CiAKLQl4YV9mb3JfZWFjaCgmdGFzay0+ZGVwcywgaW5kZXgsIGZlbmNlKSB7Ci0JCWRt
YV9mZW5jZV9wdXQoZmVuY2UpOwotCX0KLQl4YV9kZXN0cm95KCZ0YXNrLT5kZXBzKTsKLQogCWlm
ICh0YXNrLT5ib3MpIHsKIAkJZm9yIChpID0gMDsgaSA8IHRhc2stPm51bV9ib3M7IGkrKykKIAkJ
CWRybV9nZW1fb2JqZWN0X3B1dCgmdGFzay0+Ym9zW2ldLT5iYXNlLmJhc2UpOwpAQCAtMTg2LDE3
ICsxNzcsNiBAQCBzdHJ1Y3QgZG1hX2ZlbmNlICpsaW1hX3NjaGVkX2NvbnRleHRfcXVldWVfdGFz
ayhzdHJ1Y3QgbGltYV9zY2hlZF90YXNrICp0YXNrKQogCXJldHVybiBmZW5jZTsKIH0KIAotc3Rh
dGljIHN0cnVjdCBkbWFfZmVuY2UgKmxpbWFfc2NoZWRfZGVwZW5kZW5jeShzdHJ1Y3QgZHJtX3Nj
aGVkX2pvYiAqam9iLAotCQkJCQkgICAgICAgc3RydWN0IGRybV9zY2hlZF9lbnRpdHkgKmVudGl0
eSkKLXsKLQlzdHJ1Y3QgbGltYV9zY2hlZF90YXNrICp0YXNrID0gdG9fbGltYV90YXNrKGpvYik7
Ci0KLQlpZiAoIXhhX2VtcHR5KCZ0YXNrLT5kZXBzKSkKLQkJcmV0dXJuIHhhX2VyYXNlKCZ0YXNr
LT5kZXBzLCB0YXNrLT5sYXN0X2RlcCsrKTsKLQotCXJldHVybiBOVUxMOwotfQotCiBzdGF0aWMg
aW50IGxpbWFfcG1fYnVzeShzdHJ1Y3QgbGltYV9kZXZpY2UgKmxkZXYpCiB7CiAJaW50IHJldDsK
QEAgLTQ3Miw3ICs0NTIsNiBAQCBzdGF0aWMgdm9pZCBsaW1hX3NjaGVkX2ZyZWVfam9iKHN0cnVj
dCBkcm1fc2NoZWRfam9iICpqb2IpCiB9CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX3NjaGVk
X2JhY2tlbmRfb3BzIGxpbWFfc2NoZWRfb3BzID0gewotCS5kZXBlbmRlbmN5ID0gbGltYV9zY2hl
ZF9kZXBlbmRlbmN5LAogCS5ydW5fam9iID0gbGltYV9zY2hlZF9ydW5fam9iLAogCS50aW1lZG91
dF9qb2IgPSBsaW1hX3NjaGVkX3RpbWVkb3V0X2pvYiwKIAkuZnJlZV9qb2IgPSBsaW1hX3NjaGVk
X2ZyZWVfam9iLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9zY2hlZC5o
IGIvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9zY2hlZC5oCmluZGV4IGFjNzAwMDZiMGUyNi4u
NmExMTc2NGQ4N2IzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbGltYS9saW1hX3NjaGVk
LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9zY2hlZC5oCkBAIC0yMyw5ICsyMyw2
IEBAIHN0cnVjdCBsaW1hX3NjaGVkX3Rhc2sgewogCXN0cnVjdCBsaW1hX3ZtICp2bTsKIAl2b2lk
ICpmcmFtZTsKIAotCXN0cnVjdCB4YXJyYXkgZGVwczsKLQl1bnNpZ25lZCBsb25nIGxhc3RfZGVw
OwotCiAJc3RydWN0IGxpbWFfYm8gKipib3M7CiAJaW50IG51bV9ib3M7CiAKLS0gCjIuMzIuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
