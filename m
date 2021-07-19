Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1FA53CEB04
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jul 2021 20:31:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDC716E07B;
	Mon, 19 Jul 2021 18:31:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com
 [IPv6:2607:f8b0:4864:20::435])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2990089E33
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jul 2021 18:30:58 +0000 (UTC)
Received: by mail-pf1-x435.google.com with SMTP id b12so17236896pfv.6
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jul 2021 11:30:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qFNdhkykZcCs3HXRfapYY9OkVQ/lDSNnVRyFvwWEZ84=;
 b=LDjnX2FSQrlmSDxmQqhF3UZTYEjB3opXAgjmZl7d/IU6t7qJi3n/wlFASNdRJLwoL5
 pu5g65wb6YUYtnUPgT5BDqRsP8hX0AIY3nfdzjzBxUAqIyNkJwawDD0OVDr2fnJteppW
 0jx/Gr9dfw4UaatdLu6mAy9EspiX1GOIsi+2k+M/ucvNdn/7pejFWMBvWz+mCNv8hL/c
 mE07NK1eLorJQrAlo0BpmnqTeTeon4Q1FqnqlZuIGDqmtyK3WbBlvZPU+XY8Y/doGmpz
 4zELtwX2zIm3DA9B1IpjACCPCpRg14fKDM02rLIRIfFpJKgXBcQ86Ppaez0ZsPddAEsm
 g5YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qFNdhkykZcCs3HXRfapYY9OkVQ/lDSNnVRyFvwWEZ84=;
 b=MQLtqlO31x2u61bcFXVo1OWqtliUkxZ00NnE2Yd6t+gThp6jhI1P3UzzTnW0BCpzwG
 1jxxRUur80jLJ/zHGEMwb4JbZGy8KR/1bs1oloKD0ERJ8tfu46baveoCXk94lArLFIby
 CKXkVQhky9jXGdk2yFXvbcHFCBJ4EyAutQghq2VwPz8T95pTfWOXHcQuRAxjbbZo5sZK
 n/t9EuNjxY3EItYFF8uyWrInvYgjKuBMcYIJr6JdDUGbQ2OZneE7mVX+yTxQoDlnTP6+
 LtmSKJaXZ+YusoQ1SZlnp6KZSyqeUyKV6IydEZ5nZG3pq+9afTppyOBfsmt/QkKOrrB8
 ga7A==
X-Gm-Message-State: AOAM533CoQAChp4OGCv1G9rv7px3utBx65g67YnITlBGJJUPmqNOrhwU
 tUsYgjI7IduACjGZQOxf15j3QdKI0QBzHA==
X-Google-Smtp-Source: ABdhPJyCSaK1BnjPMSbDfFGRDUr24/UBx8EAgEtP2JUda23KRKsR0D09mUnkHbwjSN6IBYFUMzGIYQ==
X-Received: by 2002:a63:43c4:: with SMTP id
 q187mr26495416pga.172.1626719457407; 
 Mon, 19 Jul 2021 11:30:57 -0700 (PDT)
Received: from omlet.com ([134.134.137.83])
 by smtp.gmail.com with ESMTPSA id w23sm6961555pfc.60.2021.07.19.11.30.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Jul 2021 11:30:56 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 19 Jul 2021 13:30:45 -0500
Message-Id: <20210719183047.2624569-5-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210719183047.2624569-1-jason@jlekstrand.net>
References: <20210719183047.2624569-1-jason@jlekstrand.net>
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
ZSIpCkNjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fZGV2aWNlLmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fZGV2
aWNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9kZXZpY2UuYwppbmRleCA1ZjMxYWNlYzNh
ZDc2Li41MTlkZWVhOGUzOWI3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9k
ZXZpY2UuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9kZXZpY2UuYwpAQCAtMTAwLDYg
KzEwMCw4IEBAIHN0YXRpYyBpbnQgdHRtX2dsb2JhbF9pbml0KHZvaWQpCiAJZGVidWdmc19jcmVh
dGVfYXRvbWljX3QoImJ1ZmZlcl9vYmplY3RzIiwgMDQ0NCwgdHRtX2RlYnVnZnNfcm9vdCwKIAkJ
CQkmZ2xvYi0+Ym9fY291bnQpOwogb3V0OgorCWlmIChyZXQpCisJCS0tdHRtX2dsb2JfdXNlX2Nv
dW50OwogCW11dGV4X3VubG9jaygmdHRtX2dsb2JhbF9tdXRleCk7CiAJcmV0dXJuIHJldDsKIH0K
LS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
