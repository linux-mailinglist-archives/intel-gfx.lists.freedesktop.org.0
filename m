Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C70B02225
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jul 2025 18:48:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74BE410EA9A;
	Fri, 11 Jul 2025 16:48:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a+IfYmQO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 579CA10E3B0;
 Fri, 11 Jul 2025 16:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752252534; x=1783788534;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=suZUq2rcWFoAAUtnyFVpB7+dmB8ugONheIMWBh7XuHI=;
 b=a+IfYmQOGwHrKdnRKt6k+Qf3aMI0p9uclytvXMG24j3EsmI7X2dUzfnQ
 sEfx7GNrVWfjhN1OgLbPF42Tp/XslGxUNzrITs9DbNi9IOcNjmJzIi7dH
 XjCeM0QgMcS1gUgHehbn15ZGikq2H+9fPcT65Wbvpa1kIiSvPLqDt84so
 k+1/H0eKb9F3B3QvrHgrUcCgSUf04G5mcLoKKVO8Z4Sbi6i6fWbsSjlVf
 8nHgkpGi5XWj51k1yPx/gWF/xOU0QfXy1jWy/J4spnY9dPJbgqk6jNYGn
 MKgBkch5M4+XFV6f3NvF9O2BDD9IANJ5Yy7w9PLI9y+ZiZGgm220sV5P+ A==;
X-CSE-ConnectionGUID: Fz+Gz8ygRX666s4kfzXxTw==
X-CSE-MsgGUID: ClnP3ZzXSkCh3iruVvKm8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="64815887"
X-IronPort-AV: E=Sophos;i="6.16,304,1744095600"; d="scan'208";a="64815887"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2025 09:48:53 -0700
X-CSE-ConnectionGUID: 4ijP/vGlS2GrQcBJ4fTcxw==
X-CSE-MsgGUID: PWZySnfdThu1JUVwsXv6Fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,304,1744095600"; d="scan'208";a="160428611"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa003.fm.intel.com with ESMTP; 11 Jul 2025 09:48:52 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v4 0/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Date: Fri, 11 Jul 2025 18:49:58 +0200
Message-ID: <20250711164959.608303-1-michal.grzelak@intel.com>
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

Next version of v3 [1]. 

[1] https://lore.kernel.org/intel-gfx/20250624164823.4118263-1-michal.grzelak@intel.com

Test-with: 20250703140451.491593-2-michal.grzelak@intel.com

Best regards,
Michał

---
Changelog:
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

 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 38 ++++++++++++-------
 2 files changed, 26 insertions(+), 14 deletions(-)

-- 
2.45.2

