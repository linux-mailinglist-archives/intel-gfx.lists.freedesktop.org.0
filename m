Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F2A1641E8
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 11:23:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7AFE6EBB1;
	Wed, 19 Feb 2020 10:22:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EBA16EB8C
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 10:22:25 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id t23so5868577wmi.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 02:22:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GyxR3rEO1FZs5BIiNni8jF96PqjDo3eJFecq4xcaCuE=;
 b=iPqi5F1gwreNxFZg7Tg0DZV9IAC5qD6OWLG2NF3WdbFzJg3IisP/Bwvc0rbynG2nY8
 nDTAG0SyEinOItj8J4o8jlctCr7wJ/asmZyHluXy4If91Bu/ZtUrJqqW6aldZoJ2ZnDL
 r1Focf6bOQU/np1iRkhX1Uvfy4cHUYoizyUIY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GyxR3rEO1FZs5BIiNni8jF96PqjDo3eJFecq4xcaCuE=;
 b=BsfQNXuFxPQJetUajDPI3bHl6Y/iatIOriQ8dInhh4eN5vlLA02DumhAW5VUlctWy2
 moGwvVkttpqmmiH+gwyxnnII6sVGLl7l+VOiEoiH3JEwBr4GcoifdEvOOmJpz4EB9RTV
 thpcD7OdoZ0tJCDit8SG0wLAjXAG/mnl3qhU/B1RPhQN0BwaCQywn0OPPQAmRTNbDw5c
 8VWnnKvxQr+nYEJglXthszngMEKhqhj3+Aw657e8MEvw7neaoMwbjnCcQ+WVXVB/MeKm
 0tQbiZNuv526LV99uLQQNJgv/hQBbomTLFymZXMWiPYZzI9s5IWRrbnsApFGZuUQQFgN
 ygdw==
X-Gm-Message-State: APjAAAW43I5vOuD3EYAmPsZ/hRMnm6gpI2vum8DCVsD0CqZ4imSOQv9R
 VgMjlkg5w9JO0/Uv3YsUf74ORA==
X-Google-Smtp-Source: APXvYqxzE36MMM/8ge3EyjCc2f+TulRZQVDMD8fiul9JQAeZrf9wv82MpPvH5c0QBv2r8tivNkQmcQ==
X-Received: by 2002:a1c:720a:: with SMTP id n10mr9071290wmc.103.1582107743551; 
 Wed, 19 Feb 2020 02:22:23 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s23sm2370339wra.15.2020.02.19.02.22.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 02:22:22 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 19 Feb 2020 11:21:14 +0100
Message-Id: <20200219102122.1607365-45-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 44/52] drm/gm12u320: Use devm_drm_dev_init
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T25seSBkcm9wcyB0aGUgZHJtX2Rldl9wdXQsIGJ1dCBoZXkgYSBmZXcgbGluZXMhCgpTaWduZWQt
b2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IEhhbnMg
ZGUgR29lZGUgPGhkZWdvZWRlQHJlZGhhdC5jb20+CkNjOiAiTm9yYWxmIFRyw7hubmVzIiA8bm9y
YWxmQHRyb25uZXMub3JnPgotLS0KIGRyaXZlcnMvZ3B1L2RybS90aW55L2dtMTJ1MzIwLmMgfCAx
OSArKysrKysrLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAx
MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdGlueS9nbTEydTMy
MC5jIGIvZHJpdmVycy9ncHUvZHJtL3RpbnkvZ20xMnUzMjAuYwppbmRleCA1YmQyNmZjNmZhZmEu
LjY1ZGZiODdjY2IxMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3RpbnkvZ20xMnUzMjAu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vdGlueS9nbTEydTMyMC5jCkBAIC02NzgsNyArNjc4LDcg
QEAgc3RhdGljIGludCBnbTEydTMyMF91c2JfcHJvYmUoc3RydWN0IHVzYl9pbnRlcmZhY2UgKmlu
dGVyZmFjZSwKIAlpbml0X3dhaXRxdWV1ZV9oZWFkKCZnbTEydTMyMC0+ZmJfdXBkYXRlLndhaXRx
KTsKIAogCWRldiA9ICZnbTEydTMyMC0+ZGV2OwotCXJldCA9IGRybV9kZXZfaW5pdChkZXYsICZn
bTEydTMyMF9kcm1fZHJpdmVyLCAmaW50ZXJmYWNlLT5kZXYpOworCXJldCA9IGRldm1fZHJtX2Rl
dl9pbml0KCZpbnRlcmZhY2UtPmRldiwgZGV2LCAmZ20xMnUzMjBfZHJtX2RyaXZlcik7CiAJaWYg
KHJldCkgewogCQlrZnJlZShnbTEydTMyMCk7CiAJCXJldHVybiByZXQ7CkBAIC02ODgsNyArNjg4
LDcgQEAgc3RhdGljIGludCBnbTEydTMyMF91c2JfcHJvYmUoc3RydWN0IHVzYl9pbnRlcmZhY2Ug
KmludGVyZmFjZSwKIAogCXJldCA9IGRybV9tb2RlX2NvbmZpZ19pbml0KGRldik7CiAJaWYgKHJl
dCkKLQkJZ290byBlcnJfcHV0OworCQlyZXR1cm4gcmV0OwogCiAJZGV2LT5tb2RlX2NvbmZpZy5t
aW5fd2lkdGggPSBHTTEyVTMyMF9VU0VSX1dJRFRIOwogCWRldi0+bW9kZV9jb25maWcubWF4X3dp
ZHRoID0gR00xMlUzMjBfVVNFUl9XSURUSDsKQEAgLTY5OCwxNSArNjk4LDE1IEBAIHN0YXRpYyBp
bnQgZ20xMnUzMjBfdXNiX3Byb2JlKHN0cnVjdCB1c2JfaW50ZXJmYWNlICppbnRlcmZhY2UsCiAK
IAlyZXQgPSBnbTEydTMyMF91c2JfYWxsb2MoZ20xMnUzMjApOwogCWlmIChyZXQpCi0JCWdvdG8g
ZXJyX3B1dDsKKwkJcmV0dXJuIHJldDsKIAogCXJldCA9IGdtMTJ1MzIwX3NldF9lY29tb2RlKGdt
MTJ1MzIwKTsKIAlpZiAocmV0KQotCQlnb3RvIGVycl9wdXQ7CisJCXJldHVybiByZXQ7CiAKIAly
ZXQgPSBnbTEydTMyMF9jb25uX2luaXQoZ20xMnUzMjApOwogCWlmIChyZXQpCi0JCWdvdG8gZXJy
X3B1dDsKKwkJcmV0dXJuIHJldDsKIAogCXJldCA9IGRybV9zaW1wbGVfZGlzcGxheV9waXBlX2lu
aXQoJmdtMTJ1MzIwLT5kZXYsCiAJCQkJCSAgICZnbTEydTMyMC0+cGlwZSwKQEAgLTcxNiwyMiAr
NzE2LDE4IEBAIHN0YXRpYyBpbnQgZ20xMnUzMjBfdXNiX3Byb2JlKHN0cnVjdCB1c2JfaW50ZXJm
YWNlICppbnRlcmZhY2UsCiAJCQkJCSAgIGdtMTJ1MzIwX3BpcGVfbW9kaWZpZXJzLAogCQkJCQkg
ICAmZ20xMnUzMjAtPmNvbm4pOwogCWlmIChyZXQpCi0JCWdvdG8gZXJyX3B1dDsKKwkJcmV0dXJu
IHJldDsKIAogCWRybV9tb2RlX2NvbmZpZ19yZXNldChkZXYpOwogCiAJdXNiX3NldF9pbnRmZGF0
YShpbnRlcmZhY2UsIGRldik7CiAJcmV0ID0gZHJtX2Rldl9yZWdpc3RlcihkZXYsIDApOwogCWlm
IChyZXQpCi0JCWdvdG8gZXJyX3B1dDsKKwkJcmV0dXJuIHJldDsKIAogCWRybV9mYmRldl9nZW5l
cmljX3NldHVwKGRldiwgMCk7CiAKIAlyZXR1cm4gMDsKLQotZXJyX3B1dDoKLQlkcm1fZGV2X3B1
dChkZXYpOwotCXJldHVybiByZXQ7CiB9CiAKIHN0YXRpYyB2b2lkIGdtMTJ1MzIwX3VzYl9kaXNj
b25uZWN0KHN0cnVjdCB1c2JfaW50ZXJmYWNlICppbnRlcmZhY2UpCkBAIC03NDEsNyArNzM3LDYg
QEAgc3RhdGljIHZvaWQgZ20xMnUzMjBfdXNiX2Rpc2Nvbm5lY3Qoc3RydWN0IHVzYl9pbnRlcmZh
Y2UgKmludGVyZmFjZSkKIAogCWdtMTJ1MzIwX3N0b3BfZmJfdXBkYXRlKGdtMTJ1MzIwKTsKIAlk
cm1fZGV2X3VucGx1ZyhkZXYpOwotCWRybV9kZXZfcHV0KGRldik7CiB9CiAKIHN0YXRpYyBfX21h
eWJlX3VudXNlZCBpbnQgZ20xMnUzMjBfc3VzcGVuZChzdHJ1Y3QgdXNiX2ludGVyZmFjZSAqaW50
ZXJmYWNlLAotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
