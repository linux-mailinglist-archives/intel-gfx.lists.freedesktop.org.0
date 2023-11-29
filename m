Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6BE7FDE6C
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 18:33:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B396A10E644;
	Wed, 29 Nov 2023 17:33:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99ECA10E644
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Nov 2023 17:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701279206; x=1732815206;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E1e6Jv7CRhGUPPS7ftIR4dhYsec2f1hTVoG1w6LMaY4=;
 b=UbSBrMMXpMRIq05WRtw749dZOzAhzaiWIDwrGy5U0nh0DeKQoY/ConGo
 QkNJAqtuYpYah1bLPxVKUKy/Hzbid44/SNC4Eer5JTfHbgLZix6hdV2wu
 8c0w/8Y+pnRGJE2pkWDi1MfdJlYXqzkgBRUUvvRx7Zs46oqF5YjdtMSpx
 qz9qO/rSABc/SKkUCIxdxoTsCY3Uht6rg9kkwuym7KttcQLJSRQxRh/+o
 rByiNPJtA6PQ2Q6J4yMATnfDfV1OPqKcZ8UmY8frqQxfrc6dDX69ygVYg
 QFSUxplzi/Zs3OSLw4u0nKSHk1PxpktLN9Sck4ikfQYJEl9Xd4tQZ4Qew g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="479401427"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="479401427"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 09:33:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="1100598938"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="1100598938"
Received: from dstavrak-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.60.61])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 09:33:24 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Nov 2023 19:33:17 +0200
Message-Id: <20231129173317.1192269-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231129173317.1192269-1-jani.nikula@intel.com>
References: <20231129173317.1192269-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915: add bool type checks in
 PIPE_CONF_CHECK_*
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

Avoid bool/int mismatches in state checker macros.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d62cdae7ab6b..7d48bcdd5797 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4923,6 +4923,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 #define PIPE_CONF_CHECK_X(name) do { \
 	if (current_config->name != pipe_config->name) { \
+		BUILD_BUG_ON_MSG(__same_type(current_config->name, bool), \
+				 __stringify(name) " is bool");	\
 		pipe_config_mismatch(fastset, crtc, __stringify(name), \
 				     "(expected 0x%08x, found 0x%08x)", \
 				     current_config->name, \
@@ -4933,6 +4935,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 #define PIPE_CONF_CHECK_X_WITH_MASK(name, mask) do { \
 	if ((current_config->name & (mask)) != (pipe_config->name & (mask))) { \
+		BUILD_BUG_ON_MSG(__same_type(current_config->name, bool), \
+				 __stringify(name) " is bool");	\
 		pipe_config_mismatch(fastset, crtc, __stringify(name), \
 				     "(expected 0x%08x, found 0x%08x)", \
 				     current_config->name & (mask), \
@@ -4943,6 +4947,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 #define PIPE_CONF_CHECK_I(name) do { \
 	if (current_config->name != pipe_config->name) { \
+		BUILD_BUG_ON_MSG(__same_type(current_config->name, bool), \
+				 __stringify(name) " is bool");	\
 		pipe_config_mismatch(fastset, crtc, __stringify(name), \
 				     "(expected %i, found %i)", \
 				     current_config->name, \
@@ -4953,6 +4959,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 #define PIPE_CONF_CHECK_BOOL(name) do { \
 	if (current_config->name != pipe_config->name) { \
+		BUILD_BUG_ON_MSG(!__same_type(current_config->name, bool), \
+				 __stringify(name) " is not bool");	\
 		pipe_config_mismatch(fastset, crtc,  __stringify(name), \
 				     "(expected %s, found %s)", \
 				     str_yes_no(current_config->name), \
-- 
2.39.2

