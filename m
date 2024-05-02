Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1AD8B990C
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2024 12:39:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7818A10F4A5;
	Thu,  2 May 2024 10:39:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dlh2AhgH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3636C10F297
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2024 10:39:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714646372; x=1746182372;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WlAhZ5qZWL0qDyWnIslsjcANW79wzF4Gp9vdNX0cSNU=;
 b=Dlh2AhgHM0nrx4PH+IP7uRfzjZbUkVFySBm7hafEP6dQWgQ+07WsbTRY
 avFhX1XKY+ijQXFa6dX9iB8ktcJAcFqsMU/jeHpX6lyr7BVZlGTuY4tp1
 iA0AFH9qcqCKKoxqJu07Jm3kxek1wxdjE/xyWFtU1+EjUxCVZlRwBkfpP
 Kw1JZr+LBq7mXNhcZmf/mcwsj2/rHWIZpvQxkbSWFYyfKAawDU+A7UvGt
 sJQpiJuae5T+goSHglA3x+X1g6/klLYdNk0X6+kVqKkoxFQ1f8o+5scSx
 2A3cN+XRbEKylPbmUlD7frKCckXZfsX7GktIo+8WEjOHNE8HawXpJXOke w==;
X-CSE-ConnectionGUID: z2vB2ChEScqeLHVKsNW8Dw==
X-CSE-MsgGUID: ArXFrGX7RvioBJ8b8sdOhg==
X-IronPort-AV: E=McAfee;i="6600,9927,11061"; a="21095813"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="21095813"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 03:39:31 -0700
X-CSE-ConnectionGUID: 1ELRSOexRv+hNlaNKP2R5A==
X-CSE-MsgGUID: fOm/FjLQTuCI42Mw4J5+KA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="27688099"
Received: from unknown (HELO localhost) ([10.245.245.19])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 03:39:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>,
	intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com,
	jouni.hogander@intel.com
Subject: [PATCH v2] drm/i915: pass dev_priv explicitly to PSR2_SU_STATUS
Date: Thu,  2 May 2024 13:39:25 +0300
Message-Id: <20240502103925.1829104-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <dac8c4ab8b34220cdfc9d5f6109299a040ea1b40.1714471597.git.jani.nikula@intel.com>
References: <dac8c4ab8b34220cdfc9d5f6109299a040ea1b40.1714471597.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the PSR2_SU_STATUS register macro.

v2: Expand from _PSR2_SU_STATUS to PSR2_SU_STATUS (Rodrigo)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c      | 3 ++-
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 4 ++--
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 36c08cd3a624..0412a2e1d638 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3569,7 +3569,8 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 		 * frame boundary between register reads
 		 */
 		for (frame = 0; frame < PSR2_SU_STATUS_FRAMES; frame += 3) {
-			val = intel_de_read(dev_priv, PSR2_SU_STATUS(cpu_transcoder, frame));
+			val = intel_de_read(dev_priv,
+					    PSR2_SU_STATUS(dev_priv, cpu_transcoder, frame));
 			su_frames_val[frame / 3] = val;
 		}
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index e6c62512512f..5504593aa9d0 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -221,8 +221,8 @@
 
 #define _PSR2_SU_STATUS_A		0x60914
 #define _PSR2_SU_STATUS_EDP		0x6f914
-#define _PSR2_SU_STATUS(tran, index)	_MMIO_TRANS2(dev_priv, tran, _PSR2_SU_STATUS_A + (index) * 4)
-#define PSR2_SU_STATUS(tran, frame)	(_PSR2_SU_STATUS(tran, (frame) / 3))
+#define _PSR2_SU_STATUS(dev_priv, tran, index)	_MMIO_TRANS2(dev_priv, tran, _PSR2_SU_STATUS_A + (index) * 4)
+#define PSR2_SU_STATUS(dev_priv, tran, frame)	(_PSR2_SU_STATUS(dev_priv, tran, (frame) / 3))
 #define PSR2_SU_STATUS_SHIFT(frame)	(((frame) % 3) * 10)
 #define PSR2_SU_STATUS_MASK(frame)	(0x3ff << PSR2_SU_STATUS_SHIFT(frame))
 #define PSR2_SU_STATUS_FRAMES		8
-- 
2.39.2

