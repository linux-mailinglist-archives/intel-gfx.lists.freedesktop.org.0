Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 239BA176701
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 23:27:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48C436E886;
	Mon,  2 Mar 2020 22:26:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EAB56E87B
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 22:26:54 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id f15so838302wml.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Mar 2020 14:26:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ajU8ZGbEcqkBckAYEDiRNz0MsdPI1TPZqA43HvlugAA=;
 b=H9TqljHATSEOas5/z3pB0sLxFqmY4QJ1lKcrkrm/K+nQXUIjJvkTeSloG/d4HjKzZP
 oB4t5WOyrQ9RvNccEU96AvdGiLx/bUOJoMMySLC1Rsux3YU5u8g6YSbW3taUbod67G/k
 SMDhFsGrurpKzvz7LNsG9Uxn6sc016suc/yGg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ajU8ZGbEcqkBckAYEDiRNz0MsdPI1TPZqA43HvlugAA=;
 b=s1zg81a/+Tz731bfs4ncBSyOR/wr0FDOOXD8FrPynyWcNaZZkrCiTnJAhLCnZTbtWt
 vJDs+ChUuyQQuae2Jr1Tsf2eptK24nSadk3BQ+3evsE8gDnye2/2jSI8RMHloP7OW2WQ
 NiVO1pOb1ZoSselZuO7gerPr99Til+/Gjdv6Jru/Qjc492irVEM7fEtqHSpVOoqPZuey
 2xiFZ1J3l8nWyFV4bPOSqP2fgaYeADrUru6F6CQeTuvdodCuNTI4zWbcHF3P9ECVZZpx
 ml/Lh7MRSKidJDAbBl8QAHsM85zs13tyl0eVwWGU6Fn5MWR/vlJ8Lf59jLsq9xXaypIz
 oYQQ==
X-Gm-Message-State: ANhLgQ1QEdP9APjGyaMYT6CoZQikQIfgG6DQQX/ZpBPtweQNwoRTfgl9
 s8DGD5VtubHa+VQeSSI1PNvjhg==
X-Google-Smtp-Source: ADFU+vt515+IoI2nlY/7PIrHtdASFHlJ4ud3mOV0GBnjzkTNUI8qKr7w0BKWovMbdZLvqVx2n7HrHg==
X-Received: by 2002:a1c:155:: with SMTP id 82mr466434wmb.99.1583188012778;
 Mon, 02 Mar 2020 14:26:52 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o18sm26114589wrv.60.2020.03.02.14.26.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 14:26:52 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon,  2 Mar 2020 23:25:49 +0100
Message-Id: <20200302222631.3861340-10-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
References: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/51] drm/cirrus: Use drmm_add_final_kfree
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
 virtualization@lists.linux-foundation.org,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Dave Airlie <airlied@redhat.com>,
 Sam Ravnborg <sam@ravnborg.org>, Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2l0aCB0aGlzIHdlIGNhbiBkcm9wIHRoZSBmaW5hbCBrZnJlZSBmcm9tIHRoZSByZWxlYXNlIGZ1
bmN0aW9uLgoKSSBhbHNvIG5vdGljZWQgdGhhdCBjaXJydXMgZm9yZ290IHRvIGNhbGwgZHJtX2Rl
dl9maW5pKCkuCgp2MjogRG9uJ3QgY2FsbCBrZnJlZShjaXJydXMpIGFmdGVyIHdlJ3ZlIGhhbmRl
ZCBvdmVyc2hpcCBvZiB0aGF0IHRvCmRybV9kZXZpY2UgYW5kIHRoZSBkcm1tXyBzdHVmZi4KCkFj
a2VkLWJ5OiBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9yZy5vcmc+ClNpZ25lZC1vZmYtYnk6IERh
bmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogRGF2ZSBBaXJsaWUgPGFp
cmxpZWRAcmVkaGF0LmNvbT4KQ2M6IEdlcmQgSG9mZm1hbm4gPGtyYXhlbEByZWRoYXQuY29tPgpD
YzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KQ2M6ICJOb3JhbGYgVHLD
uG5uZXMiIDxub3JhbGZAdHJvbm5lcy5vcmc+CkNjOiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxs
ZWlqQGxpbmFyby5vcmc+CkNjOiBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9yZy5vcmc+CkNjOiBU
aG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KQ2M6IHZpcnR1YWxpemF0aW9u
QGxpc3RzLmxpbnV4LWZvdW5kYXRpb24ub3JnCi0tLQogZHJpdmVycy9ncHUvZHJtL2NpcnJ1cy9j
aXJydXMuYyB8IDE0ICsrKysrKystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25z
KCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9jaXJydXMv
Y2lycnVzLmMgYi9kcml2ZXJzL2dwdS9kcm0vY2lycnVzL2NpcnJ1cy5jCmluZGV4IGQyZmY2M2Nl
OGVhZi4uMjIzMjU1NmNlMzRjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vY2lycnVzL2Np
cnJ1cy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9jaXJydXMvY2lycnVzLmMKQEAgLTM1LDYgKzM1
LDcgQEAKICNpbmNsdWRlIDxkcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuaD4KICNpbmNsdWRlIDxk
cm0vZHJtX2dlbV9mcmFtZWJ1ZmZlcl9oZWxwZXIuaD4KICNpbmNsdWRlIDxkcm0vZHJtX2lvY3Rs
Lmg+CisjaW5jbHVkZSA8ZHJtL2RybV9tYW5hZ2VkLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9tb2Rl
c2V0X2hlbHBlcl92dGFibGVzLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9wcm9iZV9oZWxwZXIuaD4K
ICNpbmNsdWRlIDxkcm0vZHJtX3NpbXBsZV9rbXNfaGVscGVyLmg+CkBAIC01MjcsMTAgKzUyOCw4
IEBAIHN0YXRpYyB2b2lkIGNpcnJ1c19tb2RlX2NvbmZpZ19pbml0KHN0cnVjdCBjaXJydXNfZGV2
aWNlICpjaXJydXMpCiAKIHN0YXRpYyB2b2lkIGNpcnJ1c19yZWxlYXNlKHN0cnVjdCBkcm1fZGV2
aWNlICpkZXYpCiB7Ci0Jc3RydWN0IGNpcnJ1c19kZXZpY2UgKmNpcnJ1cyA9IGRldi0+ZGV2X3By
aXZhdGU7Ci0KIAlkcm1fbW9kZV9jb25maWdfY2xlYW51cChkZXYpOwotCWtmcmVlKGNpcnJ1cyk7
CisJZHJtX2Rldl9maW5pKGRldik7CiB9CiAKIERFRklORV9EUk1fR0VNX0ZPUFMoY2lycnVzX2Zv
cHMpOwpAQCAtNTc1LDkgKzU3NCwxMiBAQCBzdGF0aWMgaW50IGNpcnJ1c19wY2lfcHJvYmUoc3Ry
dWN0IHBjaV9kZXYgKnBkZXYsCiAKIAlkZXYgPSAmY2lycnVzLT5kZXY7CiAJcmV0ID0gZHJtX2Rl
dl9pbml0KGRldiwgJmNpcnJ1c19kcml2ZXIsICZwZGV2LT5kZXYpOwotCWlmIChyZXQpCi0JCWdv
dG8gZXJyX2ZyZWVfY2lycnVzOworCWlmIChyZXQpIHsKKwkJa2ZyZWUoY2lycnVzKTsKKwkJZ290
byBlcnJfcGNpX3JlbGVhc2U7CisJfQogCWRldi0+ZGV2X3ByaXZhdGUgPSBjaXJydXM7CisJZHJt
bV9hZGRfZmluYWxfa2ZyZWUoZGV2LCBjaXJydXMpOwogCiAJcmV0ID0gLUVOT01FTTsKIAljaXJy
dXMtPnZyYW0gPSBpb3JlbWFwKHBjaV9yZXNvdXJjZV9zdGFydChwZGV2LCAwKSwKQEAgLTYxOCw4
ICs2MjAsNiBAQCBzdGF0aWMgaW50IGNpcnJ1c19wY2lfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBk
ZXYsCiAJaW91bm1hcChjaXJydXMtPnZyYW0pOwogZXJyX2Rldl9wdXQ6CiAJZHJtX2Rldl9wdXQo
ZGV2KTsKLWVycl9mcmVlX2NpcnJ1czoKLQlrZnJlZShjaXJydXMpOwogZXJyX3BjaV9yZWxlYXNl
OgogCXBjaV9yZWxlYXNlX3JlZ2lvbnMocGRldik7CiAJcmV0dXJuIHJldDsKLS0gCjIuMjQuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
