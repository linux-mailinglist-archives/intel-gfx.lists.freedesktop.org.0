Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA233D1249
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 17:25:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E76456EB5C;
	Wed, 21 Jul 2021 15:25:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com
 [IPv6:2607:f8b0:4864:20::1032])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 182866E9A4
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 15:25:05 +0000 (UTC)
Received: by mail-pj1-x1032.google.com with SMTP id
 jx7-20020a17090b46c7b02901757deaf2c8so1267701pjb.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 08:25:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BhkbkDYY5lvapWHEYykIm8DO+eSuMufmOfIOn+p1+24=;
 b=ICuQed88N2DSLox8+2+WLSYjWX9567etIPd6e2gZVhN5e9WAwnSsnYltZ0bOQncTA2
 PDSqyDltnwfZ+8eTQNYEjRO14OClQbNt256BFV9i8zepxyvIZxA7PSkpUKoF+wMONJeE
 RHbke94hJmTDTWCtXDUp/HVe50qgC5PFNqzwpiZ4kAMhL2537ofK5aqZidAFl2eOQEf1
 U1oXDkZToBXBqokztVEvNieliqQRpJpWBT/4u4pUtuD9chViEfVfbX8UUpkF1XYgooC8
 CO5nTp8+aF1iEZvcybwx2iAYbB6OLg5cutw+jpqnkVe2TPiC3qVUamwr7Hcj1QWnIigs
 C3mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BhkbkDYY5lvapWHEYykIm8DO+eSuMufmOfIOn+p1+24=;
 b=HrTjUJC7R1U5vWU+fCjOb4fpUIjdoz0olOTfX8JWMHO1/ZHu2KdMcdfmtr7xclL+I7
 2alDvqgyed1VmC3q+Hbvd2kXqSZi2urxutWcS4Ven2UeAhy96u3B6gCuGdpwYBBKm7Su
 BOroD6IhCFYaRrVtTFzlh9ljBY33E1b0s1yy1HHwlSggTkZV8IfIJlRgAAhhPv+P8ejH
 ctR9nzuJiP09PPArp3Nf4IG786yZnDRlTXLxo5pUsPCwVz1g158M+OBnj/ZtKOu9tnDF
 VoNSIUfNozWQ+5F8oh3mQkf10wHobjC1T4nu/WP3CLAc4pBkZy4Rvuju+jFUdNlXsKX1
 l7wA==
X-Gm-Message-State: AOAM5315BrFKOjoYslpXQB9KoGJSmG7TceI7g2ZfmxOXm7PuFMP627pp
 iEowzPASEz7fz7/N6Ul77dbqPiaZkn9tuQ==
X-Google-Smtp-Source: ABdhPJx+ValW3pKWYpEKgfKlU+q31MmAziW6tzU+OAKOMBI8RQolg01wyhynj1LpxSDAxZ9wxbw0UQ==
X-Received: by 2002:a17:90a:642:: with SMTP id
 q2mr4250208pje.205.1626881104316; 
 Wed, 21 Jul 2021 08:25:04 -0700 (PDT)
Received: from omlet.com ([134.134.137.82])
 by smtp.gmail.com with ESMTPSA id e4sm32451034pgi.94.2021.07.21.08.25.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jul 2021 08:25:03 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 21 Jul 2021 10:23:56 -0500
Message-Id: <20210721152358.2893314-5-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721152358.2893314-1-jason@jlekstrand.net>
References: <20210721152358.2893314-1-jason@jlekstrand.net>
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
