Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E64DF8BD4EC
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 20:52:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3EA311232A;
	Mon,  6 May 2024 18:52:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BEMS34oE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
 [209.85.208.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02EA010FB58;
 Mon,  6 May 2024 18:52:52 +0000 (UTC)
Received: by mail-lj1-f172.google.com with SMTP id
 38308e7fff4ca-2dac77cdf43so28856721fa.2; 
 Mon, 06 May 2024 11:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1715021571; x=1715626371; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=f0QvNqI6ozGKzcwhVEd7jEpZyu1Beg9BVayqihqpcmk=;
 b=BEMS34oECqPTUuBwZfQXO+uQHFONyvikreDGcO0iR0uY51YWav0iPFggOizf+t0yvX
 b7Mi08lLV6lfHPeUiQMVGAjbp0hW0+1reghWDcVZsKL0waRGc3SLjLkdaBqSnH6Vjhns
 Q3Dlt3rIRemliSsz5DbxJQyHzKvJ/tZ1mB8Mp7pYixpTifs/iOlsGaDrDGJODWig9LSN
 E9RtAsIm63/izfAGA1d3Xn80KAiSAPXPzQV4wv8mTxuMeIbJuqmj+6CU3ooc52O1WSUE
 wUvuuIppJbTacgEN17CDA96dG4bE8VHQ0IPOKv6PRjFMayGcs5baIXh6bIyoVqKol4NL
 YNiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715021571; x=1715626371;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=f0QvNqI6ozGKzcwhVEd7jEpZyu1Beg9BVayqihqpcmk=;
 b=sO843IXxUiUKyvbcvR99PmPh3tttILcHoIbIeoKMQSCnvCt2/QWZLY/igtKMOU4+oY
 YHBZTZ5BagGAWpV3E0WoOM5b/LZF+oGBcJdjqmcE8NF1dYis0UmzrYuT85cPTl8OQ3Id
 duzjoM2sQ2pmUeduZmLb/DwlJ0F6Scmuy13lGZxjQF48EBoHrlgxXQ/VGP8TBE9THhf5
 BHmGa8AWBj2oiXDDv2jJIwO0wau1fzdakpugI9oBWLPFcphL9lhmj+UoVTDUy8uUHNaq
 hVLbD2b9mkwzj2EHOpJP6GNRcuxsarQdmtNrtclFsRazdOpZyW4fOiUlosscCSb1UfLR
 Ic7Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCX01VdYIRwp3F72OZCBJerEnYiCFC8cY+P1/c+6tIpIhHehFG9Ru3wwkwLXyxOPqpzdVRO/2qZZGO9ODnCG8hWXegLWqo5NEUUmmGDE8EWf
X-Gm-Message-State: AOJu0YzzY1Cfq3fEhcaRbcXGViS14uFuSP219qMsgpNH73Jgb/CDI7UP
 MM2s2g7C5nZ+ZQcb/1KdYgjxpxb42EJ+FhuLZxW15Ur5T71ElHmmOW4P9uFaVsrDJQ==
X-Google-Smtp-Source: AGHT+IEPKZZvKMLHEVDhmvhBnn8TQZCwLpInhMlCYT06mgEVgH3GBjrk2HA/PrrLWHtNztjSnxWbwQ==
X-Received: by 2002:a2e:8e66:0:b0:2e1:a9a6:ad39 with SMTP id
 t6-20020a2e8e66000000b002e1a9a6ad39mr6566468ljk.49.1715021570540; 
 Mon, 06 May 2024 11:52:50 -0700 (PDT)
Received: from jheikkil-mobl1.. (91-156-196-125.elisa-laajakaista.fi.
 [91.156.196.125]) by smtp.gmail.com with ESMTPSA id
 c11-20020a05651c014b00b002dcdeb98653sm1673945ljd.8.2024.05.06.11.52.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 May 2024 11:52:49 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 "Chery, Nanley G" <nanley.g.chery@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Graunke, Kenneth W" <kenneth.w.graunke@intel.com>,
 "Souza, Jose" <jose.souza@intel.com>,
 "Mathew, Alwin" <alwin.mathew@intel.com>,
 "Zhang, Jianxun" <jianxun.zhang@intel.com>,
 "Syrjala, Ville" <ville.syrjala@linux.intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>
Subject: [RFC PATCH 1/3] drm/fourcc: define Intel Xe2 related tile4 ccs
 modifier
Date: Mon,  6 May 2024 21:52:36 +0300
Message-Id: <20240506185238.364539-2-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240506185238.364539-1-juhapekka.heikkila@gmail.com>
References: <20240506185238.364539-1-juhapekka.heikkila@gmail.com>
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

Add Tile4 type ccs modifier to indicate presence of compression on Xe2

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 include/uapi/drm/drm_fourcc.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
index 84d502e42961..50db2cc89642 100644
--- a/include/uapi/drm/drm_fourcc.h
+++ b/include/uapi/drm/drm_fourcc.h
@@ -702,6 +702,18 @@ extern "C" {
  */
 #define I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC fourcc_mod_code(INTEL, 15)
 
+/*
+ * Intel Color Control Surfaces (CCS) for graphics ver. 20 render compression.
+ *
+ * The main surface is Tile 4 and at plane index 0. For semi-planar formats
+ * like NV12, the Y and UV planes are Tile 4 and are located at plane indices
+ * 0 and 1, respectively. The CCS for all planes are stored outside of the
+ * GEM object in a reserved memory area dedicated for the storage of the
+ * CCS data for all compressible GEM objects. The main surface pitch is
+ * required to be a multiple of four Tile 4 widths.
+ */
+#define I915_FORMAT_MOD_4_TILED_XE2_CCS fourcc_mod_code(INTEL, 16)
+
 /*
  * Tiled, NV12MT, grouped in 64 (pixels) x 32 (lines) -sized macroblocks
  *
-- 
2.43.2

