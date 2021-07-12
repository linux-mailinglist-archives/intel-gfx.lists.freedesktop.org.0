Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01DA33C649F
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 22:02:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 979D089E1D;
	Mon, 12 Jul 2021 20:02:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00F6389E06
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 20:02:11 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id d2so27320339wrn.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 13:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A4+2/pgGBCJxzVgU/zlbGWzgj/dEC4nIap1p/ExGlZw=;
 b=XhL8QyxOXp7z6Hg6bktsegyq+iQE0VwQKJd5eOzrkBbaKaJUAXR7KUnTN/PAHylsZ/
 FtW7akJ5YjRHbXteKqQdn9KzqNO50IDz8f0DeZzhP5cNrEIML3c9tx0Z//4Gf/Y3Phyj
 IXMvzWgqPHCNq9RdnW2KRAdfdERjEKpJZo1tQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A4+2/pgGBCJxzVgU/zlbGWzgj/dEC4nIap1p/ExGlZw=;
 b=MmcMSpqxLyOnA5hbLXaRe4EWF0x/Y2KIbExLet/NySeSejO0GH8R6kfYN3ukkAJ19L
 KrqR77JofdLIR+fZajz82ZxiyXUTfa/8zvcKovXOiWlTM/xudePVcJ/NKPq5q8l05EpC
 FU+Df9SfynyxwXguIwxTU5HLWnlWx5q71A57UmKiIn6mtIJTJ2DQUxHPIUpxEcDRRxW6
 zQq+F9CA4FUD05sd35NZwJHBPRaLBR2MqiPNrsAa9ZA2vokjFdqoybzh+9/uIIPhuR+h
 vVyVGP0wMo7ocLF3DnVtnDBeE7b+x50r2MhBZe7RAbWK5FvikdhhHc12pImBaiTG6+c/
 bBuw==
X-Gm-Message-State: AOAM530JVcDrP5OXD4Eqw+y+vA3Vlg4MjG6bB1VKm4CBxYGz/4jgI1lw
 i6txD7WoUOTxD3kZQg05s3MqCg==
X-Google-Smtp-Source: ABdhPJzBZz63JTQIH2tUHA1ojZohKCYhhXtyA7mYW5eUzZDSgsXk8ZANd0/YxLZA1e1lQp5qwP+0kA==
X-Received: by 2002:adf:ef11:: with SMTP id e17mr840935wro.71.1626120130732;
 Mon, 12 Jul 2021 13:02:10 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l14sm9858221wrs.22.2021.07.12.13.02.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Jul 2021 13:02:10 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 12 Jul 2021 19:53:47 +0200
Message-Id: <20210712175352.802687-14-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
References: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 13/18] drm/sched: Check locking in
 drm_sched_job_await_implicit
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
 Jack Zhang <Jack.Zhang1@amd.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Luben Tuikov <luben.tuikov@amd.com>, Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

WW91IHJlYWxseSBuZWVkIHRvIGhvbGQgdGhlIHJlc2VydmF0aW9uIGhlcmUgb3IgYWxsIGtpbmRz
IG9mIGZ1bm55CnRoaW5ncyBjYW4gaGFwcGVuIGJldHdlZW4gZ3JhYmJpbmcgdGhlIGRlcGVuZGVu
Y2llcyBhbmQgaW5zZXJ0aW5nIHRoZQpuZXcgZmVuY2VzLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVs
IFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiAiQ2hyaXN0aWFuIEvDtm5pZyIg
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0
ZXJAZmZ3bGwuY2g+CkNjOiBMdWJlbiBUdWlrb3YgPGx1YmVuLnR1aWtvdkBhbWQuY29tPgpDYzog
QW5kcmV5IEdyb2R6b3Zza3kgPGFuZHJleS5ncm9kem92c2t5QGFtZC5jb20+CkNjOiBBbGV4IERl
dWNoZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+CkNjOiBKYWNrIFpoYW5nIDxKYWNrLlpo
YW5nMUBhbWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5j
IHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jIGIvZHJpdmVycy9ncHUvZHJtL3Nj
aGVkdWxlci9zY2hlZF9tYWluLmMKaW5kZXggZmQ1MmRiOTA2YjkwLi42ZmE2Y2NkMzBkMmEgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jCkBAIC03MTQsNiArNzE0LDggQEAg
aW50IGRybV9zY2hlZF9qb2JfYXdhaXRfaW1wbGljaXQoc3RydWN0IGRybV9zY2hlZF9qb2IgKmpv
YiwKIAlzdHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2VzOwogCXVuc2lnbmVkIGludCBpLCBmZW5jZV9j
b3VudDsKIAorCWRtYV9yZXN2X2Fzc2VydF9oZWxkKG9iai0+cmVzdik7CisKIAlpZiAoIXdyaXRl
KSB7CiAJCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlID0gZG1hX3Jlc3ZfZ2V0X2V4Y2xfdW5sb2Nr
ZWQob2JqLT5yZXN2KTsKIAotLSAKMi4zMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
