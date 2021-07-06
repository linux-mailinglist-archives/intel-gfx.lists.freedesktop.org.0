Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBE73BC938
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jul 2021 12:12:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCB2F89E26;
	Tue,  6 Jul 2021 10:12:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA48789E14
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jul 2021 10:12:20 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id i94so25423683wri.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 06 Jul 2021 03:12:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=alESfScLytQX9JM52hp8x+R06biiZDCDK6DB8lrJ+yA=;
 b=FaVz+VWvsN1jTj+2WLJMiKYCPRODcwhbPTNDcaUrTvSqo4GP/2B0dAnaiA1M+cl3Ux
 lICvh6lk/M5pEXYJfzxrPKftQ6uCA5jd0TFq0AEaqoRDQgk8qFYZlVUrOKPtJQZBYGsq
 5fWGYf/xAgIYrGTMGn/qW2HSG9yDXqdUafuHE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=alESfScLytQX9JM52hp8x+R06biiZDCDK6DB8lrJ+yA=;
 b=Cr7KOwwXEThPmZjfcMOVu0uoX6A0oywCDSTNFgexPCoZIGi3cGs/RSz5ZEeD0zMiSo
 eO0vXRmazSjT7jl+QX03KnuJ+L7Rmy7kRT4nhy6Y4IzCWsLEiNqHe3SjaCTrGhQFUPEC
 sMeEYKKs7QMg2K5IVd1lrL0v2USrjMfctmblXOHGLEqnyXhfasaOPDitsmvD5XId5mI5
 Yx2S2O9NiKi9eaDUWY3jN80yWix92VY5utM0EmgEeouNUm/iMfmzgk4HoonluRSgdHDI
 UQaAYhekkXeXVeScMsVJRx3XaycuZ9MxDiDPmYy7iA8LqCNI8K2rQ4te9aPY2vmsIaIT
 gUpw==
X-Gm-Message-State: AOAM533eYoZE3yaTiYQe3RdOELnz6xGuIPkOCMhIWmYSC5rkUwnq10Hu
 QqqEpO4gK955mrzWh/GYnvDexg==
X-Google-Smtp-Source: ABdhPJz9tPE3hHWb/E/uWqNBA+l27PfFlt7ZddBhzNIiYo3XXz2teh/NElarlXr3cm9MsFvHKD/wEA==
X-Received: by 2002:a5d:5005:: with SMTP id e5mr20664995wrt.138.1625566339633; 
 Tue, 06 Jul 2021 03:12:19 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u2sm9862739wmc.42.2021.07.06.03.12.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jul 2021 03:12:19 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  6 Jul 2021 12:12:07 +0200
Message-Id: <20210706101209.3034092-6-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210706101209.3034092-1-daniel.vetter@ffwll.ch>
References: <20210706101209.3034092-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/7] drm/i915: Always wait for the exclusive
 fence
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UncmUgbGlmdGluZywgb3Igd2VsbCwgY2xhcmlmeWluZyB0aGF0IHRoZSByZXN0cmljdGlvbiB0
aGF0IHNoYXJlZApmZW5jZXMgaGF2ZSB0byBiZSBzdHJpY3RseSBhZnRlciB0aGUgZXhjbHVzaXZl
IG9uZSBkb2Vzbid0IGFwcGx5CmFueW1vcmUuCgpTbyBhZGp1c3QgdGhlIGNvZGUgdG8gYWx3YXlz
IGFsc28gd2FpdCBmb3IgdGhlIGV4Y2x1c2l2ZSBmZW5jZS4KClNpZ25lZC1vZmYtYnk6IERhbmll
bCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogTWFhcnRlbiBMYW5raG9yc3Qg
PG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KQ2M6ICJUaG9tYXMgSGVsbHN0csO2
bSIgPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgpDYzogSmFzb24gRWtzdHJhbmQg
PGphc29uQGpsZWtzdHJhbmQubmV0PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3df
ZmVuY2UuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N3X2ZlbmNl
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N3X2ZlbmNlLmMKaW5kZXggOTE3MTFhNDZi
MWM3Li4yNzFkMzIxY2VhODMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
c3dfZmVuY2UuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N3X2ZlbmNlLmMKQEAg
LTYwMSwxMCArNjAxLDEwIEBAIGludCBpOTE1X3N3X2ZlbmNlX2F3YWl0X3Jlc2VydmF0aW9uKHN0
cnVjdCBpOTE1X3N3X2ZlbmNlICpmZW5jZSwKIAkJZm9yIChpID0gMDsgaSA8IGNvdW50OyBpKysp
CiAJCQlkbWFfZmVuY2VfcHV0KHNoYXJlZFtpXSk7CiAJCWtmcmVlKHNoYXJlZCk7Ci0JfSBlbHNl
IHsKLQkJZXhjbCA9IGRtYV9yZXN2X2dldF9leGNsX3VubG9ja2VkKHJlc3YpOwogCX0KIAorCWV4
Y2wgPSBkbWFfcmVzdl9nZXRfZXhjbF91bmxvY2tlZChyZXN2KTsKKwogCWlmIChyZXQgPj0gMCAm
JiBleGNsKSB7CiAJCXBlbmRpbmcgPSBpOTE1X3N3X2ZlbmNlX2F3YWl0X2RtYV9mZW5jZShmZW5j
ZSwKIAkJCQkJCQlleGNsLAotLSAKMi4zMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
