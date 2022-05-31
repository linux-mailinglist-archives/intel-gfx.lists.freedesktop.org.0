Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 759115396DB
	for <lists+intel-gfx@lfdr.de>; Tue, 31 May 2022 21:19:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C52DD10E207;
	Tue, 31 May 2022 19:19:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E86CC10E25B
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 May 2022 19:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654024740; x=1685560740;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=anzpidqpvdNQlISFn8NVbS22VaVIo1saTzhseq/NfNY=;
 b=ITyAiWnI3ne+nWBElq5KlwtIJS2CCYs6PUtFmhuXVA/rod9r6zqqLhDD
 YTcUu9EVcuHJEeuTKkbmfW7gJ3axD8s0VB+Jm8vHJfS0xOhCuDBgUVQD7
 WWUoQ2RRVV5c8aF+1mNOVd+//XBk0Avrz52UXmU/8O+iUQB/+fumvOvTP
 D8VtVkKOfohbti2xJEmr8ICM3IV1ktzgZ7D60tIYP9mSwDWZ9sgC38L0k
 spbtcbjLE+NA/3NagWM7eIWnZ4ZN+BsbAxqO7XzyNsmJy5/iwp2dgnP82
 BvZMUwJ+5VQw4ACkYr/Sj3MKIQXkt8EAOZpQ4okzheKCXwkWfnQaSBUVi g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10364"; a="272930537"
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="272930537"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 12:19:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="605843105"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga008.jf.intel.com with SMTP; 31 May 2022 12:18:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 31 May 2022 22:18:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 May 2022 22:18:42 +0300
Message-Id: <20220531191844.11313-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220531191844.11313-1-ville.syrjala@linux.intel.com>
References: <20220531191844.11313-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/6] drm/i915/bios: Fix aggressiveness typos
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Fix various typos around "aggressiveness". Note that
the VBT spec also sometimes missspells it as
"agressiveness" so I guess that's where some of the typos
came from.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
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

