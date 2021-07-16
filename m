Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E34E3CB88A
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 16:14:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BF526E99F;
	Fri, 16 Jul 2021 14:14:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com
 [IPv6:2607:f8b0:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7A4F6E99D
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jul 2021 14:14:29 +0000 (UTC)
Received: by mail-ot1-x32b.google.com with SMTP id
 42-20020a9d012d0000b02904b98d90c82cso9980047otu.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jul 2021 07:14:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Oim7jPrTVkM2pDEEkqpUZTCntMS1B3Z5p458DzstJgQ=;
 b=xE/bJXQcnpsya7VSVPy1JltYVko++gFnbQLjMEdnzeOrPxtnjhWUpLOYR3qxq8S/T0
 evHab9hZFVzcWh8BtOiuMDbfdnj5Ieev1qIMEeKpdXYKIlqi2niSt9fhibwa0q3RYH2a
 UJwErp5mhRquduhyZGiN/6QMxgkk0CvK3rn/jHvFfRtAeVloNE+Fl1T/Tk0BFYJua9tS
 LCgVYbVXSMfKY+l9pN1iGOedXCnm3KolTZ13mOs4Ysv/B+jejroVkdMzhjojGDRLoIJE
 hGQo/zm5jZbnCOQFKIT3cW0SSMNVz+QbZIL3zS+VyGpLpmp0W2c/KQX7hL3S7xxAOava
 8qGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Oim7jPrTVkM2pDEEkqpUZTCntMS1B3Z5p458DzstJgQ=;
 b=QwHpJ8Dno7rgH0ETVSTvg99g7lWTyFAAnvWuuKkaX/Mr0vGKWZVoninC1M3/Y7CIrm
 7vK7WXCAEENYE2Oz6dOa6LkUKXOa4yw6q3fZryMvIPavZqpAQKbpHpOPWoSaTXsl6Ojh
 rtA41j2JsveeAJW1n063/oLrf78tgqrili940SiZMJq+MKCNfK2eve0rFEhZjfGWd2nG
 kqwPyI8k4LdaA2fxiPL7qYGkQZ3+0VFuaeAUS+Pc94i+F2sbMTy/TAz17csBwooTp0/8
 A9hUPFze1md2ksPMKQzuZ3o/zPKD8OpgkjFLDln3XhuMQny9IM46NJkwl1sW5i7MhdHx
 W1Zg==
X-Gm-Message-State: AOAM530pZjRpfm8OS3pMoBK9FRnaJeA8Os0H00x/7WZSRFEAxvlD7hjc
 eojlilafM588Kb6AgrBydNJLCdrmDU/JBA==
X-Google-Smtp-Source: ABdhPJx/qotWSX56earD3luVu3JbTu3DfHWojqG3m+weY5JezEx+D/EGo012BQuwLdrX8miD90DPOw==
X-Received: by 2002:a9d:190e:: with SMTP id j14mr8246767ota.48.1626444868759; 
 Fri, 16 Jul 2021 07:14:28 -0700 (PDT)
Received: from omlet.lan ([68.203.99.148])
 by smtp.gmail.com with ESMTPSA id v42sm1852266ott.70.2021.07.16.07.14.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Jul 2021 07:14:28 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 16 Jul 2021 09:14:19 -0500
Message-Id: <20210716141426.1904528-1-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/7] drm/i915: Migrate memory to SMEM when
 imported cross-device (v7)
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCBzZXJpZXMgZml4ZXMgYW4gaXNzdWUgd2l0aCBkaXNjcmV0ZSBncmFwaGljcyBv
biBJbnRlbCB3aGVyZSB3ZQphbGxvd2VkIGRtYS1idWYgaW1wb3J0IHdoaWxlIGxlYXZpbmcgdGhl
IG9iamVjdCBpbiBsb2NhbCBtZW1vcnkuICBUaGlzCmJyZWFrcyBkb3duIHByZXR0eSBiYWRseSBp
ZiB0aGUgaW1wb3J0IGhhcHBlbmVkIG9uIGEgZGlmZmVyZW50IHBoeXNpY2FsCmRldmljZS4KCnY3
OgogLSBEcm9wICJkcm0vaTkxNS9nZW0vdHRtOiBQbGFjZSBuZXcgQk9zIGluIHRoZSByZXF1ZXN0
ZWQgcmVnaW9uIgogLSBBZGQgYSBuZXcgImRybS9pOTE1L2dlbTogQ2FsbCBpOTE1X2dlbV9mbHVz
aF9mcmVlX29iamVjdHMoKSBpbiBpOTE1X2dlbV9kdW1iX2NyZWF0ZSgpIgogLSBNaXNjLiByZXZp
ZXcgZmVlZGJhY2sgZnJvbSBNYXR0aGV3IEF1bGQKCkphc29uIEVrc3RyYW5kICg1KToKICBkcm0v
aTkxNS9nZW06IENoZWNrIG9iamVjdF9jYW5fbWlncmF0ZSBmcm9tIG9iamVjdF9taWdyYXRlCiAg
ZHJtL2k5MTUvZ2VtOiBSZWZhY3RvciBwbGFjZW1lbnQgc2V0dXAgZm9yIGk5MTVfZ2VtX29iamVj
dF9jcmVhdGUqCiAgICAodjIpCiAgZHJtL2k5MTUvZ2VtOiBDYWxsIGk5MTVfZ2VtX2ZsdXNoX2Zy
ZWVfb2JqZWN0cygpIGluCiAgICBpOTE1X2dlbV9kdW1iX2NyZWF0ZSgpCiAgZHJtL2k5MTUvZ2Vt
OiBVbmlmeSB1c2VyIG9iamVjdCBjcmVhdGlvbiAodjIpCiAgZHJtL2k5MTUvZ2VtL3R0bTogUmVz
cGVjdCB0aGUgb2JqZWN0aW9uIHJlZ2lvbiBpbiBwbGFjZW1lbnRfZnJvbV9vYmoKClRob21hcyBI
ZWxsc3Ryw7ZtICgyKToKICBkcm0vaTkxNS9nZW06IENvcnJlY3QgdGhlIGxvY2tpbmcgYW5kIHBp
biBwYXR0ZXJuIGZvciBkbWEtYnVmICh2NikKICBkcm0vaTkxNS9nZW06IE1pZ3JhdGUgdG8gc3lz
dGVtIGF0IGRtYS1idWYgYXR0YWNoIHRpbWUgKHY2KQoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9jcmVhdGUuYyAgICB8IDE2NSArKysrKysrKy0tLS0tLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMgICAgfCAgNjQgKysrKy0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMgICAgfCAgMTMgKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaCAgICB8ICAgNCArCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMgICAgICAgfCAgIDMgKy0KIC4uLi9kcm0vaTkx
NS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2RtYWJ1Zi5jICB8IDE4NCArKysrKysrKysrKysrKysr
Ky0KIC4uLi9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21pZ3JhdGUuYyB8ICAxNSAt
LQogNyBmaWxlcyBjaGFuZ2VkLCAzMTggaW5zZXJ0aW9ucygrKSwgMTMwIGRlbGV0aW9ucygtKQoK
LS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
