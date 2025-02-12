Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0325A32DB7
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 18:43:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3284C10E949;
	Wed, 12 Feb 2025 17:43:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BGT3OrDG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B57F910E93E;
 Wed, 12 Feb 2025 17:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739382227; x=1770918227;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VTVaCHXXcWNBK+rc5wG5//Zqd4Y/KK+Z5sqxoM/ndy4=;
 b=BGT3OrDGUBYioyMZbglKTOXNXDb03VNmK8Dh5GFy4PwMAPHFBrYp6PnF
 Ujm4qZVTSZ5KFu+Cwzg06KWSYRbfOEHtv8a4k6Z6nq/fgoR5LWgWWbYpV
 suoUp9QexQx4IsiYg993zQH9gittWRihTkULRRiJk8KbKVL86Fw0NSKQn
 SSqg4UboPKdmgSW5a7C3llBTdjUnRVIzGJtKxInpYB/Ry5nhDiuecbdFO
 ikvYBCqjU/krlg9JHdzGme3JFWORofGV2yETsLOP/+X5DKrr3zAdTPqLE
 lnAjfeY/84PJ1KuFYdr0kb3XBUiVlcBHW5Im48z/8V6cNK/wHnorVrxsE g==;
X-CSE-ConnectionGUID: 89jPFHhLQ0CKJPVTYT0pCA==
X-CSE-MsgGUID: sQbX5nryQAy959ams+DNyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="40180085"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="40180085"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 09:43:47 -0800
X-CSE-ConnectionGUID: 8gAJrZwGS+Obe/HTSAN5DQ==
X-CSE-MsgGUID: zMFqG6qsROetHHQ60/O+Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="150069139"
Received: from dnelso2-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.108.97])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 09:43:46 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 1/2] drm/i915/display: Use explicit cast in
 POWER_DOMAIN_*() macros
Date: Wed, 12 Feb 2025 14:43:16 -0300
Message-ID: <20250212174333.371681-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250212174333.371681-1-gustavo.sousa@intel.com>
References: <20250212174333.371681-1-gustavo.sousa@intel.com>
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

Let the compiler know that we are intetionally using a different enum
type to perform arithmetic with enum intel_display_power_domain in the
POWER_DOMAIN_*(). Do that by explicitly casting the macro argument to
int.

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202502120809.XfmcqkBD-lkp@intel.com/
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index a3a5c1be8bab..3caa3f517a32 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -117,12 +117,12 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_INVALID = POWER_DOMAIN_NUM,
 };
 
-#define POWER_DOMAIN_PIPE(pipe) ((pipe) + POWER_DOMAIN_PIPE_A)
+#define POWER_DOMAIN_PIPE(pipe) ((int)(pipe) + POWER_DOMAIN_PIPE_A)
 #define POWER_DOMAIN_PIPE_PANEL_FITTER(pipe) \
-		((pipe) + POWER_DOMAIN_PIPE_PANEL_FITTER_A)
+		((int)(pipe) + POWER_DOMAIN_PIPE_PANEL_FITTER_A)
 #define POWER_DOMAIN_TRANSCODER(tran) \
 	((tran) == TRANSCODER_EDP ? POWER_DOMAIN_TRANSCODER_EDP : \
-	 (tran) + POWER_DOMAIN_TRANSCODER_A)
+	 (int)(tran) + POWER_DOMAIN_TRANSCODER_A)
 
 struct intel_power_domain_mask {
 	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
-- 
2.48.1

