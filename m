Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 208D9E8A36
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 15:03:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96E406E40A;
	Tue, 29 Oct 2019 14:03:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 790616E40A;
 Tue, 29 Oct 2019 14:03:17 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id l10so13797778wrb.2;
 Tue, 29 Oct 2019 07:03:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=m0UAArgOQwklEDlIPd4FtLzQeSJWVWCAKXO/HPSaE6U=;
 b=gBckgW1nSacL07XjAK8JJMUTIvf93zA6ad39TkWkTGRYMvx0VXyFPdwxJRpFyMySQS
 /wL4mzfVQhzWytru2MmziUJkMYSgm7U+FS8/QM9jQ92HVG471IeQIFcdAZ5gDX8aOo9F
 PvHFboG9IpR05w4+iAL+q+rm3XcnU3qtRTfOaXnxYsbsNnGL+DXZKVHYR4BGNJllgvH3
 EIVpoRHnMTqA9KcH15H8I3V4hsXw1dtiiiM3KN6P+fW5CsARU1Uql3l1fnKfbUKcPSqO
 tmXU/YzjNeh9kKBopXj+CEDsQ1rqCnZgQv8iZlhzopeg74jlF9mZzErN9HNQqPTM8ovy
 Bh3w==
X-Gm-Message-State: APjAAAUKVUZtLCfPfRIavfUSGxOmemaCIPdw3jViQLfrok2vg1U63AVW
 9LairBLq9ldEcN3apPksObcNgb55
X-Google-Smtp-Source: APXvYqwrqm+T3lcm6jTyY9WVnncm9v/fk7M3MwfjLsF811NR8MSosBRj4spivKxyJ5afuxaC3aud9g==
X-Received: by 2002:adf:e544:: with SMTP id z4mr21413571wrm.6.1572357795268;
 Tue, 29 Oct 2019 07:03:15 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id a23sm2829416wmj.2.2019.10.29.07.03.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 07:03:14 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 29 Oct 2019 15:03:12 +0100
Message-Id: <20191029140312.516266-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=m0UAArgOQwklEDlIPd4FtLzQeSJWVWCAKXO/HPSaE6U=;
 b=ZFHKdMJFJcJJmuyB+5GJ4mcpPbU6L8++W78c0u+hIRJBGON/IgB0YcPKfHRgBTrJNs
 5PKjLqbezxB2Gy49TVQKE/5BM2E4b0aS/5wYY5zaLwXCT0zOi5sQLF1HoJbnXQWh8wJw
 kNLgUSJ+edmqm526rSMNJ9MGUTNxfT3kUj4UswxFD9Onnb1cCfXyrfbu9BqOQyAKd61l
 D26BljaXIQ03L+jxDlXSL0H/nAj7YsyubGkbO3x504BDhnXpWni13xQ64iAym5HY6M/5
 OyVyo5M1Xerni22T0qrmmnsYFmUxAMA6YCfni/k9Jqfuq0waN5sSqIbm6Sat7dZ46+cL
 RmOQ==
Subject: [Intel-gfx] [RESEND PATCH] drm/dp: Increase link status size
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
Cc: intel-gfx@lists.freedesktop.org,
 coverity-bot <keescook+coverity-bot@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVGhpZXJyeSBSZWRpbmcgPHRyZWRpbmdAbnZpZGlhLmNvbT4KClRoZSBjdXJyZW50IGxp
bmsgc3RhdHVzIGNvbnRhaW5zIGJ5dGVzIDB4MjAyIHRocm91Z2ggMHgyMDcsIGJ1dCB3ZSBhbHNv
CndhbnQgdG8gbWFrZSBzdXJlIHRvIGluY2x1ZGUgdGhlIERQX0FESlVTVF9SRVFVRVNUX1BPU1Rf
Q1VSU09SMiAoMHgyMGMpCnNvIHRoYXQgdGhlIHBvc3QtY3Vyc29yIGFkanVzdG1lbnQgY2FuIGJl
IHF1ZXJpZWQgZHVyaW5nIGxpbmsgdHJhaW5pbmcuCgpSZXBvcnRlZC1ieTogY292ZXJpdHktYm90
IDxrZWVzY29vaytjb3Zlcml0eS1ib3RAY2hyb21pdW0ub3JnPgpBZGRyZXNzZXMtQ292ZXJpdHkt
SUQ6IDE0ODczNjYgKCJNZW1vcnkgLSBjb3JydXB0aW9ucyIpCkZpeGVzOiA3OTQ2NWUwZmZlYjkg
KCJkcm0vZHA6IEFkZCBoZWxwZXIgdG8gZ2V0IHBvc3QtY3Vyc29yIGFkanVzdG1lbnRzIikKU2ln
bmVkLW9mZi1ieTogVGhpZXJyeSBSZWRpbmcgPHRyZWRpbmdAbnZpZGlhLmNvbT4KLS0tCiBpbmNs
dWRlL2RybS9kcm1fZHBfaGVscGVyLmggfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fZHBfaGVs
cGVyLmggYi9pbmNsdWRlL2RybS9kcm1fZHBfaGVscGVyLmgKaW5kZXggNTFlY2I1MTEyZWY4Li45
NTgxZGVjOTAwYmEgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIuaAorKysg
Yi9pbmNsdWRlL2RybS9kcm1fZHBfaGVscGVyLmgKQEAgLTExMjEsNyArMTEyMSw3IEBACiAjZGVm
aW5lIERQX01TVF9QSFlTSUNBTF9QT1JUXzAgMAogI2RlZmluZSBEUF9NU1RfTE9HSUNBTF9QT1JU
XzAgOAogCi0jZGVmaW5lIERQX0xJTktfU1RBVFVTX1NJWkUJICAgNgorI2RlZmluZSBEUF9MSU5L
X1NUQVRVU19TSVpFCSAgIDExCiBib29sIGRybV9kcF9jaGFubmVsX2VxX29rKGNvbnN0IHU4IGxp
bmtfc3RhdHVzW0RQX0xJTktfU1RBVFVTX1NJWkVdLAogCQkJICBpbnQgbGFuZV9jb3VudCk7CiBi
b29sIGRybV9kcF9jbG9ja19yZWNvdmVyeV9vayhjb25zdCB1OCBsaW5rX3N0YXR1c1tEUF9MSU5L
X1NUQVRVU19TSVpFXSwKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
