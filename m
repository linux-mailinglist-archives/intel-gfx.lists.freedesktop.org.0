Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C49A2C3BB
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 14:36:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D23610EB01;
	Fri,  7 Feb 2025 13:35:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q/4vDoJc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2B8310E325;
 Fri,  7 Feb 2025 13:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738935341; x=1770471341;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5CKc4sQb7UaiQzw21YxfzRTTQ7qslAgeCM83cW8cjjQ=;
 b=Q/4vDoJc1zD8b5aT0W+A0q83Z6wNUb88KSPXEIkhoh4ICMhObKokesfF
 OSi9DI9gthoiIWnLNqLF2iE4wBMkbcw+YVROc70A75qkF73JkNbTBWVcI
 EKMa4f1atNkE0nW2lrTJufTZz+BdWJhjuql8Yrl5iKTtt11C21kqI5xFT
 bpG8VKyX+PgAew7z9zPqg8xKdV5dxTVIbyCbH2hFR2nkOfnGkZ+feBFqW
 mJdS4n2P87Oh+NkRNYDsSYqxeibpj9SAd/q+YbdFWkbmcSN7TGG247Ezy
 EyZzwt2UDo61m9FhgOIhSwGegS+jmy3kr1R6I3pbOrHrtHQS8xqbhZNg/ Q==;
X-CSE-ConnectionGUID: Ugj+jlHGRg27tEAPx+Zvpw==
X-CSE-MsgGUID: ctl96b14RBKksUfT+PNKhQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="43496356"
X-IronPort-AV: E=Sophos;i="6.13,267,1732608000"; d="scan'208";a="43496356"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 05:35:40 -0800
X-CSE-ConnectionGUID: LILtAh8ASdqskARZFN0lpg==
X-CSE-MsgGUID: V9Ui0kgZQoWX6xIM+LcRjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116728149"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 05:35:38 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 2/3] drm/i915/reg: Remove some extra blank lines
Date: Fri,  7 Feb 2025 15:35:21 +0200
Message-Id: <43183b2a681a24ee1ebcfd5cab847bb8acfc5d65.1738935286.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1738935286.git.jani.nikula@intel.com>
References: <cover.1738935286.git.jani.nikula@intel.com>
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

Remove some blank lines from i915_reg.h primarily to help the scripted
refactoring coming up, keeping the comments together.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index da658c3591f0..6e80508b544c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1016,7 +1016,6 @@
 /*
  * Overlay regs
  */
-
 #define OVADD			_MMIO(0x30000)
 #define DOVSTA			_MMIO(0x30008)
 #define OC_BUF			(0x3 << 20)
@@ -1071,7 +1070,6 @@
 /*
  * Display engine regs
  */
-
 /* Pipe/transcoder A timing regs */
 #define _TRANS_HTOTAL_A		0x60000
 #define _TRANS_HTOTAL_B		0x61000
@@ -2781,7 +2779,6 @@
  * functionality covered in PCH_PORT_HOTPLUG is split into
  * SHOTPLUG_CTL_DDI and SHOTPLUG_CTL_TC.
  */
-
 #define SHOTPLUG_CTL_DDI				_MMIO(0xc4030)
 #define   SHOTPLUG_CTL_DDI_HPD_ENABLE(hpd_pin)			(0x8 << (_HPD_PIN_DDI(hpd_pin) * 4))
 #define   SHOTPLUG_CTL_DDI_HPD_OUTPUT_DATA(hpd_pin)		(0x4 << (_HPD_PIN_DDI(hpd_pin) * 4))
@@ -2861,7 +2858,6 @@
 #define  TRANS_DPLL_ENABLE(pipe)	(1 << ((pipe) * 4 + 3))
 
 /* transcoder */
-
 #define _PCH_TRANS_HTOTAL_A		0xe0000
 #define _PCH_TRANS_HTOTAL_B		0xe1000
 #define PCH_TRANS_HTOTAL(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_HTOTAL_A, _PCH_TRANS_HTOTAL_B)
@@ -3787,7 +3783,6 @@ enum skl_power_gate {
 /*
  * SKL Clocks
  */
-
 /* CDCLK_CTL */
 #define CDCLK_CTL			_MMIO(0x46000)
 #define  CDCLK_FREQ_SEL_MASK		REG_GENMASK(27, 26)
-- 
2.39.5

