Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF422DE677
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 16:24:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7A9F6E073;
	Fri, 18 Dec 2020 15:24:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 769B46E073
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Dec 2020 15:24:19 +0000 (UTC)
IronPort-SDR: KZ0rl6BNaUG9mfgbz4TzD1IkBbKXjrd2zj6FtICP6t/c+JjwYc6+Xg0S2KOfYgyKtLStiuo47c
 J+qY34vVQBwQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9839"; a="174681854"
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="174681854"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 07:24:19 -0800
IronPort-SDR: +oiY01vQcuUZteVl41AIr4iIMrC4jJrNNdVYdJDIIwvWGGcmSk7BcOPuZ0BNt0ZVykM+yOTCsG
 sIKfXUxoTKag==
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="354019251"
Received: from tsumesag-mobl2.amr.corp.intel.com (HELO rdvivi-mobl4.intel.com)
 ([10.212.179.227])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 07:24:18 -0800
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Dec 2020 07:24:12 -0800
Message-Id: <20201218152412.185886-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/dg1: Fix power gate sequence.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

sub-pipe PG is not present on DG1. Setting these bits can disable
other power gates and cause GPU hangs on video playbacks.

Fixes: 85a12d7eb8fe ("drm/i915/tgl: Fix Media power gate sequence.")
Cc: Dale B Stimson <dale.b.stimson@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index d7b8e4457fc2..79f63cdd8bfb 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -110,7 +110,7 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
 		GEN9_MEDIA_PG_ENABLE |
 		GEN11_MEDIA_SAMPLER_PG_ENABLE;
 
-	if (INTEL_GEN(gt->i915) >= 12) {
+	if (INTEL_GEN(gt->i915) >= 12 && !IS_DG1(gt->i915)) {
 		for (i = 0; i < I915_MAX_VCS; i++)
 			if (HAS_ENGINE(gt, _VCS(i)))
 				pg_enable |= (VDN_HCP_POWERGATE_ENABLE(i) |
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
