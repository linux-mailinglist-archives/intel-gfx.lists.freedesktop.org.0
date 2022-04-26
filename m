Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FED510915
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 21:33:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A84AB10E5C1;
	Tue, 26 Apr 2022 19:32:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 049F410E5B3
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 19:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651001576; x=1682537576;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ulokI/EsLWOYpW74O5yVOTUdMMYWSJ8H82nXiVn8Wpw=;
 b=ddabVUCNbDUg6BQuXc5NrC7lAW/Z35h+dcwa5CuVBTveVoyjDQEM7Z8/
 rBlZK0m075OKmmF09/ire6AjSTlo9apF1ylGQlqDQyaAkd7MQAKkxMfqj
 Yk1a3bq2loy1cR+ppeOEfz4bqOEofJrP2EccrhzSHcEniE9ug20X57D2J
 3HPnVBrrZQrx00UglpngstdsEx5lb/1lbaq6uyJJnp4j8owvDqEREkcML
 SgXbxPDrUStXk/QA+xSKw00MaDwZEC76hNBscsXZeEnoAch97uRW75p8/
 LTeQQvid+SWjrZSklyqUudfEIbkS6UBy+w0wOqv/4Iz4z+Dx6DFYeWw3V g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="265506305"
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="265506305"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 12:32:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="558493845"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga007.jf.intel.com with SMTP; 26 Apr 2022 12:32:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Apr 2022 22:32:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Apr 2022 22:32:14 +0300
Message-Id: <20220426193222.3422-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
References: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 10/18] drm/i915/pps: Reinit PPS delays after
 VBT has been fully parsed
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

During the eDP probe we may not yet know the panel_type used
to index the VBT panel tables. So the initial eDP probe will have
to be done without that, and thus we won't yet have the PPS delays
from the VBT. Once the VBT has been fully parse we should reinit
the PPS delays to make sure it's fully accounted for.

TODO: I wonder if we should do the eDP probe with some super safe
PPS delayes (eg. max of all VBT PPS delays) just to make sure we
don't violate the timings. Though typically the VBIOS/GOP do leave
VDD enabled after boot in which case we don't actually have to care
about the delays at all.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 0ae2be5c5318..15cbdc465a86 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1396,6 +1396,11 @@ void intel_pps_init_late(struct intel_dp *intel_dp)
 	intel_wakeref_t wakeref;
 
 	with_intel_pps_lock(intel_dp, wakeref) {
+		/* Reinit delays after per-panel info has been parsed from VBT */
+		memset(&intel_dp->pps.pps_delays, 0, sizeof(intel_dp->pps.pps_delays));
+		pps_init_delays(intel_dp);
+		pps_init_registers(intel_dp, false);
+
 		if (edp_have_panel_vdd(intel_dp))
 			edp_panel_vdd_schedule_off(intel_dp);
 	}
-- 
2.35.1

