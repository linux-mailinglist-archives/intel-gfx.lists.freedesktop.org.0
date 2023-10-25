Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D64AE7D6B2A
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 14:19:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78A2C10E5B0;
	Wed, 25 Oct 2023 12:19:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 696E610E5AF
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 12:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698236381; x=1729772381;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gyK7vhCPwMVCtItgNbVORc+/G5pqMwO761c7LILYXQg=;
 b=ZeO4DMLb+kZCyoSYuF2PHT0Lo3T4eUwhOSFMG/phOOS8ceOU07SL5qep
 bjRLAVqBF0Z+GrnNeetX/L41+gD/V1XSl64T/kULAuo4tanKuxqe8OKVA
 5q1PxGz85rq5zfAUPfDra/MMIj5xYcfIAV1KLGcYrJ0nbvBN91v6fsijw
 oECU3tF1Izlc9AZ+Ee3N1JMS5gAJN8zcrzORnq6E0B1AtBmpgMpKM+SJv
 Bsdtz1uMt0xS0oj+TleT35hf/KuV2i7ASaMbeZmTdrXj8l54LE+6bg8HS
 OaQEmFDsZ0KaXV1LTOlpA1Ipf/M89XO0HBkrjJvIKUGhP5OWyPWZ3eLlb w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="451520495"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="451520495"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 05:19:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="882435977"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="882435977"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 05:19:19 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Oct 2023 17:43:14 +0530
Message-Id: <20231025121318.2732051-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] DP DSC min/max src bpc fixes
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use helpers for source min/max src bpc appropriately for dp mst case and
to limit max_requested_bpc property min/max values. 

Ankit Nautiyal (4):
  drm/i915/dp: Simplify checks for helper intel_dp_dsc_max_src_input_bpc
  drm/i915/dp: Fix the max DSC bpc supported by source
  drm/i915/dp_mst: Use helpers to get dsc min/max input bpc
  drm/i915/dp: Limit max_requested_bpc based on src DSC bpc limits

 drivers/gpu/drm/i915/display/intel_dp.c     | 24 ++++++++++++++-------
 drivers/gpu/drm/i915/display/intel_dp.h     |  2 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 ++++------
 3 files changed, 22 insertions(+), 15 deletions(-)

-- 
2.40.1

