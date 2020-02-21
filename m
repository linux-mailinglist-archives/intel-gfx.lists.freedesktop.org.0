Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 304321688F7
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 22:05:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D19C06F57B;
	Fri, 21 Feb 2020 21:05:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9EC76F54C
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 21:04:24 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id z7so3506667wrl.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 13:04:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K3z4R4E/niNnxqwdT4OzX8ORYsEpH0T1EdhGV4YfgW0=;
 b=dB05jTowMXCEtWzg0MdIdsmPlWaqUXl1ZM+qjbTB99mLx5oLbRmrafVmHK88DELEkH
 rT7OnfcquFZWpGQUVdPk0oEb4qYjnTeIRiXOWIdV2d2rSi1zqjtrhbG2fSSOaSHD7P/u
 A1nOek5r4lB/NdgfEKxFpYxDYb+sKKhYv8mKA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K3z4R4E/niNnxqwdT4OzX8ORYsEpH0T1EdhGV4YfgW0=;
 b=oyGQ1U1E2RpEDHPIooqaaLzIZiXuu0nuw2FBzIrh2E21s3qumV4oUnRsxpwM0KIrlA
 0QbjxnKLv9M6k1JY5xyZmvKqwjgISoZOX/hgLLM+vFbcG3gs758NMZ1/ZV2LkNmqW6Kh
 s6Xs3pnb6nUSCyJ6+mau07QpGzzV7AO9yzGVCCV3Mp4TRJ6GN5Fhv+MVK75fUoGMJlex
 VIx+XFw08dvgTYonBZRSfnWXyYz4GzY28ufMFt1ASrzYP3W0EZ1TqaAfcwqUr8C+ViwY
 zG0c/xFoptfMVENXDxFbo8x4o6nyMmaKxCZCYDyTaIFCFE36l+guo+srCJvsB5pFFbVS
 49iQ==
X-Gm-Message-State: APjAAAW7jSXpj2ZbgiPosxGd+mM6dIu/vAqlWqxWI1pmeKBykcHm9+4h
 7WNYb44KxBQ7LSC6jdRXC2rNdA==
X-Google-Smtp-Source: APXvYqxaFcQVEYPAtmL1YMOaV0kHzqG5vuSJhOXUO1ovp202FlX3ibrrCCgbtLXCIVBjKjZmaikQQg==
X-Received: by 2002:a5d:5452:: with SMTP id w18mr48092810wrv.333.1582319063526; 
 Fri, 21 Feb 2020 13:04:23 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z6sm5483930wrw.36.2020.02.21.13.04.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 13:04:22 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 21 Feb 2020 22:03:10 +0100
Message-Id: <20200221210319.2245170-43-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 42/51] drm/gm12u320: More drmm_
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

VGhlIGRybV9tb2RlX2NvbmZpZ19jbGVhbnVwIGNhbGwgd2UgY2FuIGRyb3AsIGFuZCBhbGwgdGhl
IGFsbG9jYXRpb25zCndlIGNhbiBzd2l0Y2ggb3ZlciB0byBkcm1tX2t6YWxsb2MuIFVuZm9ydHVu
YXRlbHkgdGhlIHdvcmsgcXVldWUgaXMKc3RpbGwgcHJlc2VudCwgc28gY2FuJ3QgZ2V0IHJpZCBv
ZiB0aGUgZHJtX2RyaXZlci0+cmVsZWFzZSBmdW5jdGlvbgpvdXRyaWdodC4KClNpZ25lZC1vZmYt
Ynk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogSGFucyBkZSBH
b2VkZSA8aGRlZ29lZGVAcmVkaGF0LmNvbT4KQ2M6ICJOb3JhbGYgVHLDuG5uZXMiIDxub3JhbGZA
dHJvbm5lcy5vcmc+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3RpbnkvZ20xMnUzMjAuYyB8IDE4ICsr
KysrKystLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMTEgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3RpbnkvZ20xMnUzMjAuYyBi
L2RyaXZlcnMvZ3B1L2RybS90aW55L2dtMTJ1MzIwLmMKaW5kZXggMzkyOGY2OWJiZDNkLi41YmQy
NmZjNmZhZmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS90aW55L2dtMTJ1MzIwLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL3RpbnkvZ20xMnUzMjAuYwpAQCAtMTYwLDcgKzE2MCw3IEBAIHN0
YXRpYyBpbnQgZ20xMnUzMjBfdXNiX2FsbG9jKHN0cnVjdCBnbTEydTMyMF9kZXZpY2UgKmdtMTJ1
MzIwKQogCWludCBpLCBibG9ja19zaXplOwogCWNvbnN0IGNoYXIgKmhkcjsKIAotCWdtMTJ1MzIw
LT5jbWRfYnVmID0ga21hbGxvYyhDTURfU0laRSwgR0ZQX0tFUk5FTCk7CisJZ20xMnUzMjAtPmNt
ZF9idWYgPSBkcm1tX2ttYWxsb2MoJmdtMTJ1MzIwLT5kZXYsIENNRF9TSVpFLCBHRlBfS0VSTkVM
KTsKIAlpZiAoIWdtMTJ1MzIwLT5jbWRfYnVmKQogCQlyZXR1cm4gLUVOT01FTTsKIApAQCAtMTcz
LDcgKzE3Myw4IEBAIHN0YXRpYyBpbnQgZ20xMnUzMjBfdXNiX2FsbG9jKHN0cnVjdCBnbTEydTMy
MF9kZXZpY2UgKmdtMTJ1MzIwKQogCQkJaGRyID0gZGF0YV9ibG9ja19oZWFkZXI7CiAJCX0KIAot
CQlnbTEydTMyMC0+ZGF0YV9idWZbaV0gPSBremFsbG9jKGJsb2NrX3NpemUsIEdGUF9LRVJORUwp
OworCQlnbTEydTMyMC0+ZGF0YV9idWZbaV0gPSBkcm1tX2t6YWxsb2MoJmdtMTJ1MzIwLT5kZXYs
CisJCQkJCQkgICAgIGJsb2NrX3NpemUsIEdGUF9LRVJORUwpOwogCQlpZiAoIWdtMTJ1MzIwLT5k
YXRhX2J1ZltpXSkKIAkJCXJldHVybiAtRU5PTUVNOwogCkBAIC0xOTIsMTUgKzE5Myw4IEBAIHN0
YXRpYyBpbnQgZ20xMnUzMjBfdXNiX2FsbG9jKHN0cnVjdCBnbTEydTMyMF9kZXZpY2UgKmdtMTJ1
MzIwKQogCiBzdGF0aWMgdm9pZCBnbTEydTMyMF91c2JfZnJlZShzdHJ1Y3QgZ20xMnUzMjBfZGV2
aWNlICpnbTEydTMyMCkKIHsKLQlpbnQgaTsKLQogCWlmIChnbTEydTMyMC0+ZmJfdXBkYXRlLndv
cmtxKQogCQlkZXN0cm95X3dvcmtxdWV1ZShnbTEydTMyMC0+ZmJfdXBkYXRlLndvcmtxKTsKLQot
CWZvciAoaSA9IDA7IGkgPCBHTTEyVTMyMF9CTE9DS19DT1VOVDsgaSsrKQotCQlrZnJlZShnbTEy
dTMyMC0+ZGF0YV9idWZbaV0pOwotCi0Ja2ZyZWUoZ20xMnUzMjAtPmNtZF9idWYpOwogfQogCiBz
dGF0aWMgaW50IGdtMTJ1MzIwX21pc2NfcmVxdWVzdChzdHJ1Y3QgZ20xMnUzMjBfZGV2aWNlICpn
bTEydTMyMCwKQEAgLTYzNiw3ICs2MzAsNiBAQCBzdGF0aWMgdm9pZCBnbTEydTMyMF9kcml2ZXJf
cmVsZWFzZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQogCXN0cnVjdCBnbTEydTMyMF9kZXZpY2Ug
KmdtMTJ1MzIwID0gZGV2LT5kZXZfcHJpdmF0ZTsKIAogCWdtMTJ1MzIwX3VzYl9mcmVlKGdtMTJ1
MzIwKTsKLQlkcm1fbW9kZV9jb25maWdfY2xlYW51cChkZXYpOwogfQogCiBERUZJTkVfRFJNX0dF
TV9GT1BTKGdtMTJ1MzIwX2ZvcHMpOwpAQCAtNjkzLDcgKzY4NiwxMCBAQCBzdGF0aWMgaW50IGdt
MTJ1MzIwX3VzYl9wcm9iZShzdHJ1Y3QgdXNiX2ludGVyZmFjZSAqaW50ZXJmYWNlLAogCWRldi0+
ZGV2X3ByaXZhdGUgPSBnbTEydTMyMDsKIAlkcm1tX2FkZF9maW5hbF9rZnJlZShkZXYsIGdtMTJ1
MzIwKTsKIAotCWRybV9tb2RlX2NvbmZpZ19pbml0KGRldik7CisJcmV0ID0gZHJtX21vZGVfY29u
ZmlnX2luaXQoZGV2KTsKKwlpZiAocmV0KQorCQlnb3RvIGVycl9wdXQ7CisKIAlkZXYtPm1vZGVf
Y29uZmlnLm1pbl93aWR0aCA9IEdNMTJVMzIwX1VTRVJfV0lEVEg7CiAJZGV2LT5tb2RlX2NvbmZp
Zy5tYXhfd2lkdGggPSBHTTEyVTMyMF9VU0VSX1dJRFRIOwogCWRldi0+bW9kZV9jb25maWcubWlu
X2hlaWdodCA9IEdNMTJVMzIwX0hFSUdIVDsKLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
