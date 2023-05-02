Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D74A6F4775
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 17:39:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A0B610E39D;
	Tue,  2 May 2023 15:38:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA9B510E39D
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 15:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683041937; x=1714577937;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+QradLMzJ+RSZsZH9yaP2U3TFIEhYH+rVYbd3S5dnIU=;
 b=dxEfIuRblguRk+Ux0UIPZu4L+CY57xxRJ9qw6T0VCJdp7Rhe+iJy8+2g
 WYPnRXopREJL8w1p07zvKwgXAUansCeejHIiXZec3pjF0GMEHhIF5ba5o
 twRDGTkDSc1128jXu2ryO0h3ra5pbUEg/qB6T5tUNC4Rgjm2Ft4Oawc0R
 7b5+Bcsbeqe0bisrqTAiJf1Y/czfZIQIzGBdgz86b4hELkGIob5Lznf3m
 4zMo0uTl3nTuMxjQQJyQEds5srsSCcSEPbP/SvAt/bFiF2GFXvpFStWqo
 D44e0b/Jb0u6Kuuj9RPf9s3WzdJfCOyxzMBKV9+u9PwOEhXJrfUAY7dLX w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="434746241"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="434746241"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:38:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="726791151"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="726791151"
Received: from awojtkie-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.50])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:38:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 May 2023 18:37:32 +0300
Message-Id: <dafd771bb75cf14965dd3b666987c58a438de134.1683041799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683041799.git.jani.nikula@intel.com>
References: <cover.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/24] drm/i915/engine: hide preempt_hang
 selftest member from kernel-doc
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

drivers/gpu/drm/i915/gt/intel_engine_types.h:293: warning: Function parameter or member 'preempt_hang' not described in 'intel_engine_execlists'

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_types.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 960291f88fd6..e99a6fa03d45 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -289,6 +289,7 @@ struct intel_engine_execlists {
 	 */
 	u8 csb_head;
 
+	/* private: selftest */
 	I915_SELFTEST_DECLARE(struct st_preempt_hang preempt_hang;)
 };
 
-- 
2.39.2

