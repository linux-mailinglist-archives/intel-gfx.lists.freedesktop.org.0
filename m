Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C224F9F53BA
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 18:32:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37CB910E629;
	Tue, 17 Dec 2024 17:32:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VAQWglUc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F5D710E629
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2024 17:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734456722; x=1765992722;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=th8FTibvhJeSheOjSofNgNvOIwvEduSE1BJTTyjoJqc=;
 b=VAQWglUcY9C2yd8JE0fZkLyeiZ+RKbvUJ8jEZLJ5A5c4EQ7LHFYdssud
 1yHd/+auiw31qNLcT8ReaJ7JUSEMtp6fP28wL9XGZB8yPQUoRNDpVZWM1
 pQ4WgIrJeAWQderyU2On1HOFbOepokMFutz6zDginPJMs8fvLIJe7UBGU
 6cb+jgwfq/1txe4Izgpm//ljBJtDPW9T6q1FMVyadfqeeRpKiVlRJKN4q
 2kMC1vfWmYqxMs71Vt/EhwpQua0uH8nAHYNHPtMIJI+BenfiFTlnrrao+
 xEd7wjr2JUG01lnJkn8gSgE4eh/LNILycDpjYBsOE1zBiYnwPeuONxpzG A==;
X-CSE-ConnectionGUID: C4K8F13/QSqqr+0JPNJ4bQ==
X-CSE-MsgGUID: LrXFNhdLQMe6oPqO+RtH2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11289"; a="34802721"
X-IronPort-AV: E=Sophos;i="6.12,242,1728975600"; d="scan'208";a="34802721"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 09:32:02 -0800
X-CSE-ConnectionGUID: rJNFJ/ztRfW0VfwlIRvRow==
X-CSE-MsgGUID: 2c2vQTBQQiOa1enwghiAng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="98038547"
Received: from rvodapal-desk.iind.intel.com ([10.145.162.163])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 09:32:00 -0800
From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: balasubramani.vivekanandan@intel.com, matthew.d.roper@intel.com,
 lucas.demarchi@intel.com, gustavo.sousa@intel.com,
 clinton.a.taylor@intel.com, matthew.s.atwood@intel.com,
 dnyaneshwar.bhadane@intel.com, haridhar.kalvala@intel.com,
 shekhar.chauhan@intel.com
Subject: [PATCH] drm/i915/display: Don't program DBUF_CTL tracker state service
Date: Tue, 17 Dec 2024 22:59:55 +0530
Message-Id: <20241217172955.3027271-1-ravi.kumar.vodapalli@intel.com>
X-Mailer: git-send-email 2.25.1
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

While display initialization along with MBUS credits programming
DBUF_CTL register is also programmed, as a part of it the tracker
state service field is also set to 0x8 value when default value is
other than 0x8 which are for platforms past display version 13.
For remaining platforms the default value is already 0x8 so don't
program them.

Bspec: 49213
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 34465d56def0..cbcc4bddc01f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1126,7 +1126,7 @@ static void gen12_dbuf_slices_config(struct intel_display *display)
 {
 	enum dbuf_slice slice;
 
-	if (display->platform.alderlake_p)
+	if (DISPLAY_VER(display) >= 13)
 		return;
 
 	for_each_dbuf_slice(display, slice)
-- 
2.25.1

