Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 926DE1FAF7B
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 13:47:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7F7E6E8A3;
	Tue, 16 Jun 2020 11:47:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC7BB6E0DA
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 11:47:30 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id b82so2579722wmb.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 04:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=j2wfZA5WI4nz3odeav6s5+urxP6LNN0UmYcHrvMekhM=;
 b=Nem7EWZ04lSzVQpi/+mFBS0Y5tpSp1aH8a1UFxshKJ4ToCu01GQyxqWfsfVBdVufYQ
 /aBErajXoswnyeuwL3Sng/RBJZxODlmnTEsDRLqaXr+ZmBu/P9KkaetUP5a8nHUdkySa
 WDAkVG+cyU105U8LEj/pRHWvD2b40EMNXD7iM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=j2wfZA5WI4nz3odeav6s5+urxP6LNN0UmYcHrvMekhM=;
 b=YGiv5pIRdurjidDzmeSAvAsobpWkrBVwvAjT1XE2IEy5auVkbz+So1hVsWu2yRb0sr
 tut6Wog+GiJQRVOvzFjXsayDjy2rBJn+R2h3W5WTiobsRIpUAwy34tmfR/OuIZpB0dhZ
 c5XBz/vigii3Br3GiSiQ7zfn5gMkRnuXeLtb+oYAqsjpAHSm3XONRjk5saXEy40LN418
 cq+tuDLhDgv/TLfdSlmTZTycg7M/EUtFaF+x8f4KxkenBxqL7gSVwZ3DoTa2S2p2X3T5
 uWgJUtsLzaERF5UeQzq2RIMJbaaMGzkZavSwbdcJTEUGNDUelX7NWceyYE8vRwD+7o60
 YNPw==
X-Gm-Message-State: AOAM533zH7FLC389RUlUAaEqMPB5fo5m/3rzJr8WdP9hcluxyzhxXhPf
 hS3p/Hd3g9q7gr8EcS3lhU6h0g==
X-Google-Smtp-Source: ABdhPJxVBD/ZgLzZC5H1ezELlYrgoR/76Dwfsn28V9iDtijAl8ddooJfSX/tg01bCLlKOqvGQqvz6g==
X-Received: by 2002:a1c:2c45:: with SMTP id s66mr3002201wms.40.1592308049419; 
 Tue, 16 Jun 2020 04:47:29 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id h7sm3863726wml.24.2020.06.16.04.47.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 04:47:28 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 16 Jun 2020 13:47:23 +0200
Message-Id: <20200616114723.2363268-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/shmem-helper: Only dma-buf imports are
 private obj
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
Cc: Rob Herring <robh@kernel.org>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SSBicm9rZSB0aGF0IGluIG15IHJlZmFjdG9yaW5nOgoKY29tbWl0IDdkMmNkNzJhOWFhM2RmMzYw
NGNhZmQxNjlhMmQ0YTUyNWFmYjY4Y2EKQXV0aG9yOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0
dGVyQGZmd2xsLmNoPgpEYXRlOiAgIEZyaSBNYXkgMjkgMTY6MDU6NDIgMjAyMCArMDIwMAoKICAg
IGRybS9zaG1lbS1oZWxwZXJzOiBTaW1wbGlmeSBkbWEtYnVmIGltcG9ydGluZwoKSSdtIG5vdCBl
bnRpcmVseSBzdXJlIG9mIHRoZSBoaXN0b3J5IGhlcmUsIGJ1dCBJIHN1c3BlY3QgdGhhdCBpbiBv
bmUKb2YgdGhlIHJlYmFzZXMgb3Igd2hlbiBhcHBseWluZyB0aGUgcGF0Y2ggSSBtb3ZlZCB0aGUg
aHVuayBmcm9tCmRybV9nZW1fc2htZW1fcHJpbWVfaW1wb3J0X3NnX3RhYmxlKCksIHdoZXJlIGl0
IHNob3VsZCBiZSwgdG8KZHJtX2dlbV9zaG1lbV9jcmVhdGVfd2l0aF9oYW5kbGUoKSwgd2hpY2gg
aXMgdG90YWxseSB3cm9uZy4KClJlbWVkeSB0aGlzLgoKVGhhbmtzIGZvciBUaG9tYXMgZm9yIHRo
ZSBjcnVjdWFsIGhpbnQgaW4gZGVidWdnaW5nIHRoaXMuCgpSZXBvcnRlZC1ieTogVGhvbWFzIFpp
bW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+CkZpeGVzOiA3ZDJjZDcyYTlhYTMgKCJkcm0v
c2htZW0taGVscGVyczogU2ltcGxpZnkgZG1hLWJ1ZiBpbXBvcnRpbmciKQpDYzogQm9yaXMgQnJl
emlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4KQ2M6IFRob21hcyBaaW1tZXJt
YW5uIDx0emltbWVybWFubkBzdXNlLmRlPgpDYzogR2VyZCBIb2ZmbWFubiA8a3JheGVsQHJlZGhh
dC5jb20+CkNjOiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgpDYzogTm9yYWxmIFRyw7hu
bmVzIDxub3JhbGZAdHJvbm5lcy5vcmc+ClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRh
bmllbC52ZXR0ZXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVt
X2hlbHBlci5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hl
bHBlci5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMKaW5kZXggMGE3
ZTNiNjY0YmMyLi44MzdlMDg0MDk5MGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1f
Z2VtX3NobWVtX2hlbHBlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hl
bHBlci5jCkBAIC0zNzcsNyArMzc3LDcgQEAgZHJtX2dlbV9zaG1lbV9jcmVhdGVfd2l0aF9oYW5k
bGUoc3RydWN0IGRybV9maWxlICpmaWxlX3ByaXYsCiAJc3RydWN0IGRybV9nZW1fc2htZW1fb2Jq
ZWN0ICpzaG1lbTsKIAlpbnQgcmV0OwogCi0Jc2htZW0gPSBfX2RybV9nZW1fc2htZW1fY3JlYXRl
KGRldiwgc2l6ZSwgdHJ1ZSk7CisJc2htZW0gPSBkcm1fZ2VtX3NobWVtX2NyZWF0ZShkZXYsIHNp
emUpOwogCWlmIChJU19FUlIoc2htZW0pKQogCQlyZXR1cm4gc2htZW07CiAKQEAgLTczMCw3ICs3
MzAsNyBAQCBkcm1fZ2VtX3NobWVtX3ByaW1lX2ltcG9ydF9zZ190YWJsZShzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2LAogCXNpemVfdCBzaXplID0gUEFHRV9BTElHTihhdHRhY2gtPmRtYWJ1Zi0+c2l6
ZSk7CiAJc3RydWN0IGRybV9nZW1fc2htZW1fb2JqZWN0ICpzaG1lbTsKIAotCXNobWVtID0gZHJt
X2dlbV9zaG1lbV9jcmVhdGUoZGV2LCBzaXplKTsKKwlzaG1lbSA9IF9fZHJtX2dlbV9zaG1lbV9j
cmVhdGUoZGV2LCBzaXplLCB0cnVlKTsKIAlpZiAoSVNfRVJSKHNobWVtKSkKIAkJcmV0dXJuIEVS
Ul9DQVNUKHNobWVtKTsKIAotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
