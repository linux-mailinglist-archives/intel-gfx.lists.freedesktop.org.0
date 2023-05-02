Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1736F4778
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 17:39:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ADC910E5A2;
	Tue,  2 May 2023 15:39:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB80710E5A2
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 15:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683041946; x=1714577946;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xNNBXFSxp3FHTcyT18Ct9MiDIAqeuH2508oOklDfSLE=;
 b=lI8bzIT21wj2CADA1XaTWJu0d+5Di6LrOUy9oy42zUZDaevW2d6dWEpE
 LhLbiDITBGa4PqwVfvI5c5Oa5quFufToalDm9uB4bUeXouOTcQXvW61WP
 f7qtB6JlFPc8IyJclBIRTq6Fmlb5LZgzdQgN4hYdaVkFPVPcVNerzeyxN
 zZTo0rJD892RcuCrqQiVsaolx1XdqGPfzjjcKykwPfe8RIPd9YovSAGdf
 np8rlXfxnbZPpv3epiY3mYbzKjXrg7bBZmTNul+NB+oyIZ93BhKTnNORZ
 7W3NtpJcoowF7edGScWg0tmaem2BplsxEkHdP9KiBS4WNhn77jDov4Qom w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="350508121"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="350508121"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:39:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="761141470"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="761141470"
Received: from awojtkie-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.50])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:39:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 May 2023 18:37:34 +0300
Message-Id: <9c210d53fdbd6da5fac42e435855d269504919d7.1683041799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683041799.git.jani.nikula@intel.com>
References: <cover.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 17/24] drm/i915/guc: drop lots of kernel-doc
 markers
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

The documentation is closer to not being kernel-doc, so just drop the
kernel-doc markers.

drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:27: warning: Function parameter or member 'size' not described in '__guc_capture_bufstate'
drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:27: warning: Function parameter or member 'data' not described in '__guc_capture_bufstate'
drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:27: warning: Function parameter or member 'rd' not described in '__guc_capture_bufstate'
drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:27: warning: Function parameter or member 'wr' not described in '__guc_capture_bufstate'
drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:59: warning: Function parameter or member 'link' not described in '__guc_capture_parsed_output'
drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:59: warning: Function parameter or member 'is_partial' not described in '__guc_capture_parsed_output'
drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:59: warning: Function parameter or member 'eng_class' not described in '__guc_capture_parsed_output'
drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:59: warning: Function parameter or member 'eng_inst' not described in '__guc_capture_parsed_output'
drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:59: warning: Function parameter or member 'guc_id' not described in '__guc_capture_parsed_output'
drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:59: warning: Function parameter or member 'lrca' not described in '__guc_capture_parsed_output'
drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:59: warning: Function parameter or member 'reginfo' not described in '__guc_capture_parsed_output'
drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:62: warning: wrong kernel-doc identifier on line:
 * struct guc_debug_capture_list_header / struct guc_debug_capture_list
drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:80: warning: wrong kernel-doc identifier on line:
 * struct __guc_mmio_reg_descr / struct __guc_mmio_reg_descr_group
drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:105: warning: wrong kernel-doc identifier on line:
 * struct guc_state_capture_header_t / struct guc_state_capture_t /
drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:163: warning: Function parameter or member 'is_valid' not described in '__guc_capture_ads_cache'
drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:163: warning: Function parameter or member 'ptr' not described in '__guc_capture_ads_cache'
drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:163: warning: Function parameter or member 'size' not described in '__guc_capture_ads_cache'
drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:163: warning: Function parameter or member 'status' not described in '__guc_capture_ads_cache'
drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:491: warning: Function parameter or member 'marker' not described in 'guc_log_buffer_state'
drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:491: warning: Function parameter or member 'read_ptr' not described in 'guc_log_buffer_state'
drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:491: warning: Function parameter or member 'write_ptr' not described in 'guc_log_buffer_state'
drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:491: warning: Function parameter or member 'size' not described in 'guc_log_buffer_state'
drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:491: warning: Function parameter or member 'sampled_write_ptr' not described in 'guc_log_buffer_state'
drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:491: warning: Function parameter or member 'wrap_offset' not described in 'guc_log_buffer_state'
drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:491: warning: Function parameter or member 'flush_to_file' not described in 'guc_log_buffer_state'
drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:491: warning: Function parameter or member 'buffer_full_cnt' not described in 'guc_log_buffer_state'
drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:491: warning: Function parameter or member 'reserved' not described in 'guc_log_buffer_state'
drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:491: warning: Function parameter or member 'flags' not described in 'guc_log_buffer_state'
drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:491: warning: Function parameter or member 'version' not described in 'guc_log_buffer_state'

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h | 12 ++++++------
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  2 +-
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
index 9d589c28f40f..1b6c219e1675 100644
--- a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
@@ -12,7 +12,7 @@
 struct intel_guc;
 struct file;
 
-/**
+/*
  * struct __guc_capture_bufstate
  *
  * Book-keeping structure used to track read and write pointers
@@ -26,7 +26,7 @@ struct __guc_capture_bufstate {
 	u32 wr;
 };
 
-/**
+/*
  * struct __guc_capture_parsed_output - extracted error capture node
  *
  * A single unit of extracted error-capture output data grouped together
@@ -58,7 +58,7 @@ struct __guc_capture_parsed_output {
 #define GCAP_PARSED_REGLIST_INDEX_ENGINST  BIT(GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE)
 };
 
-/**
+/*
  * struct guc_debug_capture_list_header / struct guc_debug_capture_list
  *
  * As part of ADS registration, these header structures (followed by
@@ -76,7 +76,7 @@ struct guc_debug_capture_list {
 	struct guc_mmio_reg regs[];
 } __packed;
 
-/**
+/*
  * struct __guc_mmio_reg_descr / struct __guc_mmio_reg_descr_group
  *
  * intel_guc_capture module uses these structures to maintain static
@@ -101,7 +101,7 @@ struct __guc_mmio_reg_descr_group {
 	struct __guc_mmio_reg_descr *extlist; /* only used for steered registers */
 };
 
-/**
+/*
  * struct guc_state_capture_header_t / struct guc_state_capture_t /
  * guc_state_capture_group_header_t / guc_state_capture_group_t
  *
@@ -148,7 +148,7 @@ struct guc_state_capture_group_t {
 	struct guc_state_capture_t capture_entries[];
 } __packed;
 
-/**
+/*
  * struct __guc_capture_ads_cache
  *
  * A structure to cache register lists that were populated and registered
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index 4ae5fc2f6002..8bb9ed7c7b4d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -451,7 +451,7 @@ enum guc_log_buffer_type {
 	GUC_MAX_LOG_BUFFER
 };
 
-/**
+/*
  * struct guc_log_buffer_state - GuC log buffer state
  *
  * Below state structure is used for coordination of retrieval of GuC firmware
-- 
2.39.2

