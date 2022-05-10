Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6795521272
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 12:43:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0EAC10F442;
	Tue, 10 May 2022 10:43:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0359810F442
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 10:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652179390; x=1683715390;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=GORaM/pEy4QpqtqIkQpJvM2/0ti2YSoOrwL9kDVUcd8=;
 b=kmLuW8/us1EJLGpNR3mdq6yaZXvNsasFDAuIakJ5oAdTKPLKvs5hgUct
 GUTLK3U+ALWrISDRV+QoIrSBwaUQpWGCzAo+WPE3QkbYrJXJ+kZpNWVte
 SptLxAppHEVLRe5El80X0QVusWVufuHbvSppQSA/i08CHcJMIhCDtN8HC
 bjEb84U/XVO3MnWwOI3jek5BeqGzeLUsJqEIV6nMjPdARWiTlbE4qZSpj
 i4R+ymt8iiv9hLxnd0jOCRV+C9K36u+jv2oQdvD3lUdnWNRln9Oiqu5f5
 LC28t00j8WP2D5CI4om7mXBTbCZW2Rq+Sn1X4K8QBOs0tZ4s5eTAV+3/E A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="294565166"
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="294565166"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 03:43:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="541718358"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga006.jf.intel.com with SMTP; 10 May 2022 03:43:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 May 2022 13:43:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 May 2022 13:42:35 +0300
Message-Id: <20220510104242.6099-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
References: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/15] drm/i915/pps: Reinit PPS delays after VBT
 has been fully parsed
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index db3a12215269..9ce09d85e0ab 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1438,6 +1438,11 @@ void intel_pps_init_late(struct intel_dp *intel_dp)
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

