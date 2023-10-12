Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BA87C6DFF
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 14:24:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB1D910E4B9;
	Thu, 12 Oct 2023 12:24:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80F4410E13C
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 12:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697113494; x=1728649494;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=mDjxN41u7P02d+995R8F8nlKl7+pcQBRsj84Fe4cPPw=;
 b=P7Agg7ogV8zw4/eO6BGQEIw+D5+P8H9biBTnJjFegnkp9RLU5nzFTIaZ
 dq4Y57RGmdwiWXqEjRUq//NtNTK6a+hdyZf4A4VeUjKhiMTS7e9L2cyud
 krAjziluaGBCQhS8FzWAbnuTFtioMh17oNYPf0cXt7ANnVL7vfPA1zi1o
 eZPRONscexgz0Ylqt5ZSihytlnovMG4DoNuNZCfbNWJ3TZhgBOkuMEa1j
 fzObSTqOkQsAr4RYMEifAS0yY9dyuikAdrDMszPasRcTTvb6bfsw390MQ
 aNmFgBMWMaO6YZijDXG+iGFce3kgHb5r8mReAy9lKxvpugeyAcoHVsYZY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="382140850"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="382140850"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 05:24:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="844979017"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="844979017"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by FMSMGA003.fm.intel.com with SMTP; 12 Oct 2023 05:24:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Oct 2023 15:24:51 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Oct 2023 15:24:39 +0300
Message-ID: <20231012122442.15718-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231012122442.15718-1-ville.syrjala@linux.intel.com>
References: <20231012122442.15718-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/6] drm/i915/guc: Clean up zero initializers
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Just use a simple {} to zero initialize arrays/structs instead
of the hodgepodge of stuff we are using currently.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index 331cec07c125..a4da0208c883 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -1101,8 +1101,8 @@ guc_capture_create_prealloc_nodes(struct intel_guc *guc)
 static int
 guc_capture_extract_reglists(struct intel_guc *guc, struct __guc_capture_bufstate *buf)
 {
-	struct guc_state_capture_group_header_t ghdr = {0};
-	struct guc_state_capture_header_t hdr = {0};
+	struct guc_state_capture_group_header_t ghdr = {};
+	struct guc_state_capture_header_t hdr = {};
 	struct __guc_capture_parsed_output *node = NULL;
 	struct guc_mmio_reg *regs = NULL;
 	int i, numlists, numregs, ret = 0;
-- 
2.41.0

