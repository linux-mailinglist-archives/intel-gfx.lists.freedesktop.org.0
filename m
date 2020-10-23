Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2F5296E68
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 14:22:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C6646E512;
	Fri, 23 Oct 2020 12:22:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9CF06E112
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 12:22:32 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id b8so1599024wrn.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 05:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9/R15F1LsgpmrfF3NNCzaFiRsuDDTsIACKqWmG0SISo=;
 b=QL0X80IRynXXMUZCjYkwF4TVxPMv6OvJXEja8o1OkGXOMBO4FW8qKjIlQHiTaMX6lC
 Vted5qkM0/57rDsZq+bhda1RMP0UNp2QiZQKvEGxG3qdHN+b54wJSOKQ91pPGKKIz2Ar
 +nKGcH1SKaXqQODHi7K9iRIwpw1YNdCyzAKLI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9/R15F1LsgpmrfF3NNCzaFiRsuDDTsIACKqWmG0SISo=;
 b=Ge8oiy9WSYOAMnMFCi39hl52pyxuYCetT7iZnKgXYttNCVg0uF76YLStNL+bnhiLqk
 418NAoIIDhmGiQ46PUieWpS0ZQ9wvCkTXIOY0Xg1b9lNLRkcJDmUdV4/ohvbhl61ezLO
 OOu8Aa/FoXFIWuAyATFwpja0FfCg88Rg53RPUG7eg4pLz6h7Lrykiw4GYgHXgRGhLBTn
 +di6g+r4epRw599gfaC7GT6xAm3Vsu9MFzQ4RYwdOl9IxMIHPweAXo5IV0EtiaAuItn4
 AMfP5Q4icwNL41DHXwALcFkctStUQ/GXbTa0ZLLaYIMaZnKcEA5C/htK0tiAgjSb0Wvb
 lKHA==
X-Gm-Message-State: AOAM532sRBs4wvaB/4cuOoLqWLA9rkv6Rowq2ve5R+X84Tix/glpIkTY
 5CJcnzJYrD/wxe1H5u3ByAqQ0Q==
X-Google-Smtp-Source: ABdhPJzjwHFFX0eYKKTO5kCI7ZhG3p97yKYVzt0PU/hjOwBpbNrm4zEFSBi8+JEVc4oqTj3X2egovA==
X-Received: by 2002:adf:a1cb:: with SMTP id v11mr2261703wrv.86.1603455751311; 
 Fri, 23 Oct 2020 05:22:31 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y4sm3056484wrp.74.2020.10.23.05.22.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 05:22:30 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 23 Oct 2020 14:21:19 +0200
Message-Id: <20201023122216.2373294-8-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
References: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/65] drm/amdgpu: add dma-fence annotations to
 atomic commit path
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
Cc: linux-rdma@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 amd-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SSBuZWVkIGEgY2FuYXJ5IGluIGEgdHRtLWJhc2VkIGF0b21pYyBkcml2ZXIgdG8gbWFrZSBzdXJl
IHRoZQpkbWFfZmVuY2VfYmVnaW4vZW5kX3NpZ25hbGxpbmcgYW5ub3RhdGlvbnMgYWN0dWFsbHkg
d29yay4KCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpDYzogbGludXgtcmRtYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGFtZC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1hYXJ0
ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBDaHJp
c3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+ClNpZ25lZC1vZmYtYnk6IERh
bmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMgfCA2ICsrKysrKwogMSBmaWxlIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQv
ZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3Bs
YXkvYW1kZ3B1X2RtL2FtZGdwdV9kbS5jCmluZGV4IGJiMWJjN2Y1ZDE0OS4uYjA1ZmVjZjA2ZjI1
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdw
dV9kbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1
X2RtLmMKQEAgLTU3LDYgKzU3LDcgQEAKIAogI2luY2x1ZGUgIml2c3JjaWQvaXZzcmNpZF92aXNs
YW5kczMwLmgiCiAKKyNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KICNpbmNsdWRlIDxsaW51eC9t
b2R1bGUuaD4KICNpbmNsdWRlIDxsaW51eC9tb2R1bGVwYXJhbS5oPgogI2luY2x1ZGUgPGxpbnV4
L3ZlcnNpb24uaD4KQEAgLTc0OTIsNiArNzQ5Myw5IEBAIHN0YXRpYyB2b2lkIGFtZGdwdV9kbV9h
dG9taWNfY29tbWl0X3RhaWwoc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlKQogCXN0cnVj
dCBkbV9jcnRjX3N0YXRlICpkbV9vbGRfY3J0Y19zdGF0ZSwgKmRtX25ld19jcnRjX3N0YXRlOwog
CWludCBjcnRjX2Rpc2FibGVfY291bnQgPSAwOwogCWJvb2wgbW9kZV9zZXRfcmVzZXRfcmVxdWly
ZWQgPSBmYWxzZTsKKwlib29sIGZlbmNlX2Nvb2tpZTsKKworCWZlbmNlX2Nvb2tpZSA9IGRtYV9m
ZW5jZV9iZWdpbl9zaWduYWxsaW5nKCk7CiAKIAlkcm1fYXRvbWljX2hlbHBlcl91cGRhdGVfbGVn
YWN5X21vZGVzZXRfc3RhdGUoZGV2LCBzdGF0ZSk7CiAJZHJtX2F0b21pY19oZWxwZXJfY2FsY190
aW1lc3RhbXBpbmdfY29uc3RhbnRzKHN0YXRlKTsKQEAgLTc4MTYsNiArNzgyMCw4IEBAIHN0YXRp
YyB2b2lkIGFtZGdwdV9kbV9hdG9taWNfY29tbWl0X3RhaWwoc3RydWN0IGRybV9hdG9taWNfc3Rh
dGUgKnN0YXRlKQogCS8qIFNpZ25hbCBIVyBwcm9ncmFtbWluZyBjb21wbGV0aW9uICovCiAJZHJt
X2F0b21pY19oZWxwZXJfY29tbWl0X2h3X2RvbmUoc3RhdGUpOwogCisJZG1hX2ZlbmNlX2VuZF9z
aWduYWxsaW5nKGZlbmNlX2Nvb2tpZSk7CisKIAlpZiAod2FpdF9mb3JfdmJsYW5rKQogCQlkcm1f
YXRvbWljX2hlbHBlcl93YWl0X2Zvcl9mbGlwX2RvbmUoZGV2LCBzdGF0ZSk7CiAKLS0gCjIuMjgu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
