Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4643781098
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 18:41:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BD0110E0BF;
	Fri, 18 Aug 2023 16:41:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5838C10E0CF
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 16:41:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692376908; x=1723912908;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eos6xE67/MTat/Rx8TmaEG3EoGj/Yb37tOj3Wsu4jHA=;
 b=cAOH+HlHZe5R7UZUSX7ZwlHHVkNYExGTVYTD+v/kBt6wD+D4Spdkyckj
 9Ho1LC1y/AdsVAzbWaDSZGbLcMvcn8et2q/9J6BIcblwS1CYvMwkjmA29
 Pao75Yz+1n3+4r5bsHUEnX5NJYl+1JDzcYErceiKv7XKE0a0hsuWVbdbm
 Ska1Q7Tffef1pzjLRPO1hj6ogKBUYFnOKu2s6wFI8nzTHJ3nG/E8u8Ac/
 UjPz8Nxrv2HysZu9Aer5BPUfDBMhyFR9wCeGs0Vv5JVs5+vO7imqoEgHi
 se/MWiQx6LKMO2HgK43uLim6IyiZ87TXPK7Pi+tO7Hg8cO4KxrVcN4HZG g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="370600415"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="370600415"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 09:41:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="728653621"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="728653621"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga007.jf.intel.com with ESMTP; 18 Aug 2023 09:41:46 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Aug 2023 19:41:41 +0300
Message-Id: <20230818164142.27045-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230818164142.27045-1-stanislav.lisovskiy@intel.com>
References: <20230818164142.27045-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Update mbus in
 intel_dbuf_mbus_update and do it properly
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

According to BSpec we need to do correspondent MBUS updates before
or after DBUF reallocation, depending on whether we are reducing
or increasing amount of pipes(typical scenario is swithing between
multiple and single displays).

As of BSpec 49213 if we are swithing from multiple to single display
MBUS registers should be updated with correspondent values _before_
Dbuf reallocation happens, however if we are switching from single
display to multiple then it should happen _after_ DDB reallocation(i.e
plane programming).

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 063929a42a42f..af99f2abd8446 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3474,7 +3474,7 @@ int intel_dbuf_init(struct drm_i915_private *i915)
  * Configure MBUS_CTL and all DBUF_CTL_S of each slice to join_mbus state before
  * update the request state of all DBUS slices.
  */
-static void update_mbus_pre_enable(struct intel_atomic_state *state)
+static void intel_dbuf_mbus_update(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	u32 mbus_ctl, dbuf_min_tracker_val;
@@ -3524,7 +3524,9 @@ void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
 
 	WARN_ON(!new_dbuf_state->base.changed);
 
-	update_mbus_pre_enable(state);
+	if (hweight8(new_dbuf_state->active_pipes) <= hweight8(old_dbuf_state->active_pipes))
+		intel_dbuf_mbus_update(state);
+
 	gen9_dbuf_slices_update(i915,
 				old_dbuf_state->enabled_slices |
 				new_dbuf_state->enabled_slices);
@@ -3545,6 +3547,9 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
 
 	WARN_ON(!new_dbuf_state->base.changed);
 
+	if (hweight8(new_dbuf_state->active_pipes) > hweight8(old_dbuf_state->active_pipes))
+		intel_dbuf_mbus_update(state);
+
 	gen9_dbuf_slices_update(i915,
 				new_dbuf_state->enabled_slices);
 }
-- 
2.37.3

