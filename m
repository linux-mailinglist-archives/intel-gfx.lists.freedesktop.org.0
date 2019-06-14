Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A41A546AE4
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:39:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16F8B897E7;
	Fri, 14 Jun 2019 20:37:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAA7389533
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:37:15 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id r12so3059187edo.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:37:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zVH7XHQ8Vodmfu+Eco8dq0pOjj0+eXdvJUJLOoKsml8=;
 b=TnfZYroegDkJJe0Y/dfImhjh4PkgfdSS5urpRHID54hT/2VaTxbh7f164BAuHMotCo
 Fw5hH7gfdLkN7LVx1DtvVavgQa07xxKJM94tB/rCPMsxRiUD+oy1Uf+2bDlg/QnrqKnv
 oG95JazX27b4kgfZoXLv2i6gHIbAkjQwIWO8gx1SiEHbhISV/RqbzUgTD2q9/FiuxPq8
 T7UexnOZAUGikRhqxPBDhID47L8+8dlHlHfa+k0uddQ1byPs4Gkz8DcNwolGWl6bgPrt
 LqhNdPb2fTBIA7nRag5kqBfPjRLktZJlFItdifFfKMvFtC4JJBqul83yupmBkvifZbzH
 w6GQ==
X-Gm-Message-State: APjAAAUGJrG7ZEzQMENn+WEX2y1ioM8eoejpAI069fJxl/1nvLMi8okD
 FUW59cHjWyJZDIexPE0RqyepsA==
X-Google-Smtp-Source: APXvYqzWRT/tdgTN1qrlvzH9uhWZ8qgzCNOYU/CZOPFjPZVUnKmjz6flOflss0hoCQIpwlp1/8IX6Q==
X-Received: by 2002:a17:906:31c8:: with SMTP id
 f8mr78455436ejf.131.1560544633618; 
 Fri, 14 Jun 2019 13:37:13 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.37.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:37:13 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:36:01 +0200
Message-Id: <20190614203615.12639-46-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zVH7XHQ8Vodmfu+Eco8dq0pOjj0+eXdvJUJLOoKsml8=;
 b=N1jH3Kvy0RZEAGCS+7KCoptKdbFR5zlJnpnezAw0MXLyzqJJ6wvq3X0rtHTz6IEMnv
 ih9r3S9gV/t9un6IES5ZDL8OJkoReezm3l5+65YMYkigl2mCKg0eRorjTcsriljh0UuB
 R73kz2AHoHiDRXKzy+P4do4c16+5gEGPn6Ucs=
Subject: [Intel-gfx] [PATCH 45/59] drm/msm: Drop robj from msm_gem_new_impl
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
Cc: freedreno@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-arm-msm@vger.kernel.org, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T25seSB1c2VyIHdhcyB0aGUgcHJpbWUgaW1wb3J0LCBhbmQgZHJtX3ByaW1lLmMgdGFrZXMgY2Fy
ZSBvZiB0aGF0Cm5vdy4KClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0
ZXJAaW50ZWwuY29tPgpDYzogUm9iIENsYXJrIDxyb2JkY2xhcmtAZ21haWwuY29tPgpDYzogU2Vh
biBQYXVsIDxzZWFuQHBvb3JseS5ydW4+CkNjOiBsaW51eC1hcm0tbXNtQHZnZXIua2VybmVsLm9y
ZwpDYzogZnJlZWRyZW5vQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9tc20vbXNtX2dlbS5jIHwgOCArKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21z
bV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbS5jCmluZGV4IDM1ZjU1ZGQyNTk5
NC4uNDA0YjZmZWE5ZTM1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0u
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYwpAQCAtOTQ3LDcgKzk0Nyw2IEBA
IGludCBtc21fZ2VtX25ld19oYW5kbGUoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgc3RydWN0IGRy
bV9maWxlICpmaWxlLAogCiBzdGF0aWMgaW50IG1zbV9nZW1fbmV3X2ltcGwoc3RydWN0IGRybV9k
ZXZpY2UgKmRldiwKIAkJdWludDMyX3Qgc2l6ZSwgdWludDMyX3QgZmxhZ3MsCi0JCXN0cnVjdCBy
ZXNlcnZhdGlvbl9vYmplY3QgKnJlc3YsCiAJCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqKm9iaiwK
IAkJYm9vbCBzdHJ1Y3RfbXV0ZXhfbG9ja2VkKQogewpAQCAtOTc0LDkgKzk3Myw2IEBAIHN0YXRp
YyBpbnQgbXNtX2dlbV9uZXdfaW1wbChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCW1zbV9vYmot
PmZsYWdzID0gZmxhZ3M7CiAJbXNtX29iai0+bWFkdiA9IE1TTV9NQURWX1dJTExORUVEOwogCi0J
aWYgKHJlc3YpCi0JCW1zbV9vYmotPmJhc2UucmVzdiA9IHJlc3Y7Ci0KIAlJTklUX0xJU1RfSEVB
RCgmbXNtX29iai0+c3VibWl0X2VudHJ5KTsKIAlJTklUX0xJU1RfSEVBRCgmbXNtX29iai0+dm1h
cyk7CiAKQEAgLTEwMTgsNyArMTAxNCw3IEBAIHN0YXRpYyBzdHJ1Y3QgZHJtX2dlbV9vYmplY3Qg
Kl9tc21fZ2VtX25ldyhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCWlmIChzaXplID09IDApCiAJ
CXJldHVybiBFUlJfUFRSKC1FSU5WQUwpOwogCi0JcmV0ID0gbXNtX2dlbV9uZXdfaW1wbChkZXYs
IHNpemUsIGZsYWdzLCBOVUxMLCAmb2JqLCBzdHJ1Y3RfbXV0ZXhfbG9ja2VkKTsKKwlyZXQgPSBt
c21fZ2VtX25ld19pbXBsKGRldiwgc2l6ZSwgZmxhZ3MsICZvYmosIHN0cnVjdF9tdXRleF9sb2Nr
ZWQpOwogCWlmIChyZXQpCiAJCWdvdG8gZmFpbDsKIApAQCAtMTA5NSw3ICsxMDkxLDcgQEAgc3Ry
dWN0IGRybV9nZW1fb2JqZWN0ICptc21fZ2VtX2ltcG9ydChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LAogCiAJc2l6ZSA9IFBBR0VfQUxJR04oZG1hYnVmLT5zaXplKTsKIAotCXJldCA9IG1zbV9nZW1f
bmV3X2ltcGwoZGV2LCBzaXplLCBNU01fQk9fV0MsIGRtYWJ1Zi0+cmVzdiwgJm9iaiwgZmFsc2Up
OworCXJldCA9IG1zbV9nZW1fbmV3X2ltcGwoZGV2LCBzaXplLCBNU01fQk9fV0MsICZvYmosIGZh
bHNlKTsKIAlpZiAocmV0KQogCQlnb3RvIGZhaWw7CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
