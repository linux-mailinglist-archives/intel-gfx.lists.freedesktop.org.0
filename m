Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D51FD8AD
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 10:21:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 106426E1FB;
	Fri, 15 Nov 2019 09:21:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57C5A6E1F8
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 09:21:30 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id u18so8918796wmc.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 01:21:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oQB86j8FZQH4Sh7rDbVmMqNvIL9AFAXhmpfcG7mbgqg=;
 b=aSa9uVGLaFPipnPHELjR+YgkoUNmMEsyCZ3F6zWGQJIH/h61K/+Xrkcgw/ki2i9W1N
 WxjMpzyiraL3SI6vXJMrl1QeTxIFNGDZZOVTSet/0YEfbnCQg3XXZ7MNPDimfErKHRPl
 hX8vtWhvOEBTSWELUyauGxX2uKZQ9ZBX+az8S3FbW9Txolt6WMCGPuY8HKwbj4nfdp6N
 JOCpRIZOb6RmjJHOXN3AzUteS1335U35zZHwt0JIpE08hTSrIgdgr780C1NHz/q2fGm1
 g1cwVuIjt5OrUV6FcHKznsI8NK9zOuxDkhf35IWE6zdzEwjhfGYSgkdaPMjdIh4dA7BC
 kyKw==
X-Gm-Message-State: APjAAAUL+UZIAkz3XTksKxKJdh2E0m9BcA3ezPFxwKeorIVg46AfJCSH
 Ew+Isq0IAJoSdbg7OImAqibt6w==
X-Google-Smtp-Source: APXvYqzfNw+xEwRsZgEJ5EaZ5mtAtKcnYpFttPkjdcMRICstqKjbeIL1lMoNPriAWVWuc8ftUFw/fQ==
X-Received: by 2002:a7b:c762:: with SMTP id x2mr13261637wmk.128.1573809689026; 
 Fri, 15 Nov 2019 01:21:29 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id 11sm8987506wmi.8.2019.11.15.01.21.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 01:21:28 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 15 Nov 2019 10:21:14 +0100
Message-Id: <20191115092120.4445-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191115092120.4445-1-daniel.vetter@ffwll.ch>
References: <20191115092120.4445-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oQB86j8FZQH4Sh7rDbVmMqNvIL9AFAXhmpfcG7mbgqg=;
 b=Ld4XloE2FMFzkHUAG7n2jsiQXHCt5cLaiA94t087F7u+01dZJeZ0TRKPko5uVepFBd
 ivSQf+gMl0XzwE6nw2V9W0qYXt0eV5v5UbehbFWKwbeTXDsPmN8p357V3VvmDe6y7oD1
 b/jgpdfFOh0OLKqUH9XDrAKaEhu0GFl7FddtI=
Subject: [Intel-gfx] [PATCH 2/8] drm/atmel: ditch fb_create wrapper
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U3BvdHRlZCB3aGlsZSBsb29raW5nIHRocm91Z2ggdGhlbSBhbGwuCgpTaWduZWQtb2ZmLWJ5OiBE
YW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IFNhbSBSYXZuYm9yZyA8
c2FtQHJhdm5ib3JnLm9yZz4KQ2M6IEJvcmlzIEJyZXppbGxvbiA8YmJyZXppbGxvbkBrZXJuZWwu
b3JnPgpDYzogTmljb2xhcyBGZXJyZSA8bmljb2xhcy5mZXJyZUBtaWNyb2NoaXAuY29tPgpDYzog
QWxleGFuZHJlIEJlbGxvbmkgPGFsZXhhbmRyZS5iZWxsb25pQGJvb3RsaW4uY29tPgpDYzogTHVk
b3ZpYyBEZXNyb2NoZXMgPGx1ZG92aWMuZGVzcm9jaGVzQG1pY3JvY2hpcC5jb20+CkNjOiBsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKLS0tCiBkcml2ZXJzL2dwdS9kcm0vYXRt
ZWwtaGxjZGMvYXRtZWxfaGxjZGNfZGMuYyB8IDggKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vYXRtZWwtaGxjZGMvYXRtZWxfaGxjZGNfZGMuYyBiL2RyaXZlcnMvZ3B1L2RybS9hdG1lbC1o
bGNkYy9hdG1lbF9obGNkY19kYy5jCmluZGV4IDkyNjQwMjk4YWQ0MS4uOGRjOTE3YTEyNzBiIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYXRtZWwtaGxjZGMvYXRtZWxfaGxjZGNfZGMuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vYXRtZWwtaGxjZGMvYXRtZWxfaGxjZGNfZGMuYwpAQCAtNTU3
LDEyICs1NTcsNiBAQCBzdGF0aWMgaXJxcmV0dXJuX3QgYXRtZWxfaGxjZGNfZGNfaXJxX2hhbmRs
ZXIoaW50IGlycSwgdm9pZCAqZGF0YSkKIAlyZXR1cm4gSVJRX0hBTkRMRUQ7CiB9CiAKLXN0YXRp
YyBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICphdG1lbF9obGNkY19mYl9jcmVhdGUoc3RydWN0IGRy
bV9kZXZpY2UgKmRldiwKLQkJc3RydWN0IGRybV9maWxlICpmaWxlX3ByaXYsIGNvbnN0IHN0cnVj
dCBkcm1fbW9kZV9mYl9jbWQyICptb2RlX2NtZCkKLXsKLQlyZXR1cm4gZHJtX2dlbV9mYl9jcmVh
dGUoZGV2LCBmaWxlX3ByaXYsIG1vZGVfY21kKTsKLX0KLQogc3RydWN0IGF0bWVsX2hsY2RjX2Rj
X2NvbW1pdCB7CiAJc3RydWN0IHdvcmtfc3RydWN0IHdvcms7CiAJc3RydWN0IGRybV9kZXZpY2Ug
KmRldjsKQEAgLTY1Nyw3ICs2NTEsNyBAQCBzdGF0aWMgaW50IGF0bWVsX2hsY2RjX2RjX2F0b21p
Y19jb21taXQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIH0KIAogc3RhdGljIGNvbnN0IHN0cnVj
dCBkcm1fbW9kZV9jb25maWdfZnVuY3MgbW9kZV9jb25maWdfZnVuY3MgPSB7Ci0JLmZiX2NyZWF0
ZSA9IGF0bWVsX2hsY2RjX2ZiX2NyZWF0ZSwKKwkuZmJfY3JlYXRlID0gZHJtX2dlbV9mYl9jcmVh
dGUsCiAJLmF0b21pY19jaGVjayA9IGRybV9hdG9taWNfaGVscGVyX2NoZWNrLAogCS5hdG9taWNf
Y29tbWl0ID0gYXRtZWxfaGxjZGNfZGNfYXRvbWljX2NvbW1pdCwKIH07Ci0tIAoyLjI0LjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
