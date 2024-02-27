Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 902CA869F32
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 19:36:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0574D10E5B9;
	Tue, 27 Feb 2024 18:36:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="edZC4ggS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC28710E6E5
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 18:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709058985; x=1740594985;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=V9GzTNpMvyBQacuSItzrXM6mnhPjDokp4KS3Q8LyoT4=;
 b=edZC4ggSzLRazckCZgczraMyM6qmKarx48sPeTAWzy9BLpCgD6BDO0+T
 U1e7Mdyy8e6eqQ+UY+1czzKmDL/N6VQTXxn4+DkqqWq7jrNptMmeAnS9e
 YsGhYMo9eRCzdpOQVZE+ggtPDrVW/jS5zxPWSCutpL/Gr8dwBIpHNvT5f
 o/JulZCGnok6wBsbydDZOO/Lm2mXWx3OjylD/yUzZzHDm+9ypOngWUGQD
 sL0By6qh6kmKdwMtXJzfEGLplqCu5esICPlAYtGTAhMxqkZsQsSbrDeRC
 0DzT7mY2vnMv/8L9v1eoBJclZQvFVNb0OB9Zu4q1a4DtKTc+fi/mP3TTD g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="14060016"
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; d="scan'208";a="14060016"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 10:36:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; 
   d="scan'208";a="7188123"
Received: from vsrini4-xps-8920.iind.intel.com (HELO localhost.localdomain)
 ([10.223.163.48])
 by orviesa009.jf.intel.com with ESMTP; 27 Feb 2024 10:36:22 -0800
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: khaled.almahallawy@intel.com,
	Vidya Srinivas <vidya.srinivas@intel.com>
Subject: [PATCH 0/2] Enable MST bigjoiner
Date: Tue, 27 Feb 2024 23:48:47 +0530
Message-Id: <20240227181849.22614-1-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.33.0
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

Series reverts rejection of modes on MST monitors that need bigjoiner
and adds MST bigjoiner functionality

Vidya Srinivas (2):
  Revert "drm/i915/mst: Reject modes that require the bigjoiner"
  drm/i915: Allow bigjoiner for MST

 drivers/gpu/drm/i915/display/intel_dp_mst.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

-- 
2.33.0

