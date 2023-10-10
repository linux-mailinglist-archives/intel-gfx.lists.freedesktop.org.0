Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6C57BFA1A
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 13:43:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADC1510E1E0;
	Tue, 10 Oct 2023 11:43:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC90810E349
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 11:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696938206; x=1728474206;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=frZWg1Ee1M6BjC1+PtW16QUKTb0eoFuvW4RfqzRu6os=;
 b=V2N80hILvcIJh94zbFTnw6obYwba4tXL+Wk4DKIDXXp1OLdI7bXJhmlU
 1VHoot/OTwl/YzHHz495QHShZsbMqI90cL+gGDYSTz8r2sYZhlylKl6UM
 ii5xYjt/llWJVcJotD1mACakrfONCW9Z6g8/bdjhN/sggvLi5QCys+cEG
 qsl2Jn3EQBRH8uVSIb9zD1Waj1OYDHWj5LATLZ15RtnEFEJxhG2CfH9ct
 ElKmgCsjsuLxeZ0yeTpcocbf0BbOZSt2C5/SOY4dFtYLAfu3naZctt9uo
 /6sYtxEqm8RHqtrS5YJXOlEodhHLRkJJ4OTDibwBUDQy8D6G6akjqlyVQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="470635493"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="470635493"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:43:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="869655434"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="869655434"
Received: from snutt-mobl1.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.57.138])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:43:25 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 14:41:20 +0300
Message-Id: <20231010114120.2504103-26-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231010114120.2504103-1-jouni.hogander@intel.com>
References: <20231010114120.2504103-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 25/25] drm/i915/display: Use same permissions
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
index ab52f7031a4d..2088377ff0bf 100644
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

