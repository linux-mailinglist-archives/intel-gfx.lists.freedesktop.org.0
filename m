Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2197F597D
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 08:41:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF2FD10E6D9;
	Thu, 23 Nov 2023 07:41:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C895010E6D8
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 07:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700725298; x=1732261298;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EXwDKj49OY4JHiijqPEvoESYgHC5K3259AqxBxXmxHs=;
 b=WPjxxrrcUT4rztre4z4LgeY00lZxHaSNQ+nVMORHedmUMZPyCCgt4BDv
 a1fRjLu8BnosrEylDAJse9ZVGqVzbfpbg1OLJ0R72oj0ITNJdivwc67WM
 SuGf3zSq3wygzkQcz1PBaTIGegLxeNWC1X+xOwmkhW6Fqg/QyYHgyzhwe
 S8s2yGbBusN9W87IRdSjc6DdVQAEASWb6EWtY1YTJC1e/jzHl046LXpqE
 ibBrdlVx3pQP5sHWObCIhUZ9OeZScnVYxOPf2GwAglMHJUz7/0o9TU1qW
 iINh7VJT1A0+1gW+4X8jAICtU7AQjeknaYEyrLN02hcxQldlxcmlB8SIj A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="391093299"
X-IronPort-AV: E=Sophos;i="6.04,221,1695711600"; d="scan'208";a="391093299"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 23:41:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="884903143"
X-IronPort-AV: E=Sophos;i="6.04,221,1695711600"; d="scan'208";a="884903143"
Received: from igorhaza-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.39.214])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 23:41:37 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Nov 2023 09:41:19 +0200
Message-Id: <20231123074120.1641630-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231123074120.1641630-1-jouni.hogander@intel.com>
References: <20231123074120.1641630-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 3/4] drm/i915/display: Handle invalid
 fb_modifier in intel_fb_modifier_to_tiling
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

Lookup_modifier is returning INTEL_PLANE_CAP_TILING_4 on invalid
fb_modifier value. Use lookup_modifier_or_null in
intel_fb_modifier_to_tiling and return I915_TILING_NONE in case
lookup_modifier_or_null returns null.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index a235ec0f192d..f63f56b24b11 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -303,7 +303,14 @@ lookup_format_info(const struct drm_format_info formats[],
 
 unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier)
 {
-	u8 tiling_caps = lookup_modifier(fb_modifier)->plane_caps &
+	const struct intel_modifier_desc *md;
+	u8 tiling_caps;
+
+	md = lookup_modifier_or_null(fb_modifier);
+	if (!md)
+		return I915_TILING_NONE;
+
+	tiling_caps = lookup_modifier_or_null(fb_modifier)->plane_caps &
 			 INTEL_PLANE_CAP_TILING_MASK;
 
 	switch (tiling_caps) {
-- 
2.34.1

