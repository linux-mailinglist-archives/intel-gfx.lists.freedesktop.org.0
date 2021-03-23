Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1017C345E4A
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Mar 2021 13:38:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A8566E069;
	Tue, 23 Mar 2021 12:38:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com
 [IPv6:2607:f8b0:4864:20::730])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3D7E6E81C;
 Tue, 23 Mar 2021 01:16:25 +0000 (UTC)
Received: by mail-qk1-x730.google.com with SMTP id o5so12774020qkb.0;
 Mon, 22 Mar 2021 18:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=S5pECjMsM/qvstnesb/+ZKBN9a5m4sodJTA9keXe8fs=;
 b=dzSqflgkinPRl41IH6b6OavC4s0p/5zLninBkx7jvN5x0aJcq94JpIET1747IB/M34
 /NQ5JHATUU7E2Pl5dV0kMt5gdt+RQRS5LU+f/X7EDMxiVCiFXWAij/EXKpT1w/elqHhD
 rb4eZFhPkBSBN0bIgG7ZSLW7HYN7BvToY6tZT3n40b4ucj1vYqJCWZHebwuP8H10sCmk
 GsUeQdhycaM8SPxIDYfV8dBZH+S86dibxCrrTasFH78QMmsxBZl9rLfkZPoOWLAQ8eQJ
 mC1iozFhXJBE4szBqDdCTGZcdU0VjF8metQOKmbjGoQnHrYGDrl0JhzHfMNLFXszuV44
 LP7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=S5pECjMsM/qvstnesb/+ZKBN9a5m4sodJTA9keXe8fs=;
 b=DwYaUSm3GwvPxULB5Z6yx8cauHW5JD4ZUPy/pO7Sm0rgWTvNTJMtEWo9VFqc225ZGT
 nvSMrjy1fx9t2qlj+Xs3mKbqwqsWxWakYqAW9qWi7hR6tFfdyGmToU29YnDo536SV7ap
 FEMATbdttgXBxDsLzfmwnO3y9wAzkHz+Jkb0JwwgXIjPCTqGOrf9FvCe3GPcfB+Csibc
 TnxVyPzeinRqm9a49XUgu/7ynCTzpDPR7yab8k+YmEohhl5V0cBJEQymLtDp/FjOptqZ
 V8acbrgRIBT41XPjhtq511CUJjqPL3qc3iY+ZI8EvJUyod02rCDItpwskBWwYUcxiPzB
 71Pw==
X-Gm-Message-State: AOAM530uSpJB0g0ltjv/YMTL/nZR8vNwRRVXKhBmG8cihvmXsxDxxanM
 RfleZSyZn7WG3WO3J2xQ0Gk=
X-Google-Smtp-Source: ABdhPJwZ/rCncMQ46/4RmOQg6AKfgCTO4VHUsa9gsBjtXTcAf+WrZsvRdMlXLSN8z2pGmqgSqMrVpQ==
X-Received: by 2002:a05:620a:1326:: with SMTP id
 p6mr3178972qkj.217.1616462184987; 
 Mon, 22 Mar 2021 18:16:24 -0700 (PDT)
Received: from localhost.localdomain ([37.19.198.117])
 by smtp.gmail.com with ESMTPSA id i93sm10383114qtd.48.2021.03.22.18.16.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Mar 2021 18:16:24 -0700 (PDT)
From: Bhaskar Chowdhury <unixbhaskar@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch,
 imre.deak@intel.com, ville.syrjala@linux.intel.com,
 lucas.demarchi@intel.com, matthew.d.roper@intel.com,
 tejaskumarx.surendrakumar.upadhyay@intel.com, unixbhaskar@gmail.com,
 aditya.swarup@intel.com, anusha.srivatsa@intel.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Date: Tue, 23 Mar 2021 06:46:07 +0530
Message-Id: <20210323011607.182803-1-unixbhaskar@gmail.com>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 23 Mar 2021 12:38:33 +0000
Subject: [Intel-gfx] [PATCH] drm/i915: A typo fix
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
Cc: rdunlap@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


s/nothign/nothing/

Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index f6ad257a260e..14d784a6fae5 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4185,7 +4185,7 @@ static void icl_pll_disable(struct drm_i915_private *dev_priv,
 	/*
 	 * DVFS pre sequence would be here, but in our driver the cdclk code
 	 * paths should already be setting the appropriate voltage, hence we do
-	 * nothign here.
+	 * nothing here.
 	 */

 	val = intel_de_read(dev_priv, enable_reg);
--
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
