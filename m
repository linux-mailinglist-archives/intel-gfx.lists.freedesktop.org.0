Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA044DCC8C
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 18:34:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AA5710E7F5;
	Thu, 17 Mar 2022 17:34:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A9A210E7F5
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 17:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647538441; x=1679074441;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YH8UtWNNZEEu4Ib3il/UNlApYZNnKiUTTogPV+gtrDA=;
 b=aRtPjRhbK6pvUGDxagdHtFPoMB8E47w+aCJj+AgqqDogmd/nhOAlTzyJ
 vyCpOH1emDoqdWijWFw1AeG9AosvfkYg6IkDdSYAhVrwpzflonIVozLsv
 F1v/jOlP/x1jX9eHY62lLZdStaDPzN3x5J5Q0SgsQwOGwMyevcMhH5IfG
 ijklxMN3yxVWN5dnlKyZ1FOHr8ZE4oEygr0Kk+YWXx74RhpIPNHyClMwZ
 d0MdgfnBPnh3CMnGn1ABf+T2H3oLempkjYVbjZt9K2IxlR3wYuG6AtJNK
 lBK/2bXX4MlZku+xVRDHU2129YOhrSot1b5pr5eJxIlS3ccX0944qhWNJ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="343363773"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="343363773"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 10:34:00 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="558030612"
Received: from unknown (HELO localhost) ([10.252.58.37])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 10:33:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 19:33:55 +0200
Message-Id: <20220317173355.336835-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/sdvo: prefer __packed over
 __attribute__((packed))
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The kernel preference is to use the __packed macro instead of the direct
__attribute__.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 158e750e5b4d..328a8f20c63b 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -283,7 +283,7 @@ static bool intel_sdvo_read_byte(struct intel_sdvo *intel_sdvo, u8 addr, u8 *ch)
 static const struct {
 	u8 cmd;
 	const char *name;
-} __attribute__ ((packed)) sdvo_cmd_names[] = {
+} __packed sdvo_cmd_names[] = {
 	SDVO_CMD_NAME_ENTRY(RESET),
 	SDVO_CMD_NAME_ENTRY(GET_DEVICE_CAPS),
 	SDVO_CMD_NAME_ENTRY(GET_FIRMWARE_REV),
-- 
2.30.2

