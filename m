Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA37B0DA2F
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jul 2025 14:56:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49B0410E677;
	Tue, 22 Jul 2025 12:56:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hdV7crhD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 602D910E677;
 Tue, 22 Jul 2025 12:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753188992; x=1784724992;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lRPqqdFhr3QzABbhK4fZrlKhkvgw8VNoMiKWPrUX2gw=;
 b=hdV7crhDf6TWXRONOGnSLKZbufJzU39iKsY9Xzv/9oCXla3uTGF+tihF
 3Ue/0jb38qLvKBspxSPnAdvSaYpFrIVAaARst0XgETZKYnhVyy5rbu6Lf
 021SVygETZwdIJ4O8pedRUbL5TaZDeZOqwBq4w2qYGRyL29pNF8oaj792
 HriJj5VqO3DNjidynMEVxJ4zh/2ENh/86t/2FwMmHfo25jKjO/zevOcJ/
 R+EgKRt6azUFTJshg4RH/8RuWPKiNx2ppGKK1LDXpnHK63AP/o7CAn5qI
 4S+uyLi+tq8Sb7e0l55pShpOXNK3aLB4q/Bv8OooidIHjv/+357nTjcwU g==;
X-CSE-ConnectionGUID: OoNUPzWQQa6Fn0qcDTBs/w==
X-CSE-MsgGUID: a4nQTG46SbSaoKi2C8jy0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="66121541"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="66121541"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 05:56:32 -0700
X-CSE-ConnectionGUID: 29MFEZkwT1agjbUhV3hO4Q==
X-CSE-MsgGUID: JPDCqU5LRPG29HZqPczaAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="164604133"
Received: from agladkov-desk.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.0])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 05:56:31 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: gustavo.sousa@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 0/4] PHY LFPS sending configuration fixes
Date: Tue, 22 Jul 2025 15:56:14 +0300
Message-ID: <20250722125618.1842615-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

We are seeing "dmesg-warn/abort - *ERROR* PHY * failed after 3 retries"
since we started configuring LFPS sending. According to Bspec Configuring
LFPS sending is needed only when using AUXLess ALPM. This patch avoids
these failures by configuring LFPS sending only when using AUXLess ALPM.

Addition to PHY failure fix this patch set contains some additions
that were seen missing during review:

1. Ensure phy is accessible on lfps configuration
2. Set C10_VDR_CTRL_MSGBUS_ACCESS before phy reg read

Also one optimization is added to avoid unnecessarily calling
intel_cx0_get_owned_lane_mask.

v3:
  - add Bpsec references
  - set C10_VDR_CTRL_MSGBUS_ACCESS once for all owned lanes
v2:
  - split as a patch set
  - add ensuring phy is accessible on lfps configuration
  - set C10_VDR_CTRL_MSGBUS_ACCESS before phy reg read

Jouni Högander (4):
  drm/i915/display: Write PHY_CMN1_CONTROL only when using AUXLess ALPM
  drm/i915/display: Avoid unnecessarily calling
    intel_cx0_get_owned_lane_mask
  drm/i915/display: Ensure phy is accessible on lfps configuration
  drm/i915/display: Set C10_VDR_CTRL_MSGBUS_ACCESS before phy reg read

 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 21 ++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

-- 
2.43.0

