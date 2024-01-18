Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 296F7831C83
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jan 2024 16:29:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6993710E853;
	Thu, 18 Jan 2024 15:29:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
 [209.85.167.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 712D710E840;
 Thu, 18 Jan 2024 15:29:04 +0000 (UTC)
Received: by mail-lf1-f51.google.com with SMTP id
 2adb3069b0e04-50eaaf2c7deso14118288e87.2; 
 Thu, 18 Jan 2024 07:29:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1705591682; x=1706196482; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XOXCccFK6Foc7T9kkt60G0bLfY4vNetL7k9rrpto9WU=;
 b=bl58joW72bKn6vEtAyoMOAB8H/W+sT25LbRqR4Aja7yxvuj7Mq8MNs8dp9ty4Cb1rw
 6nIQJd2G2ByXsZhkSeLaqsffYFaybwzsXCvtvxYaAjIE4mIOGFWS5HqYQR6sUSqDauFr
 YOn2fZV+qj2cOqHGtr4252YrQ1LFcFMrCKVVC+pHWof34GZ707RTTs1QR57Q+SgvY0sY
 TVjjQRe5EwRwaQ7YKS7w3ZIaMAiVV3fKlipImdky2BZf0w6FFAnMcE98yvd2NwtH6pjn
 3tuG+dmlijPmSzyre95T+K4EtSh+IhHkeXHy3qJFfsxdnY007MXYuOM7g3btsTj95WSA
 ES9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705591682; x=1706196482;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=XOXCccFK6Foc7T9kkt60G0bLfY4vNetL7k9rrpto9WU=;
 b=Yy+kRI5OxNghJaYpSXI3Er+dx5hBcm6mVFsPXSV1CYKP8kwdvJsZQir0ZoNyuPpMar
 r6NPlsj/e9ycpNFGtOB2MKiGlMjnLIaGiCQrl/gpRPLbkru6zhMmGWoABcCnBDW3qKB1
 ScWRPSkf9QO390yzj7XFNggVx42FtJChLm28P9vxl72yyZEDXwAkSy4pjNXSK1PwGnQA
 4Zfq8/fgaJlytfajm0IrT7/HJb48z/CQoJwYzXNmYClBHAhYP/uIjolxwCbgdJ6TXMDM
 VvLziuzyfTgFCq+oPHqDvw6z3gy294SFs236z2Hf7Mb53GbL0G+o3ekd8phNvX3TaVRW
 mM0A==
X-Gm-Message-State: AOJu0YxQOxcZR1z57SrXWLI4p3P5dDvw8DwTvf91UhVNwQ//ycmb8Vxj
 zozBYuoa4ohbR8V7gWDniNru/B5ixNJZHI8V1iMIY2ETE9SzmIQCoAxdnhBCN8YxTg==
X-Google-Smtp-Source: AGHT+IHKOU2G3U9BQY35jIIvnONNFn+Qa2KZbzI1EFpqtPIoe9lPs6dEDsyN3dzPPFB2EH4NggoEPg==
X-Received: by 2002:ac2:4e06:0:b0:50e:70b4:79d2 with SMTP id
 e6-20020ac24e06000000b0050e70b479d2mr716367lfr.41.1705591682276; 
 Thu, 18 Jan 2024 07:28:02 -0800 (PST)
Received: from jheikkil-mobl1.. ([2001:998:22:0:96ab:4869:ae6:2c8a])
 by smtp.gmail.com with ESMTPSA id
 z1-20020ac25de1000000b0050eea9541casm672737lfq.44.2024.01.18.07.28.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jan 2024 07:28:01 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/4] drm/xe: store bind time pat index to xe_bo
Date: Thu, 18 Jan 2024 17:27:43 +0200
Message-Id: <20240118152745.162960-3-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240118152745.162960-1-juhapekka.heikkila@gmail.com>
References: <20240118152745.162960-1-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Store pat index from xe_vma to xe_bo

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/xe/xe_pt.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/xe/xe_pt.c b/drivers/gpu/drm/xe/xe_pt.c
index de1030a47588..4b76db698878 100644
--- a/drivers/gpu/drm/xe/xe_pt.c
+++ b/drivers/gpu/drm/xe/xe_pt.c
@@ -1252,6 +1252,10 @@ __xe_pt_bind_vma(struct xe_tile *tile, struct xe_vma *vma, struct xe_exec_queue
 		return ERR_PTR(-ENOMEM);
 	}
 
+	if (xe_vma_bo(vma)) {
+		xe_vma_bo(vma)->pat_index = vma->pat_index;
+	}
+
 	fence = xe_migrate_update_pgtables(tile->migrate,
 					   vm, xe_vma_bo(vma), q,
 					   entries, num_entries,
-- 
2.25.1

