Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A313108B25
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 10:44:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2D996E103;
	Mon, 25 Nov 2019 09:44:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 909DC6E0FC
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 09:44:10 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id i12so17053468wrn.11
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 01:44:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3xRA6yn7gt/VYl7ZhTsi+7hrTUH2goQVGJ/o+f++J+c=;
 b=jvp8B8RbqEGSEHwGcuk7w1jGq0xuBNhkkrxmz4qcOwvxE5610UzqODALH2PVFnR7Dx
 qNeOxVEQ4JRf6IZaqBG+hK7Y0vWVvhYQsIlvktt4RDThaye3+9a1TYNa1g24jPzOtYde
 UCvmjHMX/Qp71gfZZxOprdFfmBTEcQvmezm/ttrRKEdxGyOxd3AOCJz25Ji5Um3tzg3m
 Ygpvf7uZ7SCvHZ5pEpoKjAzhxAgfhWn91alYfqXZmNWwHcM1JYRpY1secqcmAcKLYwwU
 K4UzeehNzPVWK9QPttWGKLUiGkwvQ4jzGi2yBmYgTxmf7c4Y6eqKgllvJfuCGfgzMoFE
 syrA==
X-Gm-Message-State: APjAAAU7oTvnlzj7Gn9MvCtsaE9ZMxqSClLbbEVZ/jwE9LNXXq05W2zZ
 cqpPHdskRQlSMtzsW3IjjDUTkQ==
X-Google-Smtp-Source: APXvYqy8QLtPWFynBIt9Dv/33rXwzDUcB1mhLW2tK2u1AyaMEVscyDEJVytddNO3FvZCKyYyVwSMBQ==
X-Received: by 2002:a5d:4589:: with SMTP id p9mr14490188wrq.61.1574675049112; 
 Mon, 25 Nov 2019 01:44:09 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id x2sm7598233wmc.3.2019.11.25.01.44.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 01:44:07 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 25 Nov 2019 10:43:56 +0100
Message-Id: <20191125094356.161941-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191125094356.161941-1-daniel.vetter@ffwll.ch>
References: <20191125094356.161941-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3xRA6yn7gt/VYl7ZhTsi+7hrTUH2goQVGJ/o+f++J+c=;
 b=ALI53pD0wzBMeBdEvaXMM42GsWkyjncuqO7s1OkipUaTs0c/ilN5uPzefU7rEBnlsw
 jWHKsXClxaL3XKvLR1f6Pczb4UBg9hTNJJBFWX4lVfAwOtxqJ9kEXUuZq9DLolBHCJn2
 IgqsWukgsONyxCBuIgWlrExkd4CGT+h2ySC60=
Subject: [Intel-gfx] [PATCH 4/4] drm/vc4: Use dma_resv locking wrappers
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SSdsbCBhZGQgbW9yZSBmYW5jeSBsb2dpYyB0byB0aGVtIHNvb24sIHNvIGV2ZXJ5b25lIHJlYWxs
eSBoYXMgdG8gdXNlCnRoZW0uIFBsdXMgdGhleSBhbHJlYWR5IHByb3ZpZGUgc29tZSBuaWNlIGFk
ZGl0aW9uYWwgZGVidWcKaW5mcmFzdHJ1Y3R1cmUgb24gdG9wIG9mIGRpcmVjdCB3d19tdXRleCB1
c2FnZSBmb3IgdGhlIGZlbmNlcyB0cmFja2VkCmJ5IGRtYV9yZXN2LgoKU2lnbmVkLW9mZi1ieTog
RGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL3ZjNC92YzRfZ2VtLmMgfCAxMSArKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
dmM0L3ZjNF9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2dlbS5jCmluZGV4IDdhMDZj
YjZlMzFjNS4uZTFjZmMzY2NkMDVhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdmM0L3Zj
NF9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdmM0L3ZjNF9nZW0uYwpAQCAtNTY4LDcgKzU2
OCw3IEBAIHZjNF91bmxvY2tfYm9fcmVzZXJ2YXRpb25zKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYs
CiAJZm9yIChpID0gMDsgaSA8IGV4ZWMtPmJvX2NvdW50OyBpKyspIHsKIAkJc3RydWN0IGRybV9n
ZW1fb2JqZWN0ICpibyA9ICZleGVjLT5ib1tpXS0+YmFzZTsKIAotCQl3d19tdXRleF91bmxvY2so
JmJvLT5yZXN2LT5sb2NrKTsKKwkJZG1hX3Jlc3ZfdW5sb2NrKGJvLT5yZXN2KTsKIAl9CiAKIAl3
d19hY3F1aXJlX2ZpbmkoYWNxdWlyZV9jdHgpOwpAQCAtNTk1LDggKzU5NSw3IEBAIHZjNF9sb2Nr
X2JvX3Jlc2VydmF0aW9ucyhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogcmV0cnk6CiAJaWYgKGNv
bnRlbmRlZF9sb2NrICE9IC0xKSB7CiAJCWJvID0gJmV4ZWMtPmJvW2NvbnRlbmRlZF9sb2NrXS0+
YmFzZTsKLQkJcmV0ID0gd3dfbXV0ZXhfbG9ja19zbG93X2ludGVycnVwdGlibGUoJmJvLT5yZXN2
LT5sb2NrLAotCQkJCQkJICAgICAgIGFjcXVpcmVfY3R4KTsKKwkJcmV0ID0gZG1hX3Jlc3ZfbG9j
a19zbG93X2ludGVycnVwdGlibGUoYm8tPnJlc3YsIGFjcXVpcmVfY3R4KTsKIAkJaWYgKHJldCkg
ewogCQkJd3dfYWNxdWlyZV9kb25lKGFjcXVpcmVfY3R4KTsKIAkJCXJldHVybiByZXQ7CkBAIC02
MDksMTkgKzYwOCwxOSBAQCB2YzRfbG9ja19ib19yZXNlcnZhdGlvbnMoc3RydWN0IGRybV9kZXZp
Y2UgKmRldiwKIAogCQlibyA9ICZleGVjLT5ib1tpXS0+YmFzZTsKIAotCQlyZXQgPSB3d19tdXRl
eF9sb2NrX2ludGVycnVwdGlibGUoJmJvLT5yZXN2LT5sb2NrLCBhY3F1aXJlX2N0eCk7CisJCXJl
dCA9IGRtYV9yZXN2X2xvY2tfaW50ZXJydXB0aWJsZShiby0+cmVzdiwgYWNxdWlyZV9jdHgpOwog
CQlpZiAocmV0KSB7CiAJCQlpbnQgajsKIAogCQkJZm9yIChqID0gMDsgaiA8IGk7IGorKykgewog
CQkJCWJvID0gJmV4ZWMtPmJvW2pdLT5iYXNlOwotCQkJCXd3X211dGV4X3VubG9jaygmYm8tPnJl
c3YtPmxvY2spOworCQkJCWRtYV9yZXN2X3VubG9jayhiby0+cmVzdik7CiAJCQl9CiAKIAkJCWlm
IChjb250ZW5kZWRfbG9jayAhPSAtMSAmJiBjb250ZW5kZWRfbG9jayA+PSBpKSB7CiAJCQkJYm8g
PSAmZXhlYy0+Ym9bY29udGVuZGVkX2xvY2tdLT5iYXNlOwogCi0JCQkJd3dfbXV0ZXhfdW5sb2Nr
KCZiby0+cmVzdi0+bG9jayk7CisJCQkJZG1hX3Jlc3ZfdW5sb2NrKGJvLT5yZXN2KTsKIAkJCX0K
IAogCQkJaWYgKHJldCA9PSAtRURFQURMSykgewotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
