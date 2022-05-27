Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF0F53683C
	for <lists+intel-gfx@lfdr.de>; Fri, 27 May 2022 22:50:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FE6610F0A4;
	Fri, 27 May 2022 20:50:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFDEE10E13E
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 May 2022 20:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653684604; x=1685220604;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=MlqVsUY5oGU1miNn95XDsh+RsPQqrhKuHojoLjn23rg=;
 b=MyTqKFjGuAEJ47XScpz/UZShAcg001LIcytR64UDAOlFb0/lYmLvc5id
 3b+c+Yi/1aGlM/XYn4FKBJ7eKS6OkIpVrWx9jGxu7yrD8C7n+hgiWEW5B
 kQwNLEER92NdXPiWcsJ521SPhPOyBp+4SmQMDv+PC8PKCa4+gT1e1Y9NY
 Q7xGza2NUQGq75zB4HKwxy8rHK4hzefAvoaP0rADgPkP8/Jrf3iPCwdkV
 8CiXfYXP96z6KlbX7Qa2j4LfxFI73ZZNC4tg95wA0CjsrOk6rQQZLCJS9
 +nksn2pFopE+xqY/VKVZKRG1X/tgYIVRTpthBEO7FrI+UcENcbPszKvGZ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10360"; a="273388115"
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="273388115"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 13:50:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="560925267"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga002.jf.intel.com with SMTP; 27 May 2022 13:50:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 May 2022 23:50:01 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 May 2022 23:49:47 +0300
Message-Id: <20220527204949.2264-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220527204949.2264-1-ville.syrjala@linux.intel.com>
References: <20220527204949.2264-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/6] drm/i915/bios: Fix aggressiveness typos
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Fix various typos around "aggressiveness". Note that
the VBT spec also sometimes missspells it as
"agressiveness" so I guess that's where some of the typos
came from.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 4b98bab3b890..39109f204c6d 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -856,9 +856,9 @@ struct als_data_entry {
 	u16 lux;
 } __packed;
 
-struct agressiveness_profile_entry {
-	u8 dpst_agressiveness : 4;
-	u8 lace_agressiveness : 4;
+struct aggressiveness_profile_entry {
+	u8 dpst_aggressiveness : 4;
+	u8 lace_aggressiveness : 4;
 } __packed;
 
 struct bdb_lfp_power {
@@ -873,7 +873,7 @@ struct bdb_lfp_power {
 	u16 dmrrs;
 	u16 adb;
 	u16 lace_enabled_status;
-	struct agressiveness_profile_entry aggressivenes[16];
+	struct aggressiveness_profile_entry aggressiveness[16];
 	u16 hobl; /* 232+ */
 	u16 vrr_feature_enabled; /* 233+ */
 } __packed;
-- 
2.35.1

