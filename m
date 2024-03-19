Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39EED87FDA2
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Mar 2024 13:33:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F2BE10FA4E;
	Tue, 19 Mar 2024 12:33:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S0vNpuVD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 773CB10FA4E
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Mar 2024 12:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710851627; x=1742387627;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JIXi3ZgH3Nkub1BYRl+f8QvjMpUzSkLvTjLVjZuvhEg=;
 b=S0vNpuVDRpKOzrm6/tc6cbQD7/htpm+g0MQzZP9TSns3KVC2aq0VREA9
 jWsN//wZOEUOh/437fUzs7nz1llJseuYN6KsD0DoTZMEzz5WqNIk4uers
 6qW74f/pZithQFqnzf5R0PuISIiqUp0Y1IR7IqGJksuOMzpKnBNn883ZR
 uIjsTG/0/0FwRnw+1FfT4cOdU93NfFlCADzrAH7zs214/f5wSIXW0l4Fb
 fOjgqTsSo4eWxewWs5TtONZijTHO7KUvDnYbxu6CW+67wdNuguzn5zKRf
 xPl2TyOn7Du1qe9EpOlk3At084/oNVveWV1AY9DfzOiXkrYcgWI6V8qnt A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="5894305"
X-IronPort-AV: E=Sophos;i="6.07,136,1708416000"; 
   d="scan'208";a="5894305"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 05:33:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,136,1708416000"; d="scan'208";a="18437979"
Received: from jlaghzal-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.53.224])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 05:33:45 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 4/5] drm/i915/display: Add definition for MCURSOR_MODE_64_2B
Date: Tue, 19 Mar 2024 14:33:26 +0200
Message-Id: <20240319123327.1661097-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240319123327.1661097-1-jouni.hogander@intel.com>
References: <20240319123327.1661097-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

MCURSOR_MODE_64_2B is used in Wa_16021440873. Add define for it.

Bspec: 69837

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d6193c858a74..9bae815ac6c4 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3053,6 +3053,7 @@
 #define   MCURSOR_MODE_DISABLE		0x00
 #define   MCURSOR_MODE_128_32B_AX	0x02
 #define   MCURSOR_MODE_256_32B_AX	0x03
+#define   MCURSOR_MODE_64_2B		0x04
 #define   MCURSOR_MODE_64_32B_AX	0x07
 #define   MCURSOR_MODE_128_ARGB_AX	(0x20 | MCURSOR_MODE_128_32B_AX)
 #define   MCURSOR_MODE_256_ARGB_AX	(0x20 | MCURSOR_MODE_256_32B_AX)
-- 
2.34.1

