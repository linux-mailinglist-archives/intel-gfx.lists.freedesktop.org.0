Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E83C9894F19
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 11:50:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E19A10FBE0;
	Tue,  2 Apr 2024 09:50:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R3+e5Z6E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B943B10FBE0
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 09:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712051453; x=1743587453;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0VdPsAhZ8bezeXIa3TvoyyqN0QBZ2YJTkmYekM66S4M=;
 b=R3+e5Z6Euduf4SfgyhuQ//pgmfWWiclBwPJkThjOm3EO2CSb+zvLCRb0
 +1t2JYsVJ/580SzWAooBHdnbSfqbCLJ8yxtxvKHCYn0RqJj5Mdc3+bV2D
 Ws08llZjFMDcuXXifS8ldIdlaKDpX5bZweTfon1UjH0l+VVgb6M05VZG2
 7HQitvflvPkPEYP1BAb0+toghVlUhfTqIu6VWIqEOdMObm/+EwstA8p0G
 L+axEVDmqkagmeE7mkGKHHpJC4TBni7Z4ZysTeknN3qVpS1l1w1YY1q1Y
 onrMrk9E/Wks46ZAtvZakrwNLvXJdQtkFYrnSU8ZyQmpQKGuyb0spQJgL A==;
X-CSE-ConnectionGUID: HEEHamtWSn6B9ILrpQbZ5w==
X-CSE-MsgGUID: f9BIV3CQSBuhcVsE73wA7g==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="7422677"
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; 
   d="scan'208";a="7422677"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 02:50:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="22693419"
Received: from sudhirj1-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.34.252])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 02:50:51 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 17/19] drm/i915/psr: Update PSR module parameter
 descriptions
Date: Tue,  2 Apr 2024 12:50:09 +0300
Message-Id: <20240402095011.200558-18-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240402095011.200558-1-jouni.hogander@intel.com>
References: <20240402095011.200558-1-jouni.hogander@intel.com>
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

We are re-using PSR module parameters for panel replay. Update module
parameter descriptions with panel replay information:

enable_psr:

-1 (default) == follow what is in VBT
0 == disable PSR/PR
1 == Allow PSR1 and PR full frame update
2 == allow PSR1/PSR2 and PR Selective Update

enable_psr2_sel_fetch

0 == disable selective fetch for PSR and PR
1 (default) == allow selective fetch for PSR PR

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_params.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index c8e3d6892e23..b798933683be 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -105,7 +105,8 @@ intel_display_param_named_unsafe(enable_fbc, int, 0400,
 
 intel_display_param_named_unsafe(enable_psr, int, 0400,
 	"Enable PSR "
-	"(0=disabled, 1=enable up to PSR1, 2=enable up to PSR2) "
+	"(0=disabled, 1=enable up to PSR1 and Panel Replay full frame update, "
+	"2=enable up to PSR2 and Panel Replay Selective Update) "
 	"Default: -1 (use per-chip default)");
 
 intel_display_param_named(psr_safest_params, bool, 0400,
@@ -115,7 +116,7 @@ intel_display_param_named(psr_safest_params, bool, 0400,
 	"Default: 0");
 
 intel_display_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
-	"Enable PSR2 selective fetch "
+	"Enable PSR2 and Panel Replay selective fetch "
 	"(0=disabled, 1=enabled) "
 	"Default: 1");
 
-- 
2.34.1

