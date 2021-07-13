Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7213C783D
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 22:52:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AF626E134;
	Tue, 13 Jul 2021 20:52:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A9596E133
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 20:52:03 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id d12so336811wre.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 13:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/zygawp8H9nMKsUfIVJKXYmxNB6SpK8XomLFpeNl1u4=;
 b=Um4WvsYyvXOPTelxx4VO24F3eVMkiGg2UKtWxUO9nFoyEsqRq3pciJ8jCOyX3YWaDM
 l/kMw8GVLY3NWSVUgn2ZuG3SNK8oG4c3JqYbKLixxoOvyzfr8+nkenohqPiH1h3af6/B
 0MMaEU+MHpQjSR6NehmMnAEHXSA40z3z5IFL4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/zygawp8H9nMKsUfIVJKXYmxNB6SpK8XomLFpeNl1u4=;
 b=P9ZD2Nbc0IqQiLaYpD5cSI9/O42sjf7+l59xBkGOep4nsIDkKEoS11Zno28dPCAWcd
 hQOgLvt9iyfy0N8VsrActQd7Bx4oTDtFwuk6SPxrUNW63hEvYHPFPHY6AuLeYfco01YL
 +mzeFIqkj6RwhIKqx95CZwEa2jVZwzgE/LEysAWb68YAPFIdCeDq+cqdtHIlCkRrmVmq
 LG//HwDmsv5+nbPUfq+2xoLg2FD1CWktXv1nGf8zxsUe4kCT+2o9oOKXsp6ZR3xzXKOO
 9RB1a9914/GFrIVR3lTH/441fpnIL0O7Ppg9oBL8RhIHKG+tdFN2JG4QWTaO9+mvM4u+
 /4YA==
X-Gm-Message-State: AOAM530rRfTVcD/N7wHtERIB/Gs7Cvd2R5pE/eXkbVuvjpOUkD3Tg0RI
 uDs0JRTac7RzDCf6xvBQgSTGVus5gUEwlA==
X-Google-Smtp-Source: ABdhPJxwwDzX0YlQegvblaY7h1YZr6t3cMoRnTVGmzCsubSpg3GdP6DJrSnr7BpmY1z/6D5Qxt1CBw==
X-Received: by 2002:adf:cf07:: with SMTP id o7mr8245727wrj.216.1626209522138; 
 Tue, 13 Jul 2021 13:52:02 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j10sm18642249wrt.35.2021.07.13.13.52.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jul 2021 13:52:01 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Tue, 13 Jul 2021 22:51:52 +0200
Message-Id: <20210713205153.1896059-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210713205153.1896059-1-daniel.vetter@ffwll.ch>
References: <20210713205153.1896059-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 3/4] drm/shmem-helpers: Allocate wc pages on
 x86
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

aW50ZWwtZ2Z4LWNpIHJlYWxpemVkIHRoYXQgc29tZXRoaW5nIGlzIG5vdCBxdWl0ZSBjb2hlcmVu
dCBhbnltb3JlIG9uCnNvbWUgcGxhdGZvcm1zIGZvciBvdXIgaTkxNSt2Z2VtIHRlc3RzLCB3aGVu
IEkgdHJpZWQgdG8gc3dpdGNoIHZnZW0Kb3ZlciB0byBzaG1lbSBoZWxwZXJzLgoKQWZ0ZXIgbG90
cyBvZiBoZWFkLXNjcmF0Y2hpbmcgSSByZWFsaXplZCB0aGF0IEkndmUgcmVtb3ZlZCBjYWxscyB0
bwpkcm1fY2xmbHVzaC4gQW5kIHdlIG5lZWQgdGhvc2UuIFRvIG1ha2UgdGhpcyBhIGJpdCBjbGVh
bmVyIHVzZSB0aGUKc2FtZSBwYWdlIGFsbG9jYXRpb24gdG9vbGluZyBhcyB0dG0sIHdoaWNoIGRv
ZXMgaW50ZXJuYWxseSBjbGZsdXNoCihhbmQgbW9yZSwgYXMgbmVlZWRlZCBvbiBhbnkgcGxhdGZv
cm0gaW5zdGVhZCBvZiBqdXN0IHRoZSBpbnRlbCB4ODYKY3B1cyBpOTE1IGNhbiBiZSBjb21iaW5l
ZCB3aXRoKS4KClVuZm9ydHVuYXRlbHkgdGhpcyBkb2Vzbid0IGV4aXN0IG9uIGFybSwgb3IgYXMg
YSBnZW5lcmljIGZlYXR1cmUuIEZvcgp0aGF0IEkgdGhpbmsgb25seSB0aGUgZG1hLWFwaSBjYW4g
Z2V0IGF0IHdjIG1lbW9yeSByZWxpYWJseSwgc28gbWF5YmUKd2UnZCBuZWVkIHNvbWUga2luZCBv
ZiBHRlBfV0MgZmxhZyB0byBkbyB0aGlzIHByb3Blcmx5LgoKU2lnbmVkLW9mZi1ieTogRGFuaWVs
IFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBDaHJpc3RpYW4gS8O2bmlnIDxj
aHJpc3RpYW4ua29lbmlnQGFtZC5jb20+CkNjOiAiVGhvbWFzIEhlbGxzdHLDtm0iIDx0aG9tYXMu
aGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVu
Lmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtl
cm5lbC5vcmc+CkNjOiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KQ2M6
IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmll
bEBmZndsbC5jaD4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYyB8
IDE0ICsrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5jIGIvZHJpdmVy
cy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMKaW5kZXggMjk2YWIxYjdjMDdmLi42NTdk
MjQ5MGFhYTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBl
ci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5jCkBAIC0xMCw2
ICsxMCwxMCBAQAogI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4KICNpbmNsdWRlIDxsaW51eC92bWFs
bG9jLmg+CiAKKyNpZmRlZiBDT05GSUdfWDg2CisjaW5jbHVkZSA8YXNtL3NldF9tZW1vcnkuaD4K
KyNlbmRpZgorCiAjaW5jbHVkZSA8ZHJtL2RybS5oPgogI2luY2x1ZGUgPGRybS9kcm1fZGV2aWNl
Lmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9kcnYuaD4KQEAgLTE2Miw2ICsxNjYsMTEgQEAgc3RhdGlj
IGludCBkcm1fZ2VtX3NobWVtX2dldF9wYWdlc19sb2NrZWQoc3RydWN0IGRybV9nZW1fc2htZW1f
b2JqZWN0ICpzaG1lbSkKIAkJcmV0dXJuIFBUUl9FUlIocGFnZXMpOwogCX0KIAorI2lmZGVmIENP
TkZJR19YODYKKwlpZiAoc2htZW0tPm1hcF93YykKKwkJc2V0X3BhZ2VzX2FycmF5X3djKHBhZ2Vz
LCBvYmotPnNpemUgPj4gUEFHRV9TSElGVCk7CisjZW5kaWYKKwogCXNobWVtLT5wYWdlcyA9IHBh
Z2VzOwogCiAJcmV0dXJuIDA7CkBAIC0yMDMsNiArMjEyLDExIEBAIHN0YXRpYyB2b2lkIGRybV9n
ZW1fc2htZW1fcHV0X3BhZ2VzX2xvY2tlZChzdHJ1Y3QgZHJtX2dlbV9zaG1lbV9vYmplY3QgKnNo
bWVtKQogCWlmICgtLXNobWVtLT5wYWdlc191c2VfY291bnQgPiAwKQogCQlyZXR1cm47CiAKKyNp
ZmRlZiBDT05GSUdfWDg2CisJaWYgKHNobWVtLT5tYXBfd2MpCisJCXNldF9wYWdlc19hcnJheV93
YihzaG1lbS0+cGFnZXMsIG9iai0+c2l6ZSA+PiBQQUdFX1NISUZUKTsKKyNlbmRpZgorCiAJZHJt
X2dlbV9wdXRfcGFnZXMob2JqLCBzaG1lbS0+cGFnZXMsCiAJCQkgIHNobWVtLT5wYWdlc19tYXJr
X2RpcnR5X29uX3B1dCwKIAkJCSAgc2htZW0tPnBhZ2VzX21hcmtfYWNjZXNzZWRfb25fcHV0KTsK
LS0gCjIuMzIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
