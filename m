Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C0231A72E
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 22:59:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B34B26E219;
	Fri, 12 Feb 2021 21:59:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 822D46E219
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 21:59:27 +0000 (UTC)
IronPort-SDR: DMFZCHpAxJCFKn2rTR68iKBndTzec4ZOU7S6gRq8+YcyBobblvKFHrD8kSOJL3IKhmUOBpAeqA
 +uwmR3rhaNIw==
X-IronPort-AV: E=McAfee;i="6000,8403,9893"; a="170149856"
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="170149856"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 13:59:25 -0800
IronPort-SDR: NEs8JjTqyDaNK5BHIMlkITm3mPnZB3uj2Uk6Hae6pop1seXxjXCzArcKjyBWy2pNqZnBdNDO4p
 WswGcepAJmig==
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="416119454"
Received: from aaramire-mobl2.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.210.126])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 13:59:25 -0800
Date: Fri, 12 Feb 2021 13:59:25 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210212215925.3hhipkiqbznxi2xt@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210212211925.3418280-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210212211925.3418280-1-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: FPGA_DBG is display-specific
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 12, 2021 at 01:19:24PM -0800, Matt Roper wrote:
>Although the bspec's description doesn't make it very clear, the
>hardware architects have confirmed that the FPGA_DBG register that we
>use to check for unclaimed MMIO accesses is display-specific and will
>only properly flag unclaimed MMIO transactions for registers in the
>display range.  If a platform doesn't have display, FPGA_DBG itself will
>not be available and should not be checked.  Let's move the feature flag
>into intel_device_info.display to more accurately reflect this.
>
>Given that we now know FPGA_DBG is display-specific, it could be argued
>that we should only check it on out intel_de_*() functions.  However
>let's not make that change right now; keeping the checks in all of the
>existing locations still helps us catch cases where regular
>intel_uncore_*() functions use bad MMIO offset math / base addresses and
>accidentally wind up landing within an unused area within the display
>MMIO range.  It will also help catch cases where userspace-initiated
>MMIO (e.g., IGT's intel_reg tool) attempt to read bad offsets within the
>display range.
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/i915_pci.c          | 4 ++--
> drivers/gpu/drm/i915/intel_device_info.h | 2 +-
> 2 files changed, 3 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
>index eff7155db2fd..a9f24f2bda33 100644
>--- a/drivers/gpu/drm/i915/i915_pci.c
>+++ b/drivers/gpu/drm/i915/i915_pci.c
>@@ -538,7 +538,7 @@ static const struct intel_device_info vlv_info = {
> 	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
> 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
> 	.display.has_ddi = 1, \
>-	.has_fpga_dbg = 1, \
>+	.display.has_fpga_dbg = 1, \
> 	.display.has_psr = 1, \
> 	.display.has_psr_hw_tracking = 1, \
> 	.display.has_dp_mst = 1, \
>@@ -689,7 +689,7 @@ static const struct intel_device_info skl_gt4_info = {
> 		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
> 	.has_64bit_reloc = 1, \
> 	.display.has_ddi = 1, \
>-	.has_fpga_dbg = 1, \
>+	.display.has_fpga_dbg = 1, \
> 	.display.has_fbc = 1, \
> 	.display.has_hdcp = 1, \
> 	.display.has_psr = 1, \
>diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
>index e6ca1023ffcf..d44f64b57b7a 100644
>--- a/drivers/gpu/drm/i915/intel_device_info.h
>+++ b/drivers/gpu/drm/i915/intel_device_info.h
>@@ -118,7 +118,6 @@ enum intel_ppgtt_type {
> 	func(has_64bit_reloc); \
> 	func(gpu_reset_clobbers_display); \
> 	func(has_reset_engine); \
>-	func(has_fpga_dbg); \
> 	func(has_global_mocs); \
> 	func(has_gt_uc); \
> 	func(has_l3_dpf); \
>@@ -145,6 +144,7 @@ enum intel_ppgtt_type {
> 	func(has_dsb); \
> 	func(has_dsc); \
> 	func(has_fbc); \
>+	func(has_fpga_dbg); \
> 	func(has_gmch); \
> 	func(has_hdcp); \
> 	func(has_hotplug); \
>-- 
>2.25.4
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
