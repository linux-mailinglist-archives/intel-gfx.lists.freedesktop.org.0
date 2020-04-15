Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5541A9495
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:41:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02F996E89B;
	Wed, 15 Apr 2020 07:41:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 305C96E88E
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:40:59 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id r26so17718983wmh.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eMraBtSz7Iti0PpGK7WK3Id6bjGPSlXFbvPkkFzOxJw=;
 b=YFblQluC1vwuZ6o5RE8DaSn+zkh2crSuHiwq3OcnCTbhxsYfpk7+zpj98PKfuFVPTu
 EAGF9r8cZVWYezYjCx4qlkyyQJhSP+tZjJJoLVT3HCppl9NCtB5kAXAiivhpzQlVBaNS
 5o1sMvQN9EA1WkNMo8UWRTgvNKA9E4nUcYjdM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eMraBtSz7Iti0PpGK7WK3Id6bjGPSlXFbvPkkFzOxJw=;
 b=EyIRlMaa8I/gpWrQGaXCrVhTDcWSV99uPL8OZ8rsSHDoT2yPltQpvq7r04qo2fZWhL
 vdw1PK4IKQKzKx2Av1AWdfAcWCXEGbE4vwV7+iM8MfUe7Vq8GZjeNhiqKdpRgSe6ZLNW
 ASDuYu6ciQw18x0PMjU4M3Foj/aTrgnAuTnsY78NkdzmWttY5X/tr6MDgq57g5Q35d+z
 ExKYF/uJDmzsEoEaCOtuAhwYA6vQQ2GJtvNoXo17EsZtMdeCinYq5Ls3mhVMDhbQYKWc
 KCYoltwLLA1I/ezGjumG+e6aNzyo1gl8hHA11MzSZsoweU8oavzkIzKWhVBHxwXXanbg
 tqVg==
X-Gm-Message-State: AGi0PubGYD3B4SML68ucOjY0ks8c2HtGJTDmcP54uXLF9WetU50uIPpz
 eExvFNjHXFIERtfteILOWZetOX59DCE=
X-Google-Smtp-Source: APiQypLLdYfPTX2c028SHsK+LS5dOSxF82LM//dq6Z+tVvULZS4yxqUuCDTF417h0/gq2XmW1HyoEg==
X-Received: by 2002:a1c:e1c1:: with SMTP id y184mr3860567wmg.143.1586936457560; 
 Wed, 15 Apr 2020 00:40:57 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.40.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:40:57 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:39:51 +0200
Message-Id: <20200415074034.175360-17-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/59] drm/mi0283qt: Use devm_drm_dev_alloc
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
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Sam Ravnborg <sam@ravnborg.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxyZWFkeSB1c2luZyBkZXZtX2RybV9kZXZfaW5pdCwgc28gdmVyeSBzaW1wbGUgcmVwbGFjbWVu
dC4KCkFja2VkLWJ5OiBOb3JhbGYgVHLDuG5uZXMgPG5vcmFsZkB0cm9ubmVzLm9yZz4KQWNrZWQt
Ynk6IFNhbSBSYXZuYm9yZyA8c2FtQHJhdm5ib3JnLm9yZz4KU2lnbmVkLW9mZi1ieTogRGFuaWVs
IFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiAiTm9yYWxmIFRyw7hubmVzIiA8
bm9yYWxmQHRyb25uZXMub3JnPgotLS0KIGRyaXZlcnMvZ3B1L2RybS90aW55L21pMDI4M3F0LmMg
fCAxMyArKysrLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA5IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90aW55L21pMDI4M3F0LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vdGlueS9taTAyODNxdC5jCmluZGV4IGRlY2FmNTcwNTNmZi4uMDhh
YzU0OWFiMGY3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdGlueS9taTAyODNxdC5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS90aW55L21pMDI4M3F0LmMKQEAgLTE4NywxOCArMTg3LDEzIEBA
IHN0YXRpYyBpbnQgbWkwMjgzcXRfcHJvYmUoc3RydWN0IHNwaV9kZXZpY2UgKnNwaSkKIAl1MzIg
cm90YXRpb24gPSAwOwogCWludCByZXQ7CiAKLQlkYmlkZXYgPSBremFsbG9jKHNpemVvZigqZGJp
ZGV2KSwgR0ZQX0tFUk5FTCk7Ci0JaWYgKCFkYmlkZXYpCi0JCXJldHVybiAtRU5PTUVNOworCWRi
aWRldiA9IGRldm1fZHJtX2Rldl9hbGxvYyhkZXYsICZtaTAyODNxdF9kcml2ZXIsCisJCQkJICAg
IHN0cnVjdCBtaXBpX2RiaV9kZXYsIGRybSk7CisJaWYgKElTX0VSUihkYmlkZXYpKQorCQlyZXR1
cm4gUFRSX0VSUihkYmlkZXYpOwogCiAJZGJpID0gJmRiaWRldi0+ZGJpOwogCWRybSA9ICZkYmlk
ZXYtPmRybTsKLQlyZXQgPSBkZXZtX2RybV9kZXZfaW5pdChkZXYsIGRybSwgJm1pMDI4M3F0X2Ry
aXZlcik7Ci0JaWYgKHJldCkgewotCQlrZnJlZShkYmlkZXYpOwotCQlyZXR1cm4gcmV0OwotCX0K
LQlkcm1tX2FkZF9maW5hbF9rZnJlZShkcm0sIGRiaWRldik7CiAKIAlkYmktPnJlc2V0ID0gZGV2
bV9ncGlvZF9nZXRfb3B0aW9uYWwoZGV2LCAicmVzZXQiLCBHUElPRF9PVVRfSElHSCk7CiAJaWYg
KElTX0VSUihkYmktPnJlc2V0KSkgewotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
