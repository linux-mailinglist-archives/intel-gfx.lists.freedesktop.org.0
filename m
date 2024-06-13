Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E0C9068D7
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 11:33:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D415910E9E4;
	Thu, 13 Jun 2024 09:33:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VqtlwKbs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA4C810E9DF
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2024 09:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718271190; x=1749807190;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zcxA+yKC/QGs3GEzAGIfsUEJfZzrqeHO1l4zMGGz1ag=;
 b=VqtlwKbs3yOykcBVysiFRl7bOjtJBhKUn0N7hbsy5tEa2gM52XuZlkOi
 drang3/ZKmYl0q/ld7IHyyeeLh8KWoqhoCr1T9iQu0YYlJrGIx2qvMCgF
 b3Y5qQUVaGXcjjgBaFG776Iw39zL1b73vrnS4yo16Djglqvcl8smtGUJx
 PIBde/IGvK0OwvmBX8xYT3/UnjEolVbONbIik+QnEoP2FmNpTjO/vtgNx
 uFfmu9ilT9rR4sZIReFy9bouQHt/958BfQ8BLTk7Qa9hyD+nwgMsPNWuI
 1D7B0ZM9kG1fnFYvzvJ2Qvjpiszft9suPX8AbwRIFU+n9xDWklqm2FFss A==;
X-CSE-ConnectionGUID: hxXCxJ5aSQmf6P2JDIMKdw==
X-CSE-MsgGUID: 5ZKxX8QcSZSh9Hxr5nypdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="14802507"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="14802507"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:33:10 -0700
X-CSE-ConnectionGUID: idYsje/0TXOwJY3WEUk2hg==
X-CSE-MsgGUID: B7qWzsmvQSGZzI20zKaMcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="44523403"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.31])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:33:08 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v8 11/20] drm/i915/psr: Inform Panel Replay source support on
 eDP as well
Date: Thu, 13 Jun 2024 12:32:30 +0300
Message-Id: <20240613093239.1293629-12-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240613093239.1293629-1-jouni.hogander@intel.com>
References: <20240613093239.1293629-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Display version >= 20 support eDP 1.5. Inform Panel Replay source support
on eDP for display version >= 20.

Bspec: 68920

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 6f1aa6d440fb..a3d870e79012 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3112,9 +3112,11 @@ void intel_psr_init(struct intel_dp *intel_dp)
 		return;
 	}
 
-	if (HAS_DP20(dev_priv) && !intel_dp_is_edp(intel_dp))
+	if ((HAS_DP20(dev_priv) && !intel_dp_is_edp(intel_dp)) ||
+	    DISPLAY_VER(dev_priv) >= 20)
 		intel_dp->psr.source_panel_replay_support = true;
-	else
+
+	if (HAS_PSR(dev_priv) && intel_dp_is_edp(intel_dp))
 		intel_dp->psr.source_support = true;
 
 	/* Set link_standby x link_off defaults */
-- 
2.34.1

