Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F35D3C1874
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 19:38:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A749F6E976;
	Thu,  8 Jul 2021 17:38:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 812D66E970
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 17:38:23 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 y21-20020a7bc1950000b02902161fccabf1so4129516wmi.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Jul 2021 10:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AiWGjZqGioMgeC4R5Oz3qY6Q7MchUqktCVNPWGTETh0=;
 b=OFUNvjX5YPx3GRgyR4RSmZIS827csWXefuMDaqK8pWehp0iq3fp9hHBZltRPpoLpix
 HmxOfxJ9J5/HoNwA0Jwm3WBMUQGR6Ho/kRLWWWFOIBQsJJAevE4sIbeBC9622i7uX/7T
 NoUhkt/WbqsqpBoSoHUx8PVhTd60hJUViyPAA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AiWGjZqGioMgeC4R5Oz3qY6Q7MchUqktCVNPWGTETh0=;
 b=N1x7I1UCtSL2YMDJYIB4J7ME8UfcWlJKvyQrhVrCgqCsAWnItwpv6UxiNTBefZ5hPY
 /ouhTQa6EHgzmdEffHulPWD45348Gi4xOR6K6BOGbsFoeoXwsFlVVVQ6iotHCCA7ArkN
 IZfFp9Wq6x2aHImCCCuFwr7wh4ha9cSnwQ4qRYkh5hz4zwI8HRVNBUmmUVg3WfDHh3Pn
 TBYlo5XzMYtU0vgcayIiUFfDnbmjlWPxH8tx6C6Hjgui+tSotpUCyl456GCcN4SVOO2V
 ueK17WJ5hR2+2nj0k1iTW4XzxY0zN6loDt1BcgH7wB1E99jH0bOBM9MQdVna3D8Foq+m
 DnoQ==
X-Gm-Message-State: AOAM533uKZygDuBKxxMF3uhARGmb+J1ogrS941EI+dM/ADf8XtGVV6m4
 nVYBpasZMef7Ven1vprXQYqjNQ==
X-Google-Smtp-Source: ABdhPJzP/u+3t5ih+KzkHOgyvK0/I1RhftwRdkBrNdVLe8hSB1jB513knF4XsmFVfudgejBSUEtkdQ==
X-Received: by 2002:a1c:f30a:: with SMTP id q10mr34365275wmq.138.1625765902176; 
 Thu, 08 Jul 2021 10:38:22 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l4sm2521853wme.26.2021.07.08.10.38.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Jul 2021 10:38:21 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  8 Jul 2021 19:37:48 +0200
Message-Id: <20210708173754.3877540-15-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210708173754.3877540-1-daniel.vetter@ffwll.ch>
References: <20210708173754.3877540-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 14/20] drm/sched: Check locking in
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
aGVkdWxlci9zY2hlZF9tYWluLmMKaW5kZXggZGIzMjZhMWViZjNjLi42N2VjYTg4ZTA3MGUgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jCkBAIC03MDgsNiArNzA4LDggQEAg
aW50IGRybV9zY2hlZF9qb2JfYXdhaXRfaW1wbGljaXQoc3RydWN0IGRybV9zY2hlZF9qb2IgKmpv
YiwKIAlzdHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2VzOwogCXVuc2lnbmVkIGludCBpLCBmZW5jZV9j
b3VudDsKIAorCWRtYV9yZXN2X2Fzc2VydF9oZWxkKG9iai0+cmVzdik7CisKIAlpZiAoIXdyaXRl
KSB7CiAJCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlID0gZG1hX3Jlc3ZfZ2V0X2V4Y2xfdW5sb2Nr
ZWQob2JqLT5yZXN2KTsKIAotLSAKMi4zMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
