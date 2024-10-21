Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 950DB9A687A
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 14:32:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19F3510E4D3;
	Mon, 21 Oct 2024 12:32:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Aq36DFIX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69C9D10E4CD;
 Mon, 21 Oct 2024 12:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729513929; x=1761049929;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=znCaLqnPy/7IV0Bh2ni48f1o+vTltB1VMgWZvXZ65DQ=;
 b=Aq36DFIXch313JMM/1jINK61qGYhKe18YHk+62TZhyVQbe0pM/rq/1Cc
 F5z+mvskoXFGgAYm7aP441AmJ4H1uYoCDq8lBxx2MRIIQYRksrdj7uTCU
 LMoxzKygnQouijv3vVQ+xPGhyJMOSQW4zo+eNgErvn1ydycyA196ycgTK
 0n+5KB9XLAaFzNSXd02jarwOYtS/QSFEheGiRdt9DgCLTQ4kyKpoGE7BG
 2jA7qK+TPKbLTKAXA4gEcfZO5hwakWc3eujncpCDklZAW3bO//xmkas7N
 bqvkzwjbtkrgDqDn7jOvIqIVs0H3rvuihiyEsgv38QVFMM5msskgLQp1B g==;
X-CSE-ConnectionGUID: dsB4suDjTNCLmyC+vAL+5w==
X-CSE-MsgGUID: pCX81wg9TNyRFi6aqhdpBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46459634"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46459634"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:32:09 -0700
X-CSE-ConnectionGUID: 0ktPJf5QRSWGTpB6tivIMQ==
X-CSE-MsgGUID: jA657nCYTg+ShQ+DjhT0JA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="79866070"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:32:08 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 06/16] drm/i915/dp: Ensure hactive is divisible by slice count
Date: Mon, 21 Oct 2024 18:04:04 +0530
Message-ID: <20241021123414.3993899-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241021123414.3993899-1-ankit.k.nautiyal@intel.com>
References: <20241021123414.3993899-1-ankit.k.nautiyal@intel.com>
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

According to the DSC spec, the slice width should be chosen such that
the picture width (hactive) is evenly divisible by the slice width.
If not, extra pixels (padding) must be added to the last slice to
ensure all slices have the same width.

Currently, we do not support handling these extra pixels.
Therefore, select a slice count that evenly divides the hactive
(slice_width = hactive / slice_count).

This check is already implemented for DSI, where the slice count is
selected from the BIOS.

For DP, currently with 1, 2, 4 slices per pipe it is unlikely to have
slice count not being able to divide hactive, but with 3 DSC engines
and 3 slices, we can have such cases. Adding this check prepares for
future scenarios where such configurations might be used.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c1867c883b73..0607ea4ee321 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1037,6 +1037,9 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		if (num_joined_pipes > 1 && valid_dsc_slicecount[i] < 2)
 			continue;
 
+		if (mode_hdisplay % test_slice_count)
+			continue;
+
 		if (min_slice_count <= test_slice_count)
 			return test_slice_count;
 	}
-- 
2.45.2

