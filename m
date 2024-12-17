Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF7D19F5765
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 21:14:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5594610E048;
	Tue, 17 Dec 2024 20:14:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Up1PfER+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C63FC10E048
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2024 20:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734466470; x=1766002470;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZN5OdD3eeaS8Edzdti6V1+zn8lRjej51pg0hUtC8Dj4=;
 b=Up1PfER+k0H4yuj/vucWqWlk5oD7ILvrfVED5a/U6vHBFMnHt2ie4alZ
 OxX7JOLFn2bj9p9n0UcAfeVpRIBovdCskiOrZhQl/8dK9UpkPtdYVaxFa
 v/vZdxn8izA/fEwVaSC+lzZNbuJ1bTEaA7Ktu3dBlK1gY2D2ZFbEp///k
 lu9cv+zfCL54stDZnZDBbT4liWvi/kjyVhynhBfwbWV82Gdf9nm0FCgoE
 7qS5kDgCUWwUGBz3vt8VJxoq4I7LY+i3CZDeSJKhH2DnLBSr5sfj+Rb5N
 UyXL5r3OAroQ3e339ODhTl2+svzhSv/FGKCYvkPbjYujpWc4xkEP6NSSI g==;
X-CSE-ConnectionGUID: smDiIJX1TiyCFbrIJwB8UQ==
X-CSE-MsgGUID: 3Z4or81kRuW4iG7Oy8qOuw==
X-IronPort-AV: E=McAfee;i="6700,10204,11289"; a="34233689"
X-IronPort-AV: E=Sophos;i="6.12,242,1728975600"; d="scan'208";a="34233689"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 12:14:29 -0800
X-CSE-ConnectionGUID: otvBQXMJSZ25GKyCJparhw==
X-CSE-MsgGUID: 1QfwdL37TQ2aDtG/sO7cVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="102709766"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orviesa003.jf.intel.com with ESMTP; 17 Dec 2024 12:14:29 -0800
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH v4 0/2] drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value
Date: Wed, 18 Dec 2024 01:42:59 +0530
Message-Id: <20241217201301.3593054-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
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

In the C20 algorithm for HDMI TMDS, certain fields have been
updated as per the specs for Xe2LPG, Xe2HPD and MTL/ARL platforms
and subplatforms.This series update fields that need to be set
based on the platforms/subplatforms types. Also added definition
for MTL-u subplatforms.

Dnyaneshwar Bhadane (2):
  drm/i915/display: Add MTL subplatforms definition
  drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 48 +++++++++++++++----
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  6 +++
 .../drm/i915/display/intel_display_device.c   | 13 +++++
 .../drm/i915/display/intel_display_device.h   | 12 +++++
 include/drm/intel/pciids.h                    |  7 ++-
 5 files changed, 76 insertions(+), 10 deletions(-)

-- 
2.34.1

