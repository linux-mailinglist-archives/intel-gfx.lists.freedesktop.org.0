Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB58B88B4F
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 11:59:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D47810E975;
	Fri, 19 Sep 2025 09:59:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PpSJwGee";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D374310E975
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Sep 2025 09:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758275964; x=1789811964;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MpYlWwL0n3h6gmh5Uv8AyWX6xOY576a8vnkMRPMNpV8=;
 b=PpSJwGeeqJUq4EYOFGE+unfGK6rcpCNkvrMGyJ7TBBirYQyeiS/yJquC
 XnTSshM8Y1Jk+Qc1OHrMpmCwYwQ8Tb7x1hToZgUsyimT41UoVf1npML7k
 8THBSXyskjtNSfKg8HImbAZuS356j0kwrEkM+0S5Ut9IqyRZrxCPwd3WQ
 CPKWrQFGoEzS5vY/9xGRjbykJpyXW1DspVc8RESDtDt7a8J2nn3eHHATg
 uxH3hrsdgsiR6NnuW0LSZaMh/4x9vOetbRKicmd4s60TNpn9IodWstNj4
 RaTBO6awuZwCw1tih8Hw1QCKRa/sOZJ0sNPiq1fLJoCVZu3WXAsE3zSvI A==;
X-CSE-ConnectionGUID: eEk9lXXHTBix4b/IToPV7Q==
X-CSE-MsgGUID: 1+kkuVzGRAK9MFvKh4msHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="64259663"
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="64259663"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 02:59:23 -0700
X-CSE-ConnectionGUID: RDg98aetRRmdi55DJx+HdA==
X-CSE-MsgGUID: GnkeVLuIQoW7y8/L8fHkzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="180050059"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by orviesa004.jf.intel.com with ESMTP; 19 Sep 2025 02:59:23 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH v2 0/3] Add WCL as subplatform from PTL
Date: Fri, 19 Sep 2025 15:29:17 +0530
Message-ID: <20250919095920.1594604-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250911210514.389014-1-dnyaneshwar.bhadane@intel.com>
References: <20250911210514.389014-1-dnyaneshwar.bhadane@intel.com>
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

- Add WCL as subplatform and update the definition struct. 
- Update condition required to distinguish WCL C10 PHY selection
on port B.

Dnyaneshwar Bhadane (3):
  drm/pcids: Split PTL pciids group to make wcl subplatform
  drm/i915/display: Add definition for wcl as subplatform
  drm/i915/xe3: Restrict PTL intel_encoder_is_c10phy() to only PHY A

 drivers/gpu/drm/i915/display/intel_cx0_phy.c        | 11 ++++-------
 drivers/gpu/drm/i915/display/intel_display_device.c | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_display_device.h |  4 +++-
 drivers/gpu/drm/xe/xe_pci.c                         |  1 +
 include/drm/intel/pciids.h                          |  5 ++++-
 5 files changed, 25 insertions(+), 9 deletions(-)

-- 
2.51.0

