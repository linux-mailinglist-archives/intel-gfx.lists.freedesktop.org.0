Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2F94C0246
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 20:47:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA9B410E6AC;
	Tue, 22 Feb 2022 19:47:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9098A10E6AC
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 19:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645559267; x=1677095267;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=uzP+8Y/iNqjzmjFE2fqg79F1GTd4Ao7Hp50O5p/Uaug=;
 b=XgxS6mVpKiZyK8sU5CRxdlTZkq4pG267yzP+btHXbzZXH1HyOSeHFj7j
 IB6caiUbeDP7e+OB+gd/jm1hcvJBNExrs5GLjwryR6CchJEKtidDBMIc5
 E/aHaa7nxAKozDdg4xTNNNzi6YM/CQMr5qwERBmG3yjUg9z0R9VfVflI9
 25YGsYeYWYDpT2iwwOwyaY9aWsMpsjVyH8xYgl8xcD0+62iEyXzNChxTx
 u3zEJvZdqaCFM7C2Zq7IIas0iYRVt7E8JIspPfhKb+gZFpo9iOxqWAh1M
 N3VazoDuXYl87pTxTxTIh+gdPgqHkKN43sBpLZQuFHSaQjv15JZJinfx4 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="251533522"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="251533522"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 11:47:38 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="543064002"
Received: from ionyenwu-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.126.239])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 11:47:38 -0800
Date: Tue, 22 Feb 2022 11:47:37 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20220222194737.utcp257zt4yo7vwc@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220222181937.592346-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220222181937.592346-1-anusha.srivatsa@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg1: Remove require_force_probe
 protection
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 22, 2022 at 10:19:37AM -0800, Anusha Srivatsa wrote:
>DG1 at a state where we can safely remove require_force_probe.

BAT is not passing to consider this:

https://intel-gfx-ci.01.org/tree/drm-tip/bat-dg1-5.html
https://intel-gfx-ci.01.org/tree/drm-tip/bat-dg1-6.html

<6> [619.626490] i915 0000:03:00.0: [drm] Got error capture: status = 0
<3> [619.626495] i915 0000:03:00.0: [drm] *ERROR* GuC engine reset request failed on 2:0 (vecs0) because 0x00000000
<6> [619.772548] i915 0000:03:00.0: [drm] GPU HANG: ecode 12:0:00000000
<5> [619.777166] i915 0000:03:00.0: [drm] Resetting chip for GuC failed to reset engine mask=0x400
<6> [619.781956] i915 0000:03:00.0: [drm] GuC firmware i915/dg1_guc_69.0.3.bin version 69.0
<6> [619.781960] i915 0000:03:00.0: [drm] HuC firmware i915/dg1_huc_7.9.3.bin version 7.9
<7> [619.800021] i915 0000:03:00.0: [drm:guc_enable_communication [i915]] GuC communication enabled
<6> [619.803067] i915 0000:03:00.0: [drm] HuC authenticated
<6> [619.807778] i915 0000:03:00.0: [drm] GuC submission enabled
<6> [619.807780] i915 0000:03:00.0: [drm] GuC SLPC enabled
<6> [619.848454] i915 0000:03:00.0: [drm] Got error capture: status = 0
<6> [620.617459] i915 0000:03:00.0: [drm] GPU HANG: ecode 12:0:00000000
<6> [620.621833] i915_reset_engine(vecs0:others-priority): 2 resets
<3> [620.655812] Global reset (count=1)!
<3> [620.724265] i915/intel_hangcheck_live_selftests: igt_reset_engines failed with error -22


Lucas De Marchi

>
>Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
>---
> drivers/gpu/drm/i915/i915_pci.c | 1 -
> 1 file changed, 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
>index f449c454b6f8..cafc569fdf66 100644
>--- a/drivers/gpu/drm/i915/i915_pci.c
>+++ b/drivers/gpu/drm/i915/i915_pci.c
>@@ -909,7 +909,6 @@ static const struct intel_device_info dg1_info = {
> 	.graphics.rel = 10,
> 	PLATFORM(INTEL_DG1),
> 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
>-	.require_force_probe = 1,
> 	.platform_engine_mask =
> 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) |
> 		BIT(VCS0) | BIT(VCS2),
>-- 
>2.25.1
>
