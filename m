Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BC31CEFFA
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 11:00:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE3C76E8BC;
	Tue, 12 May 2020 09:00:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D7406E8AF
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 09:00:05 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id i15so14310344wrx.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 02:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9rtZPjL4qCIHg+K9tvyoRbu8glhfJrL+U886kKa9MgQ=;
 b=bjQj5zUoHFxr/SGM4dy27f04NAwPFLqit1mjhUpVM48tJB0DvrtAI/QUt4Uq4fHY11
 5zIrzzFoaYD8bqvQgrOwaiqaU/6WtYEiZX2CakVoxiDZFsrz5WjYusAXBDM7dzkZzpGs
 nwDoH4Vjs2gY1QwHAO2mv8pc5dm8xpRypRhzw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9rtZPjL4qCIHg+K9tvyoRbu8glhfJrL+U886kKa9MgQ=;
 b=Lw/62fhyGaPH+dV6QTPYfZKW6gKjdVtETKERIy/NsrOZHjyxq399mahbzVATXNZ9Wk
 eNnoDsfulWPSfF96S3D6V+Sr/2BB2Q29eJkZt8/5X3OBFYBPKk6GBqqJzYOkYsCht6/3
 zMKXHAr1iPEiw72qNkPyiFu8l/RoaZIPFgQI3Juzd0Zgp2npyPys2yRMcJzWCRWioNBU
 EXFMxi8BE4eRGxw7wM1BAG136Vop686HJVNIz9bMDAO/3MKJLD4Egbnl317InTZAuOzP
 EkyWv55XB/bTjVif29U9DiUBhanMAZ2xhMdKCpNemLoxOZedDwZ4OqE1tg88/Wo2Q1/c
 7nMA==
X-Gm-Message-State: AGi0PuYdIxeoJePLyECmlja0bhNJUSFVM6gzYNsGkQG8n2FR3VO7Pxci
 /vKFen1aPDv5n4f6Vi48SB8yMZJ9f7E=
X-Google-Smtp-Source: APiQypJ4sp6ae2VxawQXYuyWMb/LII0NAOyrZR4XJi9uK+LfraVsh0bXQKwL7UmDORgQR8hkYHBnZA==
X-Received: by 2002:adf:ec88:: with SMTP id z8mr22394542wrn.44.1589274004220; 
 Tue, 12 May 2020 02:00:04 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y10sm18845457wrd.95.2020.05.12.02.00.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 02:00:03 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 12 May 2020 10:59:34 +0200
Message-Id: <20200512085944.222637-8-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
References: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 07/17] drm/amdgpu: add dma-fence annotations to
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
 intel-gfx@lists.freedesktop.org, LKML <linux-kernel@vger.kernel.org>,
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
YXkvYW1kZ3B1X2RtL2FtZGdwdV9kbS5jCmluZGV4IGVhMGUwMzlhNjY3YS4uNDQ2OWE4Yzk2YjA4
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdw
dV9kbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1
X2RtLmMKQEAgLTU3LDYgKzU3LDcgQEAKIAogI2luY2x1ZGUgIml2c3JjaWQvaXZzcmNpZF92aXNs
YW5kczMwLmgiCiAKKyNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KICNpbmNsdWRlIDxsaW51eC9t
b2R1bGUuaD4KICNpbmNsdWRlIDxsaW51eC9tb2R1bGVwYXJhbS5oPgogI2luY2x1ZGUgPGxpbnV4
L3ZlcnNpb24uaD4KQEAgLTcxMDksNiArNzExMCw5IEBAIHN0YXRpYyB2b2lkIGFtZGdwdV9kbV9h
dG9taWNfY29tbWl0X3RhaWwoc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlKQogCXN0cnVj
dCBkcm1fY29ubmVjdG9yX3N0YXRlICpvbGRfY29uX3N0YXRlLCAqbmV3X2Nvbl9zdGF0ZTsKIAlz
dHJ1Y3QgZG1fY3J0Y19zdGF0ZSAqZG1fb2xkX2NydGNfc3RhdGUsICpkbV9uZXdfY3J0Y19zdGF0
ZTsKIAlpbnQgY3J0Y19kaXNhYmxlX2NvdW50ID0gMDsKKwlib29sIGZlbmNlX2Nvb2tpZTsKKwor
CWZlbmNlX2Nvb2tpZSA9IGRtYV9mZW5jZV9iZWdpbl9zaWduYWxsaW5nKCk7CiAKIAlkcm1fYXRv
bWljX2hlbHBlcl91cGRhdGVfbGVnYWN5X21vZGVzZXRfc3RhdGUoZGV2LCBzdGF0ZSk7CiAKQEAg
LTczODksNiArNzM5Myw4IEBAIHN0YXRpYyB2b2lkIGFtZGdwdV9kbV9hdG9taWNfY29tbWl0X3Rh
aWwoc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlKQogCS8qIFNpZ25hbCBIVyBwcm9ncmFt
bWluZyBjb21wbGV0aW9uICovCiAJZHJtX2F0b21pY19oZWxwZXJfY29tbWl0X2h3X2RvbmUoc3Rh
dGUpOwogCisJZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5nKGZlbmNlX2Nvb2tpZSk7CisKIAlpZiAo
d2FpdF9mb3JfdmJsYW5rKQogCQlkcm1fYXRvbWljX2hlbHBlcl93YWl0X2Zvcl9mbGlwX2RvbmUo
ZGV2LCBzdGF0ZSk7CiAKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
