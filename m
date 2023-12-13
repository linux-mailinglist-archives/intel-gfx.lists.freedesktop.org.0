Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA464810D44
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 10:24:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 114B910E74F;
	Wed, 13 Dec 2023 09:24:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 064C710E740
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 09:24:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702459465; x=1733995465;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=r7Pq36ILwCsEOY3rt4cnEZLz7cvKKFWZA92D2qdVpt4=;
 b=XhOST2Ybvrg8J9mwSdwBzQXfRxj+HlgIYxZib3U4aOiWWC1tN1EyA8Iq
 KUc2wzhSzrUmRZt/qZfNR1lF54Pl7XGTkLcYqRNHa/GJM7DT4KB4DWIh1
 C5mZOQTIaRSpOFFNLobj7KWv24yVo9ONK8kwrq4Q+WDJTlXuKoiEW1FtK
 8t9oeStkLkvgx0z8zx1KpTc0P/Dm1uJ1wlT/WHiZWYSdq43fKlfFoVsmA
 nv66/ZdbDxhQrHPlvlRlOgww33YcbRo83ScyHK6YFXqzzy/zak3+Dfy4q
 94Ej4gkaESUlHEohI01wvoQ594ugHn3Vd9eqFAMHe2oj9CLc0ewPC9fnU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="13632990"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="13632990"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 01:24:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="17665248"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 01:24:22 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/5] DP DSC min/max src bpc fixes
Date: Wed, 13 Dec 2023 14:46:27 +0530
Message-Id: <20231213091632.431557-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use helpers for source min/max src bpc appropriately for dp mst case and
to limit max_requested_bpc property min/max values. 

Rev2: Dropped patch to limit max_requested_bpc based on src DSC bpc
limits. Instead added change to ignore max_requested_bpc if its
too low for DSC.

Rev3: Updated patch#1 commit message.

Rev4: Rebased.

Rev5: Addressed Jani's comment on patch#3

Rev6: Added patch to fix return type for dsc_min/max_src bpc helpers to
int.

Ankit Nautiyal (5):
  drm/i915/dp: Simplify checks for helper intel_dp_dsc_max_src_input_bpc
  drm/i915/dp: Fix the max DSC bpc supported by source
  drm/i915/dp: Return int from dsc_max/min_src_input_bpc helpers
  drm/i915/dp_mst: Use helpers to get dsc min/max input bpc
  drm/i915/dp: Ignore max_requested_bpc if its too low for DSC

 drivers/gpu/drm/i915/display/intel_dp.c     | 47 +++++++++++++--------
 drivers/gpu/drm/i915/display/intel_dp.h     |  2 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 13 +++---
 3 files changed, 37 insertions(+), 25 deletions(-)

-- 
2.40.1

