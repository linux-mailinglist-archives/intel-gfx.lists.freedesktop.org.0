Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 234DA5BFDC5
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 14:23:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A9C910E950;
	Wed, 21 Sep 2022 12:23:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90DBA10E94F
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 12:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663763026; x=1695299026;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UwmxRSa09cDyEdhOti7Arpc2l4zm81LhRpwURGG76mM=;
 b=ILkvcqi/4vGMwHDRz4gmxVIF8B8d/lUrSpFP6Pe2EZXukQv/M9aAtYsK
 dXmD1KmiGI8a+2urnDDpF5OtDM/zyF473NfyoPSZGpWV+m7qZwUXXei86
 MfqdfPfI1yRbLla4+UzH14YtaJ1joJ45dCCbn307+jHskA9zgHl0kPkDL
 g+Mr6cRgrbr+xmEnw4Ybp1uCYknjF9ih1stFdCM2limqKzDZWb4nIodQH
 WcpFwDUwlE6nBbycGoaQsFodcAA3MH9NiNJMHQ2b86JXYiJWqqWFn/XrX
 8O+OyUpTH3Kx/02CMIf85tVi00NKunFkUqAW62Bl8UeICADO3xl46OCE4 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="298704329"
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="298704329"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 05:23:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="681747107"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 21 Sep 2022 05:23:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 Sep 2022 15:23:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Sep 2022 15:23:39 +0300
Message-Id: <20220921122343.13061-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] drm/i915: Start cleaning up the DPLL ID mess
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Start to clean up the mess around DPLL IDs a bit by removing
the nasty assumption that the index of the DPLL in the
arrays matches its ID. Fortunately we did have a WARN
i nthere to cathc mistakes, but better to not has such
silly assumptions i nthe first place.

There's still a lot of mess left since the DPLL IDs in
the hardware are a mess as well. Eg. the index of the
register instance often differs from the index used
to select the DPLL in clock routing thing. So we could
probably clean up more of that, perhaps by declaring
separate IDs for each PLL for each use case...

Ville Syrjälä (4):
  drm/i915: Always initialize dpll.lock
  drm/i915: Nuke intel_get_shared_dpll_id()
  drm/i915: Stop requiring PLL index == PLL ID
  drm/i915: Decouple I915_NUM_PLLS from PLL IDs

 drivers/gpu/drm/i915/display/intel_ddi.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 105 +++++++++++-------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   3 -
 .../gpu/drm/i915/display/intel_pch_refclk.c   |   5 +-
 4 files changed, 69 insertions(+), 48 deletions(-)

-- 
2.35.1

