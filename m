Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F2A68D6F4
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 13:40:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D583010E20B;
	Tue,  7 Feb 2023 12:40:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69AC210E20B
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 12:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675773639; x=1707309639;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LzFk349dL/YjfQcP2WsnaBiicKpGazrGcGNhdMzpvZU=;
 b=QQuaxGBVy89lJXAaZd3gqPBbhqIyKVtkpLWPXcivJFAmao/DgWuvbbf/
 6awx45WpOuPelGJZE4tbkOqZNetzdMw8EJjF+x/Def8PVf5b617ogtjfM
 z2oLEh/+JvuFwl7NJJ3awwFJDsegM+BFWsiN2WsLVdNtzSiGfl4DySCCh
 q5DS+PuS4DqF1AT9D8ZFhSoXS5wQp0nD3D+kcpsiO6n7NVrkOF3cnd+Bv
 DTmSZzmVq5MzZNdatrWSCdEiIvqeSlSWlXAnBPwrhjN4HuZD9B/FzuzYa
 UIMoUiAEmcNU7jnjh8Qr13p1BPX/JHWMwwRde6hNA0NU+fXu3ztgRScXD A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="328136522"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="328136522"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 04:40:32 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="790791923"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="790791923"
Received: from tronach-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.11])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 04:40:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Feb 2023 14:40:23 +0200
Message-Id: <20230207124026.2105442-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/gt: add sparse lock annotation to
 avoid warnings
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

Annotate intel_gt_mcr_lock() and intel_gt_mcr_unlock() to fix sparse
warnings:

drivers/gpu/drm/i915/gt/intel_gt_mcr.c:397:9: warning: context imbalance in 'intel_gt_mcr_lock' - wrong count at exit
drivers/gpu/drm/i915/gt/intel_gt_mcr.c:412:6: warning: context imbalance in 'intel_gt_mcr_unlock' - unexpected unlock

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
index 169393a7ad88..a4a8b8bc5737 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
@@ -364,6 +364,7 @@ static u32 rw_with_mcr_steering(struct intel_gt *gt,
  *          function call.
  */
 void intel_gt_mcr_lock(struct intel_gt *gt, unsigned long *flags)
+	__acquires(&gt->mcr_lock)
 {
 	unsigned long __flags;
 	int err = 0;
@@ -410,6 +411,7 @@ void intel_gt_mcr_lock(struct intel_gt *gt, unsigned long *flags)
  * Context: Releases gt->mcr_lock
  */
 void intel_gt_mcr_unlock(struct intel_gt *gt, unsigned long flags)
+	__releases(&gt->mcr_lock)
 {
 	spin_unlock_irqrestore(&gt->mcr_lock, flags);
 
-- 
2.34.1

