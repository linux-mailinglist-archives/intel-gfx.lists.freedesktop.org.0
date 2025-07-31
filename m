Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E23B16E5E
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 11:19:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF26310E741;
	Thu, 31 Jul 2025 09:19:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YovRUC22";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9ED3F10E740;
 Thu, 31 Jul 2025 09:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753953583; x=1785489583;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wvli+2F54gcxoTIagoY+Dwj70FsngZ36Qhg2gLE75D8=;
 b=YovRUC22fexpBLtjbBUT/EQ2riIg45dRFLX7xFNhOBXu3ndmFLwqYdcR
 Dp2/+KpJqB5YTIVqxMCSQo+zyq6gWMV7Fu4Q7YazoTB645mrtiV+YrUaq
 gZtnFhkwtDRnXamf90YxX96DchLRoO0Dc5owUVLPE8Yfwj9g41Zq4oBns
 EMm5o5tJLMZpxNf8O0MTLjjIQlspJietDE6eny/cW9nzvXcaVWDNtmJrv
 lPlMtXCpMrR0uHOTuegKRy924bWf8jF+LcR0RZO8e3qH4xtSxIwN84jPm
 0IiJZlUYX2pcNsy7ZvHivVjlndvXEse+iV7YncBH0XthRzmce46V79Ngq A==;
X-CSE-ConnectionGUID: 05HR7Jj3Q+qpwIgA9MJ+1g==
X-CSE-MsgGUID: QgURS5yoRzmlcjoRSCdHMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="56419926"
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="56419926"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 02:19:42 -0700
X-CSE-ConnectionGUID: omssWDiESiKwlAzxP+Cb1A==
X-CSE-MsgGUID: Dl1hlSwCRROCJpatkcFBaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="167448640"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.108])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 02:19:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/3] drm/i915/display: keep forward declarations together
Date: Thu, 31 Jul 2025 12:19:22 +0300
Message-Id: <2c74fa7f2b7d5ecf8247aa5bff05d104ad60cf9e.1753953530.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1753953530.git.jani.nikula@intel.com>
References: <cover.1753953530.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Adhere to prevalent style.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_global_state.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_global_state.h b/drivers/gpu/drm/i915/display/intel_global_state.h
index 4f304e2c47e0..e1efa530cc86 100644
--- a/drivers/gpu/drm/i915/display/intel_global_state.h
+++ b/drivers/gpu/drm/i915/display/intel_global_state.h
@@ -11,6 +11,7 @@
 
 struct intel_atomic_state;
 struct intel_display;
+struct intel_global_commit;
 struct intel_global_obj;
 struct intel_global_state;
 
@@ -26,8 +27,6 @@ struct intel_global_obj {
 	const struct intel_global_state_funcs *funcs;
 };
 
-struct intel_global_commit;
-
 struct intel_global_state {
 	struct intel_global_obj *obj;
 	struct intel_atomic_state *state;
-- 
2.39.5

