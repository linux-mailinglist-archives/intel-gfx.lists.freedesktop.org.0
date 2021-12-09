Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A4146EF24
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 17:59:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BADB710E4C6;
	Thu,  9 Dec 2021 16:54:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E7D110E11E
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 13:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639057874; x=1670593874;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Aav/9m46kbbXXGgtboaAGZ5fwVgPXX1cj2xxmziqrEM=;
 b=d7Q3SSAK8nbHtYBTV5z5YmVm8CvkqWBjHxkkcyTQP++kICHcetnwK2a3
 39zw8/NwUOwMm+cvx3T7om7zR4FBeW5l3Y7z/3FLl3qWU5hyZEUQmAcVQ
 xfercQL5vgjXlpJT63khxVMIuzJyzX2hkkEMF50h9h4dUDqoqEm4E27zL
 pzGbRDQrAbuv4Ox5OZNHBYUySSsxL49LVFiSSIQOAa66XxEYlBpKiHyla
 /Vb6GPy14ffpXMSk9mrpbvAFezK+9njgJpfz9ZKJrV7330uP8XYkNRkUY
 kfqNa7xD5QxG3DVoFdt504XJNgaVGVTyYTtjSWXPsEhE+IGojiS9++Z8r Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="238323914"
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="238323914"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 05:51:13 -0800
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="463237989"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.19.112])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 05:51:12 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Dec 2021 15:50:56 +0200
Message-Id: <488179aa90110d979e61104973b255161ec36057.1639057801.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1639057801.git.jani.nikula@intel.com>
References: <cover.1639057801.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/7] drm/i915/reset: remove useless
 intel_display_types.h include
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

Not needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_reset.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 63199f0550e6..b8ac454f2d96 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -6,7 +6,6 @@
 #include <linux/sched/mm.h>
 #include <linux/stop_machine.h>
 
-#include "display/intel_display_types.h"
 #include "display/intel_overlay.h"
 
 #include "gem/i915_gem_context.h"
-- 
2.30.2

