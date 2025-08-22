Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF58B32560
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Aug 2025 01:21:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6FB110EBCF;
	Fri, 22 Aug 2025 23:21:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bmAmhec1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3973F10E012;
 Fri, 22 Aug 2025 23:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755904916; x=1787440916;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NENaFPwTT8GF2lvhB9xQCUEg/L914GWHk/fKxOQLN14=;
 b=bmAmhec1DvL8bYUfXv5HsW/AAW91fYW7f0GMPSN1UujphQt1M+dRrdbc
 wwZnEfw72hwPCXjnzNg/p/p8fr20cOX+6SYHlN3eUEKEZikzzb1XUI19N
 5Jsoo9ahcbQ+QgjNyrI7wGR6bTcTNBd3WCPDoIWi3bPnBRayOHxj09+Fz
 7/U0M8DwtOvIlbBJO7LpxGw608IYUhI2QdA/pf826zhQ7RLaoknXgj5GV
 2hGUURQQsOZVpf9Wc3w+cZsfJBofX3A5q0sE29+YDE/dWDRml8auPyxKg
 HiLkoz8RpYaKJTH1DMMAfBUnD3kDlGOhWZCqF6mulQUZwUTDRjmUgKGTH g==;
X-CSE-ConnectionGUID: JpUC5RvmQYG/LNr2j/yGCw==
X-CSE-MsgGUID: +tx1DEECTgOBrOwW4LN2TA==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="58143524"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="58143524"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2025 16:21:56 -0700
X-CSE-ConnectionGUID: mJD0bhJ6QeCCpd8ocp+oqw==
X-CSE-MsgGUID: va0Ms2xvS6i354lEObMaLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="168049350"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa010.jf.intel.com with ESMTP; 22 Aug 2025 16:21:54 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v6 0/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Date: Sat, 23 Aug 2025 01:23:20 +0200
Message-ID: <20250822232321.657000-1-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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

Next version of v5 [1]. Took into consideration review from Jouni [2].

[1] https://lore.kernel.org/intel-gfx/20250714160931.821383-1-michal.grzelak@intel.com
[2] https://lore.kernel.org/intel-gfx/3e4f40d5310b2fd4169f6befde7f7a7e611a4e09.camel@intel.com

Test-with: 20250703140451.491593-2-michal.grzelak@intel.com

Best regards,
Michał

---
Changelog:
v5->v6
- move setting no_psr_reason to intel_psr_post_plane_update [Jouni]
- remove setting no_psr_reason when disabling PSR is temporary [Jouni]

v4->v5
- fix indentation errors from checkpatch

v3->v4
- change format of logging workaround #1136

v2->v3
- change reason description to be more specific [Mika]
- remove BSpecs number & WA number from being written into no_psr_reason
- replace spaces with tabs
- provide correct Test-with tag to the IGT patch, instead of series

v1->v2
- set other reasons than "PSR setup timing not met"
- clear no_psr_reason when activating PSR.

Michał Grzelak (1):
  drm/i915/display: Add no_psr_reason to PSR debugfs

 .../drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_psr.c      | 31 ++++++++++---------
 2 files changed, 19 insertions(+), 14 deletions(-)

-- 
2.45.2

