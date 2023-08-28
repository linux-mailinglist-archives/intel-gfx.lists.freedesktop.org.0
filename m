Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A8578A5CA
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 08:35:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11CAB10E216;
	Mon, 28 Aug 2023 06:35:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01D2C10E216
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 06:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693204534; x=1724740534;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nk9GKnUZxnL2aKJblVvQUUITXUnch8VaAKjEjMwtC/4=;
 b=k+JacqvESJp9MUkSPiQCzLMY34rVScjjXQXJWig+oFDq1TbMwa00sUlM
 66R6Z86q49XAcO6qX1msN4gJ+XEOnPtZAkISrkUfqUphnYzzMj4W/xXW7
 AQMnF/C4gOJC0kfY66RfNtrHWJNaQbD/3L6MtR8CKrf+8SohfQ9LSfMBu
 /uOtVkkDDCW5UcBEL2NFcNsKN+Hg+KH0iz1teyVFij5gdXHEVT3/LwFHF
 mihorWeVcpTNG/BlS8EYwZ3g3mK15nyEc8+k58/zQI0+GWXY7MBw8u2c1
 5fMv3+t5ARwBn1cGlMOfEJS2Uco2tCyTtmFRqVNHZSEkI9QYKJzE3Xmf4 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="461395917"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="461395917"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2023 23:35:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="911930488"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="911930488"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 27 Aug 2023 23:35:30 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Aug 2023 12:03:57 +0530
Message-Id: <20230828063401.600414-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/4] HDCP MST aux issue fix
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
Cc: uma.shakar@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Up until now all dp hdcp specific function derived the aux
from dig_port which gave the aux of the primary port but with
DPMST when a MST hub comes into picture the monitor becomes remote
and what we need is a corresponding aux which is also remote.
These set of patches aim to fix up just that.

--v2
-Do not pass drm_core struct to i915 function [Arun]
-Fix typo and correct commit message in 3rd patch [Arun]
-Provide justification for timeout adjustment [Arun]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (4):
  drm/i915/hdcp: Use intel_connector argument in intel_hdcp_shim
  drm/i915/hdcp: Propagate aux info in DP HDCP functions
  drm/i915/hdcp: Send the correct aux for DPMST HDCP scenario
  drm/i915/hdcp: Adjust timeout for read in DPMST Scenario

 .../drm/i915/display/intel_display_types.h    |  6 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 80 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 30 +++----
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  6 +-
 4 files changed, 73 insertions(+), 49 deletions(-)

-- 
2.25.1

