Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E71C1995A1
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 13:47:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F7076E30F;
	Tue, 31 Mar 2020 11:47:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 325136E30F
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 11:47:53 +0000 (UTC)
IronPort-SDR: zo2P1OAMky1DlZW3i2Tg5etJoZQaRX2Rc8vGspB0UFSATzV3JkQk77T/2GDyWcTsPuq2P3rxo4
 ObrG4iIh9riA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 04:47:52 -0700
IronPort-SDR: v3wpHDsKBfVimH+zoDiP9HiH5bFtgApxw51jW/6Bj8HqHqYi8efgOvyQO+1CiFxJVGBW1O264n
 ERUDKHdhZncQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,327,1580803200"; d="scan'208";a="240100994"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga007.fm.intel.com with ESMTP; 31 Mar 2020 04:47:50 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Mar 2020 17:07:32 +0530
Message-Id: <20200331113735.5452-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/3] i915 lpsp support for lpsp igt
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
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is resend of v3 to get CI results with 
igt v4 lpsp platform agnostic support.
https://patchwork.freedesktop.org/series/74647/

Test-with: 20200331103330.31211-2-anshuman.gupta@intel.com

Anshuman Gupta (3):
  drm/i915: Power well id for ICL PG3
  drm/i915: Add i915_lpsp_info debugfs
  drm/i915: Add connector dbgfs for all connectors

 .../gpu/drm/i915/display/intel_connector.c    |   3 +
 .../drm/i915/display/intel_display_debugfs.c  | 124 ++++++++++++++++++
 .../drm/i915/display/intel_display_power.c    |   6 +-
 .../drm/i915/display/intel_display_power.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   3 -
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   3 -
 6 files changed, 133 insertions(+), 10 deletions(-)

-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
