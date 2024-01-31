Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A50844924
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 21:48:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32DFD10EEFA;
	Wed, 31 Jan 2024 20:48:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com
 [209.85.219.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 185D710FB56
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 20:48:14 +0000 (UTC)
Received: by mail-qv1-f49.google.com with SMTP id
 6a1803df08f44-6869e87c8d8so1025826d6.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 12:48:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1706734034; x=1707338834;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=IHehOClwdwyT5hm1jstGhrGJBzJcQJ/fIMBxPcZfJIQ=;
 b=I1S0+6uL74Wivq8WqwgaapZEGXA2rFMYOZDRM7PtIHIt92rSf4BdCCbCnXuYPRmMm8
 V2uUPiS3r+A+M4vFs+tP97FtaTAME+FcLzKhWTk1Iv6Bbdm92UECrX37VWU5piwYWEAO
 fBI5J7BkeaKWVaDnyjm5h7hG5CUtQR0zpotQM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706734034; x=1707338834;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=IHehOClwdwyT5hm1jstGhrGJBzJcQJ/fIMBxPcZfJIQ=;
 b=W0OfWaSzYIaVrdfRtc0MbsMKYiEztOcVRLOhT0JjtmdV0Xl/yLL+xgG3mZf35ZaqHV
 tuwt2yg547YYtoS6KKlY0ROf4jERwnZx+OHPQXf/wX8hn3Ao83Yc12Ektj9fUBOV3MR8
 kCPDU0NpGOnZAr4iUx9DqEWqX9FaLS/GH4kKGXvBhrwMQBeVuHxZoMvOaQmTIwi50uOF
 iqS1wENxTKikqREYKD8KGT5NJIyPyWZaT0VQ87Mfi+zdHD8yGXEgk75WHIxvXsevtXqp
 OXkOvwmE+1RkAbcnujjVZVy3APC9JgZhjR/nZ5BbwBwb+ZtcsER1yjtJkdbPZ4PN0wB5
 E6zQ==
X-Gm-Message-State: AOJu0YwAURHAsewSWYeUTPVJwgTxVv/oVl5Zp6hDPGfjedkd9dUwcspr
 zVrnj+jEKCEvvceCnypwEBo0VLIwRMyDKPkrBJuULuL/FekN5tAjlALAERP1+A==
X-Google-Smtp-Source: AGHT+IGFl+yQTcSkjdkSZkj7+XvZs9cGGUHj14aKkZC+jmz3gUMJNsJYBd6YGetGBZWQKYm6fSYcbg==
X-Received: by 2002:a05:6214:d02:b0:686:2ff1:8de2 with SMTP id
 2-20020a0562140d0200b006862ff18de2mr3086741qvh.41.1706734033777; 
 Wed, 31 Jan 2024 12:47:13 -0800 (PST)
Received: from pazz.c.googlers.com.com
 (240.157.150.34.bc.googleusercontent.com. [34.150.157.240])
 by smtp.gmail.com with ESMTPSA id
 ow11-20020a0562143f8b00b0068c67a3647dsm1410352qvb.76.2024.01.31.12.47.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Jan 2024 12:47:13 -0800 (PST)
From: Paz Zcharya <pazz@chromium.org>
To: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH] drm/i915/display: Include debugfs.h in
 intel_display_debugfs_params.c
Date: Wed, 31 Jan 2024 20:46:54 +0000
Message-ID: <20240131204658.795278-1-pazz@chromium.org>
X-Mailer: git-send-email 2.43.0.594.gd9cf4e227d-goog
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
Cc: Subrata Banik <subratabanik@google.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Sean Paul <seanpaul@chromium.org>, Marcin Wojtas <mwojtas@chromium.org>,
 Drew Davenport <ddavenport@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Commit 8015bee0bfec ("drm/i915/display: Add framework to add parameters
specific to display") added the file intel_display_debugfs_params.c,
which calls the functions "debugfs_create_{bool, ulong, str}" -- all of
which are defined in <linux/debugfs.h>. The missing inclusion of this
header file is breaking the ChromeOS build -- add an explicit include
to fix that.

Signed-off-by: Paz Zcharya <pazz@chromium.org>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs_params.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
index b7e68eb62452..f35718748555 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
@@ -3,6 +3,7 @@
  * Copyright © 2023 Intel Corporation
  */
 
+#include <linux/debugfs.h>
 #include <linux/kernel.h>
 
 #include <drm/drm_drv.h>
-- 
2.43.0.594.gd9cf4e227d-goog

