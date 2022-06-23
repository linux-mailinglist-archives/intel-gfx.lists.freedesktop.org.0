Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 561275570B4
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 03:57:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77B121136E2;
	Thu, 23 Jun 2022 01:57:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCBEF10F774
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 01:57:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655949424; x=1687485424;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FynKlMKg+NK5TYzyuELrMq5QKldgWDm4VG0SG9cjgaU=;
 b=b0TBU0+IpIEJlcXYDLNEZ+RD9nnpus0YmA0MgZ3gEgeO99K65dZOrJzM
 7LoLeR/bXKhKzXiEee7Cmna7D22dztZqFtxBTRRFHs5qL2N8R0UqlalpY
 CYKJ3WUPvT9l+zypQ8W37LYVY6LYpdoxqZTH5ky/x28OjLrQ+9kjl07I0
 SrcCWJlDfDSPGcol77ITlu5yMinHK4QiL/gfnkA75PbB0vxAgSMupLiaS
 2DFBkiEO3RjkvYN7fyLPR6PvfXUL/qBv8Ng5DModP1Tek8XKd1TQLRmvI
 yVAq1lZO1aSUoqMI6U6y+h5tt2J8HKKEyCGZaEM5wThK3IoIGEqf5vDVh Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="279364693"
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="279364693"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 18:57:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="765119187"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga005.jf.intel.com with ESMTP; 22 Jun 2022 18:57:04 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jun 2022 18:57:45 -0700
Message-Id: <20220623015746.172358-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [Intel-gfx v3 0/1] drm/i915/guc: Don't update engine
 busyness stats too frequently
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

This change ensures we don't resample GuC busyness stat
counters too soon after the last sample.

Changes from prior revs:
  v2:  - Align the name of last_stat_jiffies (Tvrtko)
       - Use 32-bit jiffes (Tvrtko)
       - use time_after() macro (Tvrtko)
       - change from ">> 1" to "/ 2" for ping delay halving (Tvrtko)
  v1:  - Move the location of the new logic to higher up
         the callstack in intel_guc_busyness_park (Umesh).
       - Fix typo threshold of jiffies-since-last from double
         to half of ping_delay (Umesh)

Alan Previn (1):
  drm/i915/guc: Don't update engine busyness stats too frequently

 drivers/gpu/drm/i915/gt/uc/intel_guc.h            |  8 ++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 13 +++++++++++++
 2 files changed, 21 insertions(+)


base-commit: ac17a5249380aaabe5d1eaebd9b3a2eedc08ccdc
-- 
2.25.1

