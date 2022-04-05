Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58DE34F3CF4
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 19:35:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7080410EDB6;
	Tue,  5 Apr 2022 17:35:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7F7710EDB6
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 17:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649180124; x=1680716124;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=K2i/IKdbX/lCzZtwB7fwE8KufzBUc8lqjDcIn8xdQws=;
 b=DPCzxymK0acGtyEcDd14KHS5Ah+VL6CkIOYCSxohoaLpcjqiI31EfnpQ
 9tkCkGbEczln6B+cLQE/10e9QjMyvoarzv+c3Q0ol/q46GnM0ZtRNhtzD
 s3RhMkL4AQRQphCB/BmhrmZ1WlxyrKQfdo7KToQP4hKd+odCqwKbqSzOH
 wx4SQX5PE3JN0A7+EIxOwYVGEOOX4tDmCC6pzSlAjCyNU/1zjxi5Vu6LI
 fhTLR6JpY+V3hxYXmophWH+ieHl0CK3EOFt+Um7bjGVkkdBfIjlOM/FFM
 eF+ehwongIxGFlexjz6sitQhflb04j67CDcNoqMxkv6HbvwWROTGD1CFp w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="242959711"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="242959711"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 10:34:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="549151704"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga007.jf.intel.com with SMTP; 05 Apr 2022 10:34:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Apr 2022 20:34:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Apr 2022 20:34:02 +0300
Message-Id: <20220405173410.11436-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 14/22] drm/i915/pps: Reinit PPS delays after
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
index 6ab8d971901b..140191290e85 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1395,6 +1395,11 @@ void intel_pps_init_late(struct intel_dp *intel_dp)
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

