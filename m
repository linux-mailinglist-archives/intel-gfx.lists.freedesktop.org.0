Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC3E573060
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jul 2022 10:13:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 070C495332;
	Wed, 13 Jul 2022 08:12:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3A5F952AF;
 Wed, 13 Jul 2022 08:12:34 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id BF40661AF6;
 Wed, 13 Jul 2022 08:12:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 508C2C36AEC;
 Wed, 13 Jul 2022 08:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1657699952;
 bh=NGoFV+XEZz1AEK80xsrPTYnST06m5w8suHzIjN1TXLA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cbUrNe6uWcxuzBp+/Z4L0Q8+2yXsy+bgXUTT5LfdHo7xYiuUPk2y3DOWfPoSEYgPe
 obNgdcxxmFAqqs14rJfc0LXc4VnCtb9kl1Y4p/tFGktP00AHWF58lrMKs0axc9AiDM
 t2FimThIjjrc7qjzljsR0LhHhUOK/QM6u8PlIcZNx3xngD+nOLHYlQyIIihmEj3Thu
 CbjEaQkoXziFLZphz13iWRWEF1rKSnIXCsR3EqkoMG8vvmsEHwc4LcMZNv0co4R4Ey
 NcANxAh2btb+kJT2VgTBHJauOeqAakwxbTe3GGL+vHnciPPhr1l2SEnWN8hs5b3ToC
 hsnUbaZ9rZwNQ==
Received: from mchehab by mail.kernel.org with local (Exim 4.95)
 (envelope-from <mchehab@kernel.org>) id 1oBXTx-004zuH-U6;
 Wed, 13 Jul 2022 09:12:29 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: 
Date: Wed, 13 Jul 2022 09:12:18 +0100
Message-Id: <d7d1f6d6516eb3a82041af1d5f40c2f550de40db.1657699522.git.mchehab@kernel.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1657699522.git.mchehab@kernel.org>
References: <cover.1657699522.git.mchehab@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 30/39] docs: gpu: i915.rst: gt: add more
 kernel-doc markups
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There are several documented GT kAPI that aren't currently part
of the docs. Add them, as this allows identifying issues with
badly-formatted tags.

Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
---

To avoid mailbombing on a large number of people, only mailing lists were C/C on the cover.
See [PATCH v2 00/39] at: https://lore.kernel.org/all/cover.1657699522.git.mchehab@kernel.org/

 Documentation/gpu/i915.rst | 43 +++++++++++++++++++++++++++++++++++++-
 1 file changed, 42 insertions(+), 1 deletion(-)

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index 2ad7941a79f2..afd8c0e3c689 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -149,7 +149,6 @@ Misc display functions
 
 .. kernel-doc:: drivers/gpu/drm/i915/display/skl_scaler.c
 
-
 Plane Configuration
 -------------------
 
@@ -308,6 +307,48 @@ Multicast/Replicated (MCR) Registers
 .. kernel-doc:: drivers/gpu/drm/i915/gt/intel_gt_mcr.c
    :internal:
 
+GT engine
+---------
+
+.. kernel-doc:: drivers/gpu/drm/i915/gt/intel_engine_types.h
+
+.. kernel-doc:: drivers/gpu/drm/i915/gt/intel_engine_cs.c
+
+.. kernel-doc:: drivers/gpu/drm/i915/gt/intel_engine_pm.c
+
+GT context
+----------
+
+.. kernel-doc:: drivers/gpu/drm/i915/gt/intel_context.h
+
+Graphics Translation Tables
+---------------------------
+
+.. kernel-doc:: drivers/gpu/drm/i915/gt/intel_ggtt.c
+
+Other GT functionality
+----------------------
+
+.. kernel-doc:: drivers/gpu/drm/i915/gt/intel_gsc.h
+
+.. kernel-doc:: drivers/gpu/drm/i915/gt/intel_gtt.c
+
+.. kernel-doc:: drivers/gpu/drm/i915/gt/intel_gtt.h
+
+.. kernel-doc:: drivers/gpu/drm/i915/gt/intel_migrate.c
+
+.. kernel-doc:: drivers/gpu/drm/i915/gt/intel_mocs.h
+
+.. kernel-doc:: drivers/gpu/drm/i915/gt/intel_rc6.c
+
+.. kernel-doc:: drivers/gpu/drm/i915/gt/intel_reset.c
+
+.. kernel-doc:: drivers/gpu/drm/i915/gt/intel_rps_types.h
+
+.. kernel-doc:: drivers/gpu/drm/i915/gt/intel_rps.c
+
+.. kernel-doc:: drivers/gpu/drm/i915/gt/intel_sseu.c
+
 Memory Management and Command Submission
 ========================================
 
-- 
2.36.1

