Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F34609625D3
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2024 13:19:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8438610E421;
	Wed, 28 Aug 2024 11:19:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZRpIZs5T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F126410E369
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2024 11:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724843958; x=1756379958;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IsDnd6b/a+buXQlmmNe4BzXMS1SKvTYVcPT56dWT2x8=;
 b=ZRpIZs5TctJ/OPqGO/5CgCZBgvEIrpms6TBct5MHuZODefp9n+0sio+K
 5WRHlz50UEEe/tSLUgtY/cRoLpoRe+LP9ugkmIVu1WBfKTaa5tYhZJ7Gp
 aTbWroTuIyVIaJNUUmV+PbktvQFG4LFpuU0lxUwy4W0JTyCKUN57hHa3P
 WWAglMnkUcHXr8ruutpvxQovNREqUwj2qobYdyN6SjYFTcB5Fvg/TzqKw
 X/TDK+6dBzd1qoDYhxVyX+JHTtzuR6QlWeuIKz0rWoMOKRLNa27g4gqZh
 H6a1U7Lr1t5nOjGMy4/6A+z7eIiFQXBJ1FUbfeDX7L1VvH+SsEh2a/+PN A==;
X-CSE-ConnectionGUID: oQtJ8mmXRGqJjg71uBrZHw==
X-CSE-MsgGUID: QyBTEADXTj+VomBYVxwjkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="23171957"
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="23171957"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 04:19:17 -0700
X-CSE-ConnectionGUID: 28cUibARTnSXJ4pwfyIdJg==
X-CSE-MsgGUID: vNX6p8pwRIaOf8/KRxxhFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="67553200"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.110])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 04:19:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/2] drm/i915: nomodeset and i915.modeset cleanups
Date: Wed, 28 Aug 2024 14:19:07 +0300
Message-Id: <cover.1724843853.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

Is it time? It is.

Jani Nikula (2):
  drm/i915: fail module probe on nomodeset and i915.modeset=0
  drm/i915: deprecate the i915.modeset module parameter

 drivers/gpu/drm/i915/i915_module.c | 9 +++++++--
 drivers/gpu/drm/i915/i915_params.c | 3 +--
 2 files changed, 8 insertions(+), 4 deletions(-)

-- 
2.39.2

