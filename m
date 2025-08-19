Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9449EB2C7F8
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 17:07:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D210510E1BF;
	Tue, 19 Aug 2025 15:07:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pq+bVNyj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D232410E1BF;
 Tue, 19 Aug 2025 15:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755616055; x=1787152055;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DEC1TgMp2pcpoPdbnb+9sRNrw3Bq3pThC7/2ZLjnt+I=;
 b=Pq+bVNyjtl+qxV+UUvCfH+xLCxKAe2ULLWROHLJQNaI8MQAr3v4keyzI
 VVkisbLteqRZK5arp2vLcOCMJwkvISMV3KwjXgYHT1jZMDn/RgIIEuR1/
 99gq0hVmbknUtQu1idaYlu13FWpspZDg8/qlQoGue6RqUcvaMKMvljaX4
 6/krBmQGqdr9JZOekyDsNfqVYX8KivYww5uI6u4+qYb+3ISEPq+bmZQYD
 OMJLvIkjNS8MGfOFjek2v8lkJ7qiVPZbwQQSkCtv2vcmf2FJznZKU472y
 AnDJM11U3icrDIqJHm5tN7y/FpGcX+/j75GcPmdNrndQNzCW8HEMpJcaO Q==;
X-CSE-ConnectionGUID: l8FqWBDHTxuNAupTCHlggg==
X-CSE-MsgGUID: 0bEWISWjQOqXvAzaPsmyEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="75435647"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="75435647"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 08:07:34 -0700
X-CSE-ConnectionGUID: UjdzZ6JKTqiMHwMB5Xrqlw==
X-CSE-MsgGUID: 6yBgTWlUQWqoPvTLr53TlQ==
X-ExtLoop1: 1
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa003.fm.intel.com with ESMTP; 19 Aug 2025 08:07:33 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/hdcp: Remove the encoder check in hdcp enable
Date: Tue, 19 Aug 2025 20:37:29 +0530
Message-Id: <20250819150729.88561-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

Remove the intel_encoder NULL check from _intel_hdcp_enable with
all the changes it has gone through this check has become unnecessary
since at this point the connector is supposed to have the encoder
in it.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 42202c8bb066..e11cf26ed0bf 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2446,12 +2446,6 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
 	if (!hdcp->shim)
 		return -ENOENT;
 
-	if (!connector->encoder) {
-		drm_err(display->drm, "[CONNECTOR:%d:%s] encoder is not initialized\n",
-			connector->base.base.id, connector->base.name);
-		return -ENODEV;
-	}
-
 	mutex_lock(&hdcp->mutex);
 	mutex_lock(&dig_port->hdcp.mutex);
 	drm_WARN_ON(display->drm,
-- 
2.34.1

