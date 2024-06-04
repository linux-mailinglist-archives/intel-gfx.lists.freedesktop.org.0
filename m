Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB59C8FB711
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:28:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAAB110E4F8;
	Tue,  4 Jun 2024 15:28:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NEXoDhib";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5D4210E4EA
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514899; x=1749050899;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cwXvhefYBasMl3QJ+9GZWMpd7Zx9fGjBDJuElak7Z5I=;
 b=NEXoDhibp4JQSS2/bmwLIeMhlilYLB33B0Ma8KHb8r0AWi2Ftn07dtnD
 7bjT9zXbDzKFTpdAMZRCL1YpV2oLOidjW11j9Qe9e2C75MXCuas1WyKAF
 QOg4gxLqmhjQQU6wmDNe0dzkwpJaMsErVnyDyW1yDIggqbPTLcEHizMIE
 3ggfN+7tXUMpvu24riECiAKeKDBG926mLcOheZJf9SIy8USfzjHei6C1A
 9F3WUZF1Gl49TnDWCe8RjKrbTSLTsdkrsrDkjdl5LbuvxIV+ZatL1F8gb
 d+/3wBmndVWsPjfN7GI0YMnNLbSmbkbWUN4YkGJ3MevK+imGDE4B1YMEq A==;
X-CSE-ConnectionGUID: sAFnQYgJRxKdHjUE4SxYXA==
X-CSE-MsgGUID: ZJIiWKMJSi+R+urRYDeJcA==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14225637"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="14225637"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:28:19 -0700
X-CSE-ConnectionGUID: t9D1BulMQBij+y0yhQAeMQ==
X-CSE-MsgGUID: jKtbqRgJRYKO9gBPdoG8Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37278015"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:28:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 23/65] drm/i915: pass dev_priv explicitly to PIPE_ARB_CTL
Date: Tue,  4 Jun 2024 18:25:41 +0300
Message-Id: <e75e80bd96e05ece6b82c0bdb509527ab2dd0e6d.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
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
explicitly to the PIPE_ARB_CTL register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h              | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9434eba91839..48ee8aee21be 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -439,7 +439,7 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
 
 	/* Wa_22012358565:adl-p */
 	if (DISPLAY_VER(dev_priv) == 13)
-		intel_de_rmw(dev_priv, PIPE_ARB_CTL(pipe),
+		intel_de_rmw(dev_priv, PIPE_ARB_CTL(dev_priv, pipe),
 			     0, PIPE_ARB_USE_PROG_SLOTS);
 
 	if (DISPLAY_VER(dev_priv) >= 14) {
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0aaceedf77dc..1b2c0d650bff 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1883,7 +1883,7 @@
 #define PIPESTAT(dev_priv, pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEASTAT)
 
 #define _PIPE_ARB_CTL_A			0x70028 /* icl+ */
-#define PIPE_ARB_CTL(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPE_ARB_CTL_A)
+#define PIPE_ARB_CTL(dev_priv, pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPE_ARB_CTL_A)
 #define   PIPE_ARB_USE_PROG_SLOTS	REG_BIT(13)
 
 #define _PIPE_MISC_A			0x70030
-- 
2.39.2

