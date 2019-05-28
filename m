Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DEF2C241
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 11:04:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF9FD89FA6;
	Tue, 28 May 2019 09:03:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97F2789E69
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 09:03:35 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id e24so30646246edq.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 02:03:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=01fUYB3VzPGfcTugqgqBx5jW8iq7wLyVUX3qXdYLYSk=;
 b=rcTSg/fATrI/p51eT7cBmuLQO9PxxFY4PbEEoX4fyXlvnHlQl48YYJtQC9LCPJqE59
 cU/0Uz9zlU3JfbMJIEPwTKIJTBQoHmTpQrPSU+8EvgfV25l0L1PnIeZ6G2VvKh+VDgvz
 BledeYtdoHDc53LKFCOyt+lxRXWIrI0Wg5sgTqmzi75w09LqWUllXtSyDSVoDmTb9E3B
 rJW4l5PCYke2EUIBCfZQr9PRf55Km91ffKJq8dbSwiEtScYhzvEyAiC5PG75Ew7tc6F9
 N5UHTBYyxVk/wJOJ48TvbNjWyo6bG2R4xJlTnzh4maNjBmS3GAmoBr5fT8I5AnxoCEfG
 9GJw==
X-Gm-Message-State: APjAAAWiXS76UXyhlTIjj8jwq+Hpm1YYMkXVPJoFm3mSnHDV2nRBgkDZ
 aDIl0o0E5GGhpWpJqNbDKW2daQ==
X-Google-Smtp-Source: APXvYqz0EMzb0SG65WaaBqt1bSsx+8cxym9XyhE58ExT9b6/OKWIr27r6jDPAQ9wP/aEEzvPm7cAVg==
X-Received: by 2002:a50:8903:: with SMTP id e3mr126039162ede.11.1559034213606; 
 Tue, 28 May 2019 02:03:33 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id x49sm4072656edm.25.2019.05.28.02.03.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 02:03:32 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Tue, 28 May 2019 11:02:46 +0200
Message-Id: <20190528090304.9388-16-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528090304.9388-1-daniel.vetter@ffwll.ch>
References: <20190528090304.9388-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=01fUYB3VzPGfcTugqgqBx5jW8iq7wLyVUX3qXdYLYSk=;
 b=DIUw/kO/LXyngvpKwzC2ewKvPzp/6OUUrTW3jHZNYZjGOyfUOx9k0Ymf2PWGe0uTX1
 aFGbqCs0JBCbXRctZ3Clc9hEOdMbgD2j3dVb6uM642xcQ+8j4uPyEreOpxw8GzNrxnV1
 fOlYw4DwyEZcV634rmGq6J/k76ZdCQuxlqhWs=
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-fbdev@vger.kernel.org, DRI Development <dri-devel@lists.freedesktop.org>,
 Mikulas Patocka <mpatocka@redhat.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <syrjala@sci.fi>,
 Sam Ravnborg <sam@ravnborg.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQncyBwcm9wZXJseSBwcm90ZWN0ZWQgYnkgcmVib290X2xvY2suCgpTaWduZWQtb2ZmLWJ5OiBE
YW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgpSZXZpZXdlZC1ieTogU2FtIFJh
dm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgpSZXZpZXdlZC1ieTogTWFhcnRlbiBMYW5raG9yc3Qg
PG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KQ2M6IE1pa3VsYXMgUGF0b2NrYSA8
bXBhdG9ja2FAcmVkaGF0LmNvbT4KQ2M6ICJEYXZpZCBTLiBNaWxsZXIiIDxkYXZlbUBkYXZlbWxv
ZnQubmV0PgpDYzogIlZpbGxlIFN5cmrDpGzDpCIgPHN5cmphbGFAc2NpLmZpPgpDYzogQmFydGxv
bWllaiBab2xuaWVya2lld2ljeiA8Yi56b2xuaWVya2llQHNhbXN1bmcuY29tPgpDYzogRGFuaWVs
IFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KLS0tCiBkcml2ZXJzL3ZpZGVvL2ZiZGV2
L2F0eS9hdHlmYl9iYXNlLmMgfCAzICstLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmlkZW8vZmJkZXYvYXR5L2F0
eWZiX2Jhc2UuYyBiL2RyaXZlcnMvdmlkZW8vZmJkZXYvYXR5L2F0eWZiX2Jhc2UuYwppbmRleCBi
NmZlMTAzZGYxNDUuLmVlYmI2MmQ4MmEyMyAxMDA2NDQKLS0tIGEvZHJpdmVycy92aWRlby9mYmRl
di9hdHkvYXR5ZmJfYmFzZS5jCisrKyBiL2RyaXZlcnMvdmlkZW8vZmJkZXYvYXR5L2F0eWZiX2Jh
c2UuYwpAQCAtMzkxNiw4ICszOTE2LDcgQEAgc3RhdGljIGludCBhdHlmYl9yZWJvb3Rfbm90aWZ5
KHN0cnVjdCBub3RpZmllcl9ibG9jayAqbmIsCiAJaWYgKCFyZWJvb3RfaW5mbykKIAkJZ290byBv
dXQ7CiAKLQlpZiAoIWxvY2tfZmJfaW5mbyhyZWJvb3RfaW5mbykpCi0JCWdvdG8gb3V0OworCWxv
Y2tfZmJfaW5mbyhyZWJvb3RfaW5mbyk7CiAKIAlwYXIgPSByZWJvb3RfaW5mby0+cGFyOwogCi0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
