Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2BD164172
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 11:22:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1F5F6EB2E;
	Wed, 19 Feb 2020 10:21:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D1C76EB2E
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 10:21:41 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id m16so27483846wrx.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 02:21:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=r7QCkQeecG9kafjeTwFxIc7eZTrQc7j4K5sRgGQdigI=;
 b=QoaCQPR2ztg7b76dfjHiO9evENwhP19ZHSbNi27ipV+8WVhFaQr2PZSmyo8VBMiQYT
 78iWk+vjNA0LAqHp1EG4cYoe7L92TtLYapTMpf0T3tQ2BhdDXX3hSbdsVFuKvRftXfbF
 eMAj7yn7CYfszBI5P304EgppceiWSDsWOxfOs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r7QCkQeecG9kafjeTwFxIc7eZTrQc7j4K5sRgGQdigI=;
 b=HE9zZBHmEj0lbk74jn6VKsc6bK22w+ypxtCshYUUDKKrnsSYt500JjXKk2zzASv01R
 7M06z7RC4OdoOf+x78UIq8lsfEtlBcTub4dBVNoYJ8xprMGfDGk/FINpkvwDm/GGd5Xp
 YAqkOkYKnbfEpaW/IsCiX339Ey3ShbtrF0BtszkCh/KqM8Y0Z7frILYI09Bxzr/4RWQ+
 TSD3gG6GaDSJR/pnLybUyubbkn/738JVYT1D8aQRvckl0SY0KcctQevv1hZ5yo8S/B/N
 LQjA/7Nk/lPulFPxu6nMTRVinxG/wBxgh2ARvYBBhdGqYvra2/LTYETIMQwP6XGRD4Qk
 rTnA==
X-Gm-Message-State: APjAAAXgdbebh0YnpMGLAqKjLU90wlx0oaInM0uDH1ZyadjX/khnLSjG
 wLjyl353qL+h114P9s+3KY+MpQzLSEg=
X-Google-Smtp-Source: APXvYqwBXsZIAyeJd/WLgc6LlIvGApWTV56ZDFjc86v9Mjkff2StbKixXt5A1pf0P0ajeHog0GulRA==
X-Received: by 2002:adf:eec3:: with SMTP id a3mr33084079wrp.337.1582107699768; 
 Wed, 19 Feb 2020 02:21:39 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s23sm2370339wra.15.2020.02.19.02.21.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 02:21:39 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 19 Feb 2020 11:20:37 +0100
Message-Id: <20200219102122.1607365-8-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/52] drm/udl: Use drmm_add_final_kfree
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
Cc: Sam Ravnborg <sam@ravnborg.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Dave Airlie <airlied@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2l0aCB0aGlzIHdlIGNhbiBkcm9wIHRoZSBmaW5hbCBrZnJlZSBmcm9tIHRoZSByZWxlYXNlIGZ1
bmN0aW9uLgoKdjI6IFdlIG5lZWQgZHJtX2Rldl9wdXQgdG8gdW5yb2xsIHRoZSBkcml2ZXIgY3Jl
YXRpb24gKG9uY2UKZHJtX2Rldl9pbml0IGFuZCBkcm1tX2FkZF9maW5hbF9rZnJlZSBzdWNlZWRl
ZCksIG90aGVyd2lzZQp0aGUgZHJtbV8gbWFnaWMgZG9lc24ndCBoYXBwZW4uCgpTaWduZWQtb2Zm
LWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IERhdmUgQWly
bGllIDxhaXJsaWVkQHJlZGhhdC5jb20+CkNjOiBTZWFuIFBhdWwgPHNlYW5AcG9vcmx5LnJ1bj4K
Q2M6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgpDYzogRW1pbCBWZWxp
a292IDxlbWlsLmwudmVsaWtvdkBnbWFpbC5jb20+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwu
dmV0dGVyQGZmd2xsLmNoPgpDYzogIk5vcmFsZiBUcsO4bm5lcyIgPG5vcmFsZkB0cm9ubmVzLm9y
Zz4KQ2M6IFRob21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgpDYzogU2FtIFJhdm5i
b3JnIDxzYW1AcmF2bmJvcmcub3JnPgotLS0KIGRyaXZlcnMvZ3B1L2RybS91ZGwvdWRsX2Rydi5j
IHwgMyArLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdWRsL3VkbF9kcnYuYyBiL2RyaXZlcnMvZ3B1
L2RybS91ZGwvdWRsX2Rydi5jCmluZGV4IGQ1Yjg5NzExYWIxZS4uNmE1NTk0OTQ2MDk2IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdWRsL3VkbF9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vdWRsL3VkbF9kcnYuYwpAQCAtODEsOCArODEsNyBAQCBzdGF0aWMgc3RydWN0IHVkbF9kZXZp
Y2UgKnVkbF9kcml2ZXJfY3JlYXRlKHN0cnVjdCB1c2JfaW50ZXJmYWNlICppbnRlcmZhY2UpCiAK
IAlyID0gdWRsX2luaXQodWRsKTsKIAlpZiAocikgewotCQlkcm1fZGV2X2ZpbmkoJnVkbC0+ZHJt
KTsKLQkJa2ZyZWUodWRsKTsKKwkJZHJtX2Rldl9wdXQoJnVkbC0+ZHJtKTsKIAkJcmV0dXJuIEVS
Ul9QVFIocik7CiAJfQogCi0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
