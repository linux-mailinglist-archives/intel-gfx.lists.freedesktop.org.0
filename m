Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D82941BB4CD
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 05:47:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 299FE89FA5;
	Tue, 28 Apr 2020 03:47:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com
 [IPv6:2607:f8b0:4864:20::730])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B69989FA5
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 03:47:34 +0000 (UTC)
Received: by mail-qk1-x730.google.com with SMTP id n143so20525919qkn.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 20:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1zZie91LecAJXWxxucrjOjwEqpFgDnt84MhBYjuojLA=;
 b=j4pko1U55NJUf0bcPKVPPU0pF7jJcqB0VOYe+YDzN3m6HDOyTHy2ebRMLRw9sWJ3L7
 DlxNe1sP4P6cgZI2WDXJaAvI1tsyH5rKY2Jt/7O/f1qdnVoYD43V2k0ylQh0lsnqsQDu
 pwmv50ZNPBNXsgQuuAaQFWlUH9sUmHGKDkJOIza28+4zjd1R4b9WzVyEzSRpslSC0idZ
 lpQLbKioMZujJHr1OZDzuVvxssusa5znoHd1hlMKF8JatnNNlEJCHoqesTsHZc7wIEjE
 c0gdxUPL6urK2bCjW2Q1JtyjJRzj5DZgF6A5mxgcMzNxnl1A1pHq4bItUg03kZ2k9ELv
 G1Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1zZie91LecAJXWxxucrjOjwEqpFgDnt84MhBYjuojLA=;
 b=uFfl+Ug5rrV67xvJk/C54Jhch0PsmsRH3RSM2CjKvIGXxMj92yxlSVZJu7C9PfhRm9
 nF4uq2MPZDMfuUxr1pAuydLKgCQssvom0zTFTCvi37pwflHKd/KyxHr5vJ5E+Tl8pOqy
 I2wjCUgbBuSCi/EuGFFTLIWHw6ZCoKHqQZGLi17fK4XksJtDw7/4Y3CNPkFvmg60tUL0
 1iv1Dkk3yI6ol37WGEcTbKiK8DwSkb/hddMP1/1/4vLzGJzeZ1P2d4R9oZ6LF7/IWM9Y
 cEpYL3jmYyjMadCkqvynM4rFLvqMQBl/zz5RcbQGPi/sZZJjI+ydvIXrQEevQLdAvClT
 gvUQ==
X-Gm-Message-State: AGi0Pubkpx2sdfRUVOKjdGG3n+yuOHXf1DmgBxy16d60CKZ3VwfUQa78
 bkIhci3iw4MJ7mIi/an9Hp2iWHWbAU4=
X-Google-Smtp-Source: APiQypK7kOjNjVZg2MQqyuytF5ylIhKUOKl60CMiXO+sJqzOwSeVFXs9BnyU8aGPLSSJgCRNyEziNQ==
X-Received: by 2002:ae9:eb8c:: with SMTP id b134mr25952350qkg.39.1588045652930; 
 Mon, 27 Apr 2020 20:47:32 -0700 (PDT)
Received: from prosha.fios-router.home
 (pool-72-92-48-173.phlapa.fios.verizon.net. [72.92.48.173])
 by smtp.gmail.com with ESMTPSA id s8sm11539261qtb.0.2020.04.27.20.47.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 20:47:32 -0700 (PDT)
From: Alexei Podtelezhnikov <apodtele@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Apr 2020 23:47:05 -0400
Message-Id: <20200428034705.3907-1-apodtele@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [patch] drm/i915: Add PCI IDs for Skylake GT1.5
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

These devices are also known as iSKLULTGT15 and iSKLDTGT15.

Signed-off-by: Alexei Podtelezhnikov <apodtele@gmail.com>
---
 include/drm/i915_pciids.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/src/i915_pciids.h b/src/i915_pciids.h
index 1d2c1221..a9c88eab 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -331,7 +355,8 @@ Add SKL GT1.5
 	INTEL_VGA_DEVICE(0x22b3, info)
 
 #define INTEL_SKL_ULT_GT1_IDS(info) \
-	INTEL_VGA_DEVICE(0x1906, info) /* ULT GT1 */
+	INTEL_VGA_DEVICE(0x1906, info), /* ULT GT1 */ \
+	INTEL_VGA_DEVICE(0x1913, info) /* ULT GT1.5 */
 
 #define INTEL_SKL_ULX_GT1_IDS(info) \
 	INTEL_VGA_DEVICE(0x190E, info) /* ULX GT1 */
@@ -340,6 +365,7 @@ Add SKL GT1.5
 	INTEL_SKL_ULT_GT1_IDS(info), \
 	INTEL_SKL_ULX_GT1_IDS(info), \
 	INTEL_VGA_DEVICE(0x1902, info), /* DT  GT1 */ \
+	INTEL_VGA_DEVICE(0x1917, info), /* DT  GT1.5 */ \
 	INTEL_VGA_DEVICE(0x190B, info), /* Halo GT1 */ \
 	INTEL_VGA_DEVICE(0x190A, info) /* SRV GT1 */
 
--
2.26.2
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
