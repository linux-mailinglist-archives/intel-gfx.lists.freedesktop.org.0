Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 821E419D852
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 15:59:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE19A6EBD3;
	Fri,  3 Apr 2020 13:59:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 799BA6EBBA
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 13:59:01 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id f6so7817065wmj.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 06:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JTFc31a0+JMT1c1efx4ck7OuYVXoj2qV+2r041IFRE0=;
 b=dL1UZqlX5BOjlCUHFiE5o/70D/W650xWV7EbTdkuv6BN/7o/8YAhaNcANIT/GPY1eE
 b8hap82XHg3rJ24jB3qmqKoAkn5uLgqTWy0OpeGoNUvDL2jCKRHbgHb8Hm4kdfVXx4xO
 0tm3LaTZ/+lU408NauM+v1Jd205RgGUCsND9M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JTFc31a0+JMT1c1efx4ck7OuYVXoj2qV+2r041IFRE0=;
 b=P+mqSdwdnNBAuRDRA5xsP6dE8fY/TUXLQHbfE/RGrq3rhnACRWGBSc+J4123oW852z
 NCa8JPs9BphSLc7bDpmbdQ4UNH6t1iVk6AWh2U3xe7Zt/or7EFMFtSIABiuYfvqW0LO/
 nT4Rg4JAylni4Ybw7HSxO4468kJzltscK2QdOZ1ssze3pAwH5xNqDvYpORqoeiO5DOqe
 OI1o3r4SESzW+DiH1vz2UTzkucjedTMVDSW3sULZpLb4Q5goGfowoGSm/ThWy85vhWu8
 7eAZma3KiqwNcOUmWuafxLjNi9VaAGaYPlmmPBlyT0mjEKC0EmD9YK8/mjHoJd0aFAbe
 4ttw==
X-Gm-Message-State: AGi0PuZ6/JD0lm4whMyIZik2Y/4lq29wrUQsLpZqWKd7mFycBRp7ZpAG
 sN4fzEG8ohHAqWXTTlpWrcbrmA==
X-Google-Smtp-Source: APiQypIuWCAaOzwYiEIPYzSD8arsjEPVtqxDtFK9dHCbLieuzd0ZjDmt2WUJq9B+G8+LdnH6XRu5MA==
X-Received: by 2002:a7b:c842:: with SMTP id c2mr9309221wml.154.1585922340144; 
 Fri, 03 Apr 2020 06:59:00 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f141sm11783919wmf.3.2020.04.03.06.58.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 06:58:59 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  3 Apr 2020 15:58:06 +0200
Message-Id: <20200403135828.2542770-23-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 22/44] drm/ili9341: Use devm_drm_dev_alloc
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
Cc: David Lechner <david@lechnology.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Eric Anholt <eric@anholt.net>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxyZWFkeSB1c2luZyBkZXZtX2RybV9kZXZfaW5pdCwgc28gdmVyeSBzaW1wbGUgcmVwbGFjbWVu
dC4KClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29t
PgpDYzogIk5vcmFsZiBUcsO4bm5lcyIgPG5vcmFsZkB0cm9ubmVzLm9yZz4KQ2M6IFNhbSBSYXZu
Ym9yZyA8c2FtQHJhdm5ib3JnLm9yZz4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJA
ZmZ3bGwuY2g+CkNjOiBFcmljIEFuaG9sdCA8ZXJpY0BhbmhvbHQubmV0PgpDYzogRGF2aWQgTGVj
aG5lciA8ZGF2aWRAbGVjaG5vbG9neS5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3RpbnkvaWxp
OTM0MS5jIHwgMTMgKysrKy0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KSwgOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdGlueS9pbGk5
MzQxLmMgYi9kcml2ZXJzL2dwdS9kcm0vdGlueS9pbGk5MzQxLmMKaW5kZXggZTE1MmRlMzY5MDE5
Li5iYjgxOWY0NWE1ZDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS90aW55L2lsaTkzNDEu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vdGlueS9pbGk5MzQxLmMKQEAgLTE4MywxOCArMTgzLDEz
IEBAIHN0YXRpYyBpbnQgaWxpOTM0MV9wcm9iZShzdHJ1Y3Qgc3BpX2RldmljZSAqc3BpKQogCXUz
MiByb3RhdGlvbiA9IDA7CiAJaW50IHJldDsKIAotCWRiaWRldiA9IGt6YWxsb2Moc2l6ZW9mKCpk
YmlkZXYpLCBHRlBfS0VSTkVMKTsKLQlpZiAoIWRiaWRldikKLQkJcmV0dXJuIC1FTk9NRU07CisJ
ZGJpZGV2ID0gZGV2bV9kcm1fZGV2X2FsbG9jKGRldiwgJmlsaTkzNDFfZHJpdmVyLAorCQkJCSAg
ICBzdHJ1Y3QgbWlwaV9kYmlfZGV2LCBkcm0pOworCWlmIChJU19FUlIoZGJpZGV2KSkKKwkJcmV0
dXJuIFBUUl9FUlIoZGJpZGV2KTsKIAogCWRiaSA9ICZkYmlkZXYtPmRiaTsKIAlkcm0gPSAmZGJp
ZGV2LT5kcm07Ci0JcmV0ID0gZGV2bV9kcm1fZGV2X2luaXQoZGV2LCBkcm0sICZpbGk5MzQxX2Ry
aXZlcik7Ci0JaWYgKHJldCkgewotCQlrZnJlZShkYmlkZXYpOwotCQlyZXR1cm4gcmV0OwotCX0K
LQlkcm1tX2FkZF9maW5hbF9rZnJlZShkcm0sIGRiaWRldik7CiAKIAlkYmktPnJlc2V0ID0gZGV2
bV9ncGlvZF9nZXRfb3B0aW9uYWwoZGV2LCAicmVzZXQiLCBHUElPRF9PVVRfSElHSCk7CiAJaWYg
KElTX0VSUihkYmktPnJlc2V0KSkgewotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
