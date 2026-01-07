Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E756CFEC35
	for <lists+intel-gfx@lfdr.de>; Wed, 07 Jan 2026 17:02:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0837A10E630;
	Wed,  7 Jan 2026 16:02:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="abL9eFJu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D78610E630
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jan 2026 16:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767801761; x=1799337761;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fxEsEp1E2vg+zAwwcVne5v/zeorQuQ1P+cTt/jY3qUU=;
 b=abL9eFJuZcrt+EjBMtPDh0IRjdBJ+XrD/quNAX67L4Kfl9R/fNVIYK+C
 ycKRLRMc9hOlUDdcftnKrm2uv/3Feh1nr+wwO52wy6b8EVksiSOUIZdgv
 nc9qHmFfSPT8EggJcXC57ICVYfdSnKShxtlfctELSoFBBpukyc1VKYcGl
 NFYvdl3P7cbl5wu4cI+Fai5DWWYneFBCX2Xcv6wm8wX3AAJjRzvLoZNW7
 qEUeQvQ2zybKrDN7MKtDq6G1E/xaYu5K5PZYuYWo4s0rpCvGnChsrH765
 ChsuXiK7jPrRcIqFGQvhb4hHWp51ZEbR45jDLBoQ3YwUhki11KtxRHslw Q==;
X-CSE-ConnectionGUID: Y6ipiN4jSym/C/izeP/r0g==
X-CSE-MsgGUID: QU2HAf7VTdKHHrJlj82ZSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11664"; a="79477649"
X-IronPort-AV: E=Sophos;i="6.21,208,1763452800"; d="scan'208";a="79477649"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 08:02:32 -0800
X-CSE-ConnectionGUID: UAYcw6wQQhSa+wtdUSa7pw==
X-CSE-MsgGUID: nQes8eJaQUyaX5FFNrsNhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,208,1763452800"; d="scan'208";a="202163631"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.60])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 08:02:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Alexander Usyskin <alexander.usyskin@intel.com>
Subject: [PATCH] mei: late_bind: fix struct intel_lb_component_ops kernel-doc
Date: Wed,  7 Jan 2026 18:02:26 +0200
Message-ID: <20260107160226.2381388-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

Fix kernel-doc warnings on struct intel_lb_component_ops:

Warning: include/drm/intel/intel_lb_mei_interface.h:55 Incorrect use of
  kernel-doc format: * push_payload - Sends a payload to the
  authentication firmware

And a bunch more. There isn't really support for documenting function
pointer struct members in kernel-doc, but at least reference the member
properly.

Fixes: 741eeabb7c78 ("mei: late_bind: add late binding component driver")
Cc: Alexander Usyskin <alexander.usyskin@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 include/drm/intel/intel_lb_mei_interface.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/drm/intel/intel_lb_mei_interface.h b/include/drm/intel/intel_lb_mei_interface.h
index d65be2cba2ab..0850738a30fc 100644
--- a/include/drm/intel/intel_lb_mei_interface.h
+++ b/include/drm/intel/intel_lb_mei_interface.h
@@ -53,7 +53,8 @@ enum intel_lb_status {
  */
 struct intel_lb_component_ops {
 	/**
-	 * push_payload - Sends a payload to the authentication firmware
+	 * @push_payload: Sends a payload to the authentication firmware
+	 *
 	 * @dev: Device struct corresponding to the mei device
 	 * @type: Payload type (see &enum intel_lb_type)
 	 * @flags: Payload flags bitmap (e.g. %INTEL_LB_FLAGS_IS_PERSISTENT)
-- 
2.47.3

