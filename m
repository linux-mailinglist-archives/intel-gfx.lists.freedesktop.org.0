Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 523FF22E69
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 10:23:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B90D58926F;
	Mon, 20 May 2019 08:22:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E62D89267
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 08:22:31 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id n17so22607623edb.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 01:22:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yy90SY5/chDu3adwLkHoQhEeL0uOM1NOJmociVMUU4s=;
 b=W3mpH6Le8j5X6XEBMy1O8El+djznFWGPpy0kkGKSyeDlLvdaYvg2VmvMpWKROXL2dE
 4z4VT5bBmPu7Rq9MhW3Jk4zB6Px4yo6LrE1Ny/X8NEIE4M8VmB0V6LbaPH7UU009Ijvq
 GM89LJ7HRiCVw7fPOlmtim67uWou4quHl8YyjvO+hGZ/zj1ZE/tfUb5CRHeKQ+clGOSi
 VVXb2Mo5JzEGnk7GbOU44L4t7jf+EXLSxiKF/wqLLShtt1tAW07wSgaNdWIlukrtG53z
 KBCTaCZX0wLeMSdluvuS9vh0kQdQ5n1RWD03NqvCv/HeRaIPIL2t2Jfb1AaXecNSabVA
 Ly/A==
X-Gm-Message-State: APjAAAUnZKK1XQKluA8Xi1O+rUp7wAtYK+2wPAtlbj0KFH7X+Qy6KL4L
 jO0DkPOG2+3JFetHKuvDVpsO8Q==
X-Google-Smtp-Source: APXvYqxdWi1IjK9CrOPrKCYsIFhwO9cGwKSyfvFscq7wlo2HQm/gpu93fgQpMudhegtDzz3SNq4bcg==
X-Received: by 2002:a50:ad18:: with SMTP id y24mr74100466edc.64.1558340549704; 
 Mon, 20 May 2019 01:22:29 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id t25sm3021263ejx.8.2019.05.20.01.22.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 01:22:28 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 20 May 2019 10:21:49 +0200
Message-Id: <20190520082216.26273-7-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
References: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yy90SY5/chDu3adwLkHoQhEeL0uOM1NOJmociVMUU4s=;
 b=Br4lGjx6AYOmC8birJ2u22FSo+1D2WHdSA9O7P/G/jGX+VR9ZzrMY5zOKWlSMg+Ekk
 U7S4K5dfKQHB99S8s5RnjHdJHlT5nyX5dtAmtsyHAEu9H79HKy9hUb5l02yVlqUVeu2L
 gQtPbGsCys6UMB9HaTvvsi7CVFRsYrnsCEO8I=
Subject: [Intel-gfx] [PATCH 06/33] fbdev/cyber2000: Remove struct display
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
 Russell King <linux@armlinux.org.uk>, LKML <linux-kernel@vger.kernel.org>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RW50aXJlbHkgdW51c2VkLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZl
dHRlckBpbnRlbC5jb20+CkNjOiBSdXNzZWxsIEtpbmcgPGxpbnV4QGFybWxpbnV4Lm9yZy51az4K
Q2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwotLS0KIGRyaXZlcnMvdmlk
ZW8vZmJkZXYvY3liZXIyMDAwZmIuYyB8IDEgLQogMSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2N5YmVyMjAwMGZiLmMgYi9kcml2
ZXJzL3ZpZGVvL2ZiZGV2L2N5YmVyMjAwMGZiLmMKaW5kZXggOWE1NzUxY2I0ZTE2Li40NTJlZjA3
YjNhMDYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdmlkZW8vZmJkZXYvY3liZXIyMDAwZmIuYworKysg
Yi9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2N5YmVyMjAwMGZiLmMKQEAgLTYxLDcgKzYxLDYgQEAKIHN0
cnVjdCBjZmJfaW5mbyB7CiAJc3RydWN0IGZiX2luZm8JCWZiOwogCXN0cnVjdCBkaXNwbGF5X3N3
aXRjaAkqZGlzcHN3OwotCXN0cnVjdCBkaXNwbGF5CQkqZGlzcGxheTsKIAl1bnNpZ25lZCBjaGFy
CQlfX2lvbWVtICpyZWdpb247CiAJdW5zaWduZWQgY2hhcgkJX19pb21lbSAqcmVnczsKIAl1X2lu
dAkJCWlkOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
