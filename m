Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD89191151
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 14:42:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33C946E158;
	Tue, 24 Mar 2020 13:42:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93F306E158
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 13:42:08 +0000 (UTC)
IronPort-SDR: ZHg2KjnI5l27Qk2jo3h2jJxzYsJV/LPcbzwgeA7w3ejI7Ge+rs72NHi4eYFQNZoeH7QUY1Jbg6
 lpaSvALj7tHA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 06:42:08 -0700
IronPort-SDR: Cc6list3A+WhBn4piIAD2OVtVZGCpRQYHVNNe9QnAb+d42vX4UZdyQrBMbJOI2s2tYr8Gg33vk
 4akpuiymbNrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,300,1580803200"; d="scan'208";a="419896813"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga005.jf.intel.com with ESMTP; 24 Mar 2020 06:42:05 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Mar 2020 18:55:27 +0530
Message-Id: <20200324132530.6204-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/3 RESEND] i915 lpsp support for lpsp igt
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

Resend to test with below msgid of igt.

Test-with: 20200324130630.9388-2-anshuman.gupta@intel.com

Anshuman Gupta (3):
  drm/i915: Power well id for ICL PG3
  drm/i915: Add i915_lpsp_info debugfs
  drm/i915: Add connector dbgfs for all connectors

 .../gpu/drm/i915/display/intel_connector.c    |   3 +
 .../drm/i915/display/intel_display_debugfs.c  | 104 ++++++++++++++++++
 .../drm/i915/display/intel_display_power.c    |   6 +-
 .../drm/i915/display/intel_display_power.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   3 -
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   3 -
 6 files changed, 111 insertions(+), 10 deletions(-)

-- 
2.25.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
