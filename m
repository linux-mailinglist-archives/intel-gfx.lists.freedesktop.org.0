Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B4618F038
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 08:28:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B035F89E50;
	Mon, 23 Mar 2020 07:28:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D42489E50
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 07:28:22 +0000 (UTC)
IronPort-SDR: GqbgdHaGw4F0qJev9bpNFAdNrzF586FHf3Z8ctXqVuAQ4P+NNNsJhCdpb0HVnsr4WTKpegD0/q
 RLEoUW/xza6Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 00:28:21 -0700
IronPort-SDR: RJwePdvw7hwm0PDjJA/3qu9RbYEPYCYFSwotmuzlRHO2jHgbR/fa+B6d9fy1nOMbEIHM9jgTxH
 0Ki0NlW6TDyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,295,1580803200"; d="scan'208";a="419414446"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga005.jf.intel.com with ESMTP; 23 Mar 2020 00:28:19 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Mar 2020 12:43:10 +0530
Message-Id: <20200323071313.5858-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/3] i915 lpsp support for lpsp igt
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
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com, martin.peres@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This series adds i915_lpsp_info connector debugfs.

Test-with: 20200323063248.5261-2-anshuman.gupta@intel.com

Anshuman Gupta (3):
  drm/i915: Power well id for ICL PG3
  drm/i915: Add i915_lpsp_info debugfs
  drm/i915: Add connector dbgfs for all connectors

 .../gpu/drm/i915/display/intel_connector.c    |   3 +
 .../drm/i915/display/intel_display_debugfs.c  | 102 ++++++++++++++++++
 .../drm/i915/display/intel_display_power.c    |   6 +-
 .../drm/i915/display/intel_display_power.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   3 -
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   3 -
 6 files changed, 109 insertions(+), 10 deletions(-)

-- 
2.25.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
