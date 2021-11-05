Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3BF8445E4E
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Nov 2021 04:05:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B3EE6E595;
	Fri,  5 Nov 2021 03:05:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com
 [IPv6:2607:f8b0:4864:20::f2c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB4A06E58E
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Nov 2021 03:05:20 +0000 (UTC)
Received: by mail-qv1-xf2c.google.com with SMTP id bu11so6653895qvb.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Nov 2021 20:05:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p29jzjn+HciZTKz27UBXeqRtt6jrYIq3wM4tpoc5cfM=;
 b=W3ZFF4OzpqXBx7l8s8Hp21cuwa2rPHqlccIfRMgsKQC+qqylzTSs/hsK4F2Npg1VIt
 2842O751JM4bJ9qTmPqpV4GUNnyF13Gekwl+rtPUvk5UQqc99nFnAlm3bg4hn9DoTD8t
 EEIQwJrTs3KHwK27wdfw5qmcNxNiYHyxLS5Afh+tYLjRMg4co/hsnJmPjugdVwy3Esl1
 MrtINU1i/tOHKAMtBWuulTJfaodNBdTQdfSxGsONUIIE36s10MBM4EELYo5rXKfjQg3B
 atwQFhGqGpsjcuij335zJpLoodi2ZmbrW81FOYf1t+TRbgUOz3BWp408+c59pQq164n8
 Njmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p29jzjn+HciZTKz27UBXeqRtt6jrYIq3wM4tpoc5cfM=;
 b=J85R00pUq2411gC8Lbr/NH607i+CLY+fgYkZPgxeqVu3GronEG2SZBn/a58avPKjsq
 foHSH1SvlgjBpRgjENA8WL3mkAGhdMv5xECLvm+Dok0UElsJz6IJMUUtK7cPI15Q0WOm
 e5ADZE5CTMOyRzpmtQ/u96naVdq1EhuEHyFhmLbpD+PLnsonpq6+TuVMCMvj05P0AjNj
 Rcqc/Dg1hhw2JsIU0Q6htQl4xx9F1lJWTHxIY1lxwo57KUNE4bNm8sGB3gMSt1MNplfo
 5L1e94r6dtg0SVROs71AdQy8xPdVTOFxG7dKZerwPX1a7QIcXyggwToWZG5R/8Waip16
 BK3Q==
X-Gm-Message-State: AOAM531WeJNKd4XHRH+ce1HKO9Wh5DJTmK+ftfs76YUtYmbZAx8Anmny
 ssly8Uo+0RPyH9W7jylanY/9aA==
X-Google-Smtp-Source: ABdhPJxjpqaOuejmdoVnBRmMROAdccqiWmk/TA4c8Co84JjNZbbGXmcOjN0wLslqkbGBCU5dnpp3gw==
X-Received: by 2002:a05:6214:f09:: with SMTP id
 gw9mr21017353qvb.36.1636081519728; 
 Thu, 04 Nov 2021 20:05:19 -0700 (PDT)
Received: from localhost ([167.100.64.199])
 by smtp.gmail.com with ESMTPSA id s18sm5475605qtw.33.2021.11.04.20.05.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Nov 2021 20:05:19 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org
Date: Thu,  4 Nov 2021 23:04:25 -0400
Message-Id: <20211105030434.2828845-9-sean@poorly.run>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211105030434.2828845-1-sean@poorly.run>
References: <20211105030434.2828845-1-sean@poorly.run>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 08/14] drm/msm/dpu_kms: Re-order dpu includes
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
Cc: jani.nikula@intel.com, linux-arm-msm@vger.kernel.org,
 abhinavk@codeaurora.org, swboyd@chromium.org, David Airlie <airlied@linux.ie>,
 Sean Paul <seanpaul@chromium.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, bjorn.andersson@linaro.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

Make includes alphabetical in dpu_kms.c

Reviewed-by: Abhinav Kumar <abhinavk@codeaurora.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-9-sean@poorly.run #v1
Link: https://patchwork.freedesktop.org/patch/msgid/20210915203834.1439-9-sean@poorly.run #v2
Link: https://patchwork.freedesktop.org/patch/msgid/20211001151145.55916-9-sean@poorly.run #v3

Changes in v2:
-None
Changes in v3:
-None
Changes in v4:
-None
---
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
index a15b26428280..66b7df7daa6a 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
@@ -21,14 +21,14 @@
 #include "msm_gem.h"
 #include "disp/msm_disp_snapshot.h"
 
-#include "dpu_kms.h"
 #include "dpu_core_irq.h"
+#include "dpu_crtc.h"
+#include "dpu_encoder.h"
 #include "dpu_formats.h"
 #include "dpu_hw_vbif.h"
-#include "dpu_vbif.h"
-#include "dpu_encoder.h"
+#include "dpu_kms.h"
 #include "dpu_plane.h"
-#include "dpu_crtc.h"
+#include "dpu_vbif.h"
 
 #define CREATE_TRACE_POINTS
 #include "dpu_trace.h"
-- 
Sean Paul, Software Engineer, Google / Chromium OS

