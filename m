Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B42293A0
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:55:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD7006E0C9;
	Fri, 24 May 2019 08:54:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED0476E0BA
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 08:54:23 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id n17so13371949edb.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 01:54:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=brzEwqzIIXnydSs/RGKR5pFbo4J3hD4vcbto6AdqxGk=;
 b=ikpY/PKte1Mf7zf9fpEoIh7+pxN5VHoG1I66M36BBZVpF8lQ6JS2+6EjPqBs+d2jWq
 ndiCg+OPW8HNcsBZ+CzxNFp/TlqV7EumntXzUsd8emws7o2191isMtZGOf21wQ7XBquN
 05uu5UYeMzpQl8gc3tV2hCSf+wKcc039amKsgV08MoqFEG2jVPtUVrSb3A7F0eAoQahS
 uXa02u6k5Py6SiN00PGwho/Fpzck2PUTKxwaGjHoME5zAqPW8OW5z3aPrfe51a+ktHag
 4JM9Xc4Gq5xvFV6rIkCK5rsoWbZkiQTOtLa63Y+QluTwY9E6BfuIPdIfJMsT0k7CUirA
 m5KA==
X-Gm-Message-State: APjAAAWzKgVPkBpYNjvg4NWozSIVll112D1IiuHrV7a7iIkCcpY4yM4o
 eDlhzo6gsvk+Q121jffsO49QIQ==
X-Google-Smtp-Source: APXvYqyWxvUGXtbZ3ghrLc8v+hKyKnYCdQVb8oPo8l7h4OBwvxyDc3SSjNPuRkrd519zrYDMbCVOGA==
X-Received: by 2002:a50:9858:: with SMTP id h24mr55620849edb.147.1558688061759; 
 Fri, 24 May 2019 01:54:21 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id 96sm567082edq.68.2019.05.24.01.54.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 01:54:21 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Fri, 24 May 2019 10:53:36 +0200
Message-Id: <20190524085354.27411-16-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
References: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=brzEwqzIIXnydSs/RGKR5pFbo4J3hD4vcbto6AdqxGk=;
 b=Xeo0NgYq2zY1qZPEankOx3NnBKnR25IXVXKxHkt4Y0761hcMWTCBOBv7E29ft9gKMK
 UuKrb+d5LMYjosukYAmOB+0jLjO/Y+J6bSeJt3HuAbXJzhngH6TYBnlErxYlaaJpzn03
 9plmnzfTUhDWJle88EbXJyyIodmCNhuCQStxs=
Subject: [Intel-gfx] [PATCH 15/33] fbdev/atyfb: lock_fb_info can't fail
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <syrjala@sci.fi>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "David S. Miller" <davem@davemloft.net>, Mikulas Patocka <mpatocka@redhat.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQncyBwcm9wZXJseSBwcm90ZWN0ZWQgYnkgcmVib290X2xvY2suCgpTaWduZWQtb2ZmLWJ5OiBE
YW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgpDYzogTWlrdWxhcyBQYXRvY2th
IDxtcGF0b2NrYUByZWRoYXQuY29tPgpDYzogIkRhdmlkIFMuIE1pbGxlciIgPGRhdmVtQGRhdmVt
bG9mdC5uZXQ+CkNjOiAiVmlsbGUgU3lyasOkbMOkIiA8c3lyamFsYUBzY2kuZmk+CkNjOiBCYXJ0
bG9taWVqIFpvbG5pZXJraWV3aWN6IDxiLnpvbG5pZXJraWVAc2Ftc3VuZy5jb20+CkNjOiBEYW5p
ZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgotLS0KIGRyaXZlcnMvdmlkZW8vZmJk
ZXYvYXR5L2F0eWZiX2Jhc2UuYyB8IDMgKy0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy92aWRlby9mYmRldi9hdHkv
YXR5ZmJfYmFzZS5jIGIvZHJpdmVycy92aWRlby9mYmRldi9hdHkvYXR5ZmJfYmFzZS5jCmluZGV4
IGI2ZmUxMDNkZjE0NS4uZWViYjYyZDgyYTIzIDEwMDY0NAotLS0gYS9kcml2ZXJzL3ZpZGVvL2Zi
ZGV2L2F0eS9hdHlmYl9iYXNlLmMKKysrIGIvZHJpdmVycy92aWRlby9mYmRldi9hdHkvYXR5ZmJf
YmFzZS5jCkBAIC0zOTE2LDggKzM5MTYsNyBAQCBzdGF0aWMgaW50IGF0eWZiX3JlYm9vdF9ub3Rp
Znkoc3RydWN0IG5vdGlmaWVyX2Jsb2NrICpuYiwKIAlpZiAoIXJlYm9vdF9pbmZvKQogCQlnb3Rv
IG91dDsKIAotCWlmICghbG9ja19mYl9pbmZvKHJlYm9vdF9pbmZvKSkKLQkJZ290byBvdXQ7CisJ
bG9ja19mYl9pbmZvKHJlYm9vdF9pbmZvKTsKIAogCXBhciA9IHJlYm9vdF9pbmZvLT5wYXI7CiAK
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
