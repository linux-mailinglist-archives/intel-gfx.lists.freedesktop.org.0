Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 007F4623331
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 20:10:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C60B910E625;
	Wed,  9 Nov 2022 19:10:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A585210E069
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 19:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668021022; x=1699557022;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=56Y9PEQQoXVoveTTRPDD6LAVS+X+5X0NWYvqIh44RYI=;
 b=CJAPiZeQZe7T8H6+G3jFFNcIX+o2lcKjqp+kIQaTWRiYdfKRgYEZ56/M
 GeF+0Z2Z54vqQPEudNaUPB7GS5qIWIt8xFW4Lsuqm1ONoVg+wEEtObwUd
 /Gz+9iB6dL5SphLmsS4Jko53Y+IC94UxQQO7nxd1Il0Jh6EHtxMfY31IQ
 h+wf0cgKHVSMQNXiNkpzvB6LmCxPdj7xxZ8WFAg4BHrmtRriYhkBvieYC
 tYlbBI7537ln6tMJTFDVW9ghl62rq3mwA8yWzBiUs6e9ZRI3KI+L20Mpe
 bMjcAeefc7y4UOcKHHqtYjkcdFP0qhFLpFXOEHU8epn6iGqogdrzfHYSb A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="291465719"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="291465719"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 11:10:22 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="668105796"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="668105796"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.6.201])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 11:10:18 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Wed,  9 Nov 2022 20:09:34 +0100
Message-Id: <20221109190937.64155-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] Fix timeout handling when retiring requests
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Chris Wilson <chris.p.wilson@intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fixes for issues discovered via code review while working on
https://gitlab.freedesktop.org/drm/intel/issues/7349.

Janusz Krzysztofik (3):
  drm/i915: Fix timeout handling when retiring requests
  drm/i915: Fix unintended submission flush after retire times out
  drm/i915: Fix 0 return value from DMA fence wait on i915 requests

 drivers/gpu/drm/i915/gt/intel_gt_requests.c | 19 +++++++++++++++----
 drivers/gpu/drm/i915/i915_request.c         |  2 +-
 2 files changed, 16 insertions(+), 5 deletions(-)

-- 
2.25.1

