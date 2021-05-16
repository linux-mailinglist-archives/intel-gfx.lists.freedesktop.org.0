Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D39A382024
	for <lists+intel-gfx@lfdr.de>; Sun, 16 May 2021 19:14:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90FE06E82A;
	Sun, 16 May 2021 17:14:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF1336E15F;
 Sun, 16 May 2021 17:14:41 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 f75-20020a1c1f4e0000b0290171001e7329so2242161wmf.1; 
 Sun, 16 May 2021 10:14:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Yyj+hGPOXvlG9agMuR9BE8l+uPdhGMcekWIUcWb7KfI=;
 b=dexWcb8Am0IfXI7swyTOIVu2/vZdNGtkqQXtDyt4B372OUB2SIqLeyoA2dHcnffz7P
 k5R9f0M277/NlnbfgWeK4XEIh7bi5EBgfUyacH/NYicTFEMyFgLvwkJjU6hfm8QbSzEB
 0ABA9NtJd5dfv2Jb60Drggw2jnKyBDa3AlqqaHdNaRVTCRjtu3IHZZbWoi79MllcurZA
 SUuouw3BmkNXQqSSBcYbzbFEDtG6mgNbegCSGqjc2NNG5r60uEJ0zf4gAp8gt+0Z9SGa
 WWXBLJRHmIcjAemMtCx3FY9MgI6xJeOb1u+rY9enk0MNd4waaezFuUZLlDX6Qu4uEzJD
 M7TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Yyj+hGPOXvlG9agMuR9BE8l+uPdhGMcekWIUcWb7KfI=;
 b=PqTqbscgCYJTJuWQuzBiYF/qMUKlNB12l3gUB6FWSQDE/Lh3xSlQbQlxU7IoMfRi4l
 73C7palNCwIy3l3fB37XPTPchayILavoAuJCdXiI5LbXlzJgki/hTHqXFGz/naEGgSac
 KEOI8yaXdmZ1O+rzgFp8jSItnAqVTPAShnsVlfsMtw83hY5ywtTh3S8vjLMnaSTonMfN
 Hpnf84qJiMJBao7PPToXMHKIijfe1wDT1laby0UKGmzBVwmLFSHC24sCtPCVKrVHg004
 PUVYIK88kGn3biPhpe+1+qNSKiidhs+9dODuKlCz5wAXu5jlnvmfSEg1tDWWkMf7/1vW
 KZIg==
X-Gm-Message-State: AOAM530Vs+KhT0FWukeRbNTkeJevMznrjPiAB5Y1tcv+VSEiDbSotuoW
 Fi9qyUUSgsteIZjDknwa2SU=
X-Google-Smtp-Source: ABdhPJzTzCNYcRjoHzq4JKJIcpimEj4+rpQsbWjdexdbzLuKBGP/HzWj2e96GXJPRvFbbk94yB+0Hw==
X-Received: by 2002:a7b:c182:: with SMTP id y2mr5676976wmi.125.1621185280708; 
 Sun, 16 May 2021 10:14:40 -0700 (PDT)
Received: from arch-x1c3.. (cpc92308-cmbg19-2-0-cust99.5-4.cable.virginm.net.
 [82.24.248.100])
 by smtp.gmail.com with ESMTPSA id j14sm14052555wmj.19.2021.05.16.10.14.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 May 2021 10:14:40 -0700 (PDT)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Sun, 16 May 2021 18:14:32 +0100
Message-Id: <20210516171432.1734268-1-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: only disable default vga device
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
Cc: intel-gfx@lists.freedesktop.org, kernel@collabora.com,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVml2ZWsgRGFzIE1vaGFwYXRyYSA8dml2ZWtAY29sbGFib3JhLmNvbT4KClRoaXMgcGF0
Y2ggaXMgdG8gZG8gd2l0aCBzZWFtbGVzcyBoYW5kb3ZlciwgZWcgd2hlbiB0aGUgc2VxdWVuY2Ug
aXMKYm9vdGxvYWRlciDihpIgcGx5bW91dGgg4oaSIGRlc2t0b3AuCgpJdCBzd2l0Y2hlcyB0aGUg
dmdhIGFyYml0ZXIgZnJvbSB0aGUgIm90aGVyIiBHUFUgdG8gdGhlIGRlZmF1bHQgb25lCihpbnRl
bCBpbiB0aGlzIGNhc2UpLCBzbyB0aGUgZHJpdmVyIGNhbiBpc3N1ZSBzb21lIGlvKCkuCgpTaWdu
ZWQtb2ZmLWJ5OiBWaXZlayBEYXMgTW9oYXBhdHJhIDx2aXZla0Bjb2xsYWJvcmEuY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBFbWlsIFZlbGlrb3YgPGVtaWwudmVsaWtvdkBjb2xsYWJvcmEuY29tPgotLS0K
R3JlZXRpbmdzIGFsbCwKClRoaXMgcGF0Y2ggaGFzIGJlZW4gZG93bnN0cmVhbSBmb3IgYSB3aGls
ZSBub3cgeWV0IGl0IHNlZW1zIHBlcmZlY3RseQpyZWFzb25hYmxlIHRoaW5nIHRvIGhhdmUgaW4g
dGhlIExpbnV4IGtlcm5lbC4KCmh0dHBzOi8vZ2l0aHViLmNvbS9WYWx2ZVNvZnR3YXJlL3N0ZWFt
b3Nfa2VybmVsL2NvbW1pdC81NDMxYjViMTk5OWMzZDNiNWVmZWU4MTdmYjMzNzNmYmJkNDczMDYz
CgoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmdhLmMgfCAxNCArKysrKysr
Ky0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZnYS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Z2EuYwppbmRleCBiZTMzMzY5OWM1
MTUuLjRmMDdiNWFkNWZhMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF92Z2EuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zn
YS5jCkBAIC0zMCwxMiArMzAsMTQgQEAgdm9pZCBpbnRlbF92Z2FfZGlzYWJsZShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJdTggc3IxOwogCiAJLyogV2FFbmFibGVWR0FBY2Nl
c3NUaHJvdWdoSU9Qb3J0OmN0ZyxlbGssaWxrLHNuYixpdmIsdmx2LGhzdyAqLwotCXZnYV9nZXRf
dW5pbnRlcnJ1cHRpYmxlKHBkZXYsIFZHQV9SU1JDX0xFR0FDWV9JTyk7Ci0Jb3V0YihTUjAxLCBW
R0FfU1JfSU5ERVgpOwotCXNyMSA9IGluYihWR0FfU1JfREFUQSk7Ci0Jb3V0YihzcjEgfCAxIDw8
IDUsIFZHQV9TUl9EQVRBKTsKLQl2Z2FfcHV0KHBkZXYsIFZHQV9SU1JDX0xFR0FDWV9JTyk7Ci0J
dWRlbGF5KDMwMCk7CisJaWYgKHBkZXYgPT0gdmdhX2RlZmF1bHRfZGV2aWNlKCkpIHsKKwkJdmdh
X2dldF91bmludGVycnVwdGlibGUocGRldiwgVkdBX1JTUkNfTEVHQUNZX0lPKTsKKwkJb3V0YihT
UjAxLCBWR0FfU1JfSU5ERVgpOworCQlzcjEgPSBpbmIoVkdBX1NSX0RBVEEpOworCQlvdXRiKHNy
MSB8IDEgPDwgNSwgVkdBX1NSX0RBVEEpOworCQl2Z2FfcHV0KHBkZXYsIFZHQV9SU1JDX0xFR0FD
WV9JTyk7CisJCXVkZWxheSgzMDApOworCX0KIAogCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCB2
Z2FfcmVnLCBWR0FfRElTUF9ESVNBQkxFKTsKIAlpbnRlbF9kZV9wb3N0aW5nX3JlYWQoZGV2X3By
aXYsIHZnYV9yZWcpOwotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
