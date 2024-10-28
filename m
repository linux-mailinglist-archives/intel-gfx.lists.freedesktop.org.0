Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF849B290B
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 08:43:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01AB710E363;
	Mon, 28 Oct 2024 07:43:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LIhqjnzA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 219D010E363;
 Mon, 28 Oct 2024 07:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730101435; x=1761637435;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=giLV/5gVeQZ4L+PtFXS+zd+ju3MLTzk751FoClVSP/I=;
 b=LIhqjnzA+xh2yjrSC67Me1srYr7KVbjZiVhXgNX7kWA6dHSiNfJQ1FtN
 Xso3ejn6uEjEtc7sOMmo87s8IWqRqYidGPXfQ4QOQBzBahY0YfjzPYbwb
 L+fPeADRTz7CBPjmRtmG0oaNwRzsRouFhLjZreLkzxmzhxz/gcHheo1fQ
 uwqmwFiMocS2dxLpoWaJc2/6bH6RrGaieSPPk1o503loWofJYjtkvcgG1
 wOCoFMplPjQrgCkNeRsWR9F4eX5yceBgbF3v21WReWU5i3pnmgJ3zyV7/
 dLuDJ4ATsUCK9tYkioVHCoqQ+8xH9z0cSovZ1jMywUwahJTqdryn4E29l g==;
X-CSE-ConnectionGUID: n9XFOnkuTPO9TjfC58RlOg==
X-CSE-MsgGUID: swgTmIeoTS2/V/Apm7hxTw==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="29799364"
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="29799364"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 00:43:55 -0700
X-CSE-ConnectionGUID: wPgdHIZtStKL3ed7oa4M5Q==
X-CSE-MsgGUID: HEn3wVqRSO+pucw+EJcQNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="81643550"
Received: from unknown (HELO kandpal-X299-UD4-Pro.iind.intel.com)
 ([10.190.239.10])
 by fmviesa008.fm.intel.com with ESMTP; 28 Oct 2024 00:43:53 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, matthew.d.roper@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/3] drm/i915/psr: Change psr size limits check
Date: Mon, 28 Oct 2024 13:13:32 +0530
Message-Id: <20241028074333.182041-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241028074333.182041-1-suraj.kandpal@intel.com>
References: <20241028074333.182041-1-suraj.kandpal@intel.com>
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

Change the check to only check for psr size limits till Pre-Xe2
since after that the psr size is equal to maximum pipe size anyways.

--v2
-Check only size limit until pre-Xe2 [Matt]

Bspec: 69885, 68858
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4176163ec19a..7bc64eae9c8e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1453,11 +1453,11 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (DISPLAY_VER(display) >= 12) {
+	if (IS_DISPLAY_VER(display, 12, 14)) {
 		psr_max_h = 5120;
 		psr_max_v = 3200;
 		max_bpp = 30;
-	} else if (DISPLAY_VER(display) >= 10) {
+	} else if (IS_DISPLAY_VER(display, 10, 11)) {
 		psr_max_h = 4096;
 		psr_max_v = 2304;
 		max_bpp = 24;
-- 
2.34.1

