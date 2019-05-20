Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 334C222E74
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 10:23:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19A3D892B1;
	Mon, 20 May 2019 08:22:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C03D889268
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 08:22:41 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id p27so22585857eda.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 01:22:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=brzEwqzIIXnydSs/RGKR5pFbo4J3hD4vcbto6AdqxGk=;
 b=QCrkejAtJojz2ZD+rl/YqVqeDBF9c1GLhnxhF2W6+5L9LlNbpImheT/7+bFRLdkP09
 /z+9PvHM/csLdqIcAFNOnGNC5vI/BzHgT0Uq+KTUgjwqofYSI58T8OFi4KKhDocOJuWy
 4sTmF6TkOki8rPMWvbxhcZkQN1+pRsE5uhTbl6fMMG6m8hday5J9tM/nw2IcwSXreObY
 0Emk0tydgR0gz74DZKOcD9DcJgj4V9oilunpWjBlR29QGdXb32sYuFRQ9bRc2NqehiqH
 PU7RtW+Hpw4HAo/ZkS1kfBVsHkZiaDC8P2tRPrbaxsRunRBbs04aoB0TsM0GnFIVTecC
 654g==
X-Gm-Message-State: APjAAAUKeyRloqC7/N1v0phIUu6KwmR+pjBFPSSkx6uF5tRH4YUidoq3
 PRRMf3RbOixcIBhlJFrExItbAQ==
X-Google-Smtp-Source: APXvYqwcYQ/FNu9mKgR5y78+1RNm9YWWN/rbv1Dyk1fxTiJfn1IMT8JiRGTvl3E3oG9ZgSkImRa3bQ==
X-Received: by 2002:a17:906:4911:: with SMTP id
 b17mr50845503ejq.3.1558340560091; 
 Mon, 20 May 2019 01:22:40 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id t25sm3021263ejx.8.2019.05.20.01.22.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 01:22:39 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 20 May 2019 10:21:58 +0200
Message-Id: <20190520082216.26273-16-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
References: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=brzEwqzIIXnydSs/RGKR5pFbo4J3hD4vcbto6AdqxGk=;
 b=k225G4BySl1X7q+UlZP4Nituk6duwxPLxugM6XbySvaJv68rXCwZLb3vHIHnpUiVtt
 RMs142ozoZpwli8WRmc7BaQJrVmTQEAYyzOd8QwAVlCuFVjST21Uh742TKY/EU7jI4tn
 FvVS9T4MOsKO5Bio5SHMWrXZSZUxfL3BAeT14=
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Mikulas Patocka <mpatocka@redhat.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <syrjala@sci.fi>
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
