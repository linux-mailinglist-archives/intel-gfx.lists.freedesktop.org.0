Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 479087BB94B
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 15:37:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BC6A10E510;
	Fri,  6 Oct 2023 13:37:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36ED510E502
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 13:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696599450; x=1728135450;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=sreiTpk+c6LqPCAw3LgYIW/w043KH9YZI8mL1G6aSGs=;
 b=F5fGmkKAghuse0WXQcf3VnXdovFfiebjy28/L9EPGm3zZr882gQ1+IJt
 WUuLw1x4fvdqCbTyHgwqE8iXTqrERB7tS8pjQuHKz83xSphsbm9dtx6QV
 E95lFsKY9PdGOfwJRIzd/uy85iwg36FB9bvAnX9UjgSkU7N/1zLelc7Yh
 D1CHVyU3J4PNKeV35os6GUKYQpkY5uTTDvVABKujUvJn6QUEhPjkLnG77
 ff6z3pb9RZlLZ5KovVO9gRy29grVtZYXrIHKXqaFjCBAfCpfF0/UDl548
 qeBwxrdO0tJ3/pOLtuKn2r7YFh5u+kNbiXUfKjj0cQ1HoZpDgX9EpNSG4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="470019147"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="470019147"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="728841530"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="728841530"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:29 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Oct 2023 16:37:26 +0300
Message-Id: <20231006133727.1822579-19-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231006133727.1822579-1-imre.deak@intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 18/19] drm/i915/dp_mst: Use connector DSC DPCD
 in intel_dp_mst_mode_valid_ctx()
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

Use the connector's DSC DPCD capabilities in
intel_dp_mst_mode_valid_ctx().

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 115d4d8870b03..a065388c2199f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -996,14 +996,14 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	}
 
 	if (DISPLAY_VER(dev_priv) >= 10 &&
-	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
+	    drm_dp_sink_supports_dsc(intel_connector->dp.dsc_dpcd)) {
 		/*
 		 * TBD pass the connector BPC,
 		 * for now U8_MAX so that max BPC on that platform would be picked
 		 */
 		int pipe_bpp = intel_dp_dsc_compute_max_bpp(intel_connector, U8_MAX);
 
-		if (drm_dp_sink_supports_fec(intel_dp->fec_capable)) {
+		if (drm_dp_sink_supports_fec(intel_connector->dp.fec_capability)) {
 			dsc_max_compressed_bpp =
 				intel_dp_dsc_get_max_compressed_bpp(dev_priv,
 								    max_link_clock,
-- 
2.39.2

