Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF0972F415
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jun 2023 07:18:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF6AD10E0D5;
	Wed, 14 Jun 2023 05:18:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A244B10E0D5
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jun 2023 05:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686719898; x=1718255898;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XZzHGnNKHOnnuadzPhCEzf7IILw4V7bCBPiK6NYA3uk=;
 b=LhioQt5AtX9UiRlEOnsB836gSJkodX+m+vO+T5bllmzBfG932lb6LllC
 Vyc4cgB7pRLRNifPODfkQ9CtRlAZydCRF2BlKfKJEgWRYzcfcmVCyNM/k
 +yvxJbVncSj+DY0pBhF0Ex9PUo7jLhZ80zCANUhJgRAftBRkycGxCdYRk
 0oeNhRQ8xMi2Hvhwm2MseMAnK/3YHTjDPb8KUIr3FJE87/+HH7LfKon9o
 QM1lXGyR4eTclaRLVYxQxP6acXvWzWQKqhCnZRQn5Q+bJk9VJO/jI0aOw
 q4+a8TJ5o9QC+qHl1QYV5rjbDYuuXfabL9zb4jnigEwLAnXyrPUQAUC2E w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="348184433"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="348184433"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 22:18:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="715059455"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="715059455"
Received: from lcoutoda-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.63.4])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 22:18:16 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Jun 2023 08:17:30 +0300
Message-Id: <20230614051731.745821-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230614051731.745821-1-jouni.hogander@intel.com>
References: <20230614051731.745821-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915/fbc: Make FBC check stolen at
 use time
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

As a preparation for Xe change stolen memory initialization check to be
done in use-time instead of during initialization.

In case of xe, stolen memory is initialised much later so it can't be
checked during init. There is no specific reason to check this in init for
i915 either -> perform the check in use-time. This also gives us benefit
fbc_no_reason reporting missing initialization being reason for disabled
fbc.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index a18e84efe911..da8166eedf93 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1056,6 +1056,11 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	if (!fbc)
 		return 0;
 
+	if (!i915_gem_stolen_initialized(i915)) {
+		plane_state->no_fbc_reason = "stolen memory not initialised";
+		return 0;
+	}
+
 	if (intel_vgpu_active(i915)) {
 		plane_state->no_fbc_reason = "VGPU active";
 		return 0;
@@ -1709,9 +1714,6 @@ void intel_fbc_init(struct drm_i915_private *i915)
 {
 	enum intel_fbc_id fbc_id;
 
-	if (!i915_gem_stolen_initialized(i915))
-		DISPLAY_RUNTIME_INFO(i915)->fbc_mask = 0;
-
 	if (need_fbc_vtd_wa(i915))
 		DISPLAY_RUNTIME_INFO(i915)->fbc_mask = 0;
 
-- 
2.34.1

