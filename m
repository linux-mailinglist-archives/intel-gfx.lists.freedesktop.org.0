Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0989284F917
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 17:03:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD1FB10F6A7;
	Fri,  9 Feb 2024 16:03:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jHJu8In0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5E6B10F6A9
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Feb 2024 16:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707494580; x=1739030580;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=73emieVFNpLpBnMfCl9FzXFYEQADAup7ZRryVxsYANw=;
 b=jHJu8In0mRojf35WniDUa8A+m9nNkDWfl88T1+rBXnuiNA6xjDoMzDln
 gDtJ1yX+xlR0vnw+5iEPA4Rc8HcnB3jFn2keT1MQ2E+mCWoAcJkXdHp65
 94A14Dtn5VAryIqTFGPZ0TlmDz0NGm+VzvjD9ZSBOMv8ZZbpjD9xOIeeR
 uPPUCbDme+L4K2MOCeQYKdF36s91gq0swuOOFBoJPzXEhbdIPUf//OCPy
 K+1OpaPo75LwHf41GA/tviD7HvmHe/R6aoB0fnzgn8LZWxBTn5BhSkdek
 pgY/fwo9TZ+QAAeitCFENNirFJtZ3vhZIqki74BQLyAnh3rcSKWzKzlmj w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="5246816"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; 
   d="scan'208";a="5246816"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 08:02:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; 
   d="scan'208";a="2006496"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.66.155])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 08:02:58 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 1/2] drm/i915: Prevent HW access during init from SDVO TV
 get_modes hook
Date: Fri,  9 Feb 2024 18:03:15 +0200
Message-Id: <20240209160316.2160747-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Prevent accessing the HW from the SDVO/TV get_modes connector hook.
Returning 0 from the hook will make the caller -
drm_helper_probe_single_connector_modes() - return a default/EDID
override mode list to users. This matches the case where
intel_sdvo_get_tv_modes() fails to retrieve the current mode list due to
a HW access failure.

v2: Clarify the commit message wrt. which modes get_modes() returns. (Jouni)

Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20240208111838.1950411-1-imre.deak@intel.com
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 412c15d32f07e..c67605059aa3e 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2312,6 +2312,9 @@ static int intel_sdvo_get_tv_modes(struct drm_connector *connector)
 	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s]\n",
 		    connector->base.id, connector->name);
 
+	if (!intel_display_driver_check_access(i915))
+		return 0;
+
 	/*
 	 * Read the list of supported input resolutions for the selected TV
 	 * format.
-- 
2.39.2

