Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4BA1641DC
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 11:23:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9C516EB9B;
	Wed, 19 Feb 2020 10:22:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1C386EB69
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 10:22:32 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id z3so27598178wru.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 02:22:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HgHKhcPbCn8MTTH1HBBSwF6HlQrehoDXRJeIGVezNgw=;
 b=J/qLx6K7Dz3w8pGQ3OB+K4un/ruRIULZpEwDmVKRCASiIhEuDri1roasFUGWRjWz+i
 oyV8dwziI3BkoqM2B1W4DevPMPG9zfNCTuLpvwKIEOIGtpX9qZxv1b+k6dKOjDPi9Na/
 CJIxm1neOgEgl+C1oNL8NTNJld/vZDY5D95Ms=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HgHKhcPbCn8MTTH1HBBSwF6HlQrehoDXRJeIGVezNgw=;
 b=sDDSkoY0oZyL3grfItUla4XaG/S0GknPf7L2CGfa9Au91/u4PtLhB63FgeFpzcgoYA
 NMPir1pzA3ggCis1WkHw7mGbAzzM9nWsEG1inkraFpV+84e7XhmjinkHzMcZmHaLMJ07
 lUyg3VKRmjx4shC3Kppa0hk+KYnFkvZ9zAG6dDiPw8d+pJ2JU2QOG3ROvlq1Q0Sr/0JK
 WGLYD2DjCsIXoxjQE4cS8KqOJVcRd87kYidGx9fMUMldhKsll1HLUYGLRtzVz+hk85sj
 bLkT63fv8qGMCQP+JhOL6BB6ghSSxgZE39j9SW5NJVhBcCYsbIqv6qIqdwWP6BBzELcU
 anSw==
X-Gm-Message-State: APjAAAUbTwe1yZ26rc/Se/tG57Va9mulUYlrPvR0E9BFy32683do23jc
 AoiTumTDngPUrmxoSeKAyAnA1A==
X-Google-Smtp-Source: APXvYqxGjC63FARY3+O9jxeXClheIC85O2WOL3J8YQ2viXw3GUj5knKw292cag4jdDmNilq5lmL0vg==
X-Received: by 2002:adf:f44a:: with SMTP id f10mr36413274wrp.16.1582107751529; 
 Wed, 19 Feb 2020 02:22:31 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s23sm2370339wra.15.2020.02.19.02.22.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 02:22:30 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 19 Feb 2020 11:21:21 +0100
Message-Id: <20200219102122.1607365-52-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 51/52] drm/udl: drop drm_driver.release hook
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
 Gerd Hoffmann <kraxel@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>, Dave Airlie <airlied@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlcmUncyBvbmx5IHR3byBmdW5jdGlvbnMgY2FsbGVkIGZyb20gdGhhdDoKZHJtX2ttc19oZWxw
ZXJfcG9sbF9maW5pKCkgYW5kIHVkbF9mcmVlX3VyYl9saXN0KCkuIEJvdGggb2YgdGhlc2UgYXJl
CmFsc28gY2FsbGVkIGZyb20gdGhlIHVic19kcml2ZXItPmRpc2Nvbm5lY3QgaG9vaywgc28gZW50
aXJlbHkKcG9pbnRsZXNzIHRvIGRvIHRoZSBzYW1lIGFnYWluIGluIHRoZSAtPnJlbGVhc2UgaG9v
ay4KCkZ1cnRoZXJtb3JlIGJ5IHRoZSB0aW1lIHdlIGNsZWFuIHVwIHRoZSBkcm1fZHJpdmVyIHdl
IHJlYWxseSBzaG91bGRuJ3QKYmUgdG91Y2hpbmcgaGFyZHdhcmUgYW55bW9yZSwgc28gc3RvcHBp
bmcgdGhlIHBvbGwgd29ya2VyIGFuZCBmcmVlaW5nCnRoZSB1cmIgYWxsb2NhdGlvbnMgaW4gLT5k
aXNjb25uZWN0IGlzIHRoZSByaWdodCB0aGluZyB0byBkby4KCk5vdyBkaXNjb25uZWN0IHN0aWxs
IGNsZWFucyB0aGluZ3MgdXAgYmVmb3JlIHVucmVnaXN0ZXJpbmcgdGhlIGRyaXZlciwKYnV0IHRo
YXQncyBhIGRpZmZlcmVudCBpc3N1ZS4KClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRh
bmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0LmNv
bT4KQ2M6IFNlYW4gUGF1bCA8c2VhbkBwb29ybHkucnVuPgpDYzogRGFuaWVsIFZldHRlciA8ZGFu
aWVsLnZldHRlckBmZndsbC5jaD4KQ2M6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBz
dXNlLmRlPgpDYzogRW1pbCBWZWxpa292IDxlbWlsLmwudmVsaWtvdkBnbWFpbC5jb20+CkNjOiBH
ZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVkaGF0LmNvbT4KQ2M6ICJOb3JhbGYgVHLDuG5uZXMiIDxu
b3JhbGZAdHJvbm5lcy5vcmc+CkNjOiBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9yZy5vcmc+CkNj
OiBUaG9tYXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT4KQ2M6IEFsZXggRGV1Y2hlciA8
YWxleGFuZGVyLmRldWNoZXJAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vdWRsL3VkbF9k
cnYuYyAgfCAgNiAtLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS91ZGwvdWRsX2Rydi5oICB8ICAxIC0K
IGRyaXZlcnMvZ3B1L2RybS91ZGwvdWRsX21haW4uYyB8IDEwIC0tLS0tLS0tLS0KIDMgZmlsZXMg
Y2hhbmdlZCwgMTcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3Vk
bC91ZGxfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vdWRsL3VkbF9kcnYuYwppbmRleCBiNDQ3ZmIw
NTNlNzguLjdmMTQwODk4ZGYzZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3VkbC91ZGxf
ZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3VkbC91ZGxfZHJ2LmMKQEAgLTM0LDE0ICszNCw4
IEBAIHN0YXRpYyBpbnQgdWRsX3VzYl9yZXN1bWUoc3RydWN0IHVzYl9pbnRlcmZhY2UgKmludGVy
ZmFjZSkKIAogREVGSU5FX0RSTV9HRU1fRk9QUyh1ZGxfZHJpdmVyX2ZvcHMpOwogCi1zdGF0aWMg
dm9pZCB1ZGxfZHJpdmVyX3JlbGVhc2Uoc3RydWN0IGRybV9kZXZpY2UgKmRldikKLXsKLQl1ZGxf
ZmluaShkZXYpOwotfQotCiBzdGF0aWMgc3RydWN0IGRybV9kcml2ZXIgZHJpdmVyID0gewogCS5k
cml2ZXJfZmVhdHVyZXMgPSBEUklWRVJfQVRPTUlDIHwgRFJJVkVSX0dFTSB8IERSSVZFUl9NT0RF
U0VULAotCS5yZWxlYXNlID0gdWRsX2RyaXZlcl9yZWxlYXNlLAogCiAJLyogZ2VtIGhvb2tzICov
CiAJLmdlbV9jcmVhdGVfb2JqZWN0ID0gdWRsX2RyaXZlcl9nZW1fY3JlYXRlX29iamVjdCwKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS91ZGwvdWRsX2Rydi5oIGIvZHJpdmVycy9ncHUvZHJt
L3VkbC91ZGxfZHJ2LmgKaW5kZXggMWRlN2ViMWI2YWFjLi4yNjQyZjk0YTYzZmMgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS91ZGwvdWRsX2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS91
ZGwvdWRsX2Rydi5oCkBAIC03Niw3ICs3Niw2IEBAIGludCB1ZGxfc3VibWl0X3VyYihzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2LCBzdHJ1Y3QgdXJiICp1cmIsIHNpemVfdCBsZW4pOwogdm9pZCB1ZGxf
dXJiX2NvbXBsZXRpb24oc3RydWN0IHVyYiAqdXJiKTsKIAogaW50IHVkbF9pbml0KHN0cnVjdCB1
ZGxfZGV2aWNlICp1ZGwpOwotdm9pZCB1ZGxfZmluaShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KTsK
IAogaW50IHVkbF9yZW5kZXJfaGxpbmUoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgaW50IGxvZ19i
cHAsIHN0cnVjdCB1cmIgKip1cmJfcHRyLAogCQkgICAgIGNvbnN0IGNoYXIgKmZyb250LCBjaGFy
ICoqdXJiX2J1Zl9wdHIsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdWRsL3VkbF9tYWlu
LmMgYi9kcml2ZXJzL2dwdS9kcm0vdWRsL3VkbF9tYWluLmMKaW5kZXggNTM4NzE4OTE5OTE2Li5m
NWQyN2YyYTU2NTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS91ZGwvdWRsX21haW4uYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vdWRsL3VkbF9tYWluLmMKQEAgLTM1MSwxMyArMzUxLDMgQEAg
aW50IHVkbF9kcm9wX3VzYihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQogCXVkbF9mcmVlX3VyYl9s
aXN0KGRldik7CiAJcmV0dXJuIDA7CiB9Ci0KLXZvaWQgdWRsX2Zpbmkoc3RydWN0IGRybV9kZXZp
Y2UgKmRldikKLXsKLQlzdHJ1Y3QgdWRsX2RldmljZSAqdWRsID0gdG9fdWRsKGRldik7Ci0KLQlk
cm1fa21zX2hlbHBlcl9wb2xsX2ZpbmkoZGV2KTsKLQotCWlmICh1ZGwtPnVyYnMuY291bnQpCi0J
CXVkbF9mcmVlX3VyYl9saXN0KGRldik7Ci19Ci0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
