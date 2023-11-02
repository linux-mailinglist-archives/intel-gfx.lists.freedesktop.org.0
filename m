Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51CF77DF6D8
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 16:46:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C81D410E90A;
	Thu,  2 Nov 2023 15:46:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F0D110E90A
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 15:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698939993; x=1730475993;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xjI6ektlKDFbZNpUNCmmSSLnHKmABKwvh8SruqbADbs=;
 b=mnL5SLNUnwzAQ3A+umpvcy+etD6HEhVt9uaucXOt9HEynAjtzT7e+8Hs
 APySPTuI1Kl2aEkNE+ixUVGaXFVWpNXop2DRvAjlmI6/pHfWSZJY6GhCu
 xvAycIt1sDsx2tmE2F2mKQOF3TRScUZYAd96o+O3un7pnVulxHHRnsQ2e
 V6py2Ai/RwOVfFoneTODZ6QZw24uteSFheEL5kTY0fzmQZDnB4wnVecpf
 7PLJ/TJBVkoFCp1gyYlZjXljymwtA9UvJKMyEX3QGF4mAW0gXozPomPHE
 RteDqavMTNwtwYLVWBiLtkbeY3GCDpo74BxLkKJXskJmbxlavXAL1+VGl Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="455222682"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="455222682"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 08:46:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; 
   d="scan'208";a="2466136"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 08:46:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Nov 2023 17:46:23 +0200
Message-Id: <20231102154623.2288054-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231102154623.2288054-1-jani.nikula@intel.com>
References: <20231102154623.2288054-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: add bool type checks in
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
index 268c16ec9d00..2cd4378f64ac 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5021,6 +5021,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 #define PIPE_CONF_CHECK_X(name) do { \
 	if (current_config->name != pipe_config->name) { \
+		BUILD_BUG_ON_MSG(__same_type(current_config->name, bool), \
+				 __stringify(name) " is bool");	\
 		pipe_config_mismatch(fastset, crtc, __stringify(name), \
 				     "(expected 0x%08x, found 0x%08x)", \
 				     current_config->name, \
@@ -5031,6 +5033,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 #define PIPE_CONF_CHECK_X_WITH_MASK(name, mask) do { \
 	if ((current_config->name & (mask)) != (pipe_config->name & (mask))) { \
+		BUILD_BUG_ON_MSG(__same_type(current_config->name, bool), \
+				 __stringify(name) " is bool");	\
 		pipe_config_mismatch(fastset, crtc, __stringify(name), \
 				     "(expected 0x%08x, found 0x%08x)", \
 				     current_config->name & (mask), \
@@ -5041,6 +5045,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 #define PIPE_CONF_CHECK_I(name) do { \
 	if (current_config->name != pipe_config->name) { \
+		BUILD_BUG_ON_MSG(__same_type(current_config->name, bool), \
+				 __stringify(name) " is bool");	\
 		pipe_config_mismatch(fastset, crtc, __stringify(name), \
 				     "(expected %i, found %i)", \
 				     current_config->name, \
@@ -5051,6 +5057,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 #define PIPE_CONF_CHECK_BOOL(name) do { \
 	if (current_config->name != pipe_config->name) { \
+		BUILD_BUG_ON_MSG(!__same_type(current_config->name, bool), \
+				 __stringify(name) " is not bool");	\
 		pipe_config_mismatch(fastset, crtc,  __stringify(name), \
 				     "(expected %s, found %s)", \
 				     str_yes_no(current_config->name), \
-- 
2.39.2

