Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDD3851C16
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Feb 2024 18:52:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BB0510EE4E;
	Mon, 12 Feb 2024 17:52:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cppbbcEj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57A8410EE4F
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Feb 2024 17:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707760339; x=1739296339;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jlxElih44f68Z4AkfTT0DGgBRk1/DCNyAD+0SNMsZrA=;
 b=cppbbcEj+yjp+2tSl7Nvfz+s+Mb3kPXMhjicdDTj6lGoQlZIiDuojJaN
 xoYwkLV1d/I9nm0TJ/Ca2gjMGEb8wFFfmW2jYOqRgBs7+7FEjpRxpYlJ2
 ZVmAJdK3pdiqvvhMSkVXuODVEZavRxb0a9j+ZKgdigrc111iIEdaTnRVo
 8e/hXOJLjZnu0WIWWUH7xuEIsKjkPP3bQCuOFHer4wpg5IOZ9KnP6jJjf
 KQzGiP/vON6jTNNH0K7ZNLCzkvXXI//tCodYufZ1WMVBIOD+DOaQ1eRlL
 tZwp/hSFuMv8z8J9geuP1MmepEY6JufdRnSygIBq5OIiD2ubEi/ptlUFh w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="1629532"
X-IronPort-AV: E=Sophos;i="6.06,155,1705392000"; 
   d="scan'208";a="1629532"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 09:52:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,155,1705392000"; d="scan'208";a="40114733"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 09:52:18 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [CI 1/2] drm/i915: Prevent HW access during init from SDVO TV
 get_modes hook
Date: Mon, 12 Feb 2024 19:52:36 +0200
Message-Id: <20240212175237.2625812-1-imre.deak@intel.com>
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

