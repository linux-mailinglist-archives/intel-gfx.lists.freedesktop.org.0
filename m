Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D267F1A947F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:41:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5CB56E883;
	Wed, 15 Apr 2020 07:40:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D66286E886
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:40:53 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id c195so14279274wme.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9wfbO1Jqe5e6cwYH9JeJEjOOTIsj3e6V9giYISJ/AnA=;
 b=MAan9yGDSaWf1/Hd4FP4F5jAJWTiFH7UaRXlSL4KoIIFK591ee3ITspW2GHTfPTtZp
 MVD8+Im9c1yOq8QyYzq/EKW1Sm+c7Ns957xgwVZ28fS2vfjp8BzF/9zlnKOoQdr7MFko
 69/JIzpO9gsrN2kYS53+u9wJVAQrMW29m2ts0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9wfbO1Jqe5e6cwYH9JeJEjOOTIsj3e6V9giYISJ/AnA=;
 b=rh6OAImkt7WR8nmubAKZKXFU7Dj1/Bfud9J4vdcQ0AMBCNcEc4C0JXdLckWPyJ0LUo
 Jovt1Bgz45rmEIk0k1R7shWpr8dekk5iHsNu15fak1GVyx4JHCsZqj+rgijJ3YP0Kepc
 J1kR+0hjUefq/OcZHLH2nqAmU4UfjNb1yzHwf1CAv9hEfN0eVJGr8Dfb/MZR0YSTqnG3
 WqbyVVbCcXBtSKAhgvFqNQJ/pNeV/ysYfPXaT94YpKe8hWeeMQdf8MFYN6iFo3suaMiP
 w+rOlBiADGNNnT/nyTJNhWfTimqoua7koKv2SqOn1M05tlPAI+9ysS4JdQjOYXmxkwhR
 aCiw==
X-Gm-Message-State: AGi0PuYGigcO3K07W3d9pY6UNpVuzqkT1pmAjCVJt+CxP8SDr2isCbwT
 1hi3rntMrY8AfJhJizxq15ui/4swNoU=
X-Google-Smtp-Source: APiQypK+eNM+4aerepkRC7dCXjPZgfA8nX0kC7FDrhk2m9V7yKhZDXLQ+Rc/jOShUBzb7deRjZUSdA==
X-Received: by 2002:a05:600c:2c04:: with SMTP id
 q4mr3633023wmg.7.1586936452227; 
 Wed, 15 Apr 2020 00:40:52 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.40.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:40:51 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:39:46 +0200
Message-Id: <20200415074034.175360-12-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/59] drm/udl: Use devm_drm_dev_alloc
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
 DRI Development <dri-devel@lists.freedesktop.org>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Dave Airlie <airlied@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxzbyBpbml0IHRoZSBmYmRldiBlbXVsYXRpb24gYmVmb3JlIHdlIHJlZ2lzdGVyIHRoZSBkZXZp
Y2UsIHRoYXQgd2F5CndlIGNhbiByZWx5IG9uIHRoZSBhdXRvLWNsZWFudXAgYW5kIHNpbXBsaWZ5
IHRoZSBwcm9iZSBlcnJvciBjb2RlIGV2ZW4KbW9yZS4KCnYyOiBSZWJhc2Ugb24gdG9wIG9mIFRo
b21hcycgcGF0Y2hlcyB0byByZW1vdmUgdGhlIHJldHVybiB2YWx1ZSBmcm9tCmRybV9mYmRldl9n
ZW5lcmljX3NldHVwKCkKClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0
ZXJAaW50ZWwuY29tPgpDYzogTm9yYWxmIFRyw7hubmVzIDxub3JhbGZAdHJvbm5lcy5vcmc+CkNj
OiBEYXZlIEFpcmxpZSA8YWlybGllZEByZWRoYXQuY29tPgpDYzogU2VhbiBQYXVsIDxzZWFuQHBv
b3JseS5ydW4+CkNjOiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KQ2M6
IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+CkNjOiBFbWlsIFZlbGlrb3Yg
PGVtaWwubC52ZWxpa292QGdtYWlsLmNvbT4KQ2M6IFNhbSBSYXZuYm9yZyA8c2FtQHJhdm5ib3Jn
Lm9yZz4KQ2M6IFRob21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS91ZGwvdWRsX2Rydi5jIHwgMjYgKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDE5IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS91ZGwvdWRsX2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL3Vk
bC91ZGxfZHJ2LmMKaW5kZXggOWNjNmQwNzVjYjQwLi41MjNmNjBlMDJhODUgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS91ZGwvdWRsX2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS91ZGwv
dWRsX2Rydi5jCkBAIC01NywyNyArNTcsMjAgQEAgc3RhdGljIHN0cnVjdCB1ZGxfZGV2aWNlICp1
ZGxfZHJpdmVyX2NyZWF0ZShzdHJ1Y3QgdXNiX2ludGVyZmFjZSAqaW50ZXJmYWNlKQogCXN0cnVj
dCB1ZGxfZGV2aWNlICp1ZGw7CiAJaW50IHI7CiAKLQl1ZGwgPSBremFsbG9jKHNpemVvZigqdWRs
KSwgR0ZQX0tFUk5FTCk7Ci0JaWYgKCF1ZGwpCi0JCXJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwot
Ci0JciA9IGRybV9kZXZfaW5pdCgmdWRsLT5kcm0sICZkcml2ZXIsICZpbnRlcmZhY2UtPmRldik7
Ci0JaWYgKHIpIHsKLQkJa2ZyZWUodWRsKTsKLQkJcmV0dXJuIEVSUl9QVFIocik7Ci0JfQorCXVk
bCA9IGRldm1fZHJtX2Rldl9hbGxvYygmaW50ZXJmYWNlLT5kZXYsICZkcml2ZXIsCisJCQkJIHN0
cnVjdCB1ZGxfZGV2aWNlLCBkcm0pOworCWlmIChJU19FUlIodWRsKSkKKwkJcmV0dXJuIHVkbDsK
IAogCXVkbC0+dWRldiA9IHVkZXY7CiAJdWRsLT5kcm0uZGV2X3ByaXZhdGUgPSB1ZGw7Ci0JZHJt
bV9hZGRfZmluYWxfa2ZyZWUoJnVkbC0+ZHJtLCB1ZGwpOwogCiAJciA9IHVkbF9pbml0KHVkbCk7
Ci0JaWYgKHIpIHsKLQkJZHJtX2Rldl9wdXQoJnVkbC0+ZHJtKTsKKwlpZiAocikKIAkJcmV0dXJu
IEVSUl9QVFIocik7Ci0JfQogCiAJdXNiX3NldF9pbnRmZGF0YShpbnRlcmZhY2UsIHVkbCk7CisK
IAlyZXR1cm4gdWRsOwogfQogCkBAIC05MywxNyArODYsMTMgQEAgc3RhdGljIGludCB1ZGxfdXNi
X3Byb2JlKHN0cnVjdCB1c2JfaW50ZXJmYWNlICppbnRlcmZhY2UsCiAKIAlyID0gZHJtX2Rldl9y
ZWdpc3RlcigmdWRsLT5kcm0sIDApOwogCWlmIChyKQotCQlnb3RvIGVycl9mcmVlOworCQlyZXR1
cm4gcjsKIAogCURSTV9JTkZPKCJJbml0aWFsaXplZCB1ZGwgb24gbWlub3IgJWRcbiIsIHVkbC0+
ZHJtLnByaW1hcnktPmluZGV4KTsKIAogCWRybV9mYmRldl9nZW5lcmljX3NldHVwKCZ1ZGwtPmRy
bSwgMCk7CiAKIAlyZXR1cm4gMDsKLQotZXJyX2ZyZWU6Ci0JZHJtX2Rldl9wdXQoJnVkbC0+ZHJt
KTsKLQlyZXR1cm4gcjsKIH0KIAogc3RhdGljIHZvaWQgdWRsX3VzYl9kaXNjb25uZWN0KHN0cnVj
dCB1c2JfaW50ZXJmYWNlICppbnRlcmZhY2UpCkBAIC0xMTMsNyArMTAyLDYgQEAgc3RhdGljIHZv
aWQgdWRsX3VzYl9kaXNjb25uZWN0KHN0cnVjdCB1c2JfaW50ZXJmYWNlICppbnRlcmZhY2UpCiAJ
ZHJtX2ttc19oZWxwZXJfcG9sbF9maW5pKGRldik7CiAJdWRsX2Ryb3BfdXNiKGRldik7CiAJZHJt
X2Rldl91bnBsdWcoZGV2KTsKLQlkcm1fZGV2X3B1dChkZXYpOwogfQogCiAvKgotLSAKMi4yNS4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
