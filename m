Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5346F7CA67F
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 13:18:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BDE810E1DA;
	Mon, 16 Oct 2023 11:18:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3ADAF10E1C6
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Oct 2023 11:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697455070; x=1728991070;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zQocTKLnwGEsBzcrR5/sv+Jmvc2r/Id3Y32z9vGI7Vg=;
 b=jeO+SU/j1AtzRLVX/xgklV8F4W5WLr8HRjgP4MDwpi8ZEEe5JMuHsnGV
 gUavKc1n5BYLUcukzOAv+5UiteegnDY386ujCvR+c1CL55xo3JcC9+4Sz
 QQ04TQqlfOG0EDW4ez9BkAMx0FdAYGUBKEb2TrjK4mSqSYQIPRbC2MYsC
 QjE5dwWjgt8dbG/Np1al6JoHIFMKlgclws+c/EkNO7AdsTCNDsygHOPp+
 HF5/jzA/at1SZJ3KxOxwr6jIsommGCxWW8tC86BWWrYn+GqpXI7r+R1jc
 uhex0OgGzbgia+KMeEuCgDZt8buE+i/WMcM9VPjKkxe49jEF+RY5pDsit Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="385341417"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="385341417"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 04:17:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="821532695"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="821532695"
Received: from dleve-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.41.143])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 04:17:48 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Oct 2023 14:16:58 +0300
Message-Id: <20231016111658.3432581-25-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231016111658.3432581-1-jouni.hogander@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 24/24] drm/i915/display: Use same permissions
 for enable_sagv as for rest
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

Generally we have writable device parameters in debugfs. No need
to allow writing module parameters.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_params.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 8e6353c1c25e..077f2dee2975 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -50,7 +50,7 @@ intel_display_param_named_unsafe(enable_dc, int, 0400,
 intel_display_param_named_unsafe(enable_dpt, bool, 0400,
 	"Enable display page table (DPT) (default: true)");
 
-intel_display_param_named_unsafe(enable_sagv, bool, 0600,
+intel_display_param_named_unsafe(enable_sagv, bool, 0400,
 	"Enable system agent voltage/frequency scaling (SAGV) (default: true)");
 
 intel_display_param_named_unsafe(disable_power_well, int, 0400,
-- 
2.34.1

