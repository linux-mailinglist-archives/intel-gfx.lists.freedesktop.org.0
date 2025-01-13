Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F90A0C2B4
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 21:43:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E08F10E6F9;
	Mon, 13 Jan 2025 20:43:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MDSOXBjo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CEC310E24D;
 Mon, 13 Jan 2025 20:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736801028; x=1768337028;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SfEJfSyNKrucx6/HVsFmQGdwqnngEsaw3yIs0ba3ABQ=;
 b=MDSOXBjo0uWlOWuk6lbx0JcfwqXIUtblvjyI5KwCon7+jlm7TdcFOeB/
 NWoxAxqEJ6ru3Jwx1JExedzWvqYKA7Pi/+RL5KX4OjKOOTI/FZcgJ8za1
 tH+7yCyi2CaaknLQRkJpE1wL9GKdQV9ZVHMIk4hQCdF8g83BTJUiM/JOp
 6iNExkrYGIAeQ7NctvGICb5FQwyc0VFZH4kcItAv0HjtFLxHqEE3QsPPk
 b3VQHl2wY5yDfPFRrHQoXdIiaNACHQpwCiqAc8seY5B4jhMxkJ1EknbCG
 18XH/lS5MVq68HrIOLZbyHgQoA9gMKxXNDL+qZMsOSvFuq8u8jx9FoIhb g==;
X-CSE-ConnectionGUID: OIBuk2obTkaVjPY+1lLjiQ==
X-CSE-MsgGUID: LjIS5KJEQo+Okf/lEoXpZg==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="54627168"
X-IronPort-AV: E=Sophos;i="6.12,312,1728975600"; d="scan'208";a="54627168"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 12:43:47 -0800
X-CSE-ConnectionGUID: zUosmqc6TcaydokYclthGQ==
X-CSE-MsgGUID: +eJ9uXPFQkaHfhZ6iZTSVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,312,1728975600"; d="scan'208";a="135417695"
Received: from ldmartin-desk2.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.108.25])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 12:43:46 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 3/3] drm/i915/dmc_wl: Track pipe interrupt registers
Date: Mon, 13 Jan 2025 17:38:58 -0300
Message-ID: <20250113204306.112266-4-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.48.0
In-Reply-To: <20250113204306.112266-1-gustavo.sousa@intel.com>
References: <20250113204306.112266-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Pipe interrupt registers live in their respective pipes' power wells,
which are below PG0. That means that they must also be tracked as
registers that are powered-off during dynamic DC states.

There are probably more ranges that we need to track down and add to the
powered_off_ranges. However, let's make this change only about pipe
interrupt registers to fix some vblank timeouts observed due to the DMC
wakelock not being taken for those registers.

In the future, we might want to replace powered_off_ranges with a new
table to represent registers in PG0, which should be probably easier to
maintain. Any register not belonging to that table should be considered
powered off during dynamic DC states and, as such, requiring the DMC
wakelock for access.

Bspec: 72519, 71583
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 1bdc08e6aa45..43884740f8ea 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -67,6 +67,7 @@ struct intel_dmc_wl_range {
 };
 
 static const struct intel_dmc_wl_range powered_off_ranges[] = {
+	{ .start = 0x44400, .end = 0x4447f }, /* PIPE interrupt registers */
 	{ .start = 0x60000, .end = 0x7ffff },
 	{},
 };
-- 
2.48.0

