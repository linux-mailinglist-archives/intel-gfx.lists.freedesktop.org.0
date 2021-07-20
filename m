Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F29F3D015B
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 20:14:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BF6A6E4C9;
	Tue, 20 Jul 2021 18:14:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com
 [IPv6:2607:f8b0:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D43C6E4BB
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 18:14:12 +0000 (UTC)
Received: by mail-pf1-x431.google.com with SMTP id j199so206425pfd.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 11:14:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BhkbkDYY5lvapWHEYykIm8DO+eSuMufmOfIOn+p1+24=;
 b=ZvSTTs75luozBsuzjjDfqvGvX6rfb4OBotN2TaGX2XDIZCJZPAgy389MySA5VEAcmJ
 Ss7Cju71+UxJfBD6PeAjdTiPRYMMoIkQ6Fhdvj2n0mxX6H2KYNx9KlvQ3co8elRj65E1
 K8xrtozo6FS6E9gF0YOpTX68JEXC2B7p/u4D1Jr0MQpeuh2ndqzXfwYnbf1tqSYtjaoD
 NfHWEBWEPw7BGFHoFYGBlorl8PB1DqQ8I2gotkY9tBf+xATe5kjq9FvdAs40yFvWyG70
 sKIuaTspQkdK8efxswNzuUF6nlDMrnIyrspoKizfVMRCZf10p07EoWszNAWFoKO6lDi0
 Gj7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BhkbkDYY5lvapWHEYykIm8DO+eSuMufmOfIOn+p1+24=;
 b=uSOcIMsZJ/Uz8bBpcrjutvTLjevTnuvNh54KpZRAB97EfCrU+41lftv/+mGWmJppaM
 BO9ukUytn73FN2U9aOesnUMSaylimoSg4iu+g3LJoyRK86N4q+B3DiuyeEGiyvXQF4V7
 wTihgGi26FfQUGgkc1STTkso3UUbrS/HYug5f2WISTi3Ldq3nU6DdjOLSb/q2yn/60hG
 CUWJF9qZR1gzUdj/idT9Ahh8RaDTzHCJKbvQ+1p+xwqZtAREhjAkbjGi/uoJe8TSsxPk
 HdQIs79I2mwT32ZxQ+qzGrWQEDtAJsMsG4OQ5eKfW2B8Yn+EEORmwk3HRaZGXJf0ig7Q
 l5kg==
X-Gm-Message-State: AOAM530T5ZI9dJpDEhkRTYUx5dEVAvafEpHMOc0C95GwhQOIuUrSYhHZ
 iOWE0RyqaekqBRUk7rtfvIERy1StJMLgIQ==
X-Google-Smtp-Source: ABdhPJxs1URLIaPpnELGajNiYpfIT/75pNlAQ6CN0HA3PPqOfCijHhXe/LZIfOaf8w4b46ApoYSn8g==
X-Received: by 2002:a62:3244:0:b029:308:22b0:52ff with SMTP id
 y65-20020a6232440000b029030822b052ffmr32463719pfy.68.1626804851975; 
 Tue, 20 Jul 2021 11:14:11 -0700 (PDT)
Received: from omlet.lan ([134.134.137.86])
 by smtp.gmail.com with ESMTPSA id c2sm26436573pgh.82.2021.07.20.11.14.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Jul 2021 11:14:11 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 20 Jul 2021 13:13:55 -0500
Message-Id: <20210720181357.2760720-5-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210720181357.2760720-1-jason@jlekstrand.net>
References: <20210720181357.2760720-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/6] drm/ttm: Force re-init if ttm_global_init()
 fails
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
Cc: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SWYgd2UgaGF2ZSBhIGZhaWx1cmUsIGRlY3JlbWVudCB0aGUgcmVmZXJlbmNlIGNvdW50IHNvIHRo
YXQgdGhlIG5leHQKY2FsbCB0byB0dG1fZ2xvYmFsX2luaXQoKSB3aWxsIGFjdHVhbGx5IGRvIHNv
bWV0aGluZyBpbnN0ZWFkIG9mIGFzc3VtZQpldmVyeXRoaW5nIGlzIGFsbCBzZXQgdXAuCgpTaWdu
ZWQtb2ZmLWJ5OiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+CkZpeGVzOiA2
MmI1M2IzN2U0YjEgKCJkcm0vdHRtOiB1c2UgYSBzdGF0aWMgdHRtX2JvX2dsb2JhbCBpbnN0YW5j
ZSIpClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fZGV2aWNlLmMgfCAyICsrCiAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3R0
bS90dG1fZGV2aWNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9kZXZpY2UuYwppbmRleCA1
ZjMxYWNlYzNhZDc2Li41MTlkZWVhOGUzOWI3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
dHRtL3R0bV9kZXZpY2UuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9kZXZpY2UuYwpA
QCAtMTAwLDYgKzEwMCw4IEBAIHN0YXRpYyBpbnQgdHRtX2dsb2JhbF9pbml0KHZvaWQpCiAJZGVi
dWdmc19jcmVhdGVfYXRvbWljX3QoImJ1ZmZlcl9vYmplY3RzIiwgMDQ0NCwgdHRtX2RlYnVnZnNf
cm9vdCwKIAkJCQkmZ2xvYi0+Ym9fY291bnQpOwogb3V0OgorCWlmIChyZXQpCisJCS0tdHRtX2ds
b2JfdXNlX2NvdW50OwogCW11dGV4X3VubG9jaygmdHRtX2dsb2JhbF9tdXRleCk7CiAJcmV0dXJu
IHJldDsKIH0KLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
