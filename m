Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 695E4747C49
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 07:16:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EBCD10E13D;
	Wed,  5 Jul 2023 05:16:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F9B310E13D
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jul 2023 05:16:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688534195; x=1720070195;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BIi2JVgdLoSyGdy1AYQ7MZ2pmt0uE0UDsq8j2R0GwRg=;
 b=CgDT/g9aBc8z80tds8PgUQylPfqTWJPt9gkukBQB1bGAGfcXPDzfJdRB
 n7dV+YUj+/CuCyC2cy00Tp73BRooEzfW3/e5nsm1yFuzz9rEZOXo0Pgz2
 tpwIBc7rGMduUh1xoQl9G+/9c7iKJBoIJtylysVQifAA48vHZvHzxwGDL
 B6JQaFq7D7pkUtiir6CpEGsWbjpPvP4X/mlePMSI5wyA9DkvIiRxjitEa
 RFl+8r7dDedl0V4+B5gpuLH8AKUuxw1Wu3M4r7mRzMVdC1WCzEelOAdB8
 3ewP6VCZ397d+PF67FW7ipJFc0R9Y5vGTAwc+ZD+vBTQnqK8XCxinSqAU A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10761"; a="365817997"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="365817997"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 22:16:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10761"; a="722257902"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="722257902"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga007.fm.intel.com with ESMTP; 04 Jul 2023 22:16:32 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jul 2023 10:44:59 +0530
Message-Id: <20230705051502.2568245-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/3] Add rc_range_params for YUV420
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

Calculations for YUV420 were missing from calculate_rc_param,
add them be in line with DSC 1.2a specs.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (3):
  drm/i915/dsc: Move rc param calculation for native_420
  drm/i915/drm: Fix comment for YCbCr20 qp table declaration
  drm/i915/dsc: Add rc_range_parameter calculation for YCbCr420

 .../gpu/drm/i915/display/intel_qp_tables.c    |  10 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 190 ++++++++++++------
 2 files changed, 138 insertions(+), 62 deletions(-)

-- 
2.25.1

